Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F1047DA45
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:21:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0Auy-0002Vf-B7; Wed, 22 Dec 2021 23:21:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0Auw-0002VZ-TU
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BxWL4NZFkXVhiD5tuKkZk/3sS19WSw1GTC7RwwFLIAo=; b=B74Nij0eUXgDipiRj9bdP0S8k/
 GGpYXw001AbILqAaeCQFQOwgI16J9xNCEb5FqfLDL9n8Yt8epYUgXUU04FP00qBHUv0K5osK32wib
 DffXdurhrB19hHfYxXAbnY5+N4rvrCnyEo5u/CeB9gkubYK3ZG5Hn3Wx+i6gOxH/01Qk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BxWL4NZFkXVhiD5tuKkZk/3sS19WSw1GTC7RwwFLIAo=; b=YClX8Un6/YMqapOokwMbfHfudt
 aOjL0iQ5z5PvhDLfNNtp5hE6dZHHdXuDoxExaitdDI5buosmtxg3YF1FyaeTsLKG+hozKopW4lqeK
 EiiO0EGfKpL3W3mLI96tZKsypVia9HMaWr/NnCPeNC79E4x4AJe/tCc/i9Y//ybCNMJ8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Auw-006hen-NM
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215259;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BxWL4NZFkXVhiD5tuKkZk/3sS19WSw1GTC7RwwFLIAo=;
 b=YS4mOEYmC8sBtUbr66XLlqa42tInDhs8sUVUbWcM62HmM7E/pVjU5TwEcqr8LAwFWrcP1a
 K7WIfFDZuhb5Q0kfath29ltD5ImGg/q+glklJBJ41TsFBjlq5c+6Y0dhFueLG6Jl9EIt4O
 znWijylhbpSvrBwU7H38sjXf8/CcP9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-395-SJ_Fp9rWPmGDwuh3xaLyFA-1; Wed, 22 Dec 2021 18:20:56 -0500
X-MC-Unique: SJ_Fp9rWPmGDwuh3xaLyFA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 644711006AA4;
 Wed, 22 Dec 2021 23:20:54 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E5713838FE;
 Wed, 22 Dec 2021 23:20:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:20:47 +0000
Message-ID: <164021524705.640689.17824932021727663017.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Cachefiles has a problem in that it needs to keep the backing
 file for a cookie open whilst there are local modifications pending that
 need to be written to it. However, we don't want to keep the file [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0Auw-006hen-NM
Subject: [V9fs-developer] [PATCH v4 27/68] vfs,
 fscache: Implement pinning of cache usage for writeback
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
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Cachefiles has a problem in that it needs to keep the backing file for a
cookie open whilst there are local modifications pending that need to be
written to it.  However, we don't want to keep the file open indefinitely,
as that causes EMFILE/ENFILE/ENOMEM problems.

Reopening the cache file, however, is a problem if this is being done due
to writeback triggered by exit().  Some filesystems will oops if we try to
open a file in that context because they want to access current->fs or
other resources that have already been dismantled.

To get around this, I added the following:

 (1) An inode flag, I_PINNING_FSCACHE_WB, to be set on a network filesystem
     inode to indicate that we have a usage count on the cookie caching
     that inode.

 (2) A flag in struct writeback_control, unpinned_fscache_wb, that is set
     when __writeback_single_inode() clears the last dirty page from
     i_pages - at which point it clears I_PINNING_FSCACHE_WB and sets this
     flag.

     This has to be done here so that clearing I_PINNING_FSCACHE_WB can be
     done atomically with the check of PAGECACHE_TAG_DIRTY that clears
     I_DIRTY_PAGES.

 (3) A function, fscache_set_page_dirty(), which if it is not set, sets
     I_PINNING_FSCACHE_WB and calls fscache_use_cookie() to pin the cache
     resources.

 (4) A function, fscache_unpin_writeback(), to be called by ->write_inode()
     to unuse the cookie.

 (5) A function, fscache_clear_inode_writeback(), to be called when the
     inode is evicted, before clear_inode() is called.  This cleans up any
     lingering I_PINNING_FSCACHE_WB.

The network filesystem can then use these tools to make sure that
fscache_write_to_cache() can write locally modified data to the cache as
well as to the server.

For the future, I'm working on write helpers for netfs lib that should
allow this facility to be removed by keeping track of the dirty regions
separately - but that's incomplete at the moment and is also going to be
affected by folios, one way or another, since it deals with pages

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819615157.215744.17623791756928043114.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906917856.143852.8224898306177154573.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967124567.1823006.14188359004568060298.stgit@warthog.procyon.org.uk/ # v3
---

 fs/fs-writeback.c         |    8 ++++++++
 fs/fscache/io.c           |   38 ++++++++++++++++++++++++++++++++++++++
 include/linux/fs.h        |    3 +++
 include/linux/fscache.h   |   41 +++++++++++++++++++++++++++++++++++++++++
 include/linux/writeback.h |    1 +
 5 files changed, 91 insertions(+)

diff --git a/fs/fs-writeback.c b/fs/fs-writeback.c
index 67f0e88eed01..8294a60ce323 100644
--- a/fs/fs-writeback.c
+++ b/fs/fs-writeback.c
@@ -1666,6 +1666,13 @@ __writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
 
 	if (mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
 		inode->i_state |= I_DIRTY_PAGES;
+	else if (unlikely(inode->i_state & I_PINNING_FSCACHE_WB)) {
+		if (!(inode->i_state & I_DIRTY_PAGES)) {
+			inode->i_state &= ~I_PINNING_FSCACHE_WB;
+			wbc->unpinned_fscache_wb = true;
+			dirty |= I_PINNING_FSCACHE_WB; /* Cause write_inode */
+		}
+	}
 
 	spin_unlock(&inode->i_lock);
 
@@ -1675,6 +1682,7 @@ __writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
 		if (ret == 0)
 			ret = err;
 	}
+	wbc->unpinned_fscache_wb = false;
 	trace_writeback_single_inode(inode, wbc, nr_to_write);
 	return ret;
 }
diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 74cde7acf434..e9e5d6758ea8 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -150,6 +150,44 @@ int __fscache_begin_read_operation(struct netfs_cache_resources *cres,
 }
 EXPORT_SYMBOL(__fscache_begin_read_operation);
 
+/**
+ * fscache_set_page_dirty - Mark page dirty and pin a cache object for writeback
+ * @page: The page being dirtied
+ * @cookie: The cookie referring to the cache object
+ *
+ * Set the dirty flag on a page and pin an in-use cache object in memory when
+ * dirtying a page so that writeback can later write to it.  This is intended
+ * to be called from the filesystem's ->set_page_dirty() method.
+ *
+ *  Returns 1 if PG_dirty was set on the page, 0 otherwise.
+ */
+int fscache_set_page_dirty(struct page *page, struct fscache_cookie *cookie)
+{
+	struct inode *inode = page->mapping->host;
+	bool need_use = false;
+
+	_enter("");
+
+	if (!__set_page_dirty_nobuffers(page))
+		return 0;
+	if (!fscache_cookie_valid(cookie))
+		return 1;
+
+	if (!(inode->i_state & I_PINNING_FSCACHE_WB)) {
+		spin_lock(&inode->i_lock);
+		if (!(inode->i_state & I_PINNING_FSCACHE_WB)) {
+			inode->i_state |= I_PINNING_FSCACHE_WB;
+			need_use = true;
+		}
+		spin_unlock(&inode->i_lock);
+
+		if (need_use)
+			fscache_use_cookie(cookie, true);
+	}
+	return 1;
+}
+EXPORT_SYMBOL(fscache_set_page_dirty);
+
 struct fscache_write_request {
 	struct netfs_cache_resources cache_resources;
 	struct address_space	*mapping;
diff --git a/include/linux/fs.h b/include/linux/fs.h
index bbf812ce89a8..2c0b8e77d9ab 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -2418,6 +2418,8 @@ static inline void kiocb_clone(struct kiocb *kiocb, struct kiocb *kiocb_src,
  *			Used to detect that mark_inode_dirty() should not move
  * 			inode between dirty lists.
  *
+ * I_PINNING_FSCACHE_WB	Inode is pinning an fscache object for writeback.
+ *
  * Q: What is the difference between I_WILL_FREE and I_FREEING?
  */
 #define I_DIRTY_SYNC		(1 << 0)
@@ -2440,6 +2442,7 @@ static inline void kiocb_clone(struct kiocb *kiocb, struct kiocb *kiocb_src,
 #define I_CREATING		(1 << 15)
 #define I_DONTCACHE		(1 << 16)
 #define I_SYNC_QUEUED		(1 << 17)
+#define I_PINNING_FSCACHE_WB	(1 << 18)
 
 #define I_DIRTY_INODE (I_DIRTY_SYNC | I_DIRTY_DATASYNC)
 #define I_DIRTY (I_DIRTY_INODE | I_DIRTY_PAGES)
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 9d469613e16c..18e725671594 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -16,6 +16,7 @@
 
 #include <linux/fs.h>
 #include <linux/netfs.h>
+#include <linux/writeback.h>
 
 #if defined(CONFIG_FSCACHE) || defined(CONFIG_FSCACHE_MODULE)
 #define __fscache_available (1)
@@ -566,4 +567,44 @@ static inline void fscache_write_to_cache(struct fscache_cookie *cookie,
 
 }
 
+#if __fscache_available
+extern int fscache_set_page_dirty(struct page *page, struct fscache_cookie *cookie);
+#else
+#define fscache_set_page_dirty(PAGE, COOKIE) (__set_page_dirty_nobuffers((PAGE)))
+#endif
+
+/**
+ * fscache_unpin_writeback - Unpin writeback resources
+ * @wbc: The writeback control
+ * @cookie: The cookie referring to the cache object
+ *
+ * Unpin the writeback resources pinned by fscache_set_page_dirty().  This is
+ * intended to be called by the netfs's ->write_inode() method.
+ */
+static inline void fscache_unpin_writeback(struct writeback_control *wbc,
+					   struct fscache_cookie *cookie)
+{
+	if (wbc->unpinned_fscache_wb)
+		fscache_unuse_cookie(cookie, NULL, NULL);
+}
+
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
+}
+
 #endif /* _LINUX_FSCACHE_H */
diff --git a/include/linux/writeback.h b/include/linux/writeback.h
index 3bfd487d1dd2..fec248ab1fec 100644
--- a/include/linux/writeback.h
+++ b/include/linux/writeback.h
@@ -68,6 +68,7 @@ struct writeback_control {
 	unsigned for_reclaim:1;		/* Invoked from the page allocator */
 	unsigned range_cyclic:1;	/* range_start is cyclic */
 	unsigned for_sync:1;		/* sync(2) WB_SYNC_ALL writeback */
+	unsigned unpinned_fscache_wb:1;	/* Cleared I_PINNING_FSCACHE_WB */
 
 	/*
 	 * When writeback IOs are bounced through async layers, only the




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
