Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C58423FCF3C
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Aug 2021 23:39:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mLBT8-0001Rf-N5; Tue, 31 Aug 2021 21:38:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mLBT7-0001RV-5H
 for v9fs-developer@lists.sourceforge.net; Tue, 31 Aug 2021 21:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jF9rwEM7cmKziqpDUf57DgLJOh4uDfmAVb6WTLHCRQc=; b=D7fXIGdkcOG4XInw8tuIvARDQQ
 A+klitambEg2t68LHJ8c4SvN7X4f8kx7E+Wb0bqa5PaVFWFY22Ga/CbBNyT1Hxzjq8grxcOlwd0o1
 j2g8FqOrGXOlEoLtM2gYRf+96CcxkEngwgaTzARmU0+ohudxd8e7qiQOCt8+Lik7iY/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jF9rwEM7cmKziqpDUf57DgLJOh4uDfmAVb6WTLHCRQc=; b=U/kietCDPQKx34xx8W4OXSPB5+
 KNzkuZKUfqSdoz3aY0MKNMeEeAoOR9yc82fWduFBdxv+MB844o1qewXBCkwBWHNgK0B3Rk3nzsIY3
 BP6TOVLSSi6J5NuYnwtriZ7nV+JuM+Gos47owkjoUHAMZVzTyke1jibFcrwL6oKb2KC0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mLBT1-009SSw-8j
 for v9fs-developer@lists.sourceforge.net; Tue, 31 Aug 2021 21:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630445924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jF9rwEM7cmKziqpDUf57DgLJOh4uDfmAVb6WTLHCRQc=;
 b=dtBhnEepaX+y5PjIVpeB4fG7JlkgnqbDaSVxrk0x8k5OXb3CZojB6HeN3OD6WHbMsrmK/I
 Iw88+xNrXSix5MqDfjU1xCSap4NfMOYRdblju7AyOeHKtPHC0MWWoxvciutqPdRrRdgIEg
 dvPQOqVUbn6iVLwTK4HSMQSL2U9Ahm4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-etE7GrocP62B622SZDpz4g-1; Tue, 31 Aug 2021 17:38:43 -0400
X-MC-Unique: etE7GrocP62B622SZDpz4g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1928D8CC784;
 Tue, 31 Aug 2021 21:38:42 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6CB1D60843;
 Tue, 31 Aug 2021 21:38:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <3282507.1630445914.1@warthog.procyon.org.uk>
Date: Tue, 31 Aug 2021 22:38:34 +0100
Message-ID: <3282508.1630445914@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Can you pull these changes please? They perform
 some preparatory work for the fscache rewrite that's being worked on and fix
 some bugs. These include: (1) Always select netfs stats when enabling fscache
 stats since they're displayed through the same procfile. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mLBT1-009SSw-8j
Subject: [V9fs-developer] [GIT PULL] fscache: Fixes and rewrite preparation
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Can you pull these changes please?  They perform some preparatory work for the
fscache rewrite that's being worked on and fix some bugs.  These include:

 (1) Always select netfs stats when enabling fscache stats since they're
     displayed through the same procfile.

 (2) Add a cookie debug ID that can be used in tracepoints instead of a
     pointer and cache it in the netfs_cache_resources struct rather than
     in the netfs_read_request struct to make it more available.

 (3) Use file_inode() in cachefiles rather than dereferencing file->f_inode
     directly.

 (4) Provide a procfile to display fscache cookies.

 (5) Remove the fscache and cachefiles histogram procfiles.

 (6) Remove the fscache object list procfile.

 (7) Avoid using %p in fscache and cachefiles as the value is hashed and
     not comparable to the register dump in an oops trace.

 (8) Fix the cookie hash function to actually achieve useful dispersion.

 (9) Fix fscache_cookie_put() so that it doesn't dereference the cookie
     pointer in the tracepoint after the refcount has been decremented
     (we're only allowed to do that if we decremented it to zero).

(10) Use refcount_t rather than atomic_t for the fscache_cookie refcount.

Some of these patches have been posted before as part of a larger patchset
that effected almost the whole rewrite[1].

Changes
=======
ver #2:
 - Fix a NULL pointer ref in a tracepoint (that patch reposted here [2]).

David

Link: https://lore.kernel.org/r/162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk/ [1]
Link: https://lore.kernel.org/r/2512396.1630067489@warthog.procyon.org.uk/ [2]

---
The following changes since commit e73f0f0ee7541171d89f2e2491130c7771ba58d3:

  Linux 5.14-rc1 (2021-07-11 15:07:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-next-20210829

for you to fetch changes up to 20ec197bfa13c5b799fc9527790ea7b5374fc8f2:

  fscache: Use refcount_t for the cookie refcount instead of atomic_t (2021-08-27 13:34:03 +0100)

----------------------------------------------------------------
fscache changes and fixes

----------------------------------------------------------------
David Howells (12):
      fscache: Select netfs stats if fscache stats are enabled
      netfs: Move cookie debug ID to struct netfs_cache_resources
      cachefiles: Use file_inode() rather than accessing ->f_inode
      fscache: Add a cookie debug ID and use that in traces
      fscache: Procfile to display cookies
      fscache, cachefiles: Remove the histogram stuff
      fscache: Remove the object list procfile
      fscache: Change %p in format strings to something else
      cachefiles: Change %p in format strings to something else
      fscache: Fix cookie key hashing
      fscache: Fix fscache_cookie_put() to not deref after dec
      fscache: Use refcount_t for the cookie refcount instead of atomic_t

 fs/cachefiles/Kconfig             |  19 --
 fs/cachefiles/Makefile            |   2 -
 fs/cachefiles/bind.c              |   2 -
 fs/cachefiles/interface.c         |   6 +-
 fs/cachefiles/internal.h          |  25 ---
 fs/cachefiles/io.c                |   6 +-
 fs/cachefiles/key.c               |   2 +-
 fs/cachefiles/main.c              |   7 -
 fs/cachefiles/namei.c             |  61 ++----
 fs/cachefiles/proc.c              | 114 -----------
 fs/cachefiles/xattr.c             |   4 +-
 fs/fscache/Kconfig                |  25 +--
 fs/fscache/Makefile               |   2 -
 fs/fscache/cache.c                |  11 +-
 fs/fscache/cookie.c               | 201 +++++++++++++-----
 fs/fscache/fsdef.c                |   3 +-
 fs/fscache/histogram.c            |  87 --------
 fs/fscache/internal.h             |  57 ++----
 fs/fscache/main.c                 |  39 ++++
 fs/fscache/netfs.c                |   2 +-
 fs/fscache/object-list.c          | 414 --------------------------------------
 fs/fscache/object.c               |   8 -
 fs/fscache/operation.c            |   3 -
 fs/fscache/page.c                 |   6 -
 fs/fscache/proc.c                 |  20 +-
 include/linux/fscache-cache.h     |   4 -
 include/linux/fscache.h           |   4 +-
 include/linux/netfs.h             |   2 +-
 include/trace/events/cachefiles.h |  68 +++----
 include/trace/events/fscache.h    | 160 +++++++--------
 include/trace/events/netfs.h      |   2 +-
 31 files changed, 368 insertions(+), 998 deletions(-)
 delete mode 100644 fs/cachefiles/proc.c
 delete mode 100644 fs/fscache/histogram.c
 delete mode 100644 fs/fscache/object-list.c



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
