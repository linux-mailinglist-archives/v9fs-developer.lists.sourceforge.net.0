Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C88C4320D3
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:56:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU44-00068d-Vt; Mon, 18 Oct 2021 14:56:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU43-00068F-2w
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o6nfl69kMmp16EeJpH9ZZQJrBuBcmVbCxcE6sm4V4PM=; b=Ew6/i57fMdn3NELjITR4Svq1et
 WSimElaByoF/Nh77ZZoO/clZ5lghHju47hS8iXRgIrx2UTjsmPGAAxMrROhy9EGsFkMq3zQ/Z+g8f
 HlaMhbBRmmPMNWt9xg4Zjueqx/mY4p/wRUntHmvGPq9s2UAc5VX65vlADQ04JiyvpkaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o6nfl69kMmp16EeJpH9ZZQJrBuBcmVbCxcE6sm4V4PM=; b=Vm9Tmospr31g+c+/ykRnC/kEpO
 61TEwV7PO07nSMsulKdp0zNSnHsOnWsFKnDHTmgGKu0dy2FSwtv4wC3ClZnQ2fA5NHdrxTDZhzz/H
 AGP3zcbrNJC1TXNHLoHv3OdVR2KpIMwMbnK5isgIE8gdhaZ1qPO8wRJYMaoEBA1YvCAg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU42-004SxJ-3s
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568988;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o6nfl69kMmp16EeJpH9ZZQJrBuBcmVbCxcE6sm4V4PM=;
 b=BufvSEQz0481VXjG0Ecem00H+TUxk5U7sNug+Eps8EMpSUYo0E0+RbHrRZXaxQ7DZoTu7/
 7aoAibKsiR6R8erMDIqJ9T6oeB0k70fRKsF2ObqgpNrdgljqi66x+OJ8rxxwZQipkbc5cY
 hWJXARM1sAqhkrEpX0DjSgzhGb3m3a8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-ThBoDkBXP1ukbU5pQpZ9Ww-1; Mon, 18 Oct 2021 10:55:14 -0400
X-MC-Unique: ThBoDkBXP1ukbU5pQpZ9Ww-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE7BE10A8E03;
 Mon, 18 Oct 2021 14:55:12 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F1CC5F93B;
 Mon, 18 Oct 2021 14:55:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:55:08 +0100
Message-ID: <163456890801.2614702.13204479150064313791.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Rename fscache_cookie_{get, put, see}() to fscache_{get, put,
 see}_cookie()
 and make them available to cache backend modules. Signed-off-by: David Howells
 <dhowells@redhat.com> --- fs/fscache/cookie.c | 14 ++++++++------
 fs/fscache/internal.h
 | 6 +----- fs/fscache/netfs.c | 4 ++-- fs/fscache/object.c | 4 ++--
 include/linux/fscache-cache.h
 | 6 ++++++ 5 files changed, 19 insertio [...] 
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
X-Headers-End: 1mcU42-004SxJ-3s
Subject: [V9fs-developer] [PATCH 17/67] fscache: Rename fscache_cookie_{get,
 put, see}()
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

Rename fscache_cookie_{get,put,see}() to fscache_{get,put,see}_cookie() and
make them available to cache backend modules.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/cookie.c           |   14 ++++++++------
 fs/fscache/internal.h         |    6 +-----
 fs/fscache/netfs.c            |    4 ++--
 fs/fscache/object.c           |    4 ++--
 include/linux/fscache-cache.h |    6 ++++++
 5 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 62f3a4f75bad..0dc27f82e910 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -215,7 +215,7 @@ struct fscache_cookie *fscache_hash_cookie(struct fscache_cookie *candidate)
 	}
 
 	__set_bit(FSCACHE_COOKIE_ACQUIRED, &candidate->flags);
-	fscache_cookie_get(candidate->parent, fscache_cookie_get_acquire_parent);
+	fscache_get_cookie(candidate->parent, fscache_cookie_get_acquire_parent);
 	atomic_inc(&candidate->parent->n_children);
 	hlist_bl_add_head(&candidate->hash_link, h);
 	hlist_bl_unlock(h);
@@ -232,7 +232,7 @@ struct fscache_cookie *fscache_hash_cookie(struct fscache_cookie *candidate)
 		return NULL;
 	}
 
-	fscache_cookie_get(cursor, fscache_cookie_get_reacquire);
+	fscache_get_cookie(cursor, fscache_cookie_get_reacquire);
 	hlist_bl_unlock(h);
 	return cursor;
 }
@@ -330,7 +330,7 @@ struct fscache_cookie *__fscache_acquire_cookie(
 				set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
 			} else {
 				atomic_dec(&parent->n_children);
-				fscache_cookie_put(cookie,
+				fscache_put_cookie(cookie,
 						   fscache_cookie_put_acquire_nobufs);
 				fscache_stat(&fscache_n_acquires_nobufs);
 				_leave(" = NULL");
@@ -793,7 +793,7 @@ void __fscache_relinquish_cookie(struct fscache_cookie *cookie,
 	}
 
 	/* Dispose of the netfs's link to the cookie */
-	fscache_cookie_put(cookie, fscache_cookie_put_relinquish);
+	fscache_put_cookie(cookie, fscache_cookie_put_relinquish);
 
 	_leave("");
 }
@@ -818,7 +818,7 @@ static void fscache_unhash_cookie(struct fscache_cookie *cookie)
 /*
  * Drop a reference to a cookie.
  */
-void fscache_cookie_put(struct fscache_cookie *cookie,
+void fscache_put_cookie(struct fscache_cookie *cookie,
 			enum fscache_cookie_trace where)
 {
 	struct fscache_cookie *parent;
@@ -844,11 +844,12 @@ void fscache_cookie_put(struct fscache_cookie *cookie,
 
 	_leave("");
 }
+EXPORT_SYMBOL(fscache_put_cookie);
 
 /*
  * Get a reference to a cookie.
  */
-struct fscache_cookie *fscache_cookie_get(struct fscache_cookie *cookie,
+struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
 					  enum fscache_cookie_trace where)
 {
 	int ref;
@@ -857,6 +858,7 @@ struct fscache_cookie *fscache_cookie_get(struct fscache_cookie *cookie,
 	trace_fscache_cookie(cookie->debug_id, ref + 1, where);
 	return cookie;
 }
+EXPORT_SYMBOL(fscache_get_cookie);
 
 /*
  * Generate a list of extant cookies in /proc/fs/fscache/cookies
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index b8da3fe2d6f1..e78ca3151e41 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -72,12 +72,8 @@ extern struct fscache_cookie *fscache_alloc_cookie(struct fscache_cookie *,
 						   const void *, size_t,
 						   loff_t);
 extern struct fscache_cookie *fscache_hash_cookie(struct fscache_cookie *);
-extern struct fscache_cookie *fscache_cookie_get(struct fscache_cookie *,
-						 enum fscache_cookie_trace);
-extern void fscache_cookie_put(struct fscache_cookie *,
-			       enum fscache_cookie_trace);
 
-static inline void fscache_cookie_see(struct fscache_cookie *cookie,
+static inline void fscache_see_cookie(struct fscache_cookie *cookie,
 				      enum fscache_cookie_trace where)
 {
 	trace_fscache_cookie(cookie->debug_id, refcount_read(&cookie->ref),
diff --git a/fs/fscache/netfs.c b/fs/fscache/netfs.c
index 8b0f303a7715..d746365f1daf 100644
--- a/fs/fscache/netfs.c
+++ b/fs/fscache/netfs.c
@@ -43,7 +43,7 @@ int __fscache_register_netfs(struct fscache_netfs *netfs)
 		fscache_free_cookie(candidate);
 	}
 
-	fscache_cookie_get(cookie->parent, fscache_cookie_get_register_netfs);
+	fscache_get_cookie(cookie->parent, fscache_cookie_get_register_netfs);
 	atomic_inc(&cookie->parent->n_children);
 
 	netfs->primary_index = cookie;
@@ -54,7 +54,7 @@ int __fscache_register_netfs(struct fscache_netfs *netfs)
 	return 0;
 
 already_registered:
-	fscache_cookie_put(candidate, fscache_cookie_put_dup_netfs);
+	fscache_put_cookie(candidate, fscache_cookie_put_dup_netfs);
 	_leave(" = -EEXIST");
 	return -EEXIST;
 }
diff --git a/fs/fscache/object.c b/fs/fscache/object.c
index c7fbdcf3e987..761d6dc4aa0f 100644
--- a/fs/fscache/object.c
+++ b/fs/fscache/object.c
@@ -316,7 +316,7 @@ void fscache_object_init(struct fscache_object *object,
 	object->events = 0;
 	object->cache = cache;
 	object->cookie = cookie;
-	fscache_cookie_get(cookie, fscache_cookie_get_attach_object);
+	fscache_get_cookie(cookie, fscache_cookie_get_attach_object);
 	object->parent = NULL;
 #ifdef CONFIG_FSCACHE_OBJECT_LIST
 	RB_CLEAR_NODE(&object->objlist_link);
@@ -769,7 +769,7 @@ static void fscache_put_object(struct fscache_object *object,
 void fscache_object_destroy(struct fscache_object *object)
 {
 	/* We can get rid of the cookie now */
-	fscache_cookie_put(object->cookie, fscache_cookie_put_object);
+	fscache_put_cookie(object->cookie, fscache_cookie_put_object);
 	object->cookie = NULL;
 }
 EXPORT_SYMBOL(fscache_object_destroy);
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index c5d454f340c6..0439dc3021c7 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -23,6 +23,7 @@
 struct fscache_cache;
 struct fscache_cache_ops;
 struct fscache_object;
+enum fscache_cookie_trace;
 
 enum fscache_obj_ref_trace {
 	fscache_obj_get_add_to_deps,
@@ -325,6 +326,11 @@ enum fscache_why_object_killed {
 extern void fscache_object_mark_killed(struct fscache_object *object,
 				       enum fscache_why_object_killed why);
 
+extern struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
+						 enum fscache_cookie_trace where);
+extern void fscache_put_cookie(struct fscache_cookie *cookie,
+			       enum fscache_cookie_trace where);
+
 /*
  * Find the key on a cookie.
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
