Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 167792BAC58
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:03:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg7wh-0001sy-7s; Fri, 20 Nov 2020 15:03:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg7wf-0001sT-UY
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zNBhm9QpHO+0SZC1AS77TFXnL/TtyW0E3XLeila/1wE=; b=MEEs/T99aX9LSLMsk75lZCOfPA
 WUxJBY6cN2LUrjAExcRMNcZJ+NBJ8s8EQTfQVkFG2z4q/lPqsQytemUGRHCqPyhvW+2dzQBq4c/cE
 tA8hPXvhGY2DkCZThNOFS/Qr4s0nZDTD5fqxtpubjN83Hv0OXF8vsxI3oD4BK+ENBT/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zNBhm9QpHO+0SZC1AS77TFXnL/TtyW0E3XLeila/1wE=; b=WJJ8Cw8Brim1xodG5lSLjYdbI3
 LbOTuxf0Mv4ix1Zjfrq+v3nYfr/wCd4qKnbkv/Y8+eRuSccrSzaVhW/96kNfTbe4J/WGlEVSyQDlg
 CHqqmgdAtOLkj3bttn2YDJZT6ukkUxQLrlVloG2f27QnQ13HygR77m7YkeBQDtpehBbE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg7wZ-00AblR-B3
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605884590;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zNBhm9QpHO+0SZC1AS77TFXnL/TtyW0E3XLeila/1wE=;
 b=bXMBEl5cm8EmO28VPvPRbXbQzKpBZxpJVQaK9k2mR7csldtzqELpcJnBjG/pl9Raulva4q
 v+PBv79jLy6AbeLsxivKRYXuzsz1NZV0Mw+jESurlLAiemh+O7xI2/UvUbYC1IGqFaMpax
 IMGYfYpZ5RYu3ZeilidxbXa6VJAUPMU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-1HPAw0GDMG-ytnsyQZ_TGg-1; Fri, 20 Nov 2020 10:03:08 -0500
X-MC-Unique: 1HPAw0GDMG-ytnsyQZ_TGg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF19D63CCB;
 Fri, 20 Nov 2020 15:03:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D05C19C46;
 Fri, 20 Nov 2020 15:02:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:02:59 +0000
Message-ID: <160588457929.3465195.1730097418904945578.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg7wZ-00AblR-B3
Subject: [V9fs-developer] [RFC PATCH 02/76] afs: Disable use of the fscache
 I/O routines
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Disable use of the fscache I/O routined by the AFS filesystem.  It's about
to transition to passing iov_iters down and fscache is about to have its
I/O path to use iov_iter, so all that needs to change.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/file.c  |  199 ++++++++++----------------------------------------------
 fs/afs/inode.c |    2 -
 fs/afs/write.c |   10 ---
 3 files changed, 36 insertions(+), 175 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 85f5adf21aa0..6d43713fde01 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -203,24 +203,6 @@ void afs_put_read(struct afs_read *req)
 	}
 }
 
-#ifdef CONFIG_AFS_FSCACHE
-/*
- * deal with notification that a page was read from the cache
- */
-static void afs_file_readpage_read_complete(struct page *page,
-					    void *data,
-					    int error)
-{
-	_enter("%p,%p,%d", page, data, error);
-
-	/* if the read completes with an error, we just unlock the page and let
-	 * the VM reissue the readpage */
-	if (!error)
-		SetPageUptodate(page);
-	unlock_page(page);
-}
-#endif
-
 static void afs_fetch_data_success(struct afs_operation *op)
 {
 	struct afs_vnode *vnode = op->file[0].vnode;
@@ -288,89 +270,46 @@ int afs_page_filler(void *data, struct page *page)
 	if (test_bit(AFS_VNODE_DELETED, &vnode->flags))
 		goto error;
 
-	/* is it cached? */
-#ifdef CONFIG_AFS_FSCACHE
-	ret = fscache_read_or_alloc_page(vnode->cache,
-					 page,
-					 afs_file_readpage_read_complete,
-					 NULL,
-					 GFP_KERNEL);
-#else
-	ret = -ENOBUFS;
-#endif
-	switch (ret) {
-		/* read BIO submitted (page in cache) */
-	case 0:
-		break;
-
-		/* page not yet cached */
-	case -ENODATA:
-		_debug("cache said ENODATA");
-		goto go_on;
-
-		/* page will not be cached */
-	case -ENOBUFS:
-		_debug("cache said ENOBUFS");
-
-		fallthrough;
-	default:
-	go_on:
-		req = kzalloc(struct_size(req, array, 1), GFP_KERNEL);
-		if (!req)
-			goto enomem;
-
-		/* We request a full page.  If the page is a partial one at the
-		 * end of the file, the server will return a short read and the
-		 * unmarshalling code will clear the unfilled space.
-		 */
-		refcount_set(&req->usage, 1);
-		req->pos = (loff_t)page->index << PAGE_SHIFT;
-		req->len = PAGE_SIZE;
-		req->nr_pages = 1;
-		req->pages = req->array;
-		req->pages[0] = page;
-		get_page(page);
-
-		/* read the contents of the file from the server into the
-		 * page */
-		ret = afs_fetch_data(vnode, key, req);
-		afs_put_read(req);
-
-		if (ret < 0) {
-			if (ret == -ENOENT) {
-				_debug("got NOENT from server"
-				       " - marking file deleted and stale");
-				set_bit(AFS_VNODE_DELETED, &vnode->flags);
-				ret = -ESTALE;
-			}
-
-#ifdef CONFIG_AFS_FSCACHE
-			fscache_uncache_page(vnode->cache, page);
-#endif
-			BUG_ON(PageFsCache(page));
-
-			if (ret == -EINTR ||
-			    ret == -ENOMEM ||
-			    ret == -ERESTARTSYS ||
-			    ret == -EAGAIN)
-				goto error;
-			goto io_error;
-		}
+	req = kzalloc(struct_size(req, array, 1), GFP_KERNEL);
+	if (!req)
+		goto enomem;
 
-		SetPageUptodate(page);
+	/* We request a full page.  If the page is a partial one at the
+	 * end of the file, the server will return a short read and the
+	 * unmarshalling code will clear the unfilled space.
+	 */
+	refcount_set(&req->usage, 1);
+	req->pos = (loff_t)page->index << PAGE_SHIFT;
+	req->len = PAGE_SIZE;
+	req->nr_pages = 1;
+	req->pages = req->array;
+	req->pages[0] = page;
+	get_page(page);
+
+	/* read the contents of the file from the server into the
+	 * page */
+	ret = afs_fetch_data(vnode, key, req);
+	afs_put_read(req);
 
-		/* send the page to the cache */
-#ifdef CONFIG_AFS_FSCACHE
-		if (PageFsCache(page) &&
-		    fscache_write_page(vnode->cache, page, vnode->status.size,
-				       GFP_KERNEL) != 0) {
-			fscache_uncache_page(vnode->cache, page);
-			BUG_ON(PageFsCache(page));
+	if (ret < 0) {
+		if (ret == -ENOENT) {
+			_debug("got NOENT from server"
+			       " - marking file deleted and stale");
+			set_bit(AFS_VNODE_DELETED, &vnode->flags);
+			ret = -ESTALE;
 		}
-#endif
-		unlock_page(page);
+
+		if (ret == -EINTR ||
+		    ret == -ENOMEM ||
+		    ret == -ERESTARTSYS ||
+		    ret == -EAGAIN)
+			goto error;
+		goto io_error;
 	}
 
+	SetPageUptodate(page);
+	unlock_page(page);
+
 	_leave(" = 0");
 	return 0;
 
@@ -416,23 +355,10 @@ static int afs_readpage(struct file *file, struct page *page)
  */
 static void afs_readpages_page_done(struct afs_read *req)
 {
-#ifdef CONFIG_AFS_FSCACHE
-	struct afs_vnode *vnode = req->vnode;
-#endif
 	struct page *page = req->pages[req->index];
 
 	req->pages[req->index] = NULL;
 	SetPageUptodate(page);
-
-	/* send the page to the cache */
-#ifdef CONFIG_AFS_FSCACHE
-	if (PageFsCache(page) &&
-	    fscache_write_page(vnode->cache, page, vnode->status.size,
-			       GFP_KERNEL) != 0) {
-		fscache_uncache_page(vnode->cache, page);
-		BUG_ON(PageFsCache(page));
-	}
-#endif
 	unlock_page(page);
 	put_page(page);
 }
@@ -491,9 +417,6 @@ static int afs_readpages_one(struct file *file, struct address_space *mapping,
 		index = page->index;
 		if (add_to_page_cache_lru(page, mapping, index,
 					  readahead_gfp_mask(mapping))) {
-#ifdef CONFIG_AFS_FSCACHE
-			fscache_uncache_page(vnode->cache, page);
-#endif
 			put_page(page);
 			break;
 		}
@@ -526,9 +449,6 @@ static int afs_readpages_one(struct file *file, struct address_space *mapping,
 	for (i = 0; i < req->nr_pages; i++) {
 		page = req->pages[i];
 		if (page) {
-#ifdef CONFIG_AFS_FSCACHE
-			fscache_uncache_page(vnode->cache, page);
-#endif
 			SetPageError(page);
 			unlock_page(page);
 		}
@@ -560,37 +480,6 @@ static int afs_readpages(struct file *file, struct address_space *mapping,
 	}
 
 	/* attempt to read as many of the pages as possible */
-#ifdef CONFIG_AFS_FSCACHE
-	ret = fscache_read_or_alloc_pages(vnode->cache,
-					  mapping,
-					  pages,
-					  &nr_pages,
-					  afs_file_readpage_read_complete,
-					  NULL,
-					  mapping_gfp_mask(mapping));
-#else
-	ret = -ENOBUFS;
-#endif
-
-	switch (ret) {
-		/* all pages are being read from the cache */
-	case 0:
-		BUG_ON(!list_empty(pages));
-		BUG_ON(nr_pages != 0);
-		_leave(" = 0 [reading all]");
-		return 0;
-
-		/* there were pages that couldn't be read from the cache */
-	case -ENODATA:
-	case -ENOBUFS:
-		break;
-
-		/* other error */
-	default:
-		_leave(" = %d", ret);
-		return ret;
-	}
-
 	while (!list_empty(pages)) {
 		ret = afs_readpages_one(file, mapping, pages);
 		if (ret < 0)
@@ -670,17 +559,6 @@ static void afs_invalidatepage(struct page *page, unsigned int offset,
 
 	BUG_ON(!PageLocked(page));
 
-#ifdef CONFIG_AFS_FSCACHE
-	/* we clean up only if the entire page is being invalidated */
-	if (offset == 0 && length == PAGE_SIZE) {
-		if (PageFsCache(page)) {
-			struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
-			fscache_wait_on_page_write(vnode->cache, page);
-			fscache_uncache_page(vnode->cache, page);
-		}
-	}
-#endif
-
 	if (PagePrivate(page))
 		afs_invalidate_dirty(page, offset, length);
 
@@ -702,13 +580,6 @@ static int afs_releasepage(struct page *page, gfp_t gfp_flags)
 
 	/* deny if page is being written to the cache and the caller hasn't
 	 * elected to wait */
-#ifdef CONFIG_AFS_FSCACHE
-	if (!fscache_maybe_release_page(vnode->cache, page, gfp_flags)) {
-		_leave(" = F [cache busy]");
-		return 0;
-	}
-#endif
-
 	if (PagePrivate(page)) {
 		priv = (unsigned long)detach_page_private(page);
 		trace_afs_page_dirty(vnode, tracepoint_string("rel"),
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 0fe8844b4bee..79c8dc06c0b8 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -420,7 +420,7 @@ static void afs_get_inode_cache(struct afs_vnode *vnode)
 	} __packed key;
 	struct afs_vnode_cache_aux aux;
 
-	if (vnode->status.type == AFS_FTYPE_DIR) {
+	if (vnode->status.type != AFS_FTYPE_FILE) {
 		vnode->cache = NULL;
 		return;
 	}
diff --git a/fs/afs/write.c b/fs/afs/write.c
index c9195fc67fd8..92eaa88000d7 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -847,9 +847,6 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
 	/* Wait for the page to be written to the cache before we allow it to
 	 * be modified.  We then assume the entire page will need writing back.
 	 */
-#ifdef CONFIG_AFS_FSCACHE
-	fscache_wait_on_page_write(vnode->cache, vmf->page);
-#endif
 
 	if (PageWriteback(vmf->page) &&
 	    wait_on_page_bit_killable(vmf->page, PG_writeback) < 0)
@@ -936,12 +933,5 @@ int afs_launder_page(struct page *page)
 	priv = (unsigned long)detach_page_private(page);
 	trace_afs_page_dirty(vnode, tracepoint_string("laundered"),
 			     page->index, priv);
-
-#ifdef CONFIG_AFS_FSCACHE
-	if (PageFsCache(page)) {
-		fscache_wait_on_page_write(vnode->cache, page);
-		fscache_uncache_page(vnode->cache, page);
-	}
-#endif
 	return ret;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
