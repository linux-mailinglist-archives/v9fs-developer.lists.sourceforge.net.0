Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C51E52BAD13
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:09:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg824-00023O-I7; Fri, 20 Nov 2020 15:09:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg81q-00022M-8T
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JMNAHTCAjTwh70Q7McXz/EQugFKxJcb35XHm86NOyR0=; b=V+mnlxPkdfmYfL0HkJaQDqXM25
 pYfo4IpPmzlrqqnMT7oJalTi9oET88rvil93fxFOFRS5ZcD/8ErtRpkt0rJkbGM/kbt/dYOcN6yrW
 xOcdfmCgYRyt9sSf12BvwuFYMBirz3vUMD9C99rK0TgvjkVKttg995dYn6ScHbWSceMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JMNAHTCAjTwh70Q7McXz/EQugFKxJcb35XHm86NOyR0=; b=Q/pxolG/5/7+kPhmpYs426YyVU
 RJ7Us7MhO0N1K5OjPk2CPy5WXrL4OyJveT7jK5N5Uzpu1xy6h/fog7fWYv8N/bEvyHt3QeTuqozR6
 bjAyJZuaKFHk1LJ5rCrl0j+XjfSaTEplsUrAmownqoiA536kdB6qftL76HFT1baXHArs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg81h-00AcRf-7e
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605884915;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JMNAHTCAjTwh70Q7McXz/EQugFKxJcb35XHm86NOyR0=;
 b=HQVJsPuWcZNHIFhhY31FtfPz4uQt+dxOs7sih3b7UIArCtYO5al7ArK3g78+pTNPE5gg9N
 sf6NTPofkFxk8OIZZHELzs6shM7cueoxCxolodO93u0P3pbIn/ZzvgLYLGpNnb649n7zzt
 1t+NaMwmn1wId4zZSMUPg+3AHw7zh4Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-YBK7ucxvMO2Xq1tUAz8TKw-1; Fri, 20 Nov 2020 10:08:31 -0500
X-MC-Unique: YBK7ucxvMO2Xq1tUAz8TKw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A608018B9F01;
 Fri, 20 Nov 2020 15:08:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 083A55D6AD;
 Fri, 20 Nov 2020 15:08:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:08:23 +0000
Message-ID: <160588490313.3465195.6021579928823503470.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg81h-00AcRf-7e
Subject: [V9fs-developer] [RFC PATCH 27/76] fscache: Keep track of size of a
 file last set independently on the server
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Keep track of the size of a file that we're caching as last set
independently on the server by another client.  As long as this does not
change, we can make the assumption that anything over that boundary, if not
represented in the local cache, will not be represented on the server
either and can be just cleared rather than being read, thereby saving a
trip to the server.

This only works if we make space in the cache by zapping whole files and
not just punching bits out of them as if we write to the server but don't
keep a copy in the cache, the assumption mentioned above no longer holds
true.

We also need to update this size when invalidation occurs.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/inode.c          |    2 +-
 fs/fscache/cookie.c     |    6 +++++-
 include/linux/fscache.h |    8 +++++---
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index df999d703e2b..0ba2815f8152 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -569,7 +569,7 @@ static void afs_zap_data(struct afs_vnode *vnode)
 	_enter("{%llx:%llu}", vnode->fid.vid, vnode->fid.vnode);
 
 #ifdef CONFIG_AFS_FSCACHE
-	fscache_invalidate(vnode->cache);
+	fscache_invalidate(vnode->cache, i_size_read(&vnode->vfs_inode));
 #endif
 
 	/* nuke all the non-dirty pages that aren't locked, mapped or being
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index e6b87596b1d0..230025a1495c 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -159,6 +159,7 @@ struct fscache_cookie *fscache_alloc_cookie(
 	cookie->key_len = index_key_len;
 	cookie->aux_len = aux_data_len;
 	cookie->object_size = object_size;
+	cookie->zero_point = object_size;
 	strlcpy(cookie->type_name, type_name, sizeof(cookie->type_name));
 
 	if (fscache_set_key(cookie, index_key, index_key_len) < 0)
@@ -532,7 +533,7 @@ void fscache_set_cookie_stage(struct fscache_cookie *cookie,
 /*
  * Invalidate an object.  Callable with spinlocks held.
  */
-void __fscache_invalidate(struct fscache_cookie *cookie)
+void __fscache_invalidate(struct fscache_cookie *cookie, loff_t new_size)
 {
 	struct fscache_object *object = NULL;
 
@@ -548,6 +549,9 @@ void __fscache_invalidate(struct fscache_cookie *cookie)
 	ASSERTCMP(cookie->type, ==, FSCACHE_COOKIE_TYPE_DATAFILE);
 
 	spin_lock(&cookie->lock);
+	cookie->object_size = new_size;
+	cookie->zero_point = new_size;
+
 	if (!hlist_empty(&cookie->backing_objects))
 		object = hlist_entry(cookie->backing_objects.first,
 				     struct fscache_object, cookie_link);
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 3cd18ddc3903..8d47c7a08456 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -118,6 +118,7 @@ struct fscache_cookie {
 	struct list_head		proc_link;	/* Link in proc list */
 	char				type_name[8];	/* Cookie type name */
 	loff_t				object_size;	/* Size of the netfs object */
+	loff_t				zero_point;	/* Size after which no data on server */
 
 	unsigned long			flags;
 #define FSCACHE_COOKIE_RELINQUISHED	6		/* T if cookie has been relinquished */
@@ -201,7 +202,7 @@ extern int __fscache_begin_operation(struct fscache_cookie *, struct fscache_op_
 				     enum fscache_want_stage);
 extern void __fscache_relinquish_cookie(struct fscache_cookie *, bool);
 extern void __fscache_update_cookie(struct fscache_cookie *, const void *, const loff_t *);
-extern void __fscache_invalidate(struct fscache_cookie *);
+extern void __fscache_invalidate(struct fscache_cookie *, loff_t);
 
 /**
  * fscache_register_netfs - Register a filesystem as desiring caching services
@@ -427,6 +428,7 @@ void fscache_unpin_cookie(struct fscache_cookie *cookie)
 /**
  * fscache_invalidate - Notify cache that an object needs invalidation
  * @cookie: The cookie representing the cache object
+ * @size: The revised size of the object.
  *
  * Notify the cache that an object is needs to be invalidated and that it
  * should abort any retrievals or stores it is doing on the cache.  The object
@@ -438,10 +440,10 @@ void fscache_unpin_cookie(struct fscache_cookie *cookie)
  * description.
  */
 static inline
-void fscache_invalidate(struct fscache_cookie *cookie)
+void fscache_invalidate(struct fscache_cookie *cookie, loff_t size)
 {
 	if (fscache_cookie_valid(cookie))
-		__fscache_invalidate(cookie);
+		__fscache_invalidate(cookie, size);
 }
 
 /**




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
