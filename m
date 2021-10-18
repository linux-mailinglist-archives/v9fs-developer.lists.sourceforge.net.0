Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AB24321B0
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:04:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUBW-0007Sx-1S; Mon, 18 Oct 2021 15:04:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcUBV-0007SZ-5C
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:04:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rRc0OWpsCdR+RZihH2WSjAzCV3g5/DtjogslM+6pstI=; b=BxVCHSW2mlnEJjkUXFhhzzXtcd
 4LGRxwWc6kOaNypHfgnlhqvP0mSwXK5Cc3IIAY9X2qzEVvg+5wUvO93NcBWVPA0ZajKT/GR5fmdvz
 ZYFOxK+VRpvTMvaSXOu+NGhQItX6oEcAMJULmUyIIPverbQoJYnMapQK2/zBbbg57OaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rRc0OWpsCdR+RZihH2WSjAzCV3g5/DtjogslM+6pstI=; b=RBAktHFZ+k/s2u4920H0QJ/haa
 35m7UL6g7XdI4gkCRhgkoXYTdkeIEvFxu9M4DDMTkIFa8z9Bc1EuD8QIOUSObf2r2ZEku1CL7IRRo
 v4HnRlIUXNTk8nkHZaP5s2GIBZSdq1XS1xnc7pzYrMVOtVbVj+92ebHyHWbLLIxjOArY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUBS-0005N9-TL
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rRc0OWpsCdR+RZihH2WSjAzCV3g5/DtjogslM+6pstI=;
 b=DYdsbnkeFuh9M/XNFL4EWi89S9R/BVZipIFabFEfdPq6G0ruvRmfwT+vY0re2fEqkDozfS
 +tN26QmNw8Ok792RetizHcTDxfjL2/5upYJ7fioEPTxl172b5HVIMiJ5qCLs2ewnLriHrL
 Ihgg8sxnJHy4vT+sU018tB2mbIL4h1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-cq7nWjpeMxOYF50ZfuSarQ-1; Mon, 18 Oct 2021 11:04:05 -0400
X-MC-Unique: cq7nWjpeMxOYF50ZfuSarQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 296871018720;
 Mon, 18 Oct 2021 15:04:03 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E5238641A7;
 Mon, 18 Oct 2021 15:03:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:03:56 +0100
Message-ID: <163456943601.2614702.8101114886699133954.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: When writing to the server from afs_writepage() or
 afs_writepages(), 
 copy the data to the cache object too. To make this possible, the cookie
 must have its active users count incremented when the page is dirtied and
 kept incremented until we manage to clean up all the pages. This allows the
 writeback to tak [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUBS-0005N9-TL
Subject: [V9fs-developer] [PATCH 52/67] afs: Copy local writes to the cache
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When writing to the server from afs_writepage() or afs_writepages(), copy
the data to the cache object too.

To make this possible, the cookie must have its active users count
incremented when the page is dirtied and kept incremented until we manage
to clean up all the pages.  This allows the writeback to take place after
the last file struct is released.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/file.c     |    6 ++++
 fs/afs/inode.c    |    8 +++--
 fs/afs/internal.h |    5 +++
 fs/afs/super.c    |    1 +
 fs/afs/write.c    |   79 +++++++++++++++++++++++++++++++++++++++++++++--------
 5 files changed, 84 insertions(+), 15 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 5e674a503c1b..4af7ef607cf6 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -402,6 +402,12 @@ static void afs_readahead(struct readahead_control *ractl)
 	netfs_readahead(ractl, &afs_req_ops, NULL);
 }
 
+int afs_write_inode(struct inode *inode, struct writeback_control *wbc)
+{
+	fscache_unpin_writeback(wbc, afs_vnode_cache(AFS_FS_I(inode)));
+	return 0;
+}
+
 /*
  * Adjust the dirty region of the page on truncation or full invalidation,
  * getting rid of the markers altogether if the region is entirely invalidated.
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 32038ccbce67..311df66c64d0 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -761,9 +761,8 @@ int afs_drop_inode(struct inode *inode)
  */
 void afs_evict_inode(struct inode *inode)
 {
-	struct afs_vnode *vnode;
-
-	vnode = AFS_FS_I(inode);
+	struct afs_vnode_cache_aux aux;
+	struct afs_vnode *vnode = AFS_FS_I(inode);
 
 	_enter("{%llx:%llu.%d}",
 	       vnode->fid.vid,
@@ -775,6 +774,9 @@ void afs_evict_inode(struct inode *inode)
 	ASSERTCMP(inode->i_ino, ==, vnode->fid.vnode);
 
 	truncate_inode_pages_final(&inode->i_data);
+
+	afs_set_cache_aux(vnode, &aux);
+	fscache_clear_inode_writeback(afs_vnode_cache(vnode), inode, &aux);
 	clear_inode(inode);
 
 	while (!list_empty(&vnode->wb_keys)) {
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 6c591b7c55f1..07d34291bf4f 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -1072,6 +1072,7 @@ extern int afs_release(struct inode *, struct file *);
 extern int afs_fetch_data(struct afs_vnode *, struct afs_read *);
 extern struct afs_read *afs_alloc_read(gfp_t);
 extern void afs_put_read(struct afs_read *);
+extern int afs_write_inode(struct inode *, struct writeback_control *);
 
 static inline struct afs_read *afs_get_read(struct afs_read *req)
 {
@@ -1519,7 +1520,11 @@ extern int afs_check_volume_status(struct afs_volume *, struct afs_operation *);
 /*
  * write.c
  */
+#ifdef CONFIG_AFS_FSCACHE
 extern int afs_set_page_dirty(struct page *);
+#else
+#define afs_set_page_dirty __set_page_dirty_nobuffers
+#endif
 extern int afs_write_begin(struct file *file, struct address_space *mapping,
 			loff_t pos, unsigned len, unsigned flags,
 			struct page **pagep, void **fsdata);
diff --git a/fs/afs/super.c b/fs/afs/super.c
index d110def8aa8e..af7cbd9949c5 100644
--- a/fs/afs/super.c
+++ b/fs/afs/super.c
@@ -55,6 +55,7 @@ int afs_net_id;
 static const struct super_operations afs_super_ops = {
 	.statfs		= afs_statfs,
 	.alloc_inode	= afs_alloc_inode,
+	.write_inode	= afs_write_inode,
 	.drop_inode	= afs_drop_inode,
 	.destroy_inode	= afs_destroy_inode,
 	.free_inode	= afs_free_inode,
diff --git a/fs/afs/write.c b/fs/afs/write.c
index e1cb19cb6314..a540da6ad423 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -12,17 +12,29 @@
 #include <linux/writeback.h>
 #include <linux/pagevec.h>
 #include <linux/netfs.h>
-#include <linux/fscache.h>
 #include "internal.h"
 
+static void afs_write_to_cache(struct afs_vnode *vnode, loff_t start, size_t len,
+			       loff_t i_size);
+
+#ifdef CONFIG_AFS_FSCACHE
 /*
- * mark a page as having been made dirty and thus needing writeback
+ * Mark a page as having been made dirty and thus needing writeback.  We also
+ * need to pin the cache object to write back to.
  */
 int afs_set_page_dirty(struct page *page)
 {
-	_enter("");
-	return __set_page_dirty_nobuffers(page);
+	return fscache_set_page_dirty(page, afs_vnode_cache(AFS_FS_I(page->mapping->host)));
+}
+static void afs_set_page_fscache(struct page *page)
+{
+	set_page_fscache(page);
+}
+#else
+static void afs_set_page_fscache(struct page *page)
+{
 }
+#endif
 
 /*
  * Prepare to perform part of a write to a page.  Note that len may extend
@@ -114,7 +126,7 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 	unsigned long priv;
 	unsigned int f, from = offset_in_thp(page, pos);
 	unsigned int t, to = from + copied;
-	loff_t i_size, maybe_i_size;
+	loff_t i_size, write_end_pos;
 
 	_enter("{%llx:%llu},{%lx}",
 	       vnode->fid.vid, vnode->fid.vnode, page->index);
@@ -132,15 +144,16 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 	if (copied == 0)
 		goto out;
 
-	maybe_i_size = pos + copied;
+	write_end_pos = pos + copied;
 
 	i_size = i_size_read(&vnode->vfs_inode);
-	if (maybe_i_size > i_size) {
+	if (write_end_pos > i_size) {
 		write_seqlock(&vnode->cb_lock);
 		i_size = i_size_read(&vnode->vfs_inode);
-		if (maybe_i_size > i_size)
-			afs_set_i_size(vnode, maybe_i_size);
+		if (write_end_pos > i_size)
+			afs_set_i_size(vnode, write_end_pos);
 		write_sequnlock(&vnode->cb_lock);
+		fscache_update_cookie(afs_vnode_cache(vnode), NULL, &write_end_pos);
 	}
 
 	if (PagePrivate(page)) {
@@ -482,7 +495,8 @@ static void afs_extend_writeback(struct address_space *mapping,
 				put_page(page);
 				break;
 			}
-			if (!PageDirty(page) || PageWriteback(page)) {
+			if (!PageDirty(page) || PageWriteback(page) ||
+			    PageFsCache(page)) {
 				unlock_page(page);
 				put_page(page);
 				break;
@@ -530,6 +544,7 @@ static void afs_extend_writeback(struct address_space *mapping,
 				BUG();
 			if (test_set_page_writeback(page))
 				BUG();
+			afs_set_page_fscache(page);
 
 			*_count -= thp_nr_pages(page);
 			unlock_page(page);
@@ -564,6 +579,7 @@ static ssize_t afs_write_back_from_locked_page(struct address_space *mapping,
 
 	if (test_set_page_writeback(page))
 		BUG();
+	afs_set_page_fscache(page);
 
 	count -= thp_nr_pages(page);
 
@@ -603,12 +619,19 @@ static ssize_t afs_write_back_from_locked_page(struct address_space *mapping,
 	if (start < i_size) {
 		_debug("write back %x @%llx [%llx]", len, start, i_size);
 
+		/* Speculatively write to the cache.  We have to fix this up
+		 * later if the store fails.
+		 */
+		afs_write_to_cache(vnode, start, len, i_size);
+
 		iov_iter_xarray(&iter, WRITE, &mapping->i_pages, start, len);
 		ret = afs_store_data(vnode, &iter, start, false);
 	} else {
 		_debug("write discard %x @%llx [%llx]", len, start, i_size);
 
 		/* The dirty region was entirely beyond the EOF. */
+		fscache_clear_page_bits(afs_vnode_cache(vnode),
+					mapping, start, len);
 		afs_pages_written_back(vnode, start, len);
 		ret = 0;
 	}
@@ -666,6 +689,10 @@ int afs_writepage(struct page *page, struct writeback_control *wbc)
 
 	_enter("{%lx},", page->index);
 
+#ifdef CONFIG_AFS_FSCACHE
+	wait_on_page_fscache(page);
+#endif
+
 	start = page->index * PAGE_SIZE;
 	ret = afs_write_back_from_locked_page(page->mapping, wbc, page,
 					      start, LLONG_MAX - start);
@@ -728,10 +755,14 @@ static int afs_writepages_region(struct address_space *mapping,
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
@@ -984,3 +1015,27 @@ int afs_launder_page(struct page *page)
 	wait_on_page_fscache(page);
 	return ret;
 }
+
+/*
+ * Deal with the completion of writing the data to the cache.
+ */
+static void afs_write_to_cache_done(void *priv, ssize_t transferred_or_error,
+				    bool was_async)
+{
+	struct afs_vnode *vnode = priv;
+
+	if (IS_ERR_VALUE(transferred_or_error) &&
+	    transferred_or_error != -ENOBUFS)
+		afs_invalidate_cache(vnode, 0);
+}
+
+/*
+ * Save the write to the cache also.
+ */
+static void afs_write_to_cache(struct afs_vnode *vnode,
+			       loff_t start, size_t len, loff_t i_size)
+{
+	fscache_write_to_cache(afs_vnode_cache(vnode),
+			       vnode->vfs_inode.i_mapping, start, len, i_size,
+			       afs_write_to_cache_done, vnode);
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
