Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4589043FDF0
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Oct 2021 16:09:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mgSZl-0001CG-Ua; Fri, 29 Oct 2021 14:09:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mgSZk-0001Br-Fr
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 14:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f9PB19TbkKpQKyZgp5SpdBLsq0ElQa5CcOVpktCgboQ=; b=AZOrz4zLukdI9AS7/Jdp3UmBnR
 JOntA8gg7cECbbQTAzhLj5lidHJUc56bUdir4SbUOO7MMG0GbvmWsg3vLbPo0mN8bvdEhpeC7ILOW
 +bYgkNV1ZPl+gyzENrQGyE1ATV9datBOTa4gNsHgNfdJ5+ftkVHpTuKEHDzQ5L+OwJRM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f9PB19TbkKpQKyZgp5SpdBLsq0ElQa5CcOVpktCgboQ=; b=R223vQuubH/fp4vsPqdOnVHMTW
 8iykOn4D2/hC0MLDXWY3JmelvrB501uXT0VdIKPtoWO9Xu58++ul3pOP4h3KTDuGh4Src15OptDj7
 LhgT/dTA/rMZ5fMA3yVSEbVPh+czUDJV1i7Yg7WvVBw6yASvZAbjOj5Z9dMssBcuCXmE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mgSZb-005kmp-Ki
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 14:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635516569;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f9PB19TbkKpQKyZgp5SpdBLsq0ElQa5CcOVpktCgboQ=;
 b=Ye95qqUlF3LHRTm8gO4SI7Ix1PruwWHmRiqVj5ohArMcvlloFkAQ9nxnOwqJdRjpsspJ43
 LkOlnLzq+G3145aoOFmFaquzIngqf5rfW6PdD+xepE4PF3RWEUDcSPT+bK5qhyTzN7SghK
 EM8UdzCWqsqBXqkbzI4ZFyAhTGl5iaI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-lPM1U9X5N3OQl2I5ZcwMbg-1; Fri, 29 Oct 2021 10:09:25 -0400
X-MC-Unique: lPM1U9X5N3OQl2I5ZcwMbg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3E6580668D;
 Fri, 29 Oct 2021 14:09:23 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3A25660854;
 Fri, 29 Oct 2021 14:09:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 29 Oct 2021 15:09:19 +0100
Message-ID: <163551655939.1877519.5910362900676754518.stgit@warthog.procyon.org.uk>
In-Reply-To: <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
References: <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Generalise the ->begin_read_operation() method in the
 fscache_cache_ops
 struct so that it's not read specific by: (1) changing the name to
 ->begin_operation(); 
 (2) changing the netfs_read_request struct pointer parameter to be a
 netfs_cache_resources
 struct pointer (it only accesses the cache resources and an ID for debugging
 from the read request); 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mgSZb-005kmp-Ki
Subject: [V9fs-developer] [PATCH v4 01/10] fscache: Generalise the
 ->begin_read_operation method
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Generalise the ->begin_read_operation() method in the fscache_cache_ops
struct so that it's not read specific by:

 (1) changing the name to ->begin_operation();

 (2) changing the netfs_read_request struct pointer parameter to be a
     netfs_cache_resources struct pointer (it only accesses the cache
     resources and an ID for debugging from the read request);

 (3) and by changing the fscache_retrieval pointer parameter to be a
     fscache_operation pointer (it only access the operation base of the
     retrieval).

Also modify the cachefiles implementation so that it stores a pointer to
the fscache_operation rather than fscache_retrieval in the cache resources.

This makes it easier to share code with the write path in future.

Signed-off-by: David Howells <dhowells@redhat.com>
Tested-by: Dave Wysochanski <dwysocha@redhat.com>
Link: https://lore.kernel.org/r/163162768886.438332.9851931782896704604.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/163189105559.2509237.10649193286647776741.stgit@warthog.procyon.org.uk/ # rfc v2
---

 fs/afs/file.c                 |    2 +-
 fs/cachefiles/interface.c     |    2 +-
 fs/cachefiles/internal.h      |    4 ++--
 fs/cachefiles/io.c            |   28 +++++++++++++---------------
 fs/ceph/cache.h               |    2 +-
 fs/fscache/io.c               |   35 +++++++++++++++++++++--------------
 include/linux/fscache-cache.h |    6 +++---
 include/linux/fscache.h       |   15 ++++++++-------
 8 files changed, 50 insertions(+), 44 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index e6c447ae91f3..4d5b6bfcf815 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -351,7 +351,7 @@ static int afs_begin_cache_operation(struct netfs_read_request *rreq)
 {
 	struct afs_vnode *vnode = AFS_FS_I(rreq->inode);
 
-	return fscache_begin_read_operation(rreq, afs_vnode_cache(vnode));
+	return fscache_begin_read_operation(&rreq->cache_resources, afs_vnode_cache(vnode));
 }
 
 static int afs_check_write_begin(struct file *file, loff_t pos, unsigned len,
diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index da28ac1fa225..8a7755b86c59 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -568,5 +568,5 @@ const struct fscache_cache_ops cachefiles_cache_ops = {
 	.uncache_page		= cachefiles_uncache_page,
 	.dissociate_pages	= cachefiles_dissociate_pages,
 	.check_consistency	= cachefiles_check_consistency,
-	.begin_read_operation	= cachefiles_begin_read_operation,
+	.begin_operation	= cachefiles_begin_operation,
 };
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 0a511c36dab8..994f90ff12ac 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -198,8 +198,8 @@ extern void cachefiles_uncache_page(struct fscache_object *, struct page *);
 /*
  * rdwr2.c
  */
-extern int cachefiles_begin_read_operation(struct netfs_read_request *,
-					   struct fscache_retrieval *);
+extern int cachefiles_begin_operation(struct netfs_cache_resources *,
+				      struct fscache_operation *);
 
 /*
  * security.c
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index fac2e8e7b533..08b3183e0dce 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -268,7 +268,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subrequest *subreq,
 						      loff_t i_size)
 {
-	struct fscache_retrieval *op = subreq->rreq->cache_resources.cache_priv;
+	struct fscache_operation *op = subreq->rreq->cache_resources.cache_priv;
 	struct cachefiles_object *object;
 	struct cachefiles_cache *cache;
 	const struct cred *saved_cred;
@@ -277,8 +277,7 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 
 	_enter("%zx @%llx/%llx", subreq->len, subreq->start, i_size);
 
-	object = container_of(op->op.object,
-			      struct cachefiles_object, fscache);
+	object = container_of(op->object, struct cachefiles_object, fscache);
 	cache = container_of(object->fscache.cache,
 			     struct cachefiles_cache, cache);
 
@@ -351,7 +350,7 @@ static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
  */
 static void cachefiles_end_operation(struct netfs_cache_resources *cres)
 {
-	struct fscache_retrieval *op = cres->cache_priv;
+	struct fscache_operation *op = cres->cache_priv;
 	struct file *file = cres->cache_priv2;
 
 	_enter("");
@@ -359,8 +358,8 @@ static void cachefiles_end_operation(struct netfs_cache_resources *cres)
 	if (file)
 		fput(file);
 	if (op) {
-		fscache_op_complete(&op->op, false);
-		fscache_put_retrieval(op);
+		fscache_op_complete(op, false);
+		fscache_put_operation(op);
 	}
 
 	_leave("");
@@ -377,8 +376,8 @@ static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
 /*
  * Open the cache file when beginning a cache operation.
  */
-int cachefiles_begin_read_operation(struct netfs_read_request *rreq,
-				    struct fscache_retrieval *op)
+int cachefiles_begin_operation(struct netfs_cache_resources *cres,
+			       struct fscache_operation *op)
 {
 	struct cachefiles_object *object;
 	struct cachefiles_cache *cache;
@@ -387,8 +386,7 @@ int cachefiles_begin_read_operation(struct netfs_read_request *rreq,
 
 	_enter("");
 
-	object = container_of(op->op.object,
-			      struct cachefiles_object, fscache);
+	object = container_of(op->object, struct cachefiles_object, fscache);
 	cache = container_of(object->fscache.cache,
 			     struct cachefiles_cache, cache);
 
@@ -406,11 +404,11 @@ int cachefiles_begin_read_operation(struct netfs_read_request *rreq,
 		goto error_file;
 	}
 
-	fscache_get_retrieval(op);
-	rreq->cache_resources.cache_priv = op;
-	rreq->cache_resources.cache_priv2 = file;
-	rreq->cache_resources.ops = &cachefiles_netfs_cache_ops;
-	rreq->cache_resources.debug_id = object->fscache.debug_id;
+	atomic_inc(&op->usage);
+	cres->cache_priv = op;
+	cres->cache_priv2 = file;
+	cres->ops = &cachefiles_netfs_cache_ops;
+	cres->debug_id = object->fscache.debug_id;
 	_leave("");
 	return 0;
 
diff --git a/fs/ceph/cache.h b/fs/ceph/cache.h
index 058ea2a04376..b94d3f38fb25 100644
--- a/fs/ceph/cache.h
+++ b/fs/ceph/cache.h
@@ -54,7 +54,7 @@ static inline int ceph_begin_cache_operation(struct netfs_read_request *rreq)
 {
 	struct fscache_cookie *cookie = ceph_fscache_cookie(ceph_inode(rreq->inode));
 
-	return fscache_begin_read_operation(rreq, cookie);
+	return fscache_begin_read_operation(&rreq->cache_resources, cookie);
 }
 #else
 
diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 8ecc1141802f..3745a0631618 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -14,7 +14,7 @@
 #include "internal.h"
 
 /*
- * Start a cache read operation.
+ * Start a cache operation.
  * - we return:
  *   -ENOMEM	- out of memory, some pages may be being read
  *   -ERESTARTSYS - interrupted, some pages may be being read
@@ -24,15 +24,16 @@
  *                the pages
  *   0		- dispatched a read on all pages
  */
-int __fscache_begin_read_operation(struct netfs_read_request *rreq,
-				   struct fscache_cookie *cookie)
+int __fscache_begin_operation(struct netfs_cache_resources *cres,
+			      struct fscache_cookie *cookie,
+			      bool for_write)
 {
-	struct fscache_retrieval *op;
+	struct fscache_operation *op;
 	struct fscache_object *object;
 	bool wake_cookie = false;
 	int ret;
 
-	_enter("rr=%08x", rreq->debug_id);
+	_enter("c=%08x", cres->debug_id);
 
 	fscache_stat(&fscache_n_retrievals);
 
@@ -49,10 +50,16 @@ int __fscache_begin_read_operation(struct netfs_read_request *rreq,
 	if (fscache_wait_for_deferred_lookup(cookie) < 0)
 		return -ERESTARTSYS;
 
-	op = fscache_alloc_retrieval(cookie, NULL, NULL, NULL);
+	op = kzalloc(sizeof(*op), GFP_KERNEL);
 	if (!op)
 		return -ENOMEM;
-	trace_fscache_page_op(cookie, NULL, &op->op, fscache_page_op_retr_multi);
+
+	fscache_operation_init(cookie, op, NULL, NULL, NULL);
+	op->flags = FSCACHE_OP_MYTHREAD |
+		(1UL << FSCACHE_OP_WAITING) |
+		(1UL << FSCACHE_OP_UNUSE_COOKIE);
+
+	trace_fscache_page_op(cookie, NULL, op, fscache_page_op_retr_multi);
 
 	spin_lock(&cookie->lock);
 
@@ -64,9 +71,9 @@ int __fscache_begin_read_operation(struct netfs_read_request *rreq,
 
 	__fscache_use_cookie(cookie);
 	atomic_inc(&object->n_reads);
-	__set_bit(FSCACHE_OP_DEC_READ_CNT, &op->op.flags);
+	__set_bit(FSCACHE_OP_DEC_READ_CNT, &op->flags);
 
-	if (fscache_submit_op(object, &op->op) < 0)
+	if (fscache_submit_op(object, op) < 0)
 		goto nobufs_unlock_dec;
 	spin_unlock(&cookie->lock);
 
@@ -75,14 +82,14 @@ int __fscache_begin_read_operation(struct netfs_read_request *rreq,
 	/* we wait for the operation to become active, and then process it
 	 * *here*, in this thread, and not in the thread pool */
 	ret = fscache_wait_for_operation_activation(
-		object, &op->op,
+		object, op,
 		__fscache_stat(&fscache_n_retrieval_op_waits),
 		__fscache_stat(&fscache_n_retrievals_object_dead));
 	if (ret < 0)
 		goto error;
 
 	/* ask the cache to honour the operation */
-	ret = object->cache->ops->begin_read_operation(rreq, op);
+	ret = object->cache->ops->begin_operation(cres, op);
 
 error:
 	if (ret == -ENOMEM)
@@ -96,7 +103,7 @@ int __fscache_begin_read_operation(struct netfs_read_request *rreq,
 	else
 		fscache_stat(&fscache_n_retrievals_ok);
 
-	fscache_put_retrieval(op);
+	fscache_put_operation(op);
 	_leave(" = %d", ret);
 	return ret;
 
@@ -105,7 +112,7 @@ int __fscache_begin_read_operation(struct netfs_read_request *rreq,
 	wake_cookie = __fscache_unuse_cookie(cookie);
 nobufs_unlock:
 	spin_unlock(&cookie->lock);
-	fscache_put_retrieval(op);
+	fscache_put_operation(op);
 	if (wake_cookie)
 		__fscache_wake_unused_cookie(cookie);
 nobufs:
@@ -113,4 +120,4 @@ int __fscache_begin_read_operation(struct netfs_read_request *rreq,
 	_leave(" = -ENOBUFS");
 	return -ENOBUFS;
 }
-EXPORT_SYMBOL(__fscache_begin_read_operation);
+EXPORT_SYMBOL(__fscache_begin_operation);
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 8d39491c5f9f..efa9b6f9fab1 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -304,9 +304,9 @@ struct fscache_cache_ops {
 	/* dissociate a cache from all the pages it was backing */
 	void (*dissociate_pages)(struct fscache_cache *cache);
 
-	/* Begin a read operation for the netfs lib */
-	int (*begin_read_operation)(struct netfs_read_request *rreq,
-				    struct fscache_retrieval *op);
+	/* Begin an operation for the netfs lib */
+	int (*begin_operation)(struct netfs_cache_resources *cres,
+			       struct fscache_operation *op);
 };
 
 extern struct fscache_cookie fscache_fsdef_index;
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index a4dab5998613..32f65c16328a 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -196,7 +196,8 @@ extern void __fscache_invalidate(struct fscache_cookie *);
 extern void __fscache_wait_on_invalidate(struct fscache_cookie *);
 
 #ifdef FSCACHE_USE_NEW_IO_API
-extern int __fscache_begin_read_operation(struct netfs_read_request *, struct fscache_cookie *);
+extern int __fscache_begin_operation(struct netfs_cache_resources *, struct fscache_cookie *,
+				     bool);
 #else
 extern int __fscache_read_or_alloc_page(struct fscache_cookie *,
 					struct page *,
@@ -511,12 +512,12 @@ int fscache_reserve_space(struct fscache_cookie *cookie, loff_t size)
 
 /**
  * fscache_begin_read_operation - Begin a read operation for the netfs lib
- * @rreq: The read request being undertaken
+ * @cres: The cache resources for the read being performed
  * @cookie: The cookie representing the cache object
  *
- * Begin a read operation on behalf of the netfs helper library.  @rreq
- * indicates the read request to which the operation state should be attached;
- * @cookie indicates the cache object that will be accessed.
+ * Begin a read operation on behalf of the netfs helper library.  @cres
+ * indicates the cache resources to which the operation state should be
+ * attached; @cookie indicates the cache object that will be accessed.
  *
  * This is intended to be called from the ->begin_cache_operation() netfs lib
  * operation as implemented by the network filesystem.
@@ -527,11 +528,11 @@ int fscache_reserve_space(struct fscache_cookie *cookie, loff_t size)
  * * Other error code from the cache, such as -ENOMEM.
  */
 static inline
-int fscache_begin_read_operation(struct netfs_read_request *rreq,
+int fscache_begin_read_operation(struct netfs_cache_resources *cres,
 				 struct fscache_cookie *cookie)
 {
 	if (fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie))
-		return __fscache_begin_read_operation(rreq, cookie);
+		return __fscache_begin_operation(cres, cookie, false);
 	return -ENOBUFS;
 }
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
