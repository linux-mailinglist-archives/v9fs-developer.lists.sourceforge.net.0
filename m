Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F53432090
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:54:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU26-0003b9-B1; Mon, 18 Oct 2021 14:54:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU24-0003ax-8g
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=viMP4Q5Mj49sav8msJ4gVGQODCKNTPV/cZ3WnqxeUXM=; b=DD5zbNKcY3YmgzCAqRlqVZALPa
 9aOYYFjfVe84p9aH0JhLVgoTMmENK9VFBmPR+XVz7Br2i8pUsPTdh05cS/hIMcokYf7SFhu54R2Yl
 yAzeaA0ZYLoowRi/fnQnBhoiLyl2z7qh2bIG/QIxlZ4+r1seWuYLRP2Ve9Dyt7+v15qk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=viMP4Q5Mj49sav8msJ4gVGQODCKNTPV/cZ3WnqxeUXM=; b=RfJxhJHYf2LkEJjclFY3i1H3FK
 nL5VQwSsloKaVLpgRsfSqvRwS6kO460TplxZHI3HjA1LoAM6JL56w1cHIliMajh7l+EEwGyk/V6wO
 P9/yvN+4I7t0DTvhZJBOVyBMhxudwIlCkG+JumtrSCJB91fQMV1kw9j9jQssA8ts0tVg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU23-004SiF-9r
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=viMP4Q5Mj49sav8msJ4gVGQODCKNTPV/cZ3WnqxeUXM=;
 b=AxyfeyYw7NtFe0GT6iqiqZA+59gMJxADI1GA57gHvvhsi2gelJ6+7hupVdAI6eVwoBGdTS
 RBBsymuuCjxzM7DgXuIaTBrXCiN1zu/3bviKekx72slUlSIktiRpVBvDDw8d8CDTY9atBu
 P0KRbee7nqDVxmyY1wfYW7n3VaPmFxo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-eRyuCs1RPgavA0PtqXU2yA-1; Mon, 18 Oct 2021 10:53:10 -0400
X-MC-Unique: eRyuCs1RPgavA0PtqXU2yA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1D93801FCE;
 Mon, 18 Oct 2021 14:53:07 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2D27957CA5;
 Mon, 18 Oct 2021 14:52:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:52:52 +0100
Message-ID: <163456877241.2614702.1528585669988229916.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove the store_limit values from struct fscache_object and
 store the object size in the cookie. The netfs can update this at will, and
 we don't want to call back into the netfs to fetch it. Signed-off-by: David
 Howells <dhowells@redhat.com> --- 
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
X-Headers-End: 1mcU23-004SiF-9r
Subject: [V9fs-developer] [PATCH 09/67] fscache: Remove store_limit* from
 struct fscache_object
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
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove the store_limit values from struct fscache_object and store the
object size in the cookie.  The netfs can update this at will, and we don't
want to call back into the netfs to fetch it.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c     |   10 ++--------
 fs/fscache/cookie.c           |   14 ++++++--------
 fs/fscache/object.c           |    2 --
 include/linux/fscache-cache.h |   22 ----------------------
 include/linux/fscache.h       |    1 +
 5 files changed, 9 insertions(+), 40 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 4de22ab53d73..48f7de947a16 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -359,7 +359,7 @@ static int cachefiles_attr_changed(struct fscache_object *_object)
 	loff_t oi_size;
 	int ret;
 
-	ni_size = _object->store_limit_l;
+	ni_size = _object->cookie->object_size;
 
 	_enter("{OBJ%x},[%llu]",
 	       _object->debug_id, (unsigned long long) ni_size);
@@ -376,8 +376,6 @@ static int cachefiles_attr_changed(struct fscache_object *_object)
 
 	ASSERT(d_is_reg(object->backer));
 
-	fscache_set_store_limit(&object->fscache, ni_size);
-
 	oi_size = i_size_read(d_backing_inode(object->backer));
 	if (oi_size == ni_size)
 		return 0;
@@ -406,7 +404,6 @@ static int cachefiles_attr_changed(struct fscache_object *_object)
 	cachefiles_end_secure(cache, saved_cred);
 
 	if (ret == -EIO) {
-		fscache_set_store_limit(&object->fscache, 0);
 		cachefiles_io_error_obj(object, "Size set failed");
 		ret = -ENOBUFS;
 	}
@@ -431,7 +428,7 @@ static void cachefiles_invalidate_object(struct fscache_operation *op)
 	cache = container_of(object->fscache.cache,
 			     struct cachefiles_cache, cache);
 
-	ni_size = op->object->store_limit_l;
+	ni_size = op->object->cookie->object_size;
 
 	_enter("{OBJ%x},[%llu]",
 	       op->object->debug_id, (unsigned long long)ni_size);
@@ -439,8 +436,6 @@ static void cachefiles_invalidate_object(struct fscache_operation *op)
 	if (object->backer) {
 		ASSERT(d_is_reg(object->backer));
 
-		fscache_set_store_limit(&object->fscache, ni_size);
-
 		path.dentry = object->backer;
 		path.mnt = cache->mnt;
 
@@ -451,7 +446,6 @@ static void cachefiles_invalidate_object(struct fscache_operation *op)
 		cachefiles_end_secure(cache, saved_cred);
 
 		if (ret != 0) {
-			fscache_set_store_limit(&object->fscache, 0);
 			if (ret == -EIO)
 				cachefiles_io_error_obj(object,
 							"Invalidate failed");
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 63e4a7db5804..02998ec9f7c9 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -22,8 +22,7 @@ static struct hlist_bl_head fscache_cookie_hash[1 << fscache_cookie_hash_shift];
 static LIST_HEAD(fscache_cookies);
 static DEFINE_RWLOCK(fscache_cookies_lock);
 
-static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie,
-					    loff_t object_size);
+static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie);
 static int fscache_alloc_object(struct fscache_cache *cache,
 				struct fscache_cookie *cookie);
 static int fscache_attach_object(struct fscache_cookie *cookie,
@@ -155,6 +154,7 @@ struct fscache_cookie *fscache_alloc_cookie(
 	cookie->advice = advice;
 	cookie->key_len = index_key_len;
 	cookie->aux_len = aux_data_len;
+	cookie->object_size = object_size;
 	strlcpy(cookie->type_name, type_name, sizeof(cookie->type_name));
 
 	if (fscache_set_key(cookie, index_key, index_key_len) < 0)
@@ -326,7 +326,7 @@ struct fscache_cookie *__fscache_acquire_cookie(
 		 * - we create indices on disk when we need them as an index
 		 * may exist in multiple caches */
 		if (cookie->type != FSCACHE_COOKIE_TYPE_INDEX) {
-			if (fscache_acquire_non_index_cookie(cookie, object_size) == 0) {
+			if (fscache_acquire_non_index_cookie(cookie) == 0) {
 				set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
 			} else {
 				atomic_dec(&parent->n_children);
@@ -365,6 +365,7 @@ void __fscache_enable_cookie(struct fscache_cookie *cookie,
 	wait_on_bit_lock(&cookie->flags, FSCACHE_COOKIE_ENABLEMENT_LOCK,
 			 TASK_UNINTERRUPTIBLE);
 
+	cookie->object_size = object_size;
 	fscache_update_aux(cookie, aux_data);
 
 	if (test_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags))
@@ -376,7 +377,7 @@ void __fscache_enable_cookie(struct fscache_cookie *cookie,
 		/* Wait for outstanding disablement to complete */
 		__fscache_wait_on_invalidate(cookie);
 
-		if (fscache_acquire_non_index_cookie(cookie, object_size) == 0)
+		if (fscache_acquire_non_index_cookie(cookie) == 0)
 			set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
 	} else {
 		set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
@@ -393,8 +394,7 @@ EXPORT_SYMBOL(__fscache_enable_cookie);
  * - this must make sure the index chain is instantiated and instantiate the
  *   object representation too
  */
-static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie,
-					    loff_t object_size)
+static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie)
 {
 	struct fscache_object *object;
 	struct fscache_cache *cache;
@@ -445,8 +445,6 @@ static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie,
 	object = hlist_entry(cookie->backing_objects.first,
 			     struct fscache_object, cookie_link);
 
-	fscache_set_store_limit(object, object_size);
-
 	/* initiate the process of looking up all the objects in the chain
 	 * (done by fscache_initialise_object()) */
 	fscache_raise_event(object, FSCACHE_OBJECT_EV_NEW_CHILD);
diff --git a/fs/fscache/object.c b/fs/fscache/object.c
index 1a061df7cdcd..3fb5a1a6c131 100644
--- a/fs/fscache/object.c
+++ b/fs/fscache/object.c
@@ -315,8 +315,6 @@ void fscache_object_init(struct fscache_object *object,
 	object->n_children = 0;
 	object->n_ops = object->n_in_progress = object->n_exclusive = 0;
 	object->events = 0;
-	object->store_limit = 0;
-	object->store_limit_l = 0;
 	object->cache = cache;
 	object->cookie = cookie;
 	fscache_cookie_get(cookie, fscache_cookie_get_attach_object);
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 264b94dad5be..15cd2f04c9e6 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -275,8 +275,6 @@ struct fscache_object {
 	struct list_head	dependents;	/* FIFO of dependent objects */
 	struct list_head	dep_link;	/* link in parent's dependents list */
 	struct list_head	pending_ops;	/* unstarted operations on this object */
-	pgoff_t			store_limit;	/* current storage limit */
-	loff_t			store_limit_l;	/* current storage limit */
 };
 
 extern void fscache_object_init(struct fscache_object *, struct fscache_cookie *,
@@ -337,26 +335,6 @@ static inline void fscache_object_lookup_error(struct fscache_object *object)
 	set_bit(FSCACHE_OBJECT_EV_ERROR, &object->events);
 }
 
-/**
- * fscache_set_store_limit - Set the maximum size to be stored in an object
- * @object: The object to set the maximum on
- * @i_size: The limit to set in bytes
- *
- * Set the maximum size an object is permitted to reach, implying the highest
- * byte that may be written.  Intended to be called by the attr_changed() op.
- *
- * See Documentation/filesystems/caching/backend-api.rst for a complete
- * description.
- */
-static inline
-void fscache_set_store_limit(struct fscache_object *object, loff_t i_size)
-{
-	object->store_limit_l = i_size;
-	object->store_limit = i_size >> PAGE_SHIFT;
-	if (i_size & ~PAGE_MASK)
-		object->store_limit++;
-}
-
 static inline void __fscache_use_cookie(struct fscache_cookie *cookie)
 {
 	atomic_inc(&cookie->n_active);
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 166e0f0a6e44..98685bd7204b 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -74,6 +74,7 @@ struct fscache_cookie {
 	struct hlist_bl_node		hash_link;	/* Link in hash table */
 	struct list_head		proc_link;	/* Link in proc list */
 	char				type_name[8];	/* Cookie type name */
+	loff_t				object_size;	/* Size of the netfs object */
 
 	unsigned long			flags;
 #define FSCACHE_COOKIE_LOOKING_UP	0	/* T if non-index cookie being looked up still */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
