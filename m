Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CAE492782
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:53:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9ovC-0003iS-Ic; Tue, 18 Jan 2022 13:53:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9ovA-0003iL-M7
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pXij1A1UndEUt7HP7zwNeasuXhEJIKez5EOEb9nfLFg=; b=mLsEdPnBNUQNbf10+jIqKkx7AC
 EgQmnWf5yhLZbnQXtvqa8B9Bl90OP6FxTHek+z8IJUPopMXHPXfPaYEDWYvP+FEZVzoIFnkA/QEL+
 XMYyFoOGHnNrERpCo5fSiYYvUk7Tln4ym6u5ftwroWOdh28LlV17G5t3iGYn4/aF2mXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pXij1A1UndEUt7HP7zwNeasuXhEJIKez5EOEb9nfLFg=; b=m
 nFRIA4pFwkP/XDyUC5iC0OUZK0cePrJ9YZ8Xctpb6zqw4FSDmolsmp8fKcEjt2OK91a8DVOBryOl7
 0ErfGEq0kPa0PUIE4QHv/8837U4Il4yWPjGmeR3TIsy5Sx0yCGGZCV2SDuF8bDigI0QWqbf3exlDL
 mVNdLvwt9Tka0GTg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9ov7-0005r4-9Y
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642513982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=pXij1A1UndEUt7HP7zwNeasuXhEJIKez5EOEb9nfLFg=;
 b=B5SIMdt/QaDk0WHIN46fU8/XinYP7/iC+bjQ6VW1Q00gQgYz0p0D93fNrOYYlVdjbHF5OU
 AhGZzC3pJDR9QUgQQF/d/kRv7ULefUjx5FsBvyggWEap+5RGko1LB+eo4875JjkogqTokB
 8nt1P+s4vSbvm4OjvTjjd9BvhDYbsm4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-527-JlXrDARYNMW5NYWotQtA7w-1; Tue, 18 Jan 2022 08:52:59 -0500
X-MC-Unique: JlXrDARYNMW5NYWotQtA7w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2FCD64097;
 Tue, 18 Jan 2022 13:52:54 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 54B1F8049C;
 Tue, 18 Jan 2022 13:52:50 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:52:49 +0000
Message-ID: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Here's a set of fixes and minor updates for the fscache
 rewrite[1]:
 (1) Fix mishandling of volume collisions (the wait condition is inverted
 and so it was only waiting if the volume collision was already resolved). 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1n9ov7-0005r4-9Y
Subject: [V9fs-developer] [PATCH 00/11] fscache,
 cachefiles: Rewrite fixes/updates
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
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of fixes and minor updates for the fscache rewrite[1]:

 (1) Fix mishandling of volume collisions (the wait condition is inverted
     and so it was only waiting if the volume collision was already
     resolved).

And for cachefiles, including addressing some of Jeff Layton's review
comments:

 (2) Fix miscalculation of whether there's space available.

 (3) Make sure a default cache name is set on a cache if the user hasn't
     set one by the time they bind the cache.

 (4) Adjust the way the backing inode is presented in tracepoints, add a
     tracepoint for mkdir and trace directory lookup.

 (5) Trace failure to set the active file mark.

 (6) Add explanation of the checks made on the backing filesystem.

 (7) Check that the backing filesystem supports tmpfile.

 (8) Document how the page-release cancellation of the read-skip
     optimisation works.

 (9) Add an IS_KERNEL_FILE() check macro for the S_KERNEL_FILE inode flag.

And I've included a change for netfslib:

(10) Make ops->init_rreq() optional.

I've also added the patch to rewrite cifs's fscache indexing.


Link: https://lore.kernel.org/r/164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk/ [1]

---
David Howells (9):
      fscache: Fix the volume collision wait condition
      cachefiles: Calculate the blockshift in terms of bytes, not pages
      cachefiles: Make some tracepoint adjustments
      cachefiles: Trace active-mark failure
      cachefiles: Explain checks in a comment
      cachefiles: Check that the backing filesystem supports tmpfiles
      fscache: Add a comment explaining how page-release optimisation works
      vfs, fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
      cifs: Support fscache indexing rewrite

Jeffle Xu (2):
      cachefiles: set default tag name if it's unspecified
      netfs: Make ops->init_rreq() optional


 fs/cachefiles/cache.c             |  17 +-
 fs/cachefiles/daemon.c            |  11 +
 fs/cachefiles/internal.h          |   2 +-
 fs/cachefiles/io.c                |   2 +-
 fs/cachefiles/namei.c             |  18 +-
 fs/ceph/addr.c                    |   5 -
 fs/cifs/Kconfig                   |   2 +-
 fs/cifs/Makefile                  |   2 +-
 fs/cifs/cache.c                   | 105 ----------
 fs/cifs/cifsfs.c                  |  19 +-
 fs/cifs/cifsglob.h                |   5 +-
 fs/cifs/connect.c                 |  15 +-
 fs/cifs/dir.c                     |   5 +
 fs/cifs/file.c                    |  70 ++++---
 fs/cifs/fscache.c                 | 333 +++++++-----------------------
 fs/cifs/fscache.h                 | 126 ++++-------
 fs/cifs/inode.c                   |  19 +-
 fs/namei.c                        |   2 +-
 fs/netfs/read_helper.c            |   3 +-
 include/linux/fs.h                |   1 +
 include/linux/fscache.h           |   5 +
 include/trace/events/cachefiles.h | 103 ++++++---
 22 files changed, 313 insertions(+), 557 deletions(-)
 delete mode 100644 fs/cifs/cache.c




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
