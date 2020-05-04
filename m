Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC6F1C4578
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 20:17:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVfeR-0002XY-8D; Mon, 04 May 2020 18:17:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVfeP-0002XP-5g
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 18:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZuwzthaQnSNVn03puNWRMvA3AfX1NCjj+U0YsPzF/UI=; b=BXQ9quxv1+HWvofGgwHWOGWAPf
 37iQsCazRKuWwTCs2HPfh6Re/Ji3iYnJbm/Y17HdfoDuEdtmOCatd4Y/DQ/MOGhyJyMiE9tF+tFhA
 uDYPuTL+vo/z5RhAy+c42VYb5+6UGVDVuwS9x/pukId8GTJjxWUxrw0N2i2zSKKW8ISI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZuwzthaQnSNVn03puNWRMvA3AfX1NCjj+U0YsPzF/UI=; b=i3QbXEbJ5ele6uBR0Sc+OoIO30
 ZrMQnn5N0HiWZnI7DWyqVZle4JSNMX0JrOO+lutfVFSL9ofl3ubjVgHPIRafqrWGA9CA8fAKJZwxc
 yo6NAJorRlQMu0KF31n3zmucKstyzL16BAqR7/JQ4YEBQXWz/hDg4E1Te8/wEt7EfpVk=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVfeN-007FqQ-LR
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 18:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588616221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZuwzthaQnSNVn03puNWRMvA3AfX1NCjj+U0YsPzF/UI=;
 b=PN9qCxsROpr/+8TFS5WSdchS6q4TZIzRtgp0QtswshgZ7zF4AxLQfB1Czsp0TWXDrB/5ZQ
 +AVRHepjsNDcR+b2ngrqB87tWLKnLyPgrdxOebZdAH/Cl2WvhMl0wvq6kJiK7ftGTbAxuD
 bwo1bPmqO7GYjez6TyVGAmcVfzIkVKQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-59IuCeZMP6WrTHdqLI9BLg-1; Mon, 04 May 2020 13:16:04 -0400
X-MC-Unique: 59IuCeZMP6WrTHdqLI9BLg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6857119200CD;
 Mon,  4 May 2020 17:16:02 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ADDD35C1B2;
 Mon,  4 May 2020 17:15:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:15:57 +0100
Message-ID: <158861255792.340223.1309939976492492377.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVfeN-007FqQ-LR
Subject: [V9fs-developer] [RFC PATCH 56/61] afs: Copy local writes to the
 cache when writing to the server
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

When writing to the server from afs_writepage() or afs_writepages(), copy
the data to the cache object too.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/write.c |  124 ++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 119 insertions(+), 5 deletions(-)

diff --git a/fs/afs/write.c b/fs/afs/write.c
index 312d8f07533e..38637dc6043c 100644
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
@@ -389,6 +392,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 	count = 1;
 	if (test_set_page_writeback(primary_page))
 		BUG();
+	if (TestSetPageFsCache(primary_page))
+		BUG();
 
 	/* Find all consecutive lockable dirty pages that have contiguous
 	 * written regions, stopping when we find a page that is not
@@ -437,7 +442,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 				break;
 			if (!trylock_page(page))
 				break;
-			if (!PageDirty(page) || PageWriteback(page)) {
+			if (!PageDirty(page) || PageWriteback(page) ||
+			    PageFsCache(page)) {
 				unlock_page(page);
 				break;
 			}
@@ -459,6 +465,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 				BUG();
 			if (test_set_page_writeback(page))
 				BUG();
+			if (TestSetPageFsCache(page))
+				BUG();
 			unlock_page(page);
 			put_page(page);
 		}
@@ -489,8 +497,13 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 	b = last;
 	b <<= PAGE_SHIFT;
 	b += to;
-	iov_iter_mapping(&iter, WRITE, mapping, a, b - a);
 
+	/* Speculatively write to the cache.  We have to fix this up later if
+	 * the store fails.
+	 */
+	afs_write_to_cache(vnode, first, last + 1, a, b);
+
+	iov_iter_mapping(&iter, WRITE, mapping, a, b - a);
 	ret = afs_store_data(vnode, &iter, a, first, last);
 	switch (ret) {
 	case 0:
@@ -543,6 +556,10 @@ int afs_writepage(struct page *page, struct writeback_control *wbc)
 
 	_enter("{%lx},", page->index);
 
+#ifdef CONFIG_AFS_FSCACHE
+	wait_on_page_fscache(page);
+#endif
+
 	ret = afs_write_back_from_locked_page(page->mapping, wbc, page,
 					      wbc->range_end >> PAGE_SHIFT);
 	if (ret < 0) {
@@ -570,7 +587,7 @@ static int afs_writepages_region(struct address_space *mapping,
 
 	do {
 		n = find_get_pages_range_tag(mapping, &index, end,
-					PAGECACHE_TAG_DIRTY, 1, &page);
+					     PAGECACHE_TAG_DIRTY, 1, &page);
 		if (!n)
 			break;
 
@@ -595,10 +612,14 @@ static int afs_writepages_region(struct address_space *mapping,
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
@@ -818,3 +839,96 @@ int afs_launder_page(struct page *page)
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
+			       pgoff_t start, pgoff_t end, loff_t a, loff_t b)
+{
+	struct afs_read *req;
+	struct iov_iter iter;
+	unsigned int x;
+
+	struct fscache_extent extent = {
+		.start		= start,
+		.block_end	= end,
+		.limit		= end,
+	};
+
+	_enter("%lx,%lx,%llx,%llx", start, end, a, b);
+
+	x = fscache_shape_extent(afs_vnode_cache(vnode), &extent,
+				 i_size_read(&vnode->vfs_inode), true);
+	if (!(x & FSCACHE_WRITE_TO_CACHE))
+		goto abandon;
+
+	req = afs_alloc_read(GFP_KERNEL);
+	if (!req)
+		goto abandon;
+
+	fscache_init_io_request(&req->cache, afs_vnode_cache(vnode),
+				&afs_write_req_ops);
+	req->vnode		= vnode;
+	req->cache.pos		= round_down(a, extent.dio_block_size);
+	req->cache.len		= round_up(b, extent.dio_block_size) - req->cache.pos;
+	req->cache.nr_pages	= end - start;
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
+	afs_clear_fscache_bits(vnode->vfs_inode.i_mapping, start, end);
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
