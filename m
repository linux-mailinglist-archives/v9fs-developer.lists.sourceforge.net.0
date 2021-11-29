Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E37B246192B
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:34:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhjQ-0005nh-Gz; Mon, 29 Nov 2021 14:34:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhjG-0005ml-EV
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9bQJUDJbbd+z5cxuZs3azddOKxmMStCOP2O9rpK8cik=; b=OkY3CGYH3Yu2qCOFB0uFY4HIWV
 7Ezxyoz8kdApTaWIJgQrjxTaqZ/unnqJXGATot6MUMw7UZ70By0YZLlsDlW9J/WfPB7DBvP6eVU/3
 ifiTc+VVleyStjkr4SpVeIFcHMnwxIs0UmbPaRcd7ej2F2y8xBSfIjBHLg7x+5gn62/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9bQJUDJbbd+z5cxuZs3azddOKxmMStCOP2O9rpK8cik=; b=VfNqbCrUymetve/6HHKzUjsjEM
 cwC0X/n+HSCoBqJubQxEmV6RYQjmqnrJTnMwtcxxwcgtQKHjWBdgEVbfoR9QN+Xlf4NyfARJVjFOC
 yYmIqXC9kKM9EelbdiXio8avAL4IAIc4V3qygS2IRIC3S4GQIx0yNjikmt3HGzYWJNlU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhil-0000V3-TW
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9bQJUDJbbd+z5cxuZs3azddOKxmMStCOP2O9rpK8cik=;
 b=XD62wAgFEJrq0M3aQY3Cdkgp9HhgMzeyJyReEJNALPKwDik57PEUO9wLFfjOWqXcKYajVc
 lrhH37xGxdBbpIjB8UvN/GHOuPPLGSMv+UgqRu4PlHbhvyCu1I/m6H7lzqBaamjKEVuHR+
 oYkC5iNc6cAJB2v3gs3mnzL9EmCegsQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-14-Q9KMrr6_P9yZ_njqpNUMRw-1; Mon, 29 Nov 2021 09:33:20 -0500
X-MC-Unique: Q9KMrr6_P9yZ_njqpNUMRw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE4E5101AFC3;
 Mon, 29 Nov 2021 14:33:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 625CF60854;
 Mon, 29 Nov 2021 14:33:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:33:14 +0000
Message-ID: <163819639457.215744.4600093239395728232.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Implement allocate, get,
 see and put functions for the cachefiles_object
 struct. The members of the struct we're going to need are also added.
 Additionally, 
 implement a lifecycle tracepoint. Signed-off-by: David Howells
 <dhowells@redhat.com> cc: linux-cachefs@redhat.com --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhil-0000V3-TW
Subject: [V9fs-developer] [PATCH 43/64] cachefiles: Implement object
 lifecycle funcs
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Implement allocate, get, see and put functions for the cachefiles_object
struct.  The members of the struct we're going to need are also added.

Additionally, implement a lifecycle tracepoint.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/interface.c         |   86 +++++++++++++++++++++++++++++++++++++
 fs/cachefiles/internal.h          |   35 ++++++++++++++-
 fs/cachefiles/main.c              |   16 +++++++
 include/trace/events/cachefiles.h |   58 +++++++++++++++++++++++++
 include/trace/events/fscache.h    |    4 ++
 5 files changed, 197 insertions(+), 2 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 1793e46bd3e7..68bb7b6c4945 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -13,6 +13,92 @@
 #include <trace/events/fscache.h>
 #include "internal.h"
 
+static atomic_t cachefiles_object_debug_id;
+
+/*
+ * Allocate a cache object record.
+ */
+static
+struct cachefiles_object *cachefiles_alloc_object(struct fscache_cookie *cookie)
+{
+	struct fscache_volume *vcookie = cookie->volume;
+	struct cachefiles_volume *volume = vcookie->cache_priv;
+	struct cachefiles_object *object;
+
+	_enter("{%s},%x,", vcookie->key, cookie->debug_id);
+
+	object = kmem_cache_zalloc(cachefiles_object_jar, GFP_KERNEL);
+	if (!object)
+		return NULL;
+
+	refcount_set(&object->ref, 1);
+
+	spin_lock_init(&object->lock);
+	INIT_LIST_HEAD(&object->cache_link);
+	object->volume = volume;
+	object->debug_id = atomic_inc_return(&cachefiles_object_debug_id);
+	object->cookie = fscache_get_cookie(cookie, fscache_cookie_get_attach_object);
+
+	fscache_count_object(vcookie->cache);
+	trace_cachefiles_ref(object->debug_id, cookie->debug_id, 1,
+			     cachefiles_obj_new);
+	return object;
+}
+
+/*
+ * Note that an object has been seen.
+ */
+void cachefiles_see_object(struct cachefiles_object *object,
+			   enum cachefiles_obj_ref_trace why)
+{
+	trace_cachefiles_ref(object->debug_id, object->cookie->debug_id,
+			     refcount_read(&object->ref), why);
+}
+
+/*
+ * Increment the usage count on an object;
+ */
+struct cachefiles_object *cachefiles_grab_object(struct cachefiles_object *object,
+						 enum cachefiles_obj_ref_trace why)
+{
+	int r;
+
+	__refcount_inc(&object->ref, &r);
+	trace_cachefiles_ref(object->debug_id, object->cookie->debug_id, r, why);
+	return object;
+}
+
+/*
+ * dispose of a reference to an object
+ */
+void cachefiles_put_object(struct cachefiles_object *object,
+			   enum cachefiles_obj_ref_trace why)
+{
+	unsigned int object_debug_id = object->debug_id;
+	unsigned int cookie_debug_id = object->cookie->debug_id;
+	struct fscache_cache *cache;
+	bool done;
+	int r;
+
+	done = __refcount_dec_and_test(&object->ref, &r);
+	trace_cachefiles_ref(object_debug_id, cookie_debug_id, r, why);
+	if (done) {
+		_debug("- kill object OBJ%x", object_debug_id);
+
+		ASSERTCMP(object->file, ==, NULL);
+
+		kfree(object->d_name);
+
+		cache = object->volume->cache->cache;
+		fscache_put_cookie(object->cookie, fscache_cookie_put_object);
+		object->cookie = NULL;
+		kmem_cache_free(cachefiles_object_jar, object);
+		fscache_uncount_object(cache);
+	}
+
+	_leave("");
+}
+
 const struct fscache_cache_ops cachefiles_cache_ops = {
 	.name			= "cachefiles",
 	.acquire_volume		= cachefiles_acquire_volume,
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 3b1a6d67cf96..ff378171c71d 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -19,6 +19,16 @@
 struct cachefiles_cache;
 struct cachefiles_object;
 
+enum cachefiles_content {
+	/* These values are saved on disk */
+	CACHEFILES_CONTENT_NO_DATA	= 0, /* No content stored */
+	CACHEFILES_CONTENT_SINGLE	= 1, /* Content is monolithic, all is present */
+	CACHEFILES_CONTENT_ALL		= 2, /* Content is all present, no map */
+	CACHEFILES_CONTENT_BACKFS_MAP	= 3, /* Content is piecemeal, mapped through backing fs */
+	CACHEFILES_CONTENT_DIRTY	= 4, /* Content is dirty (only seen on disk) */
+	nr__cachefiles_content
+};
+
 /*
  * Cached volume representation.
  */
@@ -31,10 +41,20 @@ struct cachefiles_volume {
 };
 
 /*
- * Data file records.
+ * Backing file state.
  */
 struct cachefiles_object {
-	int				debug_id;	/* debugging ID */
+	struct fscache_cookie		*cookie;	/* Netfs data storage object cookie */
+	struct cachefiles_volume	*volume;	/* Cache volume that holds this object */
+	struct list_head		cache_link;	/* Link in cache->*_list */
+	struct file			*file;		/* The file representing this object */
+	char				*d_name;	/* Backing file name */
+	int				debug_id;
+	spinlock_t			lock;
+	refcount_t			ref;
+	u8				d_name_len;	/* Length of filename */
+	enum cachefiles_content		content_info:8;	/* Info about content presence */
+	unsigned long			flags;
 };
 
 /*
@@ -146,6 +166,17 @@ static inline int cachefiles_inject_remove_error(void)
  * interface.c
  */
 extern const struct fscache_cache_ops cachefiles_cache_ops;
+extern void cachefiles_see_object(struct cachefiles_object *object,
+				  enum cachefiles_obj_ref_trace why);
+extern struct cachefiles_object *cachefiles_grab_object(struct cachefiles_object *object,
+							enum cachefiles_obj_ref_trace why);
+extern void cachefiles_put_object(struct cachefiles_object *object,
+				  enum cachefiles_obj_ref_trace why);
+
+/*
+ * main.c
+ */
+extern struct kmem_cache *cachefiles_object_jar;
 
 /*
  * namei.c
diff --git a/fs/cachefiles/main.c b/fs/cachefiles/main.c
index 533e3067d80f..3f369c6f816d 100644
--- a/fs/cachefiles/main.c
+++ b/fs/cachefiles/main.c
@@ -31,6 +31,8 @@ MODULE_DESCRIPTION("Mounted-filesystem based cache");
 MODULE_AUTHOR("Red Hat, Inc.");
 MODULE_LICENSE("GPL");
 
+struct kmem_cache *cachefiles_object_jar;
+
 static struct miscdevice cachefiles_dev = {
 	.minor	= MISC_DYNAMIC_MINOR,
 	.name	= "cachefiles",
@@ -51,9 +53,22 @@ static int __init cachefiles_init(void)
 	if (ret < 0)
 		goto error_dev;
 
+	/* create an object jar */
+	ret = -ENOMEM;
+	cachefiles_object_jar =
+		kmem_cache_create("cachefiles_object_jar",
+				  sizeof(struct cachefiles_object),
+				  0, SLAB_HWCACHE_ALIGN, NULL);
+	if (!cachefiles_object_jar) {
+		pr_notice("Failed to allocate an object jar\n");
+		goto error_object_jar;
+	}
+
 	pr_info("Loaded\n");
 	return 0;
 
+error_object_jar:
+	misc_deregister(&cachefiles_dev);
 error_dev:
 	cachefiles_unregister_error_injection();
 error_einj:
@@ -70,6 +85,7 @@ static void __exit cachefiles_exit(void)
 {
 	pr_info("Unloading\n");
 
+	kmem_cache_destroy(cachefiles_object_jar);
 	misc_deregister(&cachefiles_dev);
 	cachefiles_unregister_error_injection();
 }
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index b548dbaf85bb..493afa7fbfec 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -18,6 +18,21 @@
 #ifndef __CACHEFILES_DECLARE_TRACE_ENUMS_ONCE_ONLY
 #define __CACHEFILES_DECLARE_TRACE_ENUMS_ONCE_ONLY
 
+enum cachefiles_obj_ref_trace {
+	cachefiles_obj_get_ioreq,
+	cachefiles_obj_new,
+	cachefiles_obj_put_alloc_fail,
+	cachefiles_obj_put_detach,
+	cachefiles_obj_put_ioreq,
+	cachefiles_obj_see_clean_commit,
+	cachefiles_obj_see_clean_delete,
+	cachefiles_obj_see_clean_drop_tmp,
+	cachefiles_obj_see_lookup_cookie,
+	cachefiles_obj_see_lookup_failed,
+	cachefiles_obj_see_withdraw_cookie,
+	cachefiles_obj_see_withdrawal,
+};
+
 enum fscache_why_object_killed {
 	FSCACHE_OBJECT_IS_STALE,
 	FSCACHE_OBJECT_IS_WEIRD,
@@ -66,6 +81,20 @@ enum cachefiles_error_trace {
 	EM(FSCACHE_OBJECT_WAS_RETIRED,	"was_retired")		\
 	E_(FSCACHE_OBJECT_WAS_CULLED,	"was_culled")
 
+#define cachefiles_obj_ref_traces					\
+	EM(cachefiles_obj_get_ioreq,		"GET ioreq")		\
+	EM(cachefiles_obj_new,			"NEW obj")		\
+	EM(cachefiles_obj_put_alloc_fail,	"PUT alloc_fail")	\
+	EM(cachefiles_obj_put_detach,		"PUT detach")		\
+	EM(cachefiles_obj_put_ioreq,		"PUT ioreq")		\
+	EM(cachefiles_obj_see_clean_commit,	"SEE clean_commit")	\
+	EM(cachefiles_obj_see_clean_delete,	"SEE clean_delete")	\
+	EM(cachefiles_obj_see_clean_drop_tmp,	"SEE clean_drop_tmp")	\
+	EM(cachefiles_obj_see_lookup_cookie,	"SEE lookup_cookie")	\
+	EM(cachefiles_obj_see_lookup_failed,	"SEE lookup_failed")	\
+	EM(cachefiles_obj_see_withdraw_cookie,	"SEE withdraw_cookie")	\
+	E_(cachefiles_obj_see_withdrawal,	"SEE withdrawal")
+
 #define cachefiles_trunc_traces						\
 	EM(cachefiles_trunc_dio_adjust,		"DIOADJ")		\
 	EM(cachefiles_trunc_expand_tmpfile,	"EXPTMP")		\
@@ -100,6 +129,7 @@ enum cachefiles_error_trace {
 #define E_(a, b) TRACE_DEFINE_ENUM(a);
 
 cachefiles_obj_kill_traces;
+cachefiles_obj_ref_traces;
 cachefiles_trunc_traces;
 cachefiles_error_traces;
 
@@ -113,6 +143,34 @@ cachefiles_error_traces;
 #define E_(a, b)	{ a, b }
 
 
+TRACE_EVENT(cachefiles_ref,
+	    TP_PROTO(unsigned int object_debug_id,
+		     unsigned int cookie_debug_id,
+		     int usage,
+		     enum cachefiles_obj_ref_trace why),
+
+	    TP_ARGS(object_debug_id, cookie_debug_id, usage, why),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj		)
+		    __field(unsigned int,			cookie		)
+		    __field(enum cachefiles_obj_ref_trace,	why		)
+		    __field(int,				usage		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= object_debug_id;
+		    __entry->cookie	= cookie_debug_id;
+		    __entry->usage	= usage;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("c=%08x o=%08x u=%d %s",
+		      __entry->cookie, __entry->obj, __entry->usage,
+		      __print_symbolic(__entry->why, cachefiles_obj_ref_traces))
+	    );
+
 TRACE_EVENT(cachefiles_lookup,
 	    TP_PROTO(struct cachefiles_object *obj,
 		     struct dentry *de),
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 6bdff5bcbf6c..7d26388ef9d8 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -49,6 +49,7 @@ enum fscache_volume_trace {
 enum fscache_cookie_trace {
 	fscache_cookie_collision,
 	fscache_cookie_discard,
+	fscache_cookie_get_attach_object,
 	fscache_cookie_get_end_access,
 	fscache_cookie_get_hash_collision,
 	fscache_cookie_get_inval_work,
@@ -57,6 +58,7 @@ enum fscache_cookie_trace {
 	fscache_cookie_new_acquire,
 	fscache_cookie_put_hash_collision,
 	fscache_cookie_put_lru,
+	fscache_cookie_put_object,
 	fscache_cookie_put_over_queued,
 	fscache_cookie_put_relinquish,
 	fscache_cookie_put_withdrawn,
@@ -122,6 +124,7 @@ enum fscache_access_trace {
 #define fscache_cookie_traces						\
 	EM(fscache_cookie_collision,		"*COLLIDE*")		\
 	EM(fscache_cookie_discard,		"DISCARD  ")		\
+	EM(fscache_cookie_get_attach_object,	"GET attch")		\
 	EM(fscache_cookie_get_hash_collision,	"GET hcoll")		\
 	EM(fscache_cookie_get_end_access,	"GQ  endac")		\
 	EM(fscache_cookie_get_inval_work,	"GQ  inval")		\
@@ -130,6 +133,7 @@ enum fscache_access_trace {
 	EM(fscache_cookie_new_acquire,		"NEW acq  ")		\
 	EM(fscache_cookie_put_hash_collision,	"PUT hcoll")		\
 	EM(fscache_cookie_put_lru,		"PUT lru  ")		\
+	EM(fscache_cookie_put_object,		"PUT obj  ")		\
 	EM(fscache_cookie_put_over_queued,	"PQ  overq")		\
 	EM(fscache_cookie_put_relinquish,	"PUT relnq")		\
 	EM(fscache_cookie_put_withdrawn,	"PUT wthdn")		\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
