Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BA9334443
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Mar 2021 18:01:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lK2Cm-0002yO-3l; Wed, 10 Mar 2021 17:01:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lK2Ce-0002wb-Sq
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Mar 2021 17:00:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MUWy5v1OQUbj7p0Vb5UgsKMrIPeKLKkB6nhoC2zCYc8=; b=alln68x8OQhGtcWhicr5qV6Ebr
 5SideUqM+uAYOkKXmWUDEAPsJoPdeDHHPJgMeutf8itIIO9wPBanRHSw65V5XBrWMLL8EyywYrsVI
 ib3ydbreSJ9MUiyrYUOF9MlFPic9kkJU8zaYo6mlkMW890shc4UwkHeUoKDrWbFl/UWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MUWy5v1OQUbj7p0Vb5UgsKMrIPeKLKkB6nhoC2zCYc8=; b=Spgytj27eSkYdUvILQ59r5sCFL
 BG1Gi/fuVC0UgukT/wLLKr99Tc0YSaqLT3JeA+UBCA3SO0AR8PFh60pU3XNTadsX8oRI1KbJe1WDw
 23/oYt+c5mDHiNrPFdDuvyXCqdHc6vGFrabZI5xkUghgBvmYANcHvDFRUCmHXaTWu4pU=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lK2CL-00A1Oh-UT
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Mar 2021 17:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615395632;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MUWy5v1OQUbj7p0Vb5UgsKMrIPeKLKkB6nhoC2zCYc8=;
 b=Tmr0wzetBJuQ6b38IQnLSRgcqPPdbPhBUpUTzVcAoHM5Y49o//1OSjTSF3+8iKnbOP5X94
 nABfAUA/x9TDh2vs/9lRKQPRhOSpgP6jSjla8tnTJ5LFum+df3mh78L9Sp0imXbhf5bk5d
 OCHi61wtr2BHclonAWUzQnoTPIBbpuw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590-ppoqFDQVOqeBYJAO46FhVg-1; Wed, 10 Mar 2021 12:00:30 -0500
X-MC-Unique: ppoqFDQVOqeBYJAO46FhVg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3011D8015BA;
 Wed, 10 Mar 2021 17:00:27 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D2AE5E16B;
 Wed, 10 Mar 2021 17:00:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 10 Mar 2021 17:00:19 +0000
Message-ID: <161539561926.286939.5729036262354802339.stgit@warthog.procyon.org.uk>
In-Reply-To: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
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
X-Headers-End: 1lK2CL-00A1Oh-UT
Subject: [V9fs-developer] [PATCH v4 27/28] afs: Use new fscache read helper
 API
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make AFS use the new fscache read helpers to implement the VM read
operations:

 - afs_readpage() now hands off responsibility to fscache_readpage().

 - afs_readpages() is gone and replaced with afs_readahead().

 - afs_readahead() just hands off responsibility to fscache_readahead().

These make use of the cache if a cookie is supplied, otherwise just call
the ->issue_op() method a sufficient number of times to complete the entire
request.

Changes:
- Folded in error handling fixes to afs_req_issue_op().
- Added flag to netfs_subreq_terminated() to indicate that the caller may
  have been running async and stuff that might sleep needs punting to a
  workqueue.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/160588542733.3465195.7526541422073350302.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118158436.1232039.3884845981224091996.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161053540.2537118.14904446369309535330.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340418739.1303470.5908092911600241280.stgit@warthog.procyon.org.uk/ # v3
---

 fs/afs/Kconfig    |    1 
 fs/afs/file.c     |  327 +++++++++++++----------------------------------------
 fs/afs/fsclient.c |    1 
 fs/afs/internal.h |    3 
 4 files changed, 83 insertions(+), 249 deletions(-)

diff --git a/fs/afs/Kconfig b/fs/afs/Kconfig
index 1ad211d72b3b..fc8ba9142f2f 100644
--- a/fs/afs/Kconfig
+++ b/fs/afs/Kconfig
@@ -4,6 +4,7 @@ config AFS_FS
 	depends on INET
 	select AF_RXRPC
 	select DNS_RESOLVER
+	select NETFS_SUPPORT
 	help
 	  If you say Y here, you will get an experimental Andrew File System
 	  driver. It currently only supports unsecured read-only AFS access.
diff --git a/fs/afs/file.c b/fs/afs/file.c
index 231e9fd7882b..99bb4649a306 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -14,6 +14,7 @@
 #include <linux/gfp.h>
 #include <linux/task_io_accounting_ops.h>
 #include <linux/mm.h>
+#include <linux/netfs.h>
 #include "internal.h"
 
 static int afs_file_mmap(struct file *file, struct vm_area_struct *vma);
@@ -22,8 +23,7 @@ static void afs_invalidatepage(struct page *page, unsigned int offset,
 			       unsigned int length);
 static int afs_releasepage(struct page *page, gfp_t gfp_flags);
 
-static int afs_readpages(struct file *filp, struct address_space *mapping,
-			 struct list_head *pages, unsigned nr_pages);
+static void afs_readahead(struct readahead_control *ractl);
 
 const struct file_operations afs_file_operations = {
 	.open		= afs_open,
@@ -48,7 +48,7 @@ const struct inode_operations afs_file_inode_operations = {
 
 const struct address_space_operations afs_fs_aops = {
 	.readpage	= afs_readpage,
-	.readpages	= afs_readpages,
+	.readahead	= afs_readahead,
 	.set_page_dirty	= afs_set_page_dirty,
 	.launder_page	= afs_launder_page,
 	.releasepage	= afs_releasepage,
@@ -185,61 +185,17 @@ int afs_release(struct inode *inode, struct file *file)
 }
 
 /*
- * Handle completion of a read operation.
+ * Allocate a new read record.
  */
-static void afs_file_read_done(struct afs_read *req)
+struct afs_read *afs_alloc_read(gfp_t gfp)
 {
-	struct afs_vnode *vnode = req->vnode;
-	struct page *page;
-	pgoff_t index = req->pos >> PAGE_SHIFT;
-	pgoff_t last = index + req->nr_pages - 1;
-
-	XA_STATE(xas, &vnode->vfs_inode.i_mapping->i_pages, index);
-
-	if (iov_iter_count(req->iter) > 0) {
-		/* The read was short - clear the excess buffer. */
-		_debug("afterclear %zx %zx %llx/%llx",
-		       req->iter->iov_offset,
-		       iov_iter_count(req->iter),
-		       req->actual_len, req->len);
-		iov_iter_zero(iov_iter_count(req->iter), req->iter);
-	}
-
-	rcu_read_lock();
-	xas_for_each(&xas, page, last) {
-		page_endio(page, false, 0);
-		put_page(page);
-	}
-	rcu_read_unlock();
-
-	task_io_account_read(req->len);
-	req->cleanup = NULL;
-}
-
-/*
- * Dispose of our locks and refs on the pages if the read failed.
- */
-static void afs_file_read_cleanup(struct afs_read *req)
-{
-	struct page *page;
-	pgoff_t index = req->pos >> PAGE_SHIFT;
-	pgoff_t last = index + req->nr_pages - 1;
-
-	if (req->iter) {
-		XA_STATE(xas, &req->vnode->vfs_inode.i_mapping->i_pages, index);
-
-		_enter("%lu,%u,%zu", index, req->nr_pages, iov_iter_count(req->iter));
+	struct afs_read *req;
 
-		rcu_read_lock();
-		xas_for_each(&xas, page, last) {
-			BUG_ON(xa_is_value(page));
-			BUG_ON(PageCompound(page));
+	req = kzalloc(sizeof(struct afs_read), gfp);
+	if (req)
+		refcount_set(&req->usage, 1);
 
-			page_endio(page, false, req->error);
-			put_page(page);
-		}
-		rcu_read_unlock();
-	}
+	return req;
 }
 
 /*
@@ -258,14 +214,20 @@ void afs_put_read(struct afs_read *req)
 static void afs_fetch_data_notify(struct afs_operation *op)
 {
 	struct afs_read *req = op->fetch.req;
+	struct netfs_read_subrequest *subreq = req->subreq;
 	int error = op->error;
 
 	if (error == -ECONNABORTED)
 		error = afs_abort_to_error(op->ac.abort_code);
 	req->error = error;
 
-	if (req->done)
+	if (subreq) {
+		__set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
+		netfs_subreq_terminated(subreq, error ?: req->actual_len, false);
+		req->subreq = NULL;
+	} else if (req->done) {
 		req->done(req);
+	}
 }
 
 static void afs_fetch_data_success(struct afs_operation *op)
@@ -309,8 +271,11 @@ int afs_fetch_data(struct afs_vnode *vnode, struct afs_read *req)
 	       key_serial(req->key));
 
 	op = afs_alloc_operation(req->key, vnode->volume);
-	if (IS_ERR(op))
+	if (IS_ERR(op)) {
+		if (req->subreq)
+			netfs_subreq_terminated(req->subreq, PTR_ERR(op), false);
 		return PTR_ERR(op);
+	}
 
 	afs_op_set_vnode(op, 0, vnode);
 
@@ -319,222 +284,86 @@ int afs_fetch_data(struct afs_vnode *vnode, struct afs_read *req)
 	return afs_do_sync_operation(op);
 }
 
-/*
- * read page from file, directory or symlink, given a key to use
- */
-static int afs_page_filler(struct key *key, struct page *page)
+static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
 {
-	struct inode *inode = page->mapping->host;
-	struct afs_vnode *vnode = AFS_FS_I(inode);
-	struct afs_read *req;
-	int ret;
-
-	_enter("{%x},{%lu},{%lu}", key_serial(key), inode->i_ino, page->index);
+	struct afs_vnode *vnode = AFS_FS_I(subreq->rreq->inode);
+	struct afs_read *fsreq;
 
-	BUG_ON(!PageLocked(page));
-
-	ret = -ESTALE;
-	if (test_bit(AFS_VNODE_DELETED, &vnode->flags))
-		goto error;
+	fsreq = afs_alloc_read(GFP_NOFS);
+	if (!fsreq)
+		return netfs_subreq_terminated(subreq, -ENOMEM, false);
 
-	req = kzalloc(sizeof(struct afs_read), GFP_KERNEL);
-	if (!req)
-		goto enomem;
-
-	refcount_set(&req->usage, 1);
-	req->vnode		= vnode;
-	req->key		= key_get(key);
-	req->pos		= (loff_t)page->index << PAGE_SHIFT;
-	req->len		= thp_size(page);
-	req->nr_pages		= thp_nr_pages(page);
-	req->done		= afs_file_read_done;
-	req->cleanup		= afs_file_read_cleanup;
-
-	get_page(page);
-	iov_iter_xarray(&req->def_iter, READ, &page->mapping->i_pages,
-			req->pos, req->len);
-	req->iter = &req->def_iter;
-
-	ret = afs_fetch_data(vnode, req);
-	if (ret < 0)
-		goto fetch_error;
+	fsreq->subreq	= subreq;
+	fsreq->pos	= subreq->start + subreq->transferred;
+	fsreq->len	= subreq->len   - subreq->transferred;
+	fsreq->key	= subreq->rreq->netfs_priv;
+	fsreq->vnode	= vnode;
+	fsreq->iter	= &fsreq->def_iter;
 
-	afs_put_read(req);
-	_leave(" = 0");
-	return 0;
+	iov_iter_xarray(&fsreq->def_iter, READ,
+			&fsreq->vnode->vfs_inode.i_mapping->i_pages,
+			fsreq->pos, fsreq->len);
 
-fetch_error:
-	switch (ret) {
-	case -EINTR:
-	case -ENOMEM:
-	case -ERESTARTSYS:
-	case -EAGAIN:
-		afs_put_read(req);
-		goto error;
-	case -ENOENT:
-		_debug("got NOENT from server - marking file deleted and stale");
-		set_bit(AFS_VNODE_DELETED, &vnode->flags);
-		ret = -ESTALE;
-		/* Fall through */
-	default:
-		page_endio(page, false, ret);
-		afs_put_read(req);
-		_leave(" = %d", ret);
-		return ret;
-	}
-
-enomem:
-	ret = -ENOMEM;
-error:
-	unlock_page(page);
-	_leave(" = %d", ret);
-	return ret;
+	afs_fetch_data(fsreq->vnode, fsreq);
 }
 
-/*
- * read page from file, directory or symlink, given a file to nominate the key
- * to be used
- */
-static int afs_readpage(struct file *file, struct page *page)
+static int afs_symlink_readpage(struct page *page)
 {
-	struct key *key;
+	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
+	struct afs_read *fsreq;
 	int ret;
 
-	if (file) {
-		key = afs_file_key(file);
-		ASSERT(key != NULL);
-		ret = afs_page_filler(key, page);
-	} else {
-		struct inode *inode = page->mapping->host;
-		key = afs_request_key(AFS_FS_S(inode->i_sb)->cell);
-		if (IS_ERR(key)) {
-			ret = PTR_ERR(key);
-		} else {
-			ret = afs_page_filler(key, page);
-			key_put(key);
-		}
-	}
-	return ret;
-}
-
-/*
- * Read a contiguous set of pages.
- */
-static int afs_readpages_one(struct file *file, struct address_space *mapping,
-			     struct list_head *pages)
-{
-	struct afs_vnode *vnode = AFS_FS_I(mapping->host);
-	struct afs_read *req;
-	struct list_head *p;
-	struct page *first, *page;
-	pgoff_t index;
-	int ret, n;
-
-	/* Count the number of contiguous pages at the front of the list.  Note
-	 * that the list goes prev-wards rather than next-wards.
-	 */
-	first = lru_to_page(pages);
-	index = first->index + 1;
-	n = 1;
-	for (p = first->lru.prev; p != pages; p = p->prev) {
-		page = list_entry(p, struct page, lru);
-		if (page->index != index)
-			break;
-		index++;
-		n++;
-	}
-
-	req = kzalloc(sizeof(struct afs_read), GFP_NOFS);
-	if (!req)
+	fsreq = afs_alloc_read(GFP_NOFS);
+	if (!fsreq)
 		return -ENOMEM;
 
-	refcount_set(&req->usage, 1);
-	req->vnode = vnode;
-	req->key = key_get(afs_file_key(file));
-	req->done = afs_file_read_done;
-	req->cleanup = afs_file_read_cleanup;
-	req->pos = first->index;
-	req->pos <<= PAGE_SHIFT;
-
-	/* Add pages to the LRU until it fails.  We keep the pages ref'd and
-	 * locked until the read is complete.
-	 *
-	 * Note that it's possible for the file size to change whilst we're
-	 * doing this, but we rely on the server returning less than we asked
-	 * for if the file shrank.  We also rely on this to deal with a partial
-	 * page at the end of the file.
-	 */
-	do {
-		page = lru_to_page(pages);
-		list_del(&page->lru);
-		index = page->index;
-		if (add_to_page_cache_lru(page, mapping, index,
-					  readahead_gfp_mask(mapping))) {
-			put_page(page);
-			break;
-		}
-
-		req->nr_pages++;
-	} while (req->nr_pages < n);
-
-	if (req->nr_pages == 0) {
-		afs_put_read(req);
-		return 0;
-	}
-
-	req->len = req->nr_pages * PAGE_SIZE;
-	iov_iter_xarray(&req->def_iter, READ, &file->f_mapping->i_pages,
-			req->pos, req->len);
-	req->iter = &req->def_iter;
+	fsreq->pos	= page->index * PAGE_SIZE;
+	fsreq->len	= PAGE_SIZE;
+	fsreq->vnode	= vnode;
+	fsreq->iter	= &fsreq->def_iter;
+	iov_iter_xarray(&fsreq->def_iter, READ, &page->mapping->i_pages,
+			fsreq->pos, fsreq->len);
 
-	ret = afs_fetch_data(vnode, req);
-	if (ret < 0)
-		goto error;
+	ret = afs_fetch_data(fsreq->vnode, fsreq);
+	page_endio(page, false, ret);
+	return ret;
+}
 
-	afs_put_read(req);
-	return 0;
+static void afs_init_rreq(struct netfs_read_request *rreq, struct file *file)
+{
+	rreq->netfs_priv = key_get(afs_file_key(file));
+}
 
-error:
-	if (ret == -ENOENT) {
-		_debug("got NOENT from server - marking file deleted and stale");
-		set_bit(AFS_VNODE_DELETED, &vnode->flags);
-		ret = -ESTALE;
-	}
+static int afs_begin_cache_operation(struct netfs_read_request *rreq)
+{
+	struct afs_vnode *vnode = AFS_FS_I(rreq->inode);
 
-	afs_put_read(req);
-	return ret;
+	return fscache_begin_read_operation(rreq, afs_vnode_cache(vnode));
 }
 
-/*
- * read a set of pages
- */
-static int afs_readpages(struct file *file, struct address_space *mapping,
-			 struct list_head *pages, unsigned nr_pages)
+static void afs_priv_cleanup(struct address_space *mapping, void *netfs_priv)
 {
-	struct key *key = afs_file_key(file);
-	struct afs_vnode *vnode;
-	int ret = 0;
-
-	_enter("{%d},{%lu},,%d",
-	       key_serial(key), mapping->host->i_ino, nr_pages);
+	key_put(netfs_priv);
+}
 
-	ASSERT(key != NULL);
+static const struct netfs_read_request_ops afs_req_ops = {
+	.init_rreq		= afs_init_rreq,
+	.begin_cache_operation	= afs_begin_cache_operation,
+	.issue_op		= afs_req_issue_op,
+	.cleanup		= afs_priv_cleanup,
+};
 
-	vnode = AFS_FS_I(mapping->host);
-	if (test_bit(AFS_VNODE_DELETED, &vnode->flags)) {
-		_leave(" = -ESTALE");
-		return -ESTALE;
-	}
+static int afs_readpage(struct file *file, struct page *page)
+{
+	if (!file)
+		return afs_symlink_readpage(page);
 
-	/* attempt to read as many of the pages as possible */
-	while (!list_empty(pages)) {
-		ret = afs_readpages_one(file, mapping, pages);
-		if (ret < 0)
-			break;
-	}
+	return netfs_readpage(file, page, &afs_req_ops, NULL);
+}
 
-	_leave(" = %d [netting]", ret);
-	return ret;
+static void afs_readahead(struct readahead_control *ractl)
+{
+	netfs_readahead(ractl, &afs_req_ops, NULL);
 }
 
 /*
diff --git a/fs/afs/fsclient.c b/fs/afs/fsclient.c
index 5e34f4dbd385..2f695a260442 100644
--- a/fs/afs/fsclient.c
+++ b/fs/afs/fsclient.c
@@ -10,6 +10,7 @@
 #include <linux/sched.h>
 #include <linux/circ_buf.h>
 #include <linux/iversion.h>
+#include <linux/netfs.h>
 #include "internal.h"
 #include "afs_fs.h"
 #include "xdr_fs.h"
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 62c1b38fa98b..96b33d2e3116 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -14,6 +14,7 @@
 #include <linux/key.h>
 #include <linux/workqueue.h>
 #include <linux/sched.h>
+#define FSCACHE_USE_NEW_IO_API
 #include <linux/fscache.h>
 #include <linux/backing-dev.h>
 #include <linux/uuid.h>
@@ -207,6 +208,7 @@ struct afs_read {
 	loff_t			file_size;	/* File size returned by server */
 	struct key		*key;		/* The key to use to reissue the read */
 	struct afs_vnode	*vnode;		/* The file being read into. */
+	struct netfs_read_subrequest *subreq;	/* Fscache helper read request this belongs to */
 	afs_dataversion_t	data_version;	/* Version number returned by server */
 	refcount_t		usage;
 	unsigned int		call_debug_id;
@@ -1049,6 +1051,7 @@ extern void afs_put_wb_key(struct afs_wb_key *);
 extern int afs_open(struct inode *, struct file *);
 extern int afs_release(struct inode *, struct file *);
 extern int afs_fetch_data(struct afs_vnode *, struct afs_read *);
+extern struct afs_read *afs_alloc_read(gfp_t);
 extern void afs_put_read(struct afs_read *);
 
 static inline struct afs_read *afs_get_read(struct afs_read *req)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
