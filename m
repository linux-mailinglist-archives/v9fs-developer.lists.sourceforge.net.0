Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0EF302E03
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 22:37:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l49YO-00021m-BB; Mon, 25 Jan 2021 21:37:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l49YM-00021N-1f
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I4ZSJQ5PU03FbRb/mZ2BC1U+UIHprAhfOvXbv23Y/3g=; b=G/dHSexG5RITowGD4anb4ug6vK
 2GJgopSVOf/bHqPHnpgY0R5U/D9lSa+CMmcPMVlLYkOeZszh4t+RcfBufx0lRd4Fd+73WYiIgdw4b
 EVkMxwbHp5+PNXZKNzlcIe10Sq4w/qc7a7papUehYg1WhRml8cAwt9lREIwFAi2/EARU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I4ZSJQ5PU03FbRb/mZ2BC1U+UIHprAhfOvXbv23Y/3g=; b=DkFAa4b5BiotiefAs0N/TMwTaq
 cLzWNUhQuKUbbTDzS7Um+mFrmFQxG52SPKvWewsNR+d07uKqRxqIjj7HbbmtFC0/96EoGnw0i7kJp
 ZDsdNZIEtNN1S68qWw5psHKJweiFStxBGfpFkhGT2ThriPDuxhHYn6TH/Q1TDF9QH1yU=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l49YK-003ljW-Ah
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:37:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611610654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I4ZSJQ5PU03FbRb/mZ2BC1U+UIHprAhfOvXbv23Y/3g=;
 b=BoE5an/Lga/q3RWyU35VYVIyCUSnLRDeLhlmruNoagwaIbcBZUulxI8Okp29ean56hzXxU
 /h9sKcKAKhERDYmJgq+WPOG8IHT4aaxkDKrdPUu7UvVtUL/5ALHMI1ZWVGve6bCqAlvNZi
 nXmWfZBCihsYb3Tg1RoTxk2goc58H3E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-pAAqjINJOOuyAZ7_XksQzQ-1; Mon, 25 Jan 2021 16:37:30 -0500
X-MC-Unique: pAAqjINJOOuyAZ7_XksQzQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58807104ED19;
 Mon, 25 Jan 2021 21:37:24 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1DDAA74AD0;
 Mon, 25 Jan 2021 21:37:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 25 Jan 2021 21:37:20 +0000
Message-ID: <161161064027.2537118.10761758273997237502.stgit@warthog.procyon.org.uk>
In-Reply-To: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Headers-End: 1l49YK-003ljW-Ah
Subject: [V9fs-developer] [PATCH 31/32] NFS: Convert to the netfs API and
 nfs_readpage to use netfs_readpage
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

This patch converts the main NFS read paths to the new netfs API,
when fscache is enabled, and converts readpage while minimizing
changes to the existing NFS read code paths.

The netfs API requires a few functions to be provided by the
netfs:
- init_rreq: allows netfs to allocate resources prior to IO
- is_cache_enabled: allows netfs to disable fscache
- begin_cache_operation: signals the start of an fscache IO
- issue_op: called when netfs should issue read to server
- clamp_length: allows netfs to limit size of IO
- cleanup: allows netfs to cleanup after an IO is complete

The new netfs_readpage() API is called when fscache is enabled.
If a read cannot be satisfied from fscache, the netfs is called
back via issue_op() to obtain the data from the server.  Once
the read completes, the netfs must call netfs_subreq_terminated()
which then may write the data to fscache.  In order to call back
into fscache via netfs_subreq_terminated(), we must save the
netfs_read_subrequest* as a field in the nfs_pgio_header, similar
to nfs_direct_req.

If the netfs has a read IO limit (for example, NFS 'rsize' mount
options) the clamp_length() function is called.

Signed-off-by: Dave Wysochanski <dwysocha@redhat.com>
---

 fs/nfs/fscache.c         |  157 ++++++++++++++++++++++++++++++----------------
 fs/nfs/fscache.h         |   38 +++++------
 fs/nfs/pagelist.c        |    2 +
 fs/nfs/read.c            |    9 ++-
 include/linux/nfs_page.h |    1 
 include/linux/nfs_xdr.h  |    1 
 6 files changed, 131 insertions(+), 77 deletions(-)

diff --git a/fs/nfs/fscache.c b/fs/nfs/fscache.c
index a60df88efc40..d3445bb1cc9c 100644
--- a/fs/nfs/fscache.c
+++ b/fs/nfs/fscache.c
@@ -15,6 +15,9 @@
 #include <linux/seq_file.h>
 #include <linux/slab.h>
 #include <linux/iversion.h>
+#include <linux/xarray.h>
+#include <linux/fscache.h>
+#include <linux/netfs.h>
 
 #include "internal.h"
 #include "iostat.h"
@@ -373,66 +376,123 @@ void __nfs_fscache_invalidate_page(struct page *page, struct inode *inode)
 			      NFSIOS_FSCACHE_PAGES_UNCACHED);
 }
 
-/*
- * Handle completion of a page being read from the cache.
- * - Called in process (keventd) context.
- */
-static void nfs_readpage_from_fscache_complete(struct page *page,
-					       void *context,
-					       int error)
+static void nfs_issue_op(struct netfs_read_subrequest *subreq)
 {
-	dfprintk(FSCACHE,
-		 "NFS: readpage_from_fscache_complete (0x%p/0x%p/%d)\n",
-		 page, context, error);
-
-	/* if the read completes with an error, we just unlock the page and let
-	 * the VM reissue the readpage */
-	if (!error) {
-		SetPageUptodate(page);
-		unlock_page(page);
-	} else {
-		error = nfs_readpage_async(context, page->mapping->host, page);
-		if (error)
-			unlock_page(page);
+	struct inode *inode = subreq->rreq->inode;
+	struct nfs_readdesc *desc = subreq->rreq->netfs_priv;
+	struct page *page;
+	pgoff_t start = (subreq->start + subreq->transferred) >> PAGE_SHIFT;
+	pgoff_t last = ((subreq->start + subreq->len -
+			 subreq->transferred - 1) >> PAGE_SHIFT);
+	XA_STATE(xas, &subreq->rreq->mapping->i_pages, start);
+
+	dfprintk(FSCACHE, "NFS: %s(fsc:%p s:%lu l:%lu) subreq->start: %lld "
+		 "subreq->len: %ld subreq->transferred: %ld\n",
+		 __func__, nfs_i_fscache(inode), start, last, subreq->start,
+		 subreq->len, subreq->transferred);
+
+	nfs_add_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_READ_FAIL,
+			      last - start + 1);
+	nfs_pageio_init_read(&desc->pgio, inode, false,
+			     &nfs_async_read_completion_ops);
+
+	desc->pgio.pg_fsc = subreq; /* used in completion */
+
+	rcu_read_lock();
+	xas_for_each(&xas, page, last) {
+		subreq->error = readpage_async_filler(desc, page);
+		if (subreq->error < 0)
+			break;
+	}
+	rcu_read_unlock();
+	nfs_pageio_complete_read(&desc->pgio, inode);
+}
+
+static bool nfs_clamp_length(struct netfs_read_subrequest *subreq)
+{
+	struct inode *inode = subreq->rreq->mapping->host;
+	unsigned int rsize = NFS_SB(inode->i_sb)->rsize;
+
+	if (subreq->len > rsize) {
+		dfprintk(FSCACHE,
+			 "NFS: %s(fsc:%p slen:%lu rsize: %u)\n",
+			 __func__, nfs_i_fscache(inode), subreq->len, rsize);
+		subreq->len = rsize;
 	}
+
+	return true;
+}
+
+static void nfs_cleanup(struct address_space *mapping, void *netfs_priv)
+{
+	; /* fscache assumes if netfs_priv is given we have cleanup */
+}
+
+atomic_t nfs_fscache_debug_id;
+static void nfs_init_rreq(struct netfs_read_request *rreq, struct file *file)
+{
+	struct nfs_inode *nfsi = NFS_I(rreq->inode);
+
+	if (nfsi->fscache && test_bit(NFS_INO_FSCACHE, &nfsi->flags))
+		rreq->cookie_debug_id = atomic_inc_return(&nfs_fscache_debug_id);
+}
+
+static bool nfs_is_cache_enabled(struct inode *inode)
+{
+	struct nfs_inode *nfsi = NFS_I(inode);
+
+	return nfsi->fscache && test_bit(NFS_INO_FSCACHE, &nfsi->flags);
+}
+
+static int nfs_begin_cache_operation(struct netfs_read_request *rreq)
+{
+	struct fscache_cookie *cookie = NFS_I(rreq->inode)->fscache;
+
+	return fscache_begin_read_operation(rreq, cookie);
 }
 
+static struct netfs_read_request_ops nfs_fscache_req_ops = {
+	.init_rreq		= nfs_init_rreq,
+	.is_cache_enabled	= nfs_is_cache_enabled,
+	.begin_cache_operation	= nfs_begin_cache_operation,
+	.issue_op		= nfs_issue_op,
+	.clamp_length		= nfs_clamp_length,
+	.cleanup		= nfs_cleanup
+};
+
 /*
  * Retrieve a page from fscache
  */
-int __nfs_readpage_from_fscache(struct nfs_open_context *ctx,
-				struct inode *inode, struct page *page)
+int __nfs_readpage_from_fscache(struct file *filp,
+				struct page *page,
+				struct nfs_readdesc *desc)
 {
 	int ret;
+	struct inode *inode = file_inode(filp);
 
 	dfprintk(FSCACHE,
 		 "NFS: readpage_from_fscache(fsc:%p/p:%p(i:%lx f:%lx)/0x%p)\n",
 		 nfs_i_fscache(inode), page, page->index, page->flags, inode);
 
-	ret = fscache_read_or_alloc_page(nfs_i_fscache(inode),
-					 page,
-					 nfs_readpage_from_fscache_complete,
-					 ctx,
-					 GFP_KERNEL);
+	ret = netfs_readpage(filp, page, &nfs_fscache_req_ops, desc);
 
 	switch (ret) {
-	case 0: /* read BIO submitted (page in fscache) */
-		dfprintk(FSCACHE,
-			 "NFS:    readpage_from_fscache: BIO submitted\n");
+	case 0: /* read submitted */
+		dfprintk(FSCACHE, "NFS:    readpage_from_fscache: submitted\n");
 		nfs_inc_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_READ_OK);
 		return ret;
 
 	case -ENOBUFS: /* inode not in cache */
 	case -ENODATA: /* page not in cache */
 		nfs_inc_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_READ_FAIL);
-		dfprintk(FSCACHE,
-			 "NFS:    readpage_from_fscache %d\n", ret);
+		dfprintk(FSCACHE, "NFS:    readpage_from_fscache %d\n", ret);
 		return 1;
 
 	default:
 		dfprintk(FSCACHE, "NFS:    readpage_from_fscache %d\n", ret);
 		nfs_inc_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_READ_FAIL);
 	}
+
 	return ret;
 }
 
@@ -487,30 +547,19 @@ int __nfs_readpages_from_fscache(struct nfs_open_context *ctx,
 }
 
 /*
- * Store a newly fetched page in fscache
- * - PG_fscache must be set on the page
+ * Store a newly fetched data in fscache
  */
-void __nfs_readpage_to_fscache(struct inode *inode, struct page *page, int sync)
+void __nfs_read_completion_to_fscache(struct nfs_pgio_header *hdr,
+				      unsigned long bytes)
 {
-	int ret;
+	struct netfs_read_subrequest *subreq = hdr->fsc;
 
-	dfprintk(FSCACHE,
-		 "NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\n",
-		 nfs_i_fscache(inode), page, page->index, page->flags, sync);
-
-	ret = fscache_write_page(nfs_i_fscache(inode), page,
-				 inode->i_size, GFP_KERNEL);
-	dfprintk(FSCACHE,
-		 "NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\n",
-		 page, page->index, page->flags, ret);
-
-	if (ret != 0) {
-		fscache_uncache_page(nfs_i_fscache(inode), page);
-		nfs_inc_fscache_stats(inode,
-				      NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL);
-		nfs_inc_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_UNCACHED);
-	} else {
-		nfs_inc_fscache_stats(inode,
-				      NFSIOS_FSCACHE_PAGES_WRITTEN_OK);
+	if (subreq) {
+		dfprintk(FSCACHE,
+			 "NFS: read_completion_to_fscache(fsc:%p err:%d bytes:%lu subreq->len:%lu\n",
+			 NFS_I(hdr->inode)->fscache, hdr->error, bytes, subreq->len);
+		__set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
+		netfs_subreq_terminated(subreq, hdr->error ?: bytes);
+		hdr->fsc = NULL;
 	}
 }
diff --git a/fs/nfs/fscache.h b/fs/nfs/fscache.h
index 6754c8607230..4a76a5f31772 100644
--- a/fs/nfs/fscache.h
+++ b/fs/nfs/fscache.h
@@ -95,9 +95,9 @@ extern void nfs_fscache_open_file(struct inode *, struct file *);
 
 extern void __nfs_fscache_invalidate_page(struct page *, struct inode *);
 extern int nfs_fscache_release_page(struct page *, gfp_t);
-
-extern int __nfs_readpage_from_fscache(struct nfs_open_context *,
-				       struct inode *, struct page *);
+extern int __nfs_readpage_from_fscache(struct file *filp,
+				       struct page *page,
+				       struct nfs_readdesc *desc);
 extern int __nfs_readpages_from_fscache(struct nfs_open_context *,
 					struct inode *, struct address_space *,
 					struct list_head *, unsigned *);
@@ -127,12 +127,12 @@ static inline void nfs_fscache_invalidate_page(struct page *page,
 /*
  * Retrieve a page from an inode data storage object.
  */
-static inline int nfs_readpage_from_fscache(struct nfs_open_context *ctx,
-					    struct inode *inode,
-					    struct page *page)
+static inline int nfs_readpage_from_fscache(struct file *filp,
+					    struct page *page,
+					    struct nfs_readdesc *desc)
 {
-	if (NFS_I(inode)->fscache)
-		return __nfs_readpage_from_fscache(ctx, inode, page);
+	if (NFS_I(file_inode(filp))->fscache)
+		return __nfs_readpage_from_fscache(filp, page, desc);
 	return -ENOBUFS;
 }
 
@@ -152,15 +152,14 @@ static inline int nfs_readpages_from_fscache(struct nfs_open_context *ctx,
 }
 
 /*
- * Store a page newly fetched from the server in an inode data storage object
+ * Store pages newly fetched from the server in an inode data storage object
  * in the cache.
  */
-static inline void nfs_readpage_to_fscache(struct inode *inode,
-					   struct page *page,
-					   int sync)
+static inline void nfs_read_completion_to_fscache(struct nfs_pgio_header *hdr,
+						  unsigned long bytes)
 {
-	if (PageFsCache(page))
-		__nfs_readpage_to_fscache(inode, page, sync);
+	if (NFS_I(hdr->inode)->fscache)
+		__nfs_read_completion_to_fscache(hdr, bytes);
 }
 
 /*
@@ -212,9 +211,9 @@ static inline void nfs_fscache_invalidate_page(struct page *page,
 static inline void nfs_fscache_wait_on_page_write(struct nfs_inode *nfsi,
 						  struct page *page) {}
 
-static inline int nfs_readpage_from_fscache(struct nfs_open_context *ctx,
-					    struct inode *inode,
-					    struct page *page)
+static inline int nfs_readpage_from_fscache(struct file *filp,
+					    struct page *page,
+					    struct nfs_readdesc *desc)
 {
 	return -ENOBUFS;
 }
@@ -226,9 +225,8 @@ static inline int nfs_readpages_from_fscache(struct nfs_open_context *ctx,
 {
 	return -ENOBUFS;
 }
-static inline void nfs_readpage_to_fscache(struct inode *inode,
-					   struct page *page, int sync) {}
-
+static inline void nfs_read_completion_to_fscache(struct nfs_pgio_header *hdr,
+						  unsigned long bytes) {}
 
 static inline void nfs_fscache_invalidate(struct inode *inode) {}
 static inline void nfs_fscache_wait_on_invalidate(struct inode *inode) {}
diff --git a/fs/nfs/pagelist.c b/fs/nfs/pagelist.c
index 78c9c4bdef2b..2e21e6c4023a 100644
--- a/fs/nfs/pagelist.c
+++ b/fs/nfs/pagelist.c
@@ -68,6 +68,7 @@ void nfs_pgheader_init(struct nfs_pageio_descriptor *desc,
 	hdr->good_bytes = mirror->pg_count;
 	hdr->io_completion = desc->pg_io_completion;
 	hdr->dreq = desc->pg_dreq;
+	hdr->fsc = desc->pg_fsc;
 	hdr->release = release;
 	hdr->completion_ops = desc->pg_completion_ops;
 	if (hdr->completion_ops->init_hdr)
@@ -849,6 +850,7 @@ void nfs_pageio_init(struct nfs_pageio_descriptor *desc,
 	desc->pg_lseg = NULL;
 	desc->pg_io_completion = NULL;
 	desc->pg_dreq = NULL;
+	desc->pg_fsc = NULL;
 	desc->pg_bsize = bsize;
 
 	desc->pg_mirror_count = 1;
diff --git a/fs/nfs/read.c b/fs/nfs/read.c
index 13266eda8f60..7a76ab474fe0 100644
--- a/fs/nfs/read.c
+++ b/fs/nfs/read.c
@@ -124,10 +124,11 @@ static void nfs_readpage_release(struct nfs_page *req, int error)
 		struct address_space *mapping = page_file_mapping(page);
 
 		if (PageUptodate(page))
-			nfs_readpage_to_fscache(inode, page, 0);
+			; /* FIXME: review fscache page error handling */
 		else if (!PageError(page) && !PagePrivate(page))
 			generic_error_remove_page(mapping, page);
-		unlock_page(page);
+		if (!nfs_i_fscache(inode))
+			unlock_page(page);
 	}
 	nfs_release_request(req);
 }
@@ -181,6 +182,8 @@ static void nfs_read_completion(struct nfs_pgio_header *hdr)
 		nfs_list_remove_request(req);
 		nfs_readpage_release(req, error);
 	}
+	/* FIXME: NFS_IOHDR_ERROR and NFS_IOHDR_EOF handled per-page */
+	nfs_read_completion_to_fscache(hdr, bytes);
 out:
 	hdr->release(hdr);
 }
@@ -359,7 +362,7 @@ int nfs_readpage(struct file *filp, struct page *page)
 		desc.ctx = get_nfs_open_context(nfs_file_open_context(filp));
 
 	if (!IS_SYNC(inode)) {
-		ret = nfs_readpage_from_fscache(desc.ctx, inode, page);
+		ret = nfs_readpage_from_fscache(filp, page, &desc);
 		if (ret == 0)
 			goto out;
 	}
diff --git a/include/linux/nfs_page.h b/include/linux/nfs_page.h
index f0373a6cb5fb..b45570bcde91 100644
--- a/include/linux/nfs_page.h
+++ b/include/linux/nfs_page.h
@@ -101,6 +101,7 @@ struct nfs_pageio_descriptor {
 	struct pnfs_layout_segment *pg_lseg;
 	struct nfs_io_completion *pg_io_completion;
 	struct nfs_direct_req	*pg_dreq;
+	void			*pg_fsc;
 	unsigned int		pg_bsize;	/* default bsize for mirrors */
 
 	u32			pg_mirror_count;
diff --git a/include/linux/nfs_xdr.h b/include/linux/nfs_xdr.h
index 3327239fa2f9..95423d3d9d98 100644
--- a/include/linux/nfs_xdr.h
+++ b/include/linux/nfs_xdr.h
@@ -1607,6 +1607,7 @@ struct nfs_pgio_header {
 	const struct nfs_rw_ops	*rw_ops;
 	struct nfs_io_completion *io_completion;
 	struct nfs_direct_req	*dreq;
+	void			*fsc;
 
 	int			pnfs_error;
 	int			error;		/* merge with pnfs_error */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
