Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 722F42B7BFE
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 12:03:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfLEt-0000GG-Da; Wed, 18 Nov 2020 11:03:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kfLEs-0000G9-5D
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 11:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1HIp/U/TZE4BAd+dMTbZmNXkLjzlgjs2cjA7+Wvgbyk=; b=ASWQ2m6uuNMDrbjwhaL5PvXJJH
 BQL0snN2ZUGtGX1i0Pyd7xGrwSMLmUwcoZ3zLWCvNN40IzHOizW5bwhiKbd85az5nA/RreRuvHbZj
 abZw34bqwrZmnqCRz6cwHeO4wSDG0VBkbbvVA2Ptew73M1nrdIjjt2dspsSSOH14KdmE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1HIp/U/TZE4BAd+dMTbZmNXkLjzlgjs2cjA7+Wvgbyk=; b=QK/W6Vr0slezslslT7PQaAEwJG
 35jRzSuhz6IO1df6gzix8maqsUcX37xhqbl7xuXCUZ4Xti5x0F+MH0nF9d4T5gXjzwEgK2HXZSmuB
 FwVFdlf0luU5ofYOA8SBl2QtLf6aSri31BFLQSP2K9Zg8/YZgDs9hTsgu2/wk8LKd4vc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kfLEb-00DFjv-Pd
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 11:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605697356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1HIp/U/TZE4BAd+dMTbZmNXkLjzlgjs2cjA7+Wvgbyk=;
 b=U4B+1PxcXVOMYSiIJ5ex3roJcIOuSlFAorO8Nv/+2ErYK75F/f94+n8p46gI2ACQcx1n83
 vZ6/nkhwMqWPX/kDA9KLoOLaAEQRXSgC7UjXqrU916odmp6z1sVglmimh1TfKAjSf3UCoh
 UXD99VCno4lNgVtd8TiqlffKeurFIi4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-QdQhRVZCPKiDXKuWq5FDJw-1; Wed, 18 Nov 2020 06:02:34 -0500
X-MC-Unique: QdQhRVZCPKiDXKuWq5FDJw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 151521008302;
 Wed, 18 Nov 2020 11:02:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 426CC5C1D7;
 Wed, 18 Nov 2020 11:02:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <1514085.1605697347.1@warthog.procyon.org.uk>
Date: Wed, 18 Nov 2020 11:02:27 +0000
Message-ID: <1514086.1605697347@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kfLEb-00DFjv-Pd
Subject: [V9fs-developer] [PATCH] 9p: Convert to new fscache API
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 dhowells@redhat.com, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

Here's a rough draft of a patch to convert 9P to use the rewritten fscache
API.  It compiles, but I've no way to test it.  This is built on top of my
fscache-iter branch:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter

Notes:

 (*) I've switched to use ITER_XATTR rather than ITER_BVEC in some places.

 (*) I've added a pair of helper functions to get the cookie:

	v9fs_inode_cookie()
	v9fs_session_cache()

     These return NULL if CONFIG_9P_FSCACHE=n.

 (*) I've moved some of the fscache accesses inline.  Using the above helper
     functions, it all compiles away due to NULL pointer checks in the header
     file if fscache is disabled.

 (*) 9P's readpage and readpages now just jump into the netfs helpers, as does
     write_begin.  v9fs_req_issue_op() initiates the I/O on behalf of the
     helpers.

 (*) v9fs_write_begin() now returns the subpage and v9fs_write_end() goes back
     out to the head page.  thp_size() is also used.  This should mean you
     handle transparent huge pages (THPs) and can turn that on.

 (*) I have made an assumption that 9p_client_read() and write can handle I/Os
     larger than a page.  If this is not the case, v9fs_req_ops will need
     clamp_length() implementing.

 (*) The expand_readahead() and clamp_length() ops should perhaps be
     implemented to align and trim with respect to maximum I/O size.

 (*) iget and evict acquire and relinquish a cookie.

 (*) open and release use and unuse that cookie.

 (*) writepage writes the dirty data to the cache.

 (*) setattr resizes the cache if necessary.

 (*) The cache needs to be invalidated if a 3rd-party change happens, but I
     haven't done that.

 (*) With these changes, 9p should cache local changes too, not just data
     read.

 (*) If 9p supports DIO writes, it should invalidate a cache object with
     FSCACHE_INVAL_DIO_WRITE when one happens - thereby stopping caching for
     that file until all file handles on it are closed.

David
---
diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
index 66ca72422961..a9407693ef2d 100644
--- a/fs/9p/Kconfig
+++ b/fs/9p/Kconfig
@@ -13,7 +13,7 @@ config 9P_FS
 if 9P_FS
 config 9P_FSCACHE
 	bool "Enable 9P client caching support"
-	depends on 9P_FS=m && FSCACHE_OLD || 9P_FS=y && FSCACHE_OLD=y
+	depends on 9P_FS=m || 9P_FS=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for 9p clients using FS-Cache
diff --git a/fs/9p/cache.c b/fs/9p/cache.c
index eb2151fb6049..7df06dac3fa8 100644
--- a/fs/9p/cache.c
+++ b/fs/9p/cache.c
@@ -40,11 +40,6 @@ int v9fs_random_cachetag(struct v9fs_session_info *v9ses)
 	return scnprintf(v9ses->cachetag, CACHETAG_LEN, "%lu", jiffies);
 }
 
-const struct fscache_cookie_def v9fs_cache_session_index_def = {
-	.name		= "9P.session",
-	.type		= FSCACHE_COOKIE_TYPE_INDEX,
-};
-
 void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
 {
 	/* If no cache session tag was specified, we generate a random one. */
@@ -58,47 +53,16 @@ void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
 	}
 
 	v9ses->fscache = fscache_acquire_cookie(v9fs_cache_netfs.primary_index,
-						&v9fs_cache_session_index_def,
+						FSCACHE_COOKIE_TYPE_INDEX,
+						"9P.session",
+						0, NULL,
 						v9ses->cachetag,
 						strlen(v9ses->cachetag),
-						NULL, 0,
-						v9ses, 0, true);
+						NULL, 0, 0);
 	p9_debug(P9_DEBUG_FSC, "session %p get cookie %p\n",
 		 v9ses, v9ses->fscache);
 }
 
-void v9fs_cache_session_put_cookie(struct v9fs_session_info *v9ses)
-{
-	p9_debug(P9_DEBUG_FSC, "session %p put cookie %p\n",
-		 v9ses, v9ses->fscache);
-	fscache_relinquish_cookie(v9ses->fscache, NULL, false);
-	v9ses->fscache = NULL;
-}
-
-static enum
-fscache_checkaux v9fs_cache_inode_check_aux(void *cookie_netfs_data,
-					    const void *buffer,
-					    uint16_t buflen,
-					    loff_t object_size)
-{
-	const struct v9fs_inode *v9inode = cookie_netfs_data;
-
-	if (buflen != sizeof(v9inode->qid.version))
-		return FSCACHE_CHECKAUX_OBSOLETE;
-
-	if (memcmp(buffer, &v9inode->qid.version,
-		   sizeof(v9inode->qid.version)))
-		return FSCACHE_CHECKAUX_OBSOLETE;
-
-	return FSCACHE_CHECKAUX_OKAY;
-}
-
-const struct fscache_cookie_def v9fs_cache_inode_index_def = {
-	.name		= "9p.inode",
-	.type		= FSCACHE_COOKIE_TYPE_DATAFILE,
-	.check_aux	= v9fs_cache_inode_check_aux,
-};
-
 void v9fs_cache_inode_get_cookie(struct inode *inode)
 {
 	struct v9fs_inode *v9inode;
@@ -108,231 +72,20 @@ void v9fs_cache_inode_get_cookie(struct inode *inode)
 		return;
 
 	v9inode = V9FS_I(inode);
-	if (v9inode->fscache)
+	if (WARN_ON(v9inode->fscache))
 		return;
 
 	v9ses = v9fs_inode2v9ses(inode);
-	v9inode->fscache = fscache_acquire_cookie(v9ses->fscache,
-						  &v9fs_cache_inode_index_def,
+	v9inode->fscache = fscache_acquire_cookie(v9fs_session_cache(v9ses),
+						  FSCACHE_COOKIE_TYPE_DATAFILE,
+						  "9p.inode",
+						  0, NULL,
 						  &v9inode->qid.path,
 						  sizeof(v9inode->qid.path),
 						  &v9inode->qid.version,
 						  sizeof(v9inode->qid.version),
-						  v9inode,
-						  i_size_read(&v9inode->vfs_inode),
-						  true);
+						  i_size_read(&v9inode->vfs_inode));
 
 	p9_debug(P9_DEBUG_FSC, "inode %p get cookie %p\n",
 		 inode, v9inode->fscache);
 }
-
-void v9fs_cache_inode_put_cookie(struct inode *inode)
-{
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	if (!v9inode->fscache)
-		return;
-	p9_debug(P9_DEBUG_FSC, "inode %p put cookie %p\n",
-		 inode, v9inode->fscache);
-
-	fscache_relinquish_cookie(v9inode->fscache, &v9inode->qid.version,
-				  false);
-	v9inode->fscache = NULL;
-}
-
-void v9fs_cache_inode_flush_cookie(struct inode *inode)
-{
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	if (!v9inode->fscache)
-		return;
-	p9_debug(P9_DEBUG_FSC, "inode %p flush cookie %p\n",
-		 inode, v9inode->fscache);
-
-	fscache_relinquish_cookie(v9inode->fscache, NULL, true);
-	v9inode->fscache = NULL;
-}
-
-void v9fs_cache_inode_set_cookie(struct inode *inode, struct file *filp)
-{
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	if (!v9inode->fscache)
-		return;
-
-	mutex_lock(&v9inode->fscache_lock);
-
-	if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
-		v9fs_cache_inode_flush_cookie(inode);
-	else
-		v9fs_cache_inode_get_cookie(inode);
-
-	mutex_unlock(&v9inode->fscache_lock);
-}
-
-void v9fs_cache_inode_reset_cookie(struct inode *inode)
-{
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-	struct v9fs_session_info *v9ses;
-	struct fscache_cookie *old;
-
-	if (!v9inode->fscache)
-		return;
-
-	old = v9inode->fscache;
-
-	mutex_lock(&v9inode->fscache_lock);
-	fscache_relinquish_cookie(v9inode->fscache, NULL, true);
-
-	v9ses = v9fs_inode2v9ses(inode);
-	v9inode->fscache = fscache_acquire_cookie(v9ses->fscache,
-						  &v9fs_cache_inode_index_def,
-						  &v9inode->qid.path,
-						  sizeof(v9inode->qid.path),
-						  &v9inode->qid.version,
-						  sizeof(v9inode->qid.version),
-						  v9inode,
-						  i_size_read(&v9inode->vfs_inode),
-						  true);
-	p9_debug(P9_DEBUG_FSC, "inode %p revalidating cookie old %p new %p\n",
-		 inode, old, v9inode->fscache);
-
-	mutex_unlock(&v9inode->fscache_lock);
-}
-
-int __v9fs_fscache_release_page(struct page *page, gfp_t gfp)
-{
-	struct inode *inode = page->mapping->host;
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	BUG_ON(!v9inode->fscache);
-
-	return fscache_maybe_release_page(v9inode->fscache, page, gfp);
-}
-
-void __v9fs_fscache_invalidate_page(struct page *page)
-{
-	struct inode *inode = page->mapping->host;
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	BUG_ON(!v9inode->fscache);
-
-	if (PageFsCache(page)) {
-		fscache_wait_on_page_write(v9inode->fscache, page);
-		BUG_ON(!PageLocked(page));
-		fscache_uncache_page(v9inode->fscache, page);
-	}
-}
-
-static void v9fs_vfs_readpage_complete(struct page *page, void *data,
-				       int error)
-{
-	if (!error)
-		SetPageUptodate(page);
-
-	unlock_page(page);
-}
-
-/**
- * __v9fs_readpage_from_fscache - read a page from cache
- *
- * Returns 0 if the pages are in cache and a BIO is submitted,
- * 1 if the pages are not in cache and -error otherwise.
- */
-
-int __v9fs_readpage_from_fscache(struct inode *inode, struct page *page)
-{
-	int ret;
-	const struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	p9_debug(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
-	if (!v9inode->fscache)
-		return -ENOBUFS;
-
-	ret = fscache_read_or_alloc_page(v9inode->fscache,
-					 page,
-					 v9fs_vfs_readpage_complete,
-					 NULL,
-					 GFP_KERNEL);
-	switch (ret) {
-	case -ENOBUFS:
-	case -ENODATA:
-		p9_debug(P9_DEBUG_FSC, "page/inode not in cache %d\n", ret);
-		return 1;
-	case 0:
-		p9_debug(P9_DEBUG_FSC, "BIO submitted\n");
-		return ret;
-	default:
-		p9_debug(P9_DEBUG_FSC, "ret %d\n", ret);
-		return ret;
-	}
-}
-
-/**
- * __v9fs_readpages_from_fscache - read multiple pages from cache
- *
- * Returns 0 if the pages are in cache and a BIO is submitted,
- * 1 if the pages are not in cache and -error otherwise.
- */
-
-int __v9fs_readpages_from_fscache(struct inode *inode,
-				  struct address_space *mapping,
-				  struct list_head *pages,
-				  unsigned *nr_pages)
-{
-	int ret;
-	const struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	p9_debug(P9_DEBUG_FSC, "inode %p pages %u\n", inode, *nr_pages);
-	if (!v9inode->fscache)
-		return -ENOBUFS;
-
-	ret = fscache_read_or_alloc_pages(v9inode->fscache,
-					  mapping, pages, nr_pages,
-					  v9fs_vfs_readpage_complete,
-					  NULL,
-					  mapping_gfp_mask(mapping));
-	switch (ret) {
-	case -ENOBUFS:
-	case -ENODATA:
-		p9_debug(P9_DEBUG_FSC, "pages/inodes not in cache %d\n", ret);
-		return 1;
-	case 0:
-		BUG_ON(!list_empty(pages));
-		BUG_ON(*nr_pages != 0);
-		p9_debug(P9_DEBUG_FSC, "BIO submitted\n");
-		return ret;
-	default:
-		p9_debug(P9_DEBUG_FSC, "ret %d\n", ret);
-		return ret;
-	}
-}
-
-/**
- * __v9fs_readpage_to_fscache - write a page to the cache
- *
- */
-
-void __v9fs_readpage_to_fscache(struct inode *inode, struct page *page)
-{
-	int ret;
-	const struct v9fs_inode *v9inode = V9FS_I(inode);
-
-	p9_debug(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
-	ret = fscache_write_page(v9inode->fscache, page,
-				 i_size_read(&v9inode->vfs_inode), GFP_KERNEL);
-	p9_debug(P9_DEBUG_FSC, "ret =  %d\n", ret);
-	if (ret != 0)
-		v9fs_uncache_page(inode, page);
-}
-
-/*
- * wait for a page to complete writing to the cache
- */
-void __v9fs_fscache_wait_on_page_write(struct inode *inode, struct page *page)
-{
-	const struct v9fs_inode *v9inode = V9FS_I(inode);
-	p9_debug(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
-	if (PageFsCache(page))
-		fscache_wait_on_page_write(v9inode->fscache, page);
-}
diff --git a/fs/9p/cache.h b/fs/9p/cache.h
index 00f107af443e..74be03ae7635 100644
--- a/fs/9p/cache.h
+++ b/fs/9p/cache.h
@@ -12,126 +12,19 @@
 #include <linux/spinlock.h>
 
 extern struct fscache_netfs v9fs_cache_netfs;
-extern const struct fscache_cookie_def v9fs_cache_session_index_def;
-extern const struct fscache_cookie_def v9fs_cache_inode_index_def;
 
 extern void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses);
-extern void v9fs_cache_session_put_cookie(struct v9fs_session_info *v9ses);
 
 extern void v9fs_cache_inode_get_cookie(struct inode *inode);
-extern void v9fs_cache_inode_put_cookie(struct inode *inode);
-extern void v9fs_cache_inode_flush_cookie(struct inode *inode);
-extern void v9fs_cache_inode_set_cookie(struct inode *inode, struct file *filp);
-extern void v9fs_cache_inode_reset_cookie(struct inode *inode);
 
 extern int __v9fs_cache_register(void);
 extern void __v9fs_cache_unregister(void);
 
-extern int __v9fs_fscache_release_page(struct page *page, gfp_t gfp);
-extern void __v9fs_fscache_invalidate_page(struct page *page);
-extern int __v9fs_readpage_from_fscache(struct inode *inode,
-					struct page *page);
-extern int __v9fs_readpages_from_fscache(struct inode *inode,
-					 struct address_space *mapping,
-					 struct list_head *pages,
-					 unsigned *nr_pages);
-extern void __v9fs_readpage_to_fscache(struct inode *inode, struct page *page);
-extern void __v9fs_fscache_wait_on_page_write(struct inode *inode,
-					      struct page *page);
-
-static inline int v9fs_fscache_release_page(struct page *page,
-					    gfp_t gfp)
-{
-	return __v9fs_fscache_release_page(page, gfp);
-}
-
-static inline void v9fs_fscache_invalidate_page(struct page *page)
-{
-	__v9fs_fscache_invalidate_page(page);
-}
-
-static inline int v9fs_readpage_from_fscache(struct inode *inode,
-					     struct page *page)
-{
-	return __v9fs_readpage_from_fscache(inode, page);
-}
-
-static inline int v9fs_readpages_from_fscache(struct inode *inode,
-					      struct address_space *mapping,
-					      struct list_head *pages,
-					      unsigned *nr_pages)
-{
-	return __v9fs_readpages_from_fscache(inode, mapping, pages,
-					     nr_pages);
-}
-
-static inline void v9fs_readpage_to_fscache(struct inode *inode,
-					    struct page *page)
-{
-	if (PageFsCache(page))
-		__v9fs_readpage_to_fscache(inode, page);
-}
-
-static inline void v9fs_uncache_page(struct inode *inode, struct page *page)
-{
-	struct v9fs_inode *v9inode = V9FS_I(inode);
-	fscache_uncache_page(v9inode->fscache, page);
-	BUG_ON(PageFsCache(page));
-}
-
-static inline void v9fs_fscache_wait_on_page_write(struct inode *inode,
-						   struct page *page)
-{
-	return __v9fs_fscache_wait_on_page_write(inode, page);
-}
-
 #else /* CONFIG_9P_FSCACHE */
 
 static inline void v9fs_cache_inode_get_cookie(struct inode *inode)
 {
 }
 
-static inline void v9fs_cache_inode_put_cookie(struct inode *inode)
-{
-}
-
-static inline void v9fs_cache_inode_set_cookie(struct inode *inode, struct file *file)
-{
-}
-
-static inline int v9fs_fscache_release_page(struct page *page,
-					    gfp_t gfp) {
-	return 1;
-}
-
-static inline void v9fs_fscache_invalidate_page(struct page *page) {}
-
-static inline int v9fs_readpage_from_fscache(struct inode *inode,
-					     struct page *page)
-{
-	return -ENOBUFS;
-}
-
-static inline int v9fs_readpages_from_fscache(struct inode *inode,
-					      struct address_space *mapping,
-					      struct list_head *pages,
-					      unsigned *nr_pages)
-{
-	return -ENOBUFS;
-}
-
-static inline void v9fs_readpage_to_fscache(struct inode *inode,
-					    struct page *page)
-{}
-
-static inline void v9fs_uncache_page(struct inode *inode, struct page *page)
-{}
-
-static inline void v9fs_fscache_wait_on_page_write(struct inode *inode,
-						   struct page *page)
-{
-	return;
-}
-
 #endif /* CONFIG_9P_FSCACHE */
 #endif /* _9P_CACHE_H */
diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index 39def020a074..f7f9f2f055ec 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -467,7 +467,8 @@ struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses,
 
 #ifdef CONFIG_9P_FSCACHE
 	/* register the session for caching */
-	v9fs_cache_session_get_cookie(v9ses);
+	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
+		v9fs_cache_session_get_cookie(v9ses);
 #endif
 	spin_lock(&v9fs_sessionlist_lock);
 	list_add(&v9ses->slist, &v9fs_sessionlist);
@@ -500,8 +501,7 @@ void v9fs_session_close(struct v9fs_session_info *v9ses)
 	}
 
 #ifdef CONFIG_9P_FSCACHE
-	if (v9ses->fscache)
-		v9fs_cache_session_put_cookie(v9ses);
+	fscache_relinquish_cookie(v9fs_session_cache(v9ses), false);
 	kfree(v9ses->cachetag);
 #endif
 	kfree(v9ses->uname);
diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index 7b763776306e..b248586d7a2c 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -109,7 +109,6 @@ struct v9fs_session_info {
 
 struct v9fs_inode {
 #ifdef CONFIG_9P_FSCACHE
-	struct mutex fscache_lock;
 	struct fscache_cookie *fscache;
 #endif
 	struct p9_qid qid;
@@ -124,6 +123,25 @@ static inline struct v9fs_inode *V9FS_I(const struct inode *inode)
 	return container_of(inode, struct v9fs_inode, vfs_inode);
 }
 
+static inline struct fscache_cookie *v9fs_inode_cookie(struct v9fs_inode *v9inode)
+{
+#ifdef CONFIG_9P_FSCACHE
+	return v9inode->fscache;
+#else
+	return NULL;
+#endif	
+}
+
+static inline struct fscache_cookie *v9fs_session_cache(struct v9fs_session_info *v9ses)
+{
+#ifdef CONFIG_9P_FSCACHE
+	return v9ses->fscache;
+#else
+	return NULL;
+#endif	
+}
+
+
 extern int v9fs_show_options(struct seq_file *m, struct dentry *root);
 
 struct p9_fid *v9fs_session_init(struct v9fs_session_info *, const char *,
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index cce9ace651a2..ae093672c986 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -19,7 +19,7 @@
 #include <linux/idr.h>
 #include <linux/sched.h>
 #include <linux/uio.h>
-#include <linux/bvec.h>
+#include <linux/netfs.h>
 #include <net/9p/9p.h>
 #include <net/9p/client.h>
 
@@ -29,89 +29,88 @@
 #include "fid.h"
 
 /**
- * v9fs_fid_readpage - read an entire page in from 9P
- *
- * @fid: fid being read
- * @page: structure to page
- *
+ * v9fs_req_issue_op - Issue a read from 9P
+ * @subreq: The read to make
  */
-static int v9fs_fid_readpage(void *data, struct page *page)
+static void v9fs_req_issue_op(struct netfs_read_subrequest *subreq)
 {
-	struct p9_fid *fid = data;
-	struct inode *inode = page->mapping->host;
-	struct bio_vec bvec = {.bv_page = page, .bv_len = PAGE_SIZE};
+	struct netfs_read_request *rreq = subreq->rreq;
+	struct p9_fid *fid = rreq->netfs_priv;
 	struct iov_iter to;
+	loff_t pos = subreq->start + subreq->transferred;
+	size_t len = subreq->len   - subreq->transferred;
 	int retval, err;
 
-	p9_debug(P9_DEBUG_VFS, "\n");
+	iov_iter_xarray(&to, READ, &rreq->mapping->i_pages, pos, len);
 
-	BUG_ON(!PageLocked(page));
+	retval = p9_client_read(fid, pos, &to, &err);
+	if (retval)
+		subreq->error = retval;
+}
 
-	retval = v9fs_readpage_from_fscache(inode, page);
-	if (retval == 0)
-		return retval;
+/**
+ * v9fs_init_rreq - Initialise a read request
+ * @rreq: The read request
+ * @file: The file being read from
+ */
+static void v9fs_init_rreq(struct netfs_read_request *rreq, struct file *file)
+{
+	struct v9fs_inode *v9inode = V9FS_I(rreq->inode);
 
-	iov_iter_bvec(&to, READ, &bvec, 1, PAGE_SIZE);
+	rreq->netfs_priv = file->private_data;
+	if (v9fs_inode_cookie(v9inode))
+		rreq->cookie_debug_id = v9fs_inode_cookie(v9inode)->debug_id;
+}
 
-	retval = p9_client_read(fid, page_offset(page), &to, &err);
-	if (err) {
-		v9fs_uncache_page(inode, page);
-		retval = err;
-		goto done;
-	}
+/**
+ * v9fs_is_cache_enabled - Determine if caching is enabled for an inode
+ * @inode: The inode to check
+ */
+static bool v9fs_is_cache_enabled(struct inode *inode)
+{
+	struct fscache_cookie *cookie = v9fs_inode_cookie(V9FS_I(inode));
 
-	zero_user(page, retval, PAGE_SIZE - retval);
-	flush_dcache_page(page);
-	SetPageUptodate(page);
+	return fscache_cookie_enabled(cookie) && !hlist_empty(&cookie->backing_objects);
+}
 
-	v9fs_readpage_to_fscache(inode, page);
-	retval = 0;
+/**
+ * v9fs_begin_cache_operation - Begin a cache operation for a read
+ * @rreq: The read request
+ */
+static int v9fs_begin_cache_operation(struct netfs_read_request *rreq)
+{
+	struct v9fs_inode *v9inode = V9FS_I(rreq->inode);
 
-done:
-	unlock_page(page);
-	return retval;
+	return fscache_begin_operation(v9fs_inode_cookie(v9inode),
+				       &rreq->cache_resources,
+				       FSCACHE_WANT_PARAMS);
 }
 
+static const struct netfs_read_request_ops v9fs_req_ops = {
+	.init_rreq		= v9fs_init_rreq,
+	.is_cache_enabled	= v9fs_is_cache_enabled,
+	.begin_cache_operation	= v9fs_begin_cache_operation,
+	.issue_op		= v9fs_req_issue_op,
+};
+
 /**
  * v9fs_vfs_readpage - read an entire page in from 9P
- *
  * @filp: file being read
  * @page: structure to page
  *
  */
-
-static int v9fs_vfs_readpage(struct file *filp, struct page *page)
+static int v9fs_vfs_readpage(struct file *file, struct page *page)
 {
-	return v9fs_fid_readpage(filp->private_data, page);
+	return netfs_readpage(file, page, &v9fs_req_ops, NULL);
 }
 
 /**
- * v9fs_vfs_readpages - read a set of pages from 9P
- *
- * @filp: file being read
- * @mapping: the address space
- * @pages: list of pages to read
- * @nr_pages: count of pages to read
- *
+ * v9fs_vfs_readahead - read a set of pages from 9P
+ * @ractl: The readahead parameters
  */
-
-static int v9fs_vfs_readpages(struct file *filp, struct address_space *mapping,
-			     struct list_head *pages, unsigned nr_pages)
+static void v9fs_vfs_readahead(struct readahead_control *ractl)
 {
-	int ret = 0;
-	struct inode *inode;
-
-	inode = mapping->host;
-	p9_debug(P9_DEBUG_VFS, "inode: %p file: %p\n", inode, filp);
-
-	ret = v9fs_readpages_from_fscache(inode, mapping, pages, &nr_pages);
-	if (ret == 0)
-		return ret;
-
-	ret = read_cache_pages(mapping, pages, v9fs_fid_readpage,
-			filp->private_data);
-	p9_debug(P9_DEBUG_VFS, "  = %d\n", ret);
-	return ret;
+	netfs_readahead(ractl, &v9fs_req_ops, NULL);
 }
 
 /**
@@ -124,7 +123,14 @@ static int v9fs_release_page(struct page *page, gfp_t gfp)
 {
 	if (PagePrivate(page))
 		return 0;
-	return v9fs_fscache_release_page(page, gfp);
+#ifdef CONFIG_AFS_FSCACHE
+	if (PageFsCache(page)) {
+		if (!(gfp & __GFP_DIRECT_RECLAIM) || !(gfp & __GFP_FS))
+			return 0;
+		wait_on_page_fscache(page);
+	}
+#endif
+	return 1;
 }
 
 /**
@@ -137,21 +143,27 @@ static int v9fs_release_page(struct page *page, gfp_t gfp)
 static void v9fs_invalidate_page(struct page *page, unsigned int offset,
 				 unsigned int length)
 {
-	/*
-	 * If called with zero offset, we should release
-	 * the private state assocated with the page
-	 */
-	if (offset == 0 && length == PAGE_SIZE)
-		v9fs_fscache_invalidate_page(page);
+	wait_on_page_fscache(page);
+}
+
+static void v9fs_write_to_cache_done(void *priv, ssize_t transferred_or_error)
+{
+	struct v9fs_inode *v9inode = priv;
+
+	if (IS_ERR_VALUE(transferred_or_error) &&
+	    transferred_or_error != -ENOBUFS)
+		fscache_invalidate(v9fs_inode_cookie(v9inode),
+				   &v9inode->qid.version,
+				   i_size_read(&v9inode->vfs_inode), 0);
 }
 
 static int v9fs_vfs_writepage_locked(struct page *page)
 {
 	struct inode *inode = page->mapping->host;
 	struct v9fs_inode *v9inode = V9FS_I(inode);
+	loff_t start = page_offset(page);
 	loff_t size = i_size_read(inode);
 	struct iov_iter from;
-	struct bio_vec bvec;
 	int err, len;
 
 	if (page->index == size >> PAGE_SHIFT)
@@ -159,17 +171,22 @@ static int v9fs_vfs_writepage_locked(struct page *page)
 	else
 		len = PAGE_SIZE;
 
-	bvec.bv_page = page;
-	bvec.bv_offset = 0;
-	bvec.bv_len = len;
-	iov_iter_bvec(&from, WRITE, &bvec, 1, len);
+	iov_iter_xarray(&from, WRITE, &page->mapping->i_pages, start, len);
 
 	/* We should have writeback_fid always set */
 	BUG_ON(!v9inode->writeback_fid);
 
 	set_page_writeback(page);
 
-	p9_client_write(v9inode->writeback_fid, page_offset(page), &from, &err);
+	p9_client_write(v9inode->writeback_fid, start, &from, &err);
+
+	if (err == 0 &&
+	    fscache_cookie_enabled(v9fs_inode_cookie(v9inode)) &&
+	    TestSetPageFsCache(page)) {
+		fscache_write_to_cache(v9fs_inode_cookie(v9inode),
+				       page->mapping, start, len, size,
+				       v9fs_write_to_cache_done, v9inode);
+	}
 
 	end_page_writeback(page);
 	return err;
@@ -205,14 +222,13 @@ static int v9fs_vfs_writepage(struct page *page, struct writeback_control *wbc)
 static int v9fs_launder_page(struct page *page)
 {
 	int retval;
-	struct inode *inode = page->mapping->host;
 
-	v9fs_fscache_wait_on_page_write(inode, page);
 	if (clear_page_dirty_for_io(page)) {
 		retval = v9fs_vfs_writepage_locked(page);
 		if (retval)
 			return retval;
 	}
+	wait_on_page_fscache(page);
 	return 0;
 }
 
@@ -256,35 +272,24 @@ static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
 			    loff_t pos, unsigned len, unsigned flags,
 			    struct page **pagep, void **fsdata)
 {
-	int retval = 0;
+	int retval;
 	struct page *page;
-	struct v9fs_inode *v9inode;
-	pgoff_t index = pos >> PAGE_SHIFT;
-	struct inode *inode = mapping->host;
-
+	struct v9fs_inode *v9inode = V9FS_I(mapping->host);
 
 	p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);
 
-	v9inode = V9FS_I(inode);
-start:
-	page = grab_cache_page_write_begin(mapping, index, flags);
-	if (!page) {
-		retval = -ENOMEM;
-		goto out;
-	}
 	BUG_ON(!v9inode->writeback_fid);
-	if (PageUptodate(page))
-		goto out;
 
-	if (len == PAGE_SIZE)
-		goto out;
+	/* Prefetch area to be written into the cache if we're caching this
+	 * file.  We need to do this before we get a lock on the page in case
+	 * there's more than one writer competing for the same cache block.
+	 */
+	retval = netfs_write_begin(filp, mapping, pos, len, flags, &page, fsdata,
+				   &v9fs_req_ops, NULL);
+	if (retval < 0)
+		return retval;
 
-	retval = v9fs_fid_readpage(v9inode->writeback_fid, page);
-	put_page(page);
-	if (!retval)
-		goto start;
-out:
-	*pagep = page;
+	*pagep = find_subpage(page, pos / PAGE_SIZE);
 	return retval;
 }
 
@@ -293,7 +298,8 @@ static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 			  struct page *page, void *fsdata)
 {
 	loff_t last_pos = pos + copied;
-	struct inode *inode = page->mapping->host;
+	struct inode *inode = mapping->host;
+	struct v9fs_inode *v9inode = V9FS_I(inode);
 
 	p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);
 
@@ -312,6 +318,7 @@ static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 	if (last_pos > inode->i_size) {
 		inode_add_bytes(inode, last_pos - inode->i_size);
 		i_size_write(inode, last_pos);
+		fscache_update_cookie(v9fs_inode_cookie(v9inode), NULL, &last_pos);
 	}
 	set_page_dirty(page);
 out:
@@ -324,7 +331,7 @@ static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 
 const struct address_space_operations v9fs_addr_operations = {
 	.readpage = v9fs_vfs_readpage,
-	.readpages = v9fs_vfs_readpages,
+	.readahead = v9fs_vfs_readahead,
 	.set_page_dirty = __set_page_dirty_nobuffers,
 	.writepage = v9fs_vfs_writepage,
 	.write_begin = v9fs_write_begin,
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 674d22bf4f6f..eade5091654a 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -19,6 +19,7 @@
 #include <linux/idr.h>
 #include <linux/slab.h>
 #include <linux/uio.h>
+#include <linux/fscache.h>
 #include <net/9p/9p.h>
 #include <net/9p/client.h>
 
@@ -205,13 +206,23 @@ static int v9fs_dir_readdir_dotl(struct file *file, struct dir_context *ctx)
 
 int v9fs_dir_release(struct inode *inode, struct file *filp)
 {
+	struct v9fs_inode *v9inode = V9FS_I(inode);
 	struct p9_fid *fid;
-
+	loff_t i_size;
+	
 	fid = filp->private_data;
 	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
 		 inode, filp, fid ? fid->fid : -1);
 	if (fid)
 		p9_client_clunk(fid);
+
+	if ((filp->f_mode & FMODE_WRITE)) {
+		i_size = i_size_read(inode);
+		fscache_unuse_cookie(v9fs_inode_cookie(v9inode),
+				     &v9inode->qid.version, &i_size);
+	} else {
+		fscache_unuse_cookie(v9fs_inode_cookie(v9inode), NULL, NULL);
+	}
 	return 0;
 }
 
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index b177fd3b1eb3..d6b393c223b6 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -94,8 +94,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 		v9inode->writeback_fid = (void *) fid;
 	}
 	mutex_unlock(&v9inode->v_mutex);
-	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
-		v9fs_cache_inode_set_cookie(inode, file);
+	fscache_use_cookie(v9fs_inode_cookie(v9inode), file->f_mode & FMODE_WRITE);
 	return 0;
 out_error:
 	p9_client_clunk(file->private_data);
@@ -554,14 +553,27 @@ v9fs_vm_page_mkwrite(struct vm_fault *vmf)
 	p9_debug(P9_DEBUG_VFS, "page %p fid %lx\n",
 		 page, (unsigned long)filp->private_data);
 
+	v9inode = V9FS_I(inode);
+
+	/* Wait for the page to be written to the cache before we allow it to
+	 * be modified.  We then assume the entire page will need writing back.
+	 */
+#ifdef CONFIG_V9FS_FSCACHE
+	if (PageFsCache(page) &&
+	    wait_on_page_bit_killable(page, PG_fscache) < 0)
+		return VM_FAULT_RETRY;
+#endif
+
+	if (PageWriteback(page) &&
+	    wait_on_page_bit_killable(page, PG_writeback) < 0)
+		return VM_FAULT_RETRY;
+
 	/* Update file times before taking page lock */
 	file_update_time(filp);
 
-	v9inode = V9FS_I(inode);
-	/* make sure the cache has finished storing the page */
-	v9fs_fscache_wait_on_page_write(inode, page);
 	BUG_ON(!v9inode->writeback_fid);
-	lock_page(page);
+	if (lock_page_killable(page) < 0)
+		return VM_FAULT_RETRY;
 	if (page->mapping != inode->i_mapping)
 		goto out_unlock;
 	wait_for_stable_page(page);
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index ae0c38ad1fcb..4cdf4660d7c2 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -228,7 +228,6 @@ struct inode *v9fs_alloc_inode(struct super_block *sb)
 		return NULL;
 #ifdef CONFIG_9P_FSCACHE
 	v9inode->fscache = NULL;
-	mutex_init(&v9inode->fscache_lock);
 #endif
 	v9inode->writeback_fid = NULL;
 	v9inode->cache_validity = 0;
@@ -377,10 +376,12 @@ void v9fs_evict_inode(struct inode *inode)
 	struct v9fs_inode *v9inode = V9FS_I(inode);
 
 	truncate_inode_pages_final(&inode->i_data);
+	fscache_clear_inode_writeback(v9fs_inode_cookie(v9inode), inode,
+				      &v9inode->qid.version);
 	clear_inode(inode);
 	filemap_fdatawrite(&inode->i_data);
 
-	v9fs_cache_inode_put_cookie(inode);
+	fscache_relinquish_cookie(v9fs_inode_cookie(v9inode), false);
 	/* clunk the fid stashed in writeback_fid */
 	if (v9inode->writeback_fid) {
 		p9_client_clunk(v9inode->writeback_fid);
@@ -846,8 +847,7 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 		goto error;
 
 	file->private_data = fid;
-	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
-		v9fs_cache_inode_set_cookie(d_inode(dentry), file);
+	fscache_use_cookie(v9fs_inode_cookie(v9inode), file->f_mode & FMODE_WRITE);
 
 	file->f_mode |= FMODE_CREATED;
 out:
@@ -1035,6 +1035,8 @@ v9fs_vfs_getattr(const struct path *path, struct kstat *stat,
 static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 {
 	int retval;
+	struct inode *inode = d_inode(dentry);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
 	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid = NULL;
 	struct p9_wstat wstat;
@@ -1078,20 +1080,22 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 
 	/* Write all dirty data */
 	if (d_is_reg(dentry))
-		filemap_write_and_wait(d_inode(dentry)->i_mapping);
+		filemap_write_and_wait(inode->i_mapping);
 
 	retval = p9_client_wstat(fid, &wstat);
 	if (retval < 0)
 		return retval;
 
 	if ((iattr->ia_valid & ATTR_SIZE) &&
-	    iattr->ia_size != i_size_read(d_inode(dentry)))
-		truncate_setsize(d_inode(dentry), iattr->ia_size);
+	    iattr->ia_size != i_size_read(inode)) {
+		truncate_setsize(inode, iattr->ia_size);
+		fscache_resize_cookie(v9fs_inode_cookie(v9inode), iattr->ia_size);
+	}
 
-	v9fs_invalidate_inode_attr(d_inode(dentry));
+	v9fs_invalidate_inode_attr(inode);
 
-	setattr_copy(d_inode(dentry), iattr);
-	mark_inode_dirty(d_inode(dentry));
+	setattr_copy(inode, iattr);
+	mark_inode_dirty(inode);
 	return 0;
 }
 
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 0028eccb665a..773ec75eefbe 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -340,8 +340,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	if (err)
 		goto err_clunk_old_fid;
 	file->private_data = ofid;
-	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
-		v9fs_cache_inode_set_cookie(inode, file);
+	fscache_use_cookie(v9fs_inode_cookie(v9inode), file->f_mode & FMODE_WRITE);
 	file->f_mode |= FMODE_CREATED;
 out:
 	v9fs_put_acl(dacl, pacl);
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 10ef9c0f32ac..068e5c8e7586 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -786,6 +786,7 @@ int afs_drop_inode(struct inode *inode)
  */
 void afs_evict_inode(struct inode *inode)
 {
+	struct afs_vnode_cache_aux aux;
 	struct afs_vnode *vnode = AFS_FS_I(inode);
 
 	_enter("{%llx:%llu.%d}",
@@ -799,12 +800,8 @@ void afs_evict_inode(struct inode *inode)
 
 	truncate_inode_pages_final(&inode->i_data);
 
-	if (inode->i_state & I_PINNING_FSCACHE_WB) {
-		struct afs_vnode_cache_aux aux;
-		loff_t i_size = i_size_read(&vnode->vfs_inode);
-		aux.data_version = vnode->status.data_version;
-		fscache_unuse_cookie(afs_vnode_cache(vnode), &aux, &i_size);
-	}
+	aux.data_version = vnode->status.data_version;
+	fscache_clear_inode_writeback(afs_vnode_cache(vnode), inode, &aux);
 	clear_inode(inode);
 
 	while (!list_empty(&vnode->wb_keys)) {
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 0613ccea88c1..f129c159e1c1 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -682,4 +682,24 @@ static inline void fscache_unpin_writeback(struct writeback_control *wbc,
 		fscache_unuse_cookie(cookie, NULL, NULL);
 }
 
+/**
+ * fscache_clear_inode_writeback - Clear writeback resources pinned by an inode
+ * @cookie: The cookie referring to the cache object
+ * @inode: The inode to clean up
+ * @aux: Auxiliary data to apply to the inode
+ *
+ * Clear any writeback resources held by an inode when the inode is evicted.
+ * This must be called before clear_inode() is called.
+ */
+static inline void fscache_clear_inode_writeback(struct fscache_cookie *cookie,
+						 struct inode *inode,
+						 const void *aux)
+{
+	if (inode->i_state & I_PINNING_FSCACHE_WB) {
+		loff_t i_size = i_size_read(inode);
+		fscache_unuse_cookie(cookie, aux, &i_size);
+	}
+
+}
+
 #endif /* _LINUX_FSCACHE_H */



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
