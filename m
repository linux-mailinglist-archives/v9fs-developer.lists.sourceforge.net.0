Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D4D302DF2
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 22:36:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l49X0-0002P6-I8; Mon, 25 Jan 2021 21:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l49Wz-0002Ov-1G
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=irxjDw3m0OGI3ziivlh2YUPhXcdve1Ry+pfZQbT6QhY=; b=dF2Dg/s4hYOEvlPTpLvnN4PQ3p
 gxvFbgUhTRN1kXY00KzGBoVFFS3+OSEjtSWHvS3HXwnSdugiqzK7zaG/tKW15fYu8GsgfKx41sl8I
 mqWqIj/P6+rat+crn71MTu+IqaA+8sEbm7RTsgcV6pkPUfmlDjeNBKg2XFlppSmFM3rY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=irxjDw3m0OGI3ziivlh2YUPhXcdve1Ry+pfZQbT6QhY=; b=ifwqw6zw/ztCwsnLHovQFE0s68
 vZvgCnXKTmi4mlClVAJMj+8Rv3MewxHyQ1HMVMa3jn2GC+y1535BbSnReljaUShnUBmaR8MuuvsMc
 cHpKuHCKiLa81+0WtSRNqNeDwks7QZCEuqdx+KhECSsBlmvy8sHF6YClJ2Z/zYCpmmcI=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l49Wv-007d0J-KF
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611610560;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=irxjDw3m0OGI3ziivlh2YUPhXcdve1Ry+pfZQbT6QhY=;
 b=B0akcjTFa0nalc2LhlnE2rSU+QSbjgPyP4+s4+2bpCF9B8y7R9ow2koAewcjbyhPedhA+V
 d7fcX+2W33b09/Mo8XEYbzLSTb+5hC8lj10s1vg2kIlLuC5/QoF9Xs5Lhiv934NcBFk/FG
 PUfJ6Nk4uWd9R4rOYFo5p9jFMi/7Dw0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164--ZZD6TfGNiqnlBYg_G3qyg-1; Mon, 25 Jan 2021 16:35:58 -0500
X-MC-Unique: -ZZD6TfGNiqnlBYg_G3qyg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74247CE642;
 Mon, 25 Jan 2021 21:35:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8EC6C5D9DB;
 Mon, 25 Jan 2021 21:35:50 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 25 Jan 2021 21:35:49 +0000
Message-ID: <161161054970.2537118.5401048451896267742.stgit@warthog.procyon.org.uk>
In-Reply-To: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l49Wv-007d0J-KF
Subject: [V9fs-developer] [PATCH 25/32] NFS: Clean up nfs_readpage() and
 nfs_readpages()
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dave Wysochanski <dwysocha@redhat.com>

In prep for the new fscache netfs API, refactor nfs_readpage()
and nfs_readpages() for future patches.  No functional change.

Signed-off-by: Dave Wysochanski <dwysocha@redhat.com>
---

 fs/nfs/read.c |   45 +++++++++++++++++++++++----------------------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/fs/nfs/read.c b/fs/nfs/read.c
index eb854f1f86e2..a05fb3904ddf 100644
--- a/fs/nfs/read.c
+++ b/fs/nfs/read.c
@@ -310,11 +310,11 @@ static void nfs_readpage_result(struct rpc_task *task,
  *  -	The error flag is set for this page. This happens only when a
  *	previous async read operation failed.
  */
-int nfs_readpage(struct file *file, struct page *page)
+int nfs_readpage(struct file *filp, struct page *page)
 {
 	struct nfs_open_context *ctx;
 	struct inode *inode = page_file_mapping(page)->host;
-	int		error;
+	int ret;
 
 	dprintk("NFS: nfs_readpage (%p %ld@%lu)\n",
 		page, PAGE_SIZE, page_index(page));
@@ -328,43 +328,43 @@ int nfs_readpage(struct file *file, struct page *page)
 	 * be any new pending writes generated at this point
 	 * for this page (other pages can be written to).
 	 */
-	error = nfs_wb_page(inode, page);
-	if (error)
+	ret = nfs_wb_page(inode, page);
+	if (ret)
 		goto out_unlock;
 	if (PageUptodate(page))
 		goto out_unlock;
 
-	error = -ESTALE;
+	ret = -ESTALE;
 	if (NFS_STALE(inode))
 		goto out_unlock;
 
-	if (file == NULL) {
-		error = -EBADF;
+	if (filp == NULL) {
+		ret = -EBADF;
 		ctx = nfs_find_open_context(inode, NULL, FMODE_READ);
 		if (ctx == NULL)
 			goto out_unlock;
 	} else
-		ctx = get_nfs_open_context(nfs_file_open_context(file));
+		ctx = get_nfs_open_context(nfs_file_open_context(filp));
 
 	if (!IS_SYNC(inode)) {
-		error = nfs_readpage_from_fscache(ctx, inode, page);
-		if (error == 0)
+		ret = nfs_readpage_from_fscache(ctx, inode, page);
+		if (ret == 0)
 			goto out;
 	}
 
 	xchg(&ctx->error, 0);
-	error = nfs_readpage_async(ctx, inode, page);
-	if (!error) {
-		error = wait_on_page_locked_killable(page);
-		if (!PageUptodate(page) && !error)
-			error = xchg(&ctx->error, 0);
+	ret = nfs_readpage_async(ctx, inode, page);
+	if (!ret) {
+		ret = wait_on_page_locked_killable(page);
+		if (!PageUptodate(page) && !ret)
+			ret = xchg(&ctx->error, 0);
 	}
 out:
 	put_nfs_open_context(ctx);
-	return error;
+	return ret;
 out_unlock:
 	unlock_page(page);
-	return error;
+	return ret;
 }
 
 struct nfs_readdesc {
@@ -409,12 +409,10 @@ int nfs_readpages(struct file *filp, struct address_space *mapping,
 {
 	struct nfs_pageio_descriptor pgio;
 	struct nfs_pgio_mirror *pgm;
-	struct nfs_readdesc desc = {
-		.pgio = &pgio,
-	};
+	struct nfs_readdesc desc;
 	struct inode *inode = mapping->host;
 	unsigned long npages;
-	int ret = -ESTALE;
+	int ret;
 
 	dprintk("NFS: nfs_readpages (%s/%Lu %d)\n",
 			inode->i_sb->s_id,
@@ -422,13 +420,15 @@ int nfs_readpages(struct file *filp, struct address_space *mapping,
 			nr_pages);
 	nfs_inc_stats(inode, NFSIOS_VFSREADPAGES);
 
+	ret = -ESTALE;
 	if (NFS_STALE(inode))
 		goto out;
 
 	if (filp == NULL) {
+		ret = -EBADF;
 		desc.ctx = nfs_find_open_context(inode, NULL, FMODE_READ);
 		if (desc.ctx == NULL)
-			return -EBADF;
+			goto out;
 	} else
 		desc.ctx = get_nfs_open_context(nfs_file_open_context(filp));
 
@@ -440,6 +440,7 @@ int nfs_readpages(struct file *filp, struct address_space *mapping,
 	if (ret == 0)
 		goto read_complete; /* all pages were read */
 
+	desc.pgio = &pgio;
 	nfs_pageio_init_read(&pgio, inode, false,
 			     &nfs_async_read_completion_ops);
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
