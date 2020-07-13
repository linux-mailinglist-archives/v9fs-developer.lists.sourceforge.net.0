Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E4F21DD4A
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:38:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1Th-0007Xh-P6; Mon, 13 Jul 2020 16:38:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1Tf-0007XW-Uz
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sL3hQiLEAPYlRGXT83j6gzNW7fCSVrdyHgkgU/ju4ks=; b=VzhoqjwGZu5aFpFTcrF9CH4Zlr
 UrJmlFB0qy5pL1j9BfjIOhXdPSZA9AsIYJq95kFe44DXaSpyv9c76duupz3h9u6RxFQbPBjGCeZUR
 s+K9ds9uDC3Uxq/z0x/2iDE3A8QlUf9X1xxYuHa0dZMgSYnmdaqc9FxFonjfBCYOugr4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sL3hQiLEAPYlRGXT83j6gzNW7fCSVrdyHgkgU/ju4ks=; b=Eka8ofrNdu3IUoQKV9/y7y1CZW
 T5J0uc6vY9B8f69UwlAnF7bxoMwwYJQfyzHHPEb/1Qedf9iaGBd4gmwxJicYPlLX22g8kJ3npeyPF
 BUKfBC07uAR6ba42495XDA7/hnhbrDcETlNMC5dGA5llud+UKFAt6TdngsTg/qBbtHJY=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1Te-005eeM-Od
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658324;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sL3hQiLEAPYlRGXT83j6gzNW7fCSVrdyHgkgU/ju4ks=;
 b=daMF7txm1fIJQpVfZvPhkL3+4Pibe04S4yJ3pAQbv5mpczRhDm18EM7A4xKGLNOSAYJoag
 FAbZDsSadQdfinYsdBGS0swxe1HRBE1X7MMoxxziLQu+QvkY7zHK6R6FLSh1lHN73D2jf0
 sqoU1sMnkYpNED0IhPlUTIL4zAmImPY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166--kgTRIfMOL-pA7rXZyEOTQ-1; Mon, 13 Jul 2020 12:38:40 -0400
X-MC-Unique: -kgTRIfMOL-pA7rXZyEOTQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EDB6380183C;
 Mon, 13 Jul 2020 16:38:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B0D5110013C0;
 Mon, 13 Jul 2020 16:38:33 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:38:32 +0100
Message-ID: <159465831290.1377938.10075677476527399814.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
References: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.4 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1Te-005eeM-Od
Subject: [V9fs-developer] [PATCH 08/13] afs: Note the amount transferred in
 fetch-data delivery
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
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
index 9d47df15c790..03ef09330d10 100644
--- a/fs/afs/dir.c
+++ b/fs/afs/dir.c
@@ -209,9 +209,8 @@ static void afs_dir_dump(struct afs_vnode *dvnode, struct afs_read *req)
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
@@ -321,7 +320,7 @@ static struct afs_read *afs_read_dir(struct afs_vnode *dvnode, struct key *key)
 
 	nr_pages = (i_size + PAGE_SIZE - 1) / PAGE_SIZE;
 
-	req->actual_len = i_size; /* May change */
+	req->cache.transferred = i_size; /* May change */
 	req->cache.len = nr_pages * PAGE_SIZE; /* We can ask for more than there is */
 	req->data_version = dvnode->status.data_version; /* May change */
 	iov_iter_mapping(&req->def_iter, READ, dvnode->vfs_inode.i_mapping,
@@ -546,7 +545,7 @@ static int afs_dir_iterate(struct inode *dir, struct dir_context *ctx,
 
 	/* walk through the blocks in sequence */
 	ret = 0;
-	while (ctx->pos < req->actual_len) {
+	while (ctx->pos < req->cache.transferred) {
 		blkoff = ctx->pos & ~(sizeof(union afs_xdr_dir_block) - 1);
 
 		/* Fetch the appropriate page from the directory and re-add it
diff --git a/fs/afs/fsclient.c b/fs/afs/fsclient.c
index d6a8066e666d..e729a19f28c5 100644
--- a/fs/afs/fsclient.c
+++ b/fs/afs/fsclient.c
@@ -393,6 +393,11 @@ static int afs_deliver_fs_fetch_data(struct afs_call *call)
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
index 30621f4fffc0..4ead0c1f9014 100644
--- a/fs/afs/yfsclient.c
+++ b/fs/afs/yfsclient.c
@@ -450,6 +450,11 @@ static int yfs_deliver_fs_fetch_data64(struct afs_call *call)
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
