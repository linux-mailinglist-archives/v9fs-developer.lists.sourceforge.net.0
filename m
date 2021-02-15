Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C42C731BE8A
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 17:14:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBgVk-0002tn-AQ; Mon, 15 Feb 2021 16:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg9l-00023D-8b
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fmgf+tcMqzC/2gfieTJn+guScR8ScdKM/VUQCCobjQw=; b=LdnDv1njZk5c74Pvf8f4vGVTLC
 RXzF7PgHuiBsqIY3aI7Azpgkgh3K0o4KNrMxiw+N3U5HRdxFDxZKRZlvdRRIPVuIezkKmJphXRTNq
 8kUB+PqQbgqldfsFX8yfYPo3URxl4zPGQCdGvJV8dXwO4yobO89Z9bSze0DAju+wEUQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fmgf+tcMqzC/2gfieTJn+guScR8ScdKM/VUQCCobjQw=; b=GQ+tiXtpyrYt130GZKuGOC8clo
 0EMElgj8LROgm/WJcOUNU0+Ah0RbrxZbLiPCQ4h/uoxhoBfqB6ugckLq9M3HytHNgk/lITM8IIUmY
 PQ0EF2w/ux4bVgXofAuBrMBkM+4uw/orhkFwpa6YGY/i5NKNCkqniBKj118msc8E8lRk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBg9S-009oTL-Rb
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613404260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fmgf+tcMqzC/2gfieTJn+guScR8ScdKM/VUQCCobjQw=;
 b=csUuvRZTy7N0oqN7XWrlUC4NAzZ6OqmcHCXTOLEhELibwG5V8DbIt8XRjxX5S0RrJBPMIC
 hEZEulnvl9ywM+ldgOHBGk1CeBvRCuFp0bzQt9x83G1x8VJ2nnEaPZiVrlXPEZ3Ulx78Ih
 yQIuFI0T2oSe6JisevPVI8mdXuibUk0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-_xmxmVd0NIede5R-gqhy4g-1; Mon, 15 Feb 2021 10:50:58 -0500
X-MC-Unique: _xmxmVd0NIede5R-gqhy4g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1C8D801962;
 Mon, 15 Feb 2021 15:50:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 93EC960BE2;
 Mon, 15 Feb 2021 15:50:50 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:50:49 +0000
Message-ID: <161340424973.1303470.6253467365270537258.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lBg9S-009oTL-Rb
Subject: [V9fs-developer] [PATCH 32/33] ceph: plug write_begin into read
 helper
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
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeff Layton <jlayton@kernel.org>

Convert ceph_write_begin to use the netfs_write_begin helper. Most of
the ops we need for it are already in place from the readpage conversion
but we do add a new check_write_begin op since ceph needs to be able to
vet whether there is an incompatible writeback already in flight before
reading in the page.

With this, we can also remove the old ceph_do_readpage helper.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: ceph-devel@vger.kernel.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
---

 fs/ceph/addr.c |  187 ++++++++++++++++++--------------------------------------
 1 file changed, 61 insertions(+), 126 deletions(-)

diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index 95f39ff9bb24..18f660611ba1 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -322,76 +322,6 @@ static int ceph_readpage(struct file *file, struct page *page)
 	return netfs_readpage(file, page, &ceph_readpage_netfs_ops, NULL);
 }
 
-/* read a single page, without unlocking it. */
-static int ceph_do_readpage(struct file *filp, struct page *page)
-{
-	struct inode *inode = file_inode(filp);
-	struct ceph_inode_info *ci = ceph_inode(inode);
-	struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
-	struct ceph_osd_client *osdc = &fsc->client->osdc;
-	struct ceph_osd_request *req;
-	struct ceph_vino vino = ceph_vino(inode);
-	int err = 0;
-	u64 off = page_offset(page);
-	u64 len = PAGE_SIZE;
-
-	if (off >= i_size_read(inode)) {
-		zero_user_segment(page, 0, PAGE_SIZE);
-		SetPageUptodate(page);
-		return 0;
-	}
-
-	if (ci->i_inline_version != CEPH_INLINE_NONE) {
-		/*
-		 * Uptodate inline data should have been added
-		 * into page cache while getting Fcr caps.
-		 */
-		if (off == 0)
-			return -EINVAL;
-		zero_user_segment(page, 0, PAGE_SIZE);
-		SetPageUptodate(page);
-		return 0;
-	}
-
-	dout("readpage ino %llx.%llx file %p off %llu len %llu page %p index %lu\n",
-	     vino.ino, vino.snap, filp, off, len, page, page->index);
-	req = ceph_osdc_new_request(osdc, &ci->i_layout, vino, off, &len, 0, 1,
-				    CEPH_OSD_OP_READ, CEPH_OSD_FLAG_READ, NULL,
-				    ci->i_truncate_seq, ci->i_truncate_size,
-				    false);
-	if (IS_ERR(req))
-		return PTR_ERR(req);
-
-	osd_req_op_extent_osd_data_pages(req, 0, &page, len, 0, false, false);
-
-	err = ceph_osdc_start_request(osdc, req, false);
-	if (!err)
-		err = ceph_osdc_wait_request(osdc, req);
-
-	ceph_update_read_latency(&fsc->mdsc->metric, req->r_start_latency,
-				 req->r_end_latency, err);
-
-	ceph_osdc_put_request(req);
-	dout("readpage result %d\n", err);
-
-	if (err == -ENOENT)
-		err = 0;
-	if (err < 0) {
-		if (err == -EBLOCKLISTED)
-			fsc->blocklisted = true;
-		goto out;
-	}
-	if (err < PAGE_SIZE)
-		/* zero fill remainder of page */
-		zero_user_segment(page, err, PAGE_SIZE);
-	else
-		flush_dcache_page(page);
-
-	SetPageUptodate(page);
-out:
-	return err < 0 ? err : 0;
-}
-
 /*
  * Finish an async read(ahead) op.
  */
@@ -1411,6 +1341,40 @@ ceph_find_incompatible(struct page *page)
 	return NULL;
 }
 
+static int ceph_netfs_check_write_begin(struct file *file, loff_t pos, unsigned int len,
+					struct page *page, void **_fsdata)
+{
+	struct inode *inode = file_inode(file);
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct ceph_snap_context *snapc;
+
+	snapc = ceph_find_incompatible(page);
+	if (snapc) {
+		int r;
+
+		unlock_page(page);
+		put_page(page);
+		if (IS_ERR(snapc))
+			return PTR_ERR(snapc);
+
+		ceph_queue_writeback(inode);
+		r = wait_event_killable(ci->i_cap_wq,
+					context_is_writeable_or_written(inode, snapc));
+		ceph_put_snap_context(snapc);
+		return r == 0 ? -EAGAIN : r;
+	}
+	return 0;
+}
+
+const struct netfs_read_request_ops ceph_netfs_write_begin_ops = {
+	.init_rreq		= ceph_init_rreq,
+	.is_cache_enabled	= ceph_is_cache_enabled,
+	.begin_cache_operation	= ceph_begin_cache_operation,
+	.issue_op		= ceph_netfs_issue_op,
+	.clamp_length		= ceph_netfs_clamp_length,
+	.check_write_begin	= ceph_netfs_check_write_begin,
+};
+
 /*
  * We are only allowed to write into/dirty the page if the page is
  * clean, or already dirty within the same snap context.
@@ -1421,75 +1385,46 @@ static int ceph_write_begin(struct file *file, struct address_space *mapping,
 {
 	struct inode *inode = file_inode(file);
 	struct ceph_inode_info *ci = ceph_inode(inode);
-	struct ceph_snap_context *snapc;
 	struct page *page = NULL;
 	pgoff_t index = pos >> PAGE_SHIFT;
-	int pos_in_page = pos & ~PAGE_MASK;
-	int r = 0;
-
-	dout("write_begin file %p inode %p page %p %d~%d\n", file, inode, page, (int)pos, (int)len);
-
-	for (;;) {
-		page = grab_cache_page_write_begin(mapping, index, flags);
-		if (!page) {
-			r = -ENOMEM;
-			break;
-		}
-
-		snapc = ceph_find_incompatible(page);
-		if (snapc) {
-			if (IS_ERR(snapc)) {
-				r = PTR_ERR(snapc);
-				break;
-			}
-			unlock_page(page);
-			put_page(page);
-			page = NULL;
-			ceph_queue_writeback(inode);
-			r = wait_event_killable(ci->i_cap_wq,
-						context_is_writeable_or_written(inode, snapc));
-			ceph_put_snap_context(snapc);
-			if (r != 0)
-				break;
-			continue;
-		}
-
-		if (PageUptodate(page)) {
-			dout(" page %p already uptodate\n", page);
-			break;
-		}
+	int r;
 
+	if (ci->i_inline_version != CEPH_INLINE_NONE) {
 		/*
-		 * In some cases we don't need to read at all:
-		 * - full page write
-		 * - write that lies completely beyond EOF
-		 * - write that covers the the page from start to EOF or beyond it
+		 * In principle, we should never get here, as the inode should have been uninlined
+		 * before we're allowed to write to the page (in write_iter or page_mkwrite).
 		 */
-		if ((pos_in_page == 0 && len == PAGE_SIZE) ||
-		    (pos >= i_size_read(inode)) ||
-		    (pos_in_page == 0 && (pos + len) >= i_size_read(inode))) {
-			zero_user_segments(page, 0, pos_in_page,
-					   pos_in_page + len, PAGE_SIZE);
-			break;
-		}
+		WARN_ONCE(1, "ceph: write_begin called on still-inlined inode!\n");
 
 		/*
-		 * We need to read it. If we get back -EINPROGRESS, then the page was
-		 * handed off to fscache and it will be unlocked when the read completes.
-		 * Refind the page in that case so we can reacquire the page lock. Otherwise
-		 * we got a hard error or the read was completed synchronously.
+		 * Uptodate inline data should have been added
+		 * into page cache while getting Fcr caps.
 		 */
-		r = ceph_do_readpage(file, page);
-		if (r != -EINPROGRESS)
-			break;
+		if (index == 0) {
+			r = -EINVAL;
+			goto out;
+		}
+
+		page = grab_cache_page_write_begin(mapping, index, flags);
+		if (!page)
+			return -ENOMEM;
+
+		zero_user_segment(page, 0, PAGE_SIZE);
+		SetPageUptodate(page);
+		r = 0;
+		goto out;
 	}
 
+	r = netfs_write_begin(file, inode->i_mapping, pos, len, 0, &page, NULL,
+			      &ceph_netfs_write_begin_ops, NULL);
+out:
+	if (r == 0)
+		wait_on_page_fscache(page);
 	if (r < 0) {
-		if (page) {
-			unlock_page(page);
+		if (page)
 			put_page(page);
-		}
 	} else {
+		WARN_ON_ONCE(!PageLocked(page));
 		*pagep = page;
 	}
 	return r;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
