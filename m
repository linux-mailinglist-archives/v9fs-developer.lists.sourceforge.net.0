Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB26C477727
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:10:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtKY-00036E-7W; Thu, 16 Dec 2021 16:10:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtKW-00035O-3e
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KbVRwUEvG7UUn8gQU50KloyXh6a+3VkMP44XZA+3gvU=; b=krCQFz328xxCOUJOUfzgNivpjt
 jNv3uAVVLE3DZatveFK4auDKzSYoDmhwDifjKVhug1dSZ7pvFfaq/HIXApwumw/a+iaJK28A9z6cx
 Lb96KmYhtVRkj5GMwhelzkzl4phemRugt8CLyf603aqx/oGajAjHJ9vWN/g9UyhORBvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KbVRwUEvG7UUn8gQU50KloyXh6a+3VkMP44XZA+3gvU=; b=QIutUJH5Um/UrugfzOmGv6sPS6
 0OB/iDbS5ICYN41GsF3EAb4raJ7gXyoX48WJIkKcYfkl8S7bj36RgrZmJ2W2qx+V/nGJSh6JdDkKh
 LnzVR31xm/C8xod2sH5KuP4oBJl0OXGz2u7e9PTjBLKe12Zc9aDkQcjoeFjZD2hZQDYg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtKV-00046g-RD
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:10:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639670998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KbVRwUEvG7UUn8gQU50KloyXh6a+3VkMP44XZA+3gvU=;
 b=C4lPfj9QoSHmGg3hS10WktWz+pCDT3dfwR5XmFSJnS2JrLqrPSFppHHrHf2IpF/YpS8sFz
 3eNkAKYH0kZxFsjCKUldmmtg1P8pfnDCEui+hTepcccdO/nB7JbkxExUQ/c94SWn1tU+fh
 Pr+aARsiZ2uPFomJjkHAbtUYWNYNiwY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-252-Ske7CagRNQisfxWTlOMXBA-1; Thu, 16 Dec 2021 11:09:54 -0500
X-MC-Unique: Ske7CagRNQisfxWTlOMXBA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79B9F343CA;
 Thu, 16 Dec 2021 16:09:52 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E9725BE3B;
 Thu, 16 Dec 2021 16:09:39 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:09:38 +0000
Message-ID: <163967097870.1823006.3470041000971522030.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
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
 Content preview: Implement functions to allow the cache backend to add or
 remove
 a cache: (1) Declare a cache to be live: int fscache_add_cache(struct
 fscache_cache
 *cache, const struct fscache_cache_ops *ops, void *cache_priv); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1mxtKV-00046g-RD
Subject: [V9fs-developer] [PATCH v3 14/68] fscache: Implement functions
 add/remove a cache
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

Implement functions to allow the cache backend to add or remove a cache:

 (1) Declare a cache to be live:

	int fscache_add_cache(struct fscache_cache *cache,
			      const struct fscache_cache_ops *ops,
			      void *cache_priv);

     Take a previously acquired cache cookie, set the operations table and
     private data and mark the cache open for access.

 (2) Withdraw a cache from service:

	void fscache_withdraw_cache(struct fscache_cache *cache);

     This marks the cache as withdrawn and thus prevents further
     cache-level and volume-level accesses.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819596022.215744.8799712491432238827.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906896599.143852.17049208999019262884.stgit@warthog.procyon.org.uk/ # v2
---

 fs/fscache/cache.c            |   70 +++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache-cache.h |   13 ++++++++
 2 files changed, 83 insertions(+)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index e867cff53a70..bbd102be91c4 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -210,12 +210,55 @@ void fscache_relinquish_cache(struct fscache_cache *cache)
 		fscache_cache_put_prep_failed :
 		fscache_cache_put_relinquish;
 
+	cache->ops = NULL;
 	cache->cache_priv = NULL;
 	smp_store_release(&cache->state, FSCACHE_CACHE_IS_NOT_PRESENT);
 	fscache_put_cache(cache, where);
 }
 EXPORT_SYMBOL(fscache_relinquish_cache);
 
+/**
+ * fscache_add_cache - Declare a cache as being open for business
+ * @cache: The cache-level cookie representing the cache
+ * @ops: Table of cache operations to use
+ * @cache_priv: Private data for the cache record
+ *
+ * Add a cache to the system, making it available for netfs's to use.
+ *
+ * See Documentation/filesystems/caching/backend-api.rst for a complete
+ * description.
+ */
+int fscache_add_cache(struct fscache_cache *cache,
+		      const struct fscache_cache_ops *ops,
+		      void *cache_priv)
+{
+	int n_accesses;
+
+	_enter("{%s,%s}", ops->name, cache->name);
+
+	BUG_ON(fscache_cache_state(cache) != FSCACHE_CACHE_IS_PREPARING);
+
+	/* Get a ref on the cache cookie and keep its n_accesses counter raised
+	 * by 1 to prevent wakeups from transitioning it to 0 until we're
+	 * withdrawing caching services from it.
+	 */
+	n_accesses = atomic_inc_return(&cache->n_accesses);
+	trace_fscache_access_cache(cache->debug_id, refcount_read(&cache->ref),
+				   n_accesses, fscache_access_cache_pin);
+
+	down_write(&fscache_addremove_sem);
+
+	cache->ops = ops;
+	cache->cache_priv = cache_priv;
+	fscache_set_cache_state(cache, FSCACHE_CACHE_IS_ACTIVE);
+
+	up_write(&fscache_addremove_sem);
+	pr_notice("Cache \"%s\" added (type %s)\n", cache->name, ops->name);
+	_leave(" = 0 [%s]", cache->name);
+	return 0;
+}
+EXPORT_SYMBOL(fscache_add_cache);
+
 /**
  * fscache_begin_cache_access - Pin a cache so it can be accessed
  * @cache: The cache-level cookie
@@ -278,6 +321,33 @@ void fscache_end_cache_access(struct fscache_cache *cache, enum fscache_access_t
 		wake_up_var(&cache->n_accesses);
 }
 
+/**
+ * fscache_withdraw_cache - Withdraw a cache from the active service
+ * @cache: The cache cookie
+ *
+ * Begin the process of withdrawing a cache from service.  This stops new
+ * cache-level and volume-level accesses from taking place and waits for
+ * currently ongoing cache-level accesses to end.
+ */
+void fscache_withdraw_cache(struct fscache_cache *cache)
+{
+	int n_accesses;
+
+	pr_notice("Withdrawing cache \"%s\" (%u objs)\n",
+		  cache->name, atomic_read(&cache->object_count));
+
+	fscache_set_cache_state(cache, FSCACHE_CACHE_IS_WITHDRAWN);
+
+	/* Allow wakeups on dec-to-0 */
+	n_accesses = atomic_dec_return(&cache->n_accesses);
+	trace_fscache_access_cache(cache->debug_id, refcount_read(&cache->ref),
+				   n_accesses, fscache_access_cache_unpin);
+
+	wait_var_event(&cache->n_accesses,
+		       atomic_read(&cache->n_accesses) == 0);
+}
+EXPORT_SYMBOL(fscache_withdraw_cache);
+
 #ifdef CONFIG_PROC_FS
 static const char fscache_cache_states[NR__FSCACHE_CACHE_STATE] = "-PAEW";
 
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 66624407ba84..f78add6e7823 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -33,6 +33,7 @@ enum fscache_cache_state {
  * Cache cookie.
  */
 struct fscache_cache {
+	const struct fscache_cache_ops *ops;
 	struct list_head	cache_link;	/* Link in cache list */
 	void			*cache_priv;	/* Private cache data (or NULL) */
 	refcount_t		ref;
@@ -44,6 +45,14 @@ struct fscache_cache {
 	char			*name;
 };
 
+/*
+ * cache operations
+ */
+struct fscache_cache_ops {
+	/* name of cache provider */
+	const char *name;
+};
+
 extern struct workqueue_struct *fscache_wq;
 
 /*
@@ -52,6 +61,10 @@ extern struct workqueue_struct *fscache_wq;
 extern struct rw_semaphore fscache_addremove_sem;
 extern struct fscache_cache *fscache_acquire_cache(const char *name);
 extern void fscache_relinquish_cache(struct fscache_cache *cache);
+extern int fscache_add_cache(struct fscache_cache *cache,
+			     const struct fscache_cache_ops *ops,
+			     void *cache_priv);
+extern void fscache_withdraw_cache(struct fscache_cache *cache);
 
 extern void fscache_end_volume_access(struct fscache_volume *volume,
 				      struct fscache_cookie *cookie,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
