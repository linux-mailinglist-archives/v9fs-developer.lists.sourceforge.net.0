Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2364967AA
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Jan 2022 22:57:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nB1uv-0006qS-8B; Fri, 21 Jan 2022 21:57:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nB1ut-0006qL-J7
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 21:57:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LbdPydri53Ys0YI/ksP8tcx8qE6UcE8forSIwOZlU4M=; b=Mb3li4iWWRi9E8k1DaHiZIqLgS
 37ss0SKkrHehHplwIIbSQqV90bGmaIokmbKeHSnZgVyO5LGRekQnk8c56MC6Sh/13H7sCBgzp38p/
 1LWaIlYMc2oAvLFXNassymZk4avWxx7xOAU7anmSX7HCajGbDtBLLjbM/aF3qtFWDaXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LbdPydri53Ys0YI/ksP8tcx8qE6UcE8forSIwOZlU4M=; b=Hg3F8yxzcXmqiAABAhXEB/jkYg
 05VRYESN9zQ5xb7Qc226hUNq6rJHQSMMM60WR5N3FisN1mCU33xEJtCgNcZTZ7IKAu273byZJ3Ks8
 0FR1oEVdJGAQ3RQAXD1o2/lQmuqQFhDLCKLx5lY9UWPX5iDBokW8t5+n1qKl7YZ6f2eY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nB1ur-0004yZ-Ax
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 21:57:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642802267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LbdPydri53Ys0YI/ksP8tcx8qE6UcE8forSIwOZlU4M=;
 b=U9n2EofyAOsAjly7aYJnBzkl3S39PLGgGi6Pa4k4zISVYFwjCUNL1cgzOckrPXM8cuXO3k
 vWkfwjfODh/J7NP1fh8aRBHpJDpEMlXTH0MvkFlIKAR77WiCcBtaF4sPYuPrpTTRyQjVma
 6Iv0mw96RHUgP9cgI5cRqT+RX4zqnpk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-496-Va8Qp28gP3G0ynu2Pd9lOg-1; Fri, 21 Jan 2022 16:57:43 -0500
X-MC-Unique: Va8Qp28gP3G0ynu2Pd9lOg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 739B419251A0;
 Fri, 21 Jan 2022 21:57:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.5])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A28712E1C;
 Fri, 21 Jan 2022 21:57:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1339461.1642802244.1@warthog.procyon.org.uk>
Date: Fri, 21 Jan 2022 21:57:24 +0000
Message-ID: <1339462.1642802244@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Could you pull this set of fixes and minor updates
 for the fscache rewrite[1] please? (1) Fix mishandling of volume collisions
 (the wait condition is inverted and so it was only waiting if the volume
 collision was already resolved). 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nB1ur-0004yZ-Ax
Subject: [V9fs-developer] [GIT PULL] fscache: Fixes and minor updates for
 rewrite
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Steve French <smfrench@gmail.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Could you pull this set of fixes and minor updates for the fscache
rewrite[1] please?

 (1) Fix mishandling of volume collisions (the wait condition is inverted
     and so it was only waiting if the volume collision was already
     resolved).

 (2) Fix miscalculation of whether there's space available in cachefiles.

 (3) Make sure a default cache name is set on a cache if the user hasn't
     set one by the time they bind the cache.

 (4) Adjust the way the backing inode is presented in tracepoints, add a
     tracepoint for mkdir and trace directory lookup.

 (5) Add a tracepoint for failure to set the active file mark.

 (6) Add an explanation of the checks made on the backing filesystem.

 (7) Check that the backing filesystem supports tmpfile.

 (8) Document how the page-release cancellation of the read-skip
     optimisation works.

And I've included a change for netfslib:

 (9) Make ops->init_rreq() optional.

Note that I dropped the patch that I had to add IS_KERNEL_FILE() as the
naming of S_KERNEL_FILE is undergoing late discussion[2] and I dropped the
patch to rewrite cifs's fscache indexing as SteveF has taken that into his
tree.

Thanks,
David


Link: https://lore.kernel.org/r/510611.1641942444@warthog.procyon.org.uk/ [1]
Link: https://lore.kernel.org/r/CAOQ4uxjEcvffv=rNXS-r+NLz+=6yk4abRuX_AMq9v-M4nf_PtA@mail.gmail.com/ [2]
Link: https://lore.kernel.org/r/164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk/ # v1
---
The following changes since commit 455e73a07f6e288b0061dfcf4fcf54fa9fe06458:

  Merge tag 'clk-for-linus' of git://git.kernel.org/pub/scm/linux/kernel/git/clk/linux (2022-01-12 17:02:27 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-fixes-20220121

for you to fetch changes up to cef0223191452b3c493a1070baad9ffe806babac:

  netfs: Make ops->init_rreq() optional (2022-01-21 21:36:28 +0000)

----------------------------------------------------------------
fscache fixes

----------------------------------------------------------------
David Howells (7):
      fscache: Fix the volume collision wait condition
      cachefiles: Calculate the blockshift in terms of bytes, not pages
      cachefiles: Make some tracepoint adjustments
      cachefiles: Trace active-mark failure
      cachefiles: Explain checks in a comment
      cachefiles: Check that the backing filesystem supports tmpfiles
      fscache: Add a comment explaining how page-release optimisation works

Jeffle Xu (2):
      cachefiles: set default tag name if it's unspecified
      netfs: Make ops->init_rreq() optional

 fs/cachefiles/cache.c             |  17 ++++---
 fs/cachefiles/daemon.c            |  11 ++++
 fs/cachefiles/internal.h          |   2 +-
 fs/cachefiles/io.c                |   2 +-
 fs/cachefiles/namei.c             |  12 +++--
 fs/ceph/addr.c                    |   5 --
 fs/fscache/volume.c               |   4 +-
 fs/netfs/read_helper.c            |   3 +-
 include/linux/fscache.h           |   5 ++
 include/trace/events/cachefiles.h | 103 ++++++++++++++++++++++++++------------
 10 files changed, 113 insertions(+), 51 deletions(-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
