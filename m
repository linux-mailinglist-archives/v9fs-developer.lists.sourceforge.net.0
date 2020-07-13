Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F1121DD8E
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:39:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1UF-0007a2-SB; Mon, 13 Jul 2020 16:39:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1UE-0007Zu-6s
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q/UEZJh6DxJYQ3NJ0rsCIBC20umyEHBIxGnpwbS930w=; b=TrpZzeHFzfINW9s4kl9uqkcI2F
 ROem3blb38HyhcU/vQwz18bLQlG1Ho0LtOAvL53TfURKp6DXvDEUzAFmNxc4wzH9PqJHNAOTIW8sx
 bIOJAIXRcJJ/bTb5ojby8WKk8QPt4YmLvvIBTbAQml/bWnQ8kO7cILnHcnoH3RWcWIL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q/UEZJh6DxJYQ3NJ0rsCIBC20umyEHBIxGnpwbS930w=; b=TLntEnNInTmfoohaUayCOZEnUx
 Gz+ayLpEnwWmUFoAshblrtuT8vQeFQ6gvu4Kv2Yg0j1gLm7y7Db9UQdoHlSZ9vGl5Q8HNc+wASRCh
 3NoOTotXcbEpFjGZnSOyRmLNCbb5jspDWoHFLWdvVqpavBsV7RBvRwau/tEmuF56iVR8=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1UC-005eh8-PN
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q/UEZJh6DxJYQ3NJ0rsCIBC20umyEHBIxGnpwbS930w=;
 b=goHkOIOYNCmpPhcqMekVBwZ8yrEMevIHEPHt2q0nJ5MgRLfki8Y5DX1xN2c6HwidFJimEF
 GlH7Y3avnNxOh/+bhDVHDegkPemrPBfruaaFkFNtzT1osGvk/7nmnsgV0SlEhdZ+qV/Y7v
 N94rLMGIUI5R9S2x+0ydD867XyVuFI8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-_j0I8sfdN9yYFVLd3GQOIQ-1; Mon, 13 Jul 2020 12:39:15 -0400
X-MC-Unique: _j0I8sfdN9yYFVLd3GQOIQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9C5980040A;
 Mon, 13 Jul 2020 16:39:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2FD1B5D9CC;
 Mon, 13 Jul 2020 16:39:08 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:39:07 +0100
Message-ID: <159465834740.1377938.16996503111636748338.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
References: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1UC-005eh8-PN
Subject: [V9fs-developer] [PATCH 11/13] afs: Copy local writes to the cache
 when writing to the server
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

When writing to the server from afs_writepage() or afs_writepages(), copy
the data to the cache object too.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/write.c |  132 ++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 128 insertions(+), 4 deletions(-)

diff --git a/fs/afs/write.c b/fs/afs/write.c
index cb27027c06bb..10c60837775e 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -13,6 +13,9 @@
 #include <linux/pagevec.h>
 #include "internal.h"
 
+static void afs_write_to_cache(struct afs_vnode *vnode,
+			       pgoff_t start, pgoff_t end, loff_t a, loff_t b);
+
 /*
  * mark a page as having been made dirty and thus needing writeback
  */
@@ -427,6 +430,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 	count = 1;
 	if (test_set_page_writeback(primary_page))
 		BUG();
+	if (TestSetPageFsCache(primary_page))
+		BUG();
 
 	/* Find all consecutive lockable dirty pages that have contiguous
 	 * written regions, stopping when we find a page that is not
@@ -475,7 +480,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 				break;
 			if (!trylock_page(page))
 				break;
-			if (!PageDirty(page) || PageWriteback(page)) {
+			if (!PageDirty(page) || PageWriteback(page) ||
+			    PageFsCache(page)) {
 				unlock_page(page);
 				break;
 			}
@@ -497,6 +503,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 				BUG();
 			if (test_set_page_writeback(page))
 				BUG();
+			if (TestSetPageFsCache(page))
+				BUG();
 			unlock_page(page);
 			put_page(page);
 		}
@@ -534,6 +542,11 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 		end = i_size;
 
 	if (pos < i_size) {
+		/* Speculatively write to the cache.  We have to fix this up
+		 * later if the store fails.
+		 */
+		afs_write_to_cache(vnode, first, last, pos, end);
+
 		iov_iter_mapping(&iter, WRITE, mapping, pos, end - pos);
 		ret = afs_store_data(vnode, &iter, pos, first, last);
 	} else {
@@ -592,6 +605,10 @@ int afs_writepage(struct page *page, struct writeback_control *wbc)
 
 	_enter("{%lx},", page->index);
 
+#ifdef CONFIG_AFS_FSCACHE
+	wait_on_page_fscache(page);
+#endif
+
 	ret = afs_write_back_from_locked_page(page->mapping, wbc, page,
 					      wbc->range_end >> PAGE_SHIFT);
 	if (ret < 0) {
@@ -619,7 +636,7 @@ static int afs_writepages_region(struct address_space *mapping,
 
 	do {
 		n = find_get_pages_range_tag(mapping, &index, end,
-					PAGECACHE_TAG_DIRTY, 1, &page);
+					     PAGECACHE_TAG_DIRTY, 1, &page);
 		if (!n)
 			break;
 
@@ -644,10 +661,14 @@ static int afs_writepages_region(struct address_space *mapping,
 			continue;
 		}
 
-		if (PageWriteback(page)) {
+		if (PageWriteback(page) || PageFsCache(page)) {
 			unlock_page(page);
-			if (wbc->sync_mode != WB_SYNC_NONE)
+			if (wbc->sync_mode != WB_SYNC_NONE) {
 				wait_on_page_writeback(page);
+#ifdef CONFIG_AFS_FSCACHE
+				wait_on_page_fscache(page);
+#endif
+			}
 			put_page(page);
 			continue;
 		}
@@ -868,3 +889,106 @@ int afs_launder_page(struct page *page)
 	ClearPagePrivate(page);
 	return ret;
 }
+
+/*
+ * Clear the PG_fscache flag from a sequence of pages and wake up anyone who's
+ * waiting.  The last page is included in the sequence.
+ */
+static void afs_clear_fscache_bits(struct address_space *mapping,
+				   pgoff_t start, pgoff_t last)
+{
+	struct page *page;
+
+	XA_STATE(xas, &mapping->i_pages, start);
+
+	rcu_read_lock();
+	xas_for_each(&xas, page, last) {
+		unlock_page_fscache(page);
+	}
+	rcu_read_unlock();
+}
+
+/*
+ * Deal with the completion of writing the data to the cache.
+ */
+static void afs_write_to_cache_done(struct fscache_io_request *_req)
+{
+	struct afs_read *req = container_of(_req, struct afs_read, cache);
+	pgoff_t index = req->cache.pos >> PAGE_SHIFT;
+	pgoff_t last = index + req->cache.nr_pages - 1;
+
+	_enter("%lx,%x,%llx", index, req->cache.nr_pages, req->cache.transferred);
+
+	afs_clear_fscache_bits(req->cache.mapping, index, last);
+
+	if (req->cache.error && req->cache.error != -ENOBUFS) {
+		struct afs_vnode *vnode = req->vnode;
+		struct afs_vnode_cache_aux aux = {
+			.data_version = vnode->status.data_version,
+		};
+		_debug("inval wr %d", req->cache.error);
+		fscache_invalidate(req->cache.cookie, &aux,
+				   i_size_read(&vnode->vfs_inode), 0);
+	}
+}
+
+static const struct fscache_io_request_ops afs_write_req_ops = {
+	.get		= afs_req_get,
+	.put		= afs_req_put,
+};
+
+/*
+ * Save the write to the cache also.
+ */
+static void afs_write_to_cache(struct afs_vnode *vnode,
+			       pgoff_t start, pgoff_t last, loff_t a, loff_t b)
+{
+	struct afs_read *req;
+	struct iov_iter iter;
+
+	struct fscache_request_shape shape = {
+		.proposed_start		= start,
+		.proposed_nr_pages	= last - start + 1,
+		.max_io_pages		= UINT_MAX,
+		.i_size			= i_size_read(&vnode->vfs_inode),
+		.for_write		= true,
+	};
+
+	_enter("%lx,%lx,%llx,%llx", start, last, a, b);
+
+	fscache_shape_request(afs_vnode_cache(vnode), &shape);
+	if (!(shape.to_be_done & FSCACHE_WRITE_TO_CACHE) ||
+	    shape.actual_nr_pages == 0 ||
+	    shape.actual_start != start)
+		goto abandon;
+
+	if (shape.actual_nr_pages < shape.proposed_nr_pages) {
+		afs_clear_fscache_bits(vnode->vfs_inode.i_mapping,
+				       start + shape.actual_nr_pages,
+				       start + shape.proposed_nr_pages - 1);
+		last = start + shape.actual_nr_pages - 1;
+		b = (loff_t)(last + 1) << PAGE_SHIFT;
+	}
+
+	req = afs_alloc_read(GFP_NOFS);
+	if (!req)
+		goto abandon;
+
+	fscache_init_io_request(&req->cache, afs_vnode_cache(vnode),
+				&afs_write_req_ops);
+	req->vnode		= vnode;
+	req->cache.pos		= round_down(a, shape.dio_block_size);
+	req->cache.len		= round_up(b, shape.dio_block_size) - req->cache.pos;
+	req->cache.nr_pages	= shape.actual_nr_pages;
+	req->cache.mapping	= vnode->vfs_inode.i_mapping;
+	req->cache.io_done	= &afs_write_to_cache_done;
+
+	iov_iter_mapping(&iter, WRITE, req->cache.mapping,
+			 req->cache.pos, req->cache.len);
+	fscache_write(&req->cache, &iter);
+	afs_put_read(req);
+	return;
+
+abandon:
+	afs_clear_fscache_bits(vnode->vfs_inode.i_mapping, start, last);
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
