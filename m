Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCE91C4208
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:15:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVeh4-0002Z7-CK; Mon, 04 May 2020 17:15:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVeh3-0002Yz-3j
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CWQJK7zPeDPdYhDwPYU8xq1x4O/xcEWQo3ZiKiG6jyk=; b=ljNzL1VmRuhHny7FcRPsfoFAow
 VwCiwqkoRKKimAT3AfY2O51yJU8/gfoRozeOIax9205iOZU+CdFR1IlQklWBXm7/WRvE7dr2EJ3jD
 3F6sBN74juD72UoZYq6Djp8KIWqqNxQXCeTq6+dToqeFVo9PDCRAx86quUcjZTUTuEU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CWQJK7zPeDPdYhDwPYU8xq1x4O/xcEWQo3ZiKiG6jyk=; b=HMX5DWgeoD4CckSuZ6yG6GRsZv
 TnP9N7N/vGVJHKWTw5m8chrWhFLkuVVACpU0dEt/F8Sxwl/+pdKjoS18qho0Zsj53K+IjmnI46KoI
 jP0oda2do0QiUZ/bKbFqwMDyKikDE5SOrjuA5Xznsl1ATPq2DuSkaQ7/1zpPoduFGO8g=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVeh1-007AIt-Sn
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CWQJK7zPeDPdYhDwPYU8xq1x4O/xcEWQo3ZiKiG6jyk=;
 b=XUSGoNasfOFdUGC1v5nyndw/oPwEaDGw5VQ45BhJrMCWXPfLWGGEpSJ6gMj22J+ghj1Hex
 bjDLQq+EOTN0uvv+bVElj5/ZYNRC3uLE4603Mgf6wNLKowbNBX0/cPlKHMl4yyq7hWxkxf
 iUm+KtxndyDzvk9+jGRVFu7wg+KqZfI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-2suybqQwNsyAxzX2F4_yfw-1; Mon, 04 May 2020 13:15:36 -0400
X-MC-Unique: 2suybqQwNsyAxzX2F4_yfw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5647680BE32;
 Mon,  4 May 2020 17:15:34 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F146D5C1BD;
 Mon,  4 May 2020 17:15:31 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:15:31 +0100
Message-ID: <158861253114.340223.7031203580922376614.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVeh1-007AIt-Sn
Subject: [V9fs-developer] [RFC PATCH 53/61] afs: Note the amount transferred
 in fetch-data delivery
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Note the amount of data transferred in the fscache request op structure in
the delivery/decode routines for the various FetchData operations.

Also, we need to exclude the excess from this value and then we need to use
this in directory read rather than actual_len.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/dir.c       |    9 ++++-----
 fs/afs/fsclient.c  |    5 +++++
 fs/afs/yfsclient.c |    5 +++++
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/fs/afs/dir.c b/fs/afs/dir.c
index 0b3f33269fdd..577c975c13b0 100644
--- a/fs/afs/dir.c
+++ b/fs/afs/dir.c
@@ -211,9 +211,8 @@ static void afs_dir_dump(struct afs_vnode *dvnode, struct afs_read *req)
 	pr_warn("DIR %llx:%llx f=%llx l=%llx al=%llx\n",
 		dvnode->fid.vid, dvnode->fid.vnode,
 		req->file_size, req->cache.len, req->actual_len);
-	pr_warn("DIR %llx %x %zx %zx\n",
-		req->cache.pos, req->cache.nr_pages,
-		req->iter->iov_offset,  iov_iter_count(req->iter));
+	pr_warn("DIR %llx %x %llx\n",
+		req->cache.pos, req->cache.nr_pages, req->cache.transferred);
 
 	xas_for_each(&xas, page, last) {
 		if (xas_retry(&xas, page))
@@ -323,7 +322,7 @@ static struct afs_read *afs_read_dir(struct afs_vnode *dvnode, struct key *key)
 
 	nr_pages = (i_size + PAGE_SIZE - 1) / PAGE_SIZE;
 
-	req->actual_len = i_size; /* May change */
+	req->cache.transferred = i_size; /* May change */
 	req->cache.len = nr_pages * PAGE_SIZE; /* We can ask for more than there is */
 	req->data_version = dvnode->status.data_version; /* May change */
 	iov_iter_mapping(&req->def_iter, READ, dvnode->vfs_inode.i_mapping,
@@ -548,7 +547,7 @@ static int afs_dir_iterate(struct inode *dir, struct dir_context *ctx,
 
 	/* walk through the blocks in sequence */
 	ret = 0;
-	while (ctx->pos < req->actual_len) {
+	while (ctx->pos < req->cache.transferred) {
 		blkoff = ctx->pos & ~(sizeof(union afs_xdr_dir_block) - 1);
 
 		/* Fetch the appropriate page from the directory and re-add it
diff --git a/fs/afs/fsclient.c b/fs/afs/fsclient.c
index c9789294fc68..62cc8072874b 100644
--- a/fs/afs/fsclient.c
+++ b/fs/afs/fsclient.c
@@ -417,6 +417,11 @@ static int afs_deliver_fs_fetch_data(struct afs_call *call)
 		break;
 	}
 
+	/* Pass the call's ref on the read request descriptor to the completion
+	 * handler.
+	 */
+	req->cache.transferred = min(req->actual_len, req->cache.len);
+	set_bit(FSCACHE_IO_DATA_FROM_SERVER, &req->cache.flags);
 	if (req->cache.io_done)
 		req->cache.io_done(&req->cache);
 
diff --git a/fs/afs/yfsclient.c b/fs/afs/yfsclient.c
index 6ea97233c0d2..fb3f006be31c 100644
--- a/fs/afs/yfsclient.c
+++ b/fs/afs/yfsclient.c
@@ -531,6 +531,11 @@ static int yfs_deliver_fs_fetch_data64(struct afs_call *call)
 		break;
 	}
 
+	/* Pass the call's ref on the read request descriptor to the completion
+	 * handler.
+	 */
+	req->cache.transferred = min(req->actual_len, req->cache.len);
+	set_bit(FSCACHE_IO_DATA_FROM_SERVER, &req->cache.flags);
 	if (req->cache.io_done)
 		req->cache.io_done(&req->cache);
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
