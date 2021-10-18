Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9058432176
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:02:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU9s-00074a-J0; Mon, 18 Oct 2021 15:02:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcU9r-00074M-8G
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fCVZMS1f+Fc9xqMTz/jhF/KB+eLizY8P0By1uDIP188=; b=iJSvNhEIACmDQBf6KWeTiZkaMG
 LMYh4j6QwiL1mNfRBAQyw49GcI1WEE0fOoG3McENHthI92rUITZsdrHWUrX/TPgbcdFtRSekay1yC
 PyCbfJ8OsIZ+OxDp7M+HbRnKDCOIRMwwCBt1Su15LA3fHuT67K8HE5WSjR9reZL4ZmaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fCVZMS1f+Fc9xqMTz/jhF/KB+eLizY8P0By1uDIP188=; b=AD6I/dz+kRdu4uR11DIrqdNoxu
 9YmXauU+VdjjfSz3LqAPMhbuf/K1ogn4ubBIoCmBXykCq5Qkf04Rfv7WF31Ma/YOrBKia7loViTKa
 ietdCZUsv3m9jprTznEvDm+R/5PCeFoMJ7PNemAD6OrkVnqrrCU+nfG7SjwTVzPFHbEI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU9n-00057H-Pn
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fCVZMS1f+Fc9xqMTz/jhF/KB+eLizY8P0By1uDIP188=;
 b=ICw6j5zLqm/NfYh+3r+lJWM9bbfy0pvVDKfo3C6Q4cTqYx23x7GACDfL6TdT/dKujMeyY7
 au0eZTS9Nws8lDFWDi7SIKFO7hSX+yKTMXdkmN7lw4SRgVhzuj/Y527V1scU+o7KxHX4JV
 BB0n0EWBbCTukP+az8UOzYQqUYXDchI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-Ul4T-zXEPGq-sz71ZmwD3g-1; Mon, 18 Oct 2021 11:02:24 -0400
X-MC-Unique: Ul4T-zXEPGq-sz71ZmwD3g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA8E3100CCC0;
 Mon, 18 Oct 2021 15:02:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE7D74DA31;
 Mon, 18 Oct 2021 15:02:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:02:14 +0100
Message-ID: <163456933400.2614702.3593094196519659430.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
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
 Content preview: Implement the "will_modify" parameter passed to
 fscache_use_cookie().
 Setting this to true will henceforth cause the affected object to be marked
 as dirty on disk, subject to conflict resolution in the event that power
 failure or a crash occurs or the filesystem operate [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU9n-00057H-Pn
Subject: [V9fs-developer] [PATCH 48/67] fscache: Implement "will_modify"
 parameter on fscache_use_cookie()
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

Implement the "will_modify" parameter passed to fscache_use_cookie().

Setting this to true will henceforth cause the affected object to be marked
as dirty on disk, subject to conflict resolution in the event that power
failure or a crash occurs or the filesystem operates in disconnected mode.

The dirty flag is removed when the cache object is discarded from memory.

A cache hook is provided to prepare for writing - and this can be used to
mark the object on disk.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c         |    3 +++
 fs/cachefiles/internal.h          |    2 +-
 fs/cachefiles/xattr.c             |   20 ++++++++++++++++++++
 fs/fscache/cookie.c               |   30 +++++++++++++++++++++++++++++-
 include/linux/fscache-cache.h     |    3 +++
 include/linux/fscache.h           |    2 ++
 include/trace/events/cachefiles.h |    4 ++--
 7 files changed, 60 insertions(+), 4 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 751b0fec4591..96f30eba585a 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -211,6 +211,8 @@ static void cachefiles_commit_object(struct cachefiles_object *object,
 {
 	bool update = false;
 
+	if (test_and_clear_bit(FSCACHE_COOKIE_LOCAL_WRITE, &object->cookie->flags))
+		update = true;
 	if (test_and_clear_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &object->cookie->flags))
 		update = true;
 	if (update)
@@ -461,4 +463,5 @@ const struct fscache_cache_ops cachefiles_cache_ops = {
 	.invalidate_cookie	= cachefiles_invalidate_cookie,
 	.resize_cookie		= cachefiles_resize_cookie,
 	.begin_operation	= cachefiles_begin_operation,
+	.prepare_to_write	= cachefiles_prepare_to_write,
 };
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 1d3e37bca087..83cf2ca3a763 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -239,7 +239,7 @@ extern int cachefiles_check_auxdata(struct cachefiles_object *object,
 				    struct file *file);
 extern int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
 					  struct dentry *dentry);
-
+extern void cachefiles_prepare_to_write(struct fscache_cookie *cookie);
 
 /*
  * error handling
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index ba3d050a5174..30adca42883b 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -53,6 +53,8 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object)
 	buf->zero_point		= 0;
 	buf->type		= CACHEFILES_COOKIE_TYPE_DATA;
 	buf->content		= object->content_info;
+	if (test_bit(FSCACHE_COOKIE_LOCAL_WRITE, &object->cookie->flags))
+		buf->content	= CACHEFILES_CONTENT_DIRTY;
 	if (len > 0)
 		memcpy(buf->data, fscache_get_aux(object->cookie), len);
 
@@ -145,3 +147,21 @@ int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
 	_leave(" = %d", ret);
 	return ret;
 }
+
+/*
+ * Stick a marker on the cache object to indicate that it's dirty.
+ */
+void cachefiles_prepare_to_write(struct fscache_cookie *cookie)
+{
+	const struct cred *saved_cred;
+	struct cachefiles_object *object = cookie->cache_priv;
+	struct cachefiles_cache *cache = object->volume->cache;
+
+	_enter("c=%08x", object->cookie->debug_id);
+
+	if (!test_bit(CACHEFILES_OBJECT_USING_TMPFILE, &object->flags)) {
+		cachefiles_begin_secure(cache, &saved_cred);
+		cachefiles_set_object_xattr(object);
+		cachefiles_end_secure(cache, saved_cred);
+	}
+}
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 70bfbd269652..1420027cfe97 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -402,12 +402,20 @@ struct fscache_cookie *__fscache_acquire_cookie(
 }
 EXPORT_SYMBOL(__fscache_acquire_cookie);
 
+/*
+ * Prepare a cache object to be written to.
+ */
+static void fscache_prepare_to_write(struct fscache_cookie *cookie)
+{
+	cookie->volume->cache->ops->prepare_to_write(cookie);
+}
+
 /*
  * Look up a cookie to the cache.
  */
 static void fscache_lookup_cookie(struct fscache_cookie *cookie)
 {
-	bool changed_stage = false, need_withdraw = false;
+	bool changed_stage = false, need_withdraw = false, prep_write = false;
 
 	_enter("");
 
@@ -429,6 +437,7 @@ static void fscache_lookup_cookie(struct fscache_cookie *cookie)
 
 	spin_lock(&cookie->lock);
 	if (cookie->stage != FSCACHE_COOKIE_STAGE_RELINQUISHING) {
+		prep_write = test_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags);
 		__fscache_set_cookie_stage(cookie, FSCACHE_COOKIE_STAGE_ACTIVE);
 		fscache_see_cookie(cookie, fscache_cookie_see_active);
 		changed_stage = true;
@@ -436,6 +445,8 @@ static void fscache_lookup_cookie(struct fscache_cookie *cookie)
 	spin_unlock(&cookie->lock);
 	if (changed_stage)
 		wake_up_cookie_stage(cookie);
+	if (prep_write)
+		fscache_prepare_to_write(cookie);
 
 out:
 	fscache_end_cookie_access(cookie, fscache_access_lookup_cookie_end);
@@ -467,6 +478,10 @@ void __fscache_use_cookie(struct fscache_cookie *cookie, bool will_modify)
 	stage = cookie->stage;
 	switch (stage) {
 	case FSCACHE_COOKIE_STAGE_QUIESCENT:
+		if (will_modify) {
+			set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags);
+			set_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
+		}
 		if (!fscache_begin_volume_access(cookie->volume,
 						 fscache_access_lookup_cookie))
 			break;
@@ -484,8 +499,18 @@ void __fscache_use_cookie(struct fscache_cookie *cookie, bool will_modify)
 
 	case FSCACHE_COOKIE_STAGE_LOOKING_UP:
 	case FSCACHE_COOKIE_STAGE_CREATING:
+		if (will_modify)
+			set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags);
+		break;
 	case FSCACHE_COOKIE_STAGE_ACTIVE:
 	case FSCACHE_COOKIE_STAGE_INVALIDATING:
+		if (will_modify &&
+		    !test_and_set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags)) {
+			set_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
+			queue = true;
+		}
+		break;
+
 	case FSCACHE_COOKIE_STAGE_FAILED:
 	case FSCACHE_COOKIE_STAGE_WITHDRAWING:
 		break;
@@ -551,6 +576,8 @@ static void __fscache_cookie_worker(struct fscache_cookie *cookie)
 again:
 	switch (READ_ONCE(cookie->stage)) {
 	case FSCACHE_COOKIE_STAGE_ACTIVE:
+		if (test_and_clear_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags))
+			fscache_prepare_to_write(cookie);
 		break;
 
 	case FSCACHE_COOKIE_STAGE_LOOKING_UP:
@@ -591,6 +618,7 @@ static void __fscache_cookie_worker(struct fscache_cookie *cookie)
 		clear_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
 		clear_bit(FSCACHE_COOKIE_DO_WITHDRAW, &cookie->flags);
 		clear_bit(FSCACHE_COOKIE_DO_COMMIT, &cookie->flags);
+		clear_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
 		set_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
 		fscache_set_cookie_stage(cookie, FSCACHE_COOKIE_STAGE_QUIESCENT);
 		break;
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 2e7265e24df6..889ae37fae0f 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -76,6 +76,9 @@ struct fscache_cache_ops {
 	/* Begin an operation for the netfs lib */
 	bool (*begin_operation)(struct netfs_cache_resources *cres,
 				enum fscache_want_stage want_stage);
+
+	/* Prepare to write to a live cache object */
+	void (*prepare_to_write)(struct fscache_cookie *cookie);
 };
 
 static inline enum fscache_cache_state fscache_cache_state(const struct fscache_cache *cache)
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 8148193045cd..8ab691e52cc5 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -125,10 +125,12 @@ struct fscache_cookie {
 #define FSCACHE_COOKIE_NEEDS_UPDATE	4		/* T if attrs have been updated */
 #define FSCACHE_COOKIE_HAS_BEEN_CACHED	5		/* T if cookie needs withdraw-on-relinq */
 #define FSCACHE_COOKIE_DISABLED		6		/* T if cookie has been disabled */
+#define FSCACHE_COOKIE_LOCAL_WRITE	7		/* T if cookie has been modified locally */
 #define FSCACHE_COOKIE_NACC_ELEVATED	8		/* T if n_accesses is incremented */
 #define FSCACHE_COOKIE_DO_RELINQUISH	9		/* T if this cookie needs relinquishment */
 #define FSCACHE_COOKIE_DO_WITHDRAW	10		/* T if this cookie needs withdrawing */
 #define FSCACHE_COOKIE_DO_COMMIT	11		/* T if this cookie needs committing */
+#define FSCACHE_COOKIE_DO_PREP_TO_WRITE	12		/* T if cookie needs write preparation */
 
 	enum fscache_cookie_stage	stage;
 	u8				advice;		/* FSCACHE_ADV_* */
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index a7b31b248f2d..11447b20fc83 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -340,7 +340,7 @@ TRACE_EVENT(cachefiles_mark_inactive,
 TRACE_EVENT(cachefiles_coherency,
 	    TP_PROTO(struct cachefiles_object *obj,
 		     ino_t ino,
-		     int content,
+		     enum cachefiles_content content,
 		     enum cachefiles_coherency_trace why),
 
 	    TP_ARGS(obj, ino, content, why),
@@ -349,7 +349,7 @@ TRACE_EVENT(cachefiles_coherency,
 	    TP_STRUCT__entry(
 		    __field(unsigned int,			obj	)
 		    __field(enum cachefiles_coherency_trace,	why	)
-		    __field(int,				content	)
+		    __field(enum cachefiles_content,		content	)
 		    __field(u64,				ino	)
 			     ),
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
