Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E621437D6C
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:04:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzpr-0003ko-L1; Fri, 22 Oct 2021 19:04:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzpq-0003kZ-An
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zpilihmq9mmJdgp9tFupDChI2+z+t3jt4NzTH8TzhgE=; b=liuEaHptOYfaBRr8lqwnPW3Sip
 NxB9dlagQ/lCAS5Zq0v2l6tPnJTXt9Ojp2Jo4GNO1s/Q5Vwo3apCPvu45+r0rCkSQojxZCLDeuh4G
 4VQz1XNIzL6vCp/bGQ9kJiJ3tGLB0Mrv0nV8sw4Qm06onkZJ9xvXghIxyo1dh63UCnjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zpilihmq9mmJdgp9tFupDChI2+z+t3jt4NzTH8TzhgE=; b=etZT8tBo3BSRpAc85jJI8PxUef
 RgTnlACIKeWwQMFz4ODovgRmGieTH8zdIpdUY02tF6svVhOo/ORFpfKwyPAItBIf6oZDJb+nnnfY7
 7VDdr8Y62wVL4Eac5W4MA1k9S/rQmX6Q6MxG6DO0sHoI1xhEBJFI3N6+AxcvhV/4x4B4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzpp-00CHLg-G5
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929443;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zpilihmq9mmJdgp9tFupDChI2+z+t3jt4NzTH8TzhgE=;
 b=P61913OhdxcVxROc8LQm4Vy2U9Z4ce4hQr/batyTmfu8shIr6aL6ggMwUQQN6xqp4XnBYz
 GlvsI20Y900Z01F7EmkCcl3Hc1hlURl4hPQlyImCbdveR3pweIMh+H5qHvu8ejZRIRc5wB
 Cb6jg8xIrYY06qZbDpAkK4autukb860=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602-Ihv4W8dkPjK2czJm8jp1Qg-1; Fri, 22 Oct 2021 15:02:53 -0400
X-MC-Unique: Ihv4W8dkPjK2czJm8jp1Qg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5AF1801FCE;
 Fri, 22 Oct 2021 19:02:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D4C1119D9B;
 Fri, 22 Oct 2021 19:02:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:02:43 +0100
Message-ID: <163492936300.1038219.11883870846619314835.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview: Implement functions to allow the cache backend to add or
 remove
 a cache. Signed-off-by: David Howells <dhowells@redhat.com>cc:
 linux-cachefs@redhat.com
 --- fs/fscache/cache.c | 67 ++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache-cache.h
 | 14 ++++++++ include/trace/events/fscache.h | 6 +++- 3 files changed, 86
 insertions(+), 1 deletion(-) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzpp-00CHLg-G5
Subject: [V9fs-developer] [PATCH v2 15/53] fscache: Implement functions
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Implement functions to allow the cache backend to add or remove a cache.

Signed-off-by: David Howells <dhowells@redhat.com>cc: linux-cachefs@redhat.com
---

 fs/fscache/cache.c             |   67 ++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache-cache.h  |   14 ++++++++
 include/trace/events/fscache.h |    6 +++-
 3 files changed, 86 insertions(+), 1 deletion(-)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index 3cde698c5015..bed491c99834 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -171,6 +171,48 @@ void fscache_put_cache(struct fscache_cache *cache,
 }
 EXPORT_SYMBOL(fscache_put_cache);
 
+/**
+ * fscache_add_cache - Declare a cache as being open for business
+ * @cache: The record describing the cache
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
 /*
  * Get an increment on a cache's access counter if the cache is live to prevent
  * it from going away whilst we're accessing it.
@@ -208,6 +250,31 @@ void fscache_end_cache_access(struct fscache_cache *cache, enum fscache_access_t
 		wake_up_var(&cache->n_accesses);
 }
 
+/**
+ * fscache_withdraw_cache - Withdraw a cache from the active service
+ * @cache: The cache cookie
+ *
+ * Begin the process of withdrawing a cache from service.
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
index a10f87421438..d2301ec88ff9 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -17,6 +17,7 @@
 #include <linux/fscache.h>
 
 struct fscache_cache;
+struct fscache_cache_ops;
 enum fscache_cache_trace;
 enum fscache_cookie_trace;
 enum fscache_access_trace;
@@ -34,6 +35,7 @@ enum fscache_cache_state {
  * Cache cookie.
  */
 struct fscache_cache {
+	const struct fscache_cache_ops *ops;
 	struct list_head	cache_link;	/* Link in cache list */
 	void			*cache_priv;	/* Private cache data (or NULL) */
 	refcount_t		ref;
@@ -45,6 +47,14 @@ struct fscache_cache {
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
 static inline enum fscache_cache_state fscache_cache_state(const struct fscache_cache *cache)
 {
 	return smp_load_acquire(&cache->state);
@@ -74,8 +84,12 @@ static inline bool fscache_set_cache_state_maybe(struct fscache_cache *cache,
  */
 extern struct rw_semaphore fscache_addremove_sem;
 extern struct fscache_cache *fscache_acquire_cache(const char *name);
+extern int fscache_add_cache(struct fscache_cache *cache,
+			     const struct fscache_cache_ops *ops,
+			     void *cache_priv);
 extern void fscache_put_cache(struct fscache_cache *cache,
 			      enum fscache_cache_trace where);
+extern void fscache_withdraw_cache(struct fscache_cache *cache);
 
 extern void fscache_end_volume_access(struct fscache_volume *volume,
 				      enum fscache_access_trace why);
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 132381921be9..c256f30d4dd4 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -24,7 +24,9 @@ enum fscache_cache_trace {
 	fscache_cache_get_acquire,
 	fscache_cache_new_acquire,
 	fscache_cache_put_alloc_volume,
+	fscache_cache_put_cache,
 	fscache_cache_put_volume,
+	fscache_cache_put_withdraw,
 };
 
 enum fscache_volume_trace {
@@ -76,7 +78,9 @@ enum fscache_access_trace {
 	EM(fscache_cache_get_acquire,		"GET acq  ")		\
 	EM(fscache_cache_new_acquire,		"NEW acq  ")		\
 	EM(fscache_cache_put_alloc_volume,	"PUT alvol")		\
-	E_(fscache_cache_put_volume,		"PUT vol  ")
+	EM(fscache_cache_put_cache,		"PUT cache")		\
+	EM(fscache_cache_put_volume,		"PUT vol  ")		\
+	E_(fscache_cache_put_withdraw,		"PUT withd")
 
 #define fscache_volume_traces						\
 	EM(fscache_volume_collision,		"*COLLIDE*")		\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
