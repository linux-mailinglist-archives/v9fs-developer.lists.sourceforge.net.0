Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F48B47DB2D
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:28:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0B2R-0005Rl-Lk; Wed, 22 Dec 2021 23:28:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0B2Q-0005Re-L8
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I0dqOaeFWb6yoAicd9Ym8lEbFtYUrhtMiqGs1aMkJj0=; b=Y0FdUsS+fZ2KvYJ/6IqV1tFXJ4
 PLTgcOcXEwseacn+3YmoEbEQgHMMBWEUQrXmNC8pVoG6GQavDrVqQnwhmEZispCGac8SFRGQSBI7O
 yrg6zRojeFS7+bEjRvAVGnjImH/9IVwd4anjDiACslSHRVPmTB+5W5esuwBU1m5GAxsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I0dqOaeFWb6yoAicd9Ym8lEbFtYUrhtMiqGs1aMkJj0=; b=UoktisRhEJAfkXxj9+IzLd9DVt
 qjUZhMF+DElMkT7GFOjVBfWaFWtW+pCdqCxCihcrxq1eV67OKj2jThCqw0UNOOvBaWde/Jgn118U5
 ZwV6P6UR0IQr2d/SJrlXwsRgDqMHt0aY+0ep62y6tjV/ZmfvoIwin0rncbzHIsXOKuWk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0B2O-006iGe-N8
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215721;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I0dqOaeFWb6yoAicd9Ym8lEbFtYUrhtMiqGs1aMkJj0=;
 b=EHDBQg/yT7YuNcA8O0rdbApRH9umRjcE3FsnASJ6NV5zdapwUgAN3HjkeN5LeitSCBA9QU
 5qiNNPFfkJRByWAq1qL0kf5RjSxFA+D5N6dPPkHoGCLvp3QdVdPIA1POqkE/eKnX+gjv00
 +f49/YbpyuSLNcTsyEgMdrvFwV/LbBQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-un0HhckiNMCUiAqq0jNgjA-1; Wed, 22 Dec 2021 18:28:36 -0500
X-MC-Unique: un0HhckiNMCUiAqq0jNgjA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D4E61800D50;
 Wed, 22 Dec 2021 23:28:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 000CD2B5AC;
 Wed, 22 Dec 2021 23:28:22 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:28:22 +0000
Message-ID: <164021570208.640689.9193494979708031862.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0B2O-006iGe-N8
Subject: [V9fs-developer] [PATCH v4 57/68] afs: Copy local writes to the
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, JeffleXu <jefflexu@linux.alibaba.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
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
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819662333.215744.7531373404219224438.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906970998.143852.674420788614608063.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967176564.1823006.16666056085593949570.stgit@warthog.procyon.org.uk/ # v3
---

 fs/afs/file.c     |    6 ++++
 fs/afs/inode.c    |    8 +++--
 fs/afs/internal.h |    5 +++
 fs/afs/super.c    |    1 +
 fs/afs/write.c    |   87 ++++++++++++++++++++++++++++++++++++++++++++++-------
 5 files changed, 92 insertions(+), 15 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index be23635f35b8..572063dad0b3 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -416,6 +416,12 @@ static void afs_readahead(struct readahead_control *ractl)
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
index 509208825907..8db902405031 100644
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
index 1d80649aec72..b6f02321fc09 100644
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
index 1c8ee6eae905..5e9157d0da29 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -14,14 +14,28 @@
 #include <linux/netfs.h>
 #include "internal.h"
 
+static void afs_write_to_cache(struct afs_vnode *vnode, loff_t start, size_t len,
+			       loff_t i_size, bool caching);
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
+static void afs_folio_start_fscache(bool caching, struct folio *folio)
+{
+	if (caching)
+		folio_start_fscache(folio);
+}
+#else
+static void afs_folio_start_fscache(bool caching, struct folio *folio)
+{
 }
+#endif
 
 /*
  * prepare to perform part of a write to a page
@@ -113,7 +127,7 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 	unsigned long priv;
 	unsigned int f, from = offset_in_folio(folio, pos);
 	unsigned int t, to = from + copied;
-	loff_t i_size, maybe_i_size;
+	loff_t i_size, write_end_pos;
 
 	_enter("{%llx:%llu},{%lx}",
 	       vnode->fid.vid, vnode->fid.vnode, folio_index(folio));
@@ -130,15 +144,16 @@ int afs_write_end(struct file *file, struct address_space *mapping,
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
 
 	if (folio_test_private(folio)) {
@@ -417,6 +432,7 @@ static void afs_extend_writeback(struct address_space *mapping,
 				 loff_t start,
 				 loff_t max_len,
 				 bool new_content,
+				 bool caching,
 				 unsigned int *_len)
 {
 	struct pagevec pvec;
@@ -463,7 +479,9 @@ static void afs_extend_writeback(struct address_space *mapping,
 				folio_put(folio);
 				break;
 			}
-			if (!folio_test_dirty(folio) || folio_test_writeback(folio)) {
+			if (!folio_test_dirty(folio) ||
+			    folio_test_writeback(folio) ||
+			    folio_test_fscache(folio)) {
 				folio_unlock(folio);
 				folio_put(folio);
 				break;
@@ -511,6 +529,7 @@ static void afs_extend_writeback(struct address_space *mapping,
 				BUG();
 			if (folio_start_writeback(folio))
 				BUG();
+			afs_folio_start_fscache(caching, folio);
 
 			*_count -= folio_nr_pages(folio);
 			folio_unlock(folio);
@@ -538,6 +557,7 @@ static ssize_t afs_write_back_from_locked_folio(struct address_space *mapping,
 	unsigned int offset, to, len, max_len;
 	loff_t i_size = i_size_read(&vnode->vfs_inode);
 	bool new_content = test_bit(AFS_VNODE_NEW_CONTENT, &vnode->flags);
+	bool caching = fscache_cookie_enabled(afs_vnode_cache(vnode));
 	long count = wbc->nr_to_write;
 	int ret;
 
@@ -545,6 +565,7 @@ static ssize_t afs_write_back_from_locked_folio(struct address_space *mapping,
 
 	if (folio_start_writeback(folio))
 		BUG();
+	afs_folio_start_fscache(caching, folio);
 
 	count -= folio_nr_pages(folio);
 
@@ -571,7 +592,8 @@ static ssize_t afs_write_back_from_locked_folio(struct address_space *mapping,
 		if (len < max_len &&
 		    (to == folio_size(folio) || new_content))
 			afs_extend_writeback(mapping, vnode, &count,
-					     start, max_len, new_content, &len);
+					     start, max_len, new_content,
+					     caching, &len);
 		len = min_t(loff_t, len, max_len);
 	}
 
@@ -584,12 +606,19 @@ static ssize_t afs_write_back_from_locked_folio(struct address_space *mapping,
 	if (start < i_size) {
 		_debug("write back %x @%llx [%llx]", len, start, i_size);
 
+		/* Speculatively write to the cache.  We have to fix this up
+		 * later if the store fails.
+		 */
+		afs_write_to_cache(vnode, start, len, i_size, caching);
+
 		iov_iter_xarray(&iter, WRITE, &mapping->i_pages, start, len);
 		ret = afs_store_data(vnode, &iter, start, false);
 	} else {
 		_debug("write discard %x @%llx [%llx]", len, start, i_size);
 
 		/* The dirty region was entirely beyond the EOF. */
+		fscache_clear_page_bits(afs_vnode_cache(vnode),
+					mapping, start, len, caching);
 		afs_pages_written_back(vnode, start, len);
 		ret = 0;
 	}
@@ -648,6 +677,10 @@ int afs_writepage(struct page *subpage, struct writeback_control *wbc)
 
 	_enter("{%lx},", folio_index(folio));
 
+#ifdef CONFIG_AFS_FSCACHE
+	folio_wait_fscache(folio);
+#endif
+
 	start = folio_index(folio) * PAGE_SIZE;
 	ret = afs_write_back_from_locked_folio(folio_mapping(folio), wbc,
 					       folio, start, LLONG_MAX - start);
@@ -713,10 +746,15 @@ static int afs_writepages_region(struct address_space *mapping,
 			continue;
 		}
 
-		if (folio_test_writeback(folio)) {
+		if (folio_test_writeback(folio) ||
+		    folio_test_fscache(folio)) {
 			folio_unlock(folio);
-			if (wbc->sync_mode != WB_SYNC_NONE)
+			if (wbc->sync_mode != WB_SYNC_NONE) {
 				folio_wait_writeback(folio);
+#ifdef CONFIG_AFS_FSCACHE
+				folio_wait_fscache(folio);
+#endif
+			}
 			folio_put(folio);
 			continue;
 		}
@@ -969,3 +1007,28 @@ int afs_launder_page(struct page *subpage)
 	folio_wait_fscache(folio);
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
+			       loff_t start, size_t len, loff_t i_size,
+			       bool caching)
+{
+	fscache_write_to_cache(afs_vnode_cache(vnode),
+			       vnode->vfs_inode.i_mapping, start, len, i_size,
+			       afs_write_to_cache_done, vnode, caching);
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
