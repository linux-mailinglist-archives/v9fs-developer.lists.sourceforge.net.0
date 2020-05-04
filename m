Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5B91C42C8
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:30:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVeun-0001Mu-8V; Mon, 04 May 2020 17:30:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVeul-0001Mf-S5
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6aQ5ibFz18gpDUUUf4aVImQQmCOSMFf6YNTiJbVqWyc=; b=g9Vt+J3so3LnSUVVfWk9j0yGR6
 3oETBk+Ly3JNX6pW7P7JxKtNpbCjGqc9O/6WtksnyEJTK62acjO+UFSqzcuTvX4cEpT4ysK+5FoSr
 KIlMxgfkonLwyDIw0qWe0J/qCuA4M+6uAmCRgGiJWAKyp04U2Wi3wXScMsBPvaRXP8jM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6aQ5ibFz18gpDUUUf4aVImQQmCOSMFf6YNTiJbVqWyc=; b=gLeTaZEkBHLRBEs3UHQ1fEfuqh
 Lf+jsBRK/NnTqdWGvalWyyrfbKxA9z9HrNqJZFvlMwFXTegEUlTZa4jAmkeGUAJQ9JZ7L2p3TLC4n
 AkpBPxbPGbm+l4oyTySSIX33+kYC+uGlpcMZyFyTi1vlGco0SFG+nDmV7hmJzaYz+CNA=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVeuk-007BjJ-3c
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588613392;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6aQ5ibFz18gpDUUUf4aVImQQmCOSMFf6YNTiJbVqWyc=;
 b=FwXjKGcCQghQErMNUe6IOciIz2a1f0fotW6K+F+aij8mW6p1C+cmD//E1cZFZ8PKLKqWbp
 84Pq4ovtN+LLmvMfO+ZroS0mELFZ5fVSrCfResS7TuBKLhEofvy+/QTxDYTCDzE7KAUrqB
 Mm5RrcjPuT1Ig50thNWnFm+v0b8kIMU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-152-Ymekn6f8Ply5acsj-J9mKw-1; Mon, 04 May 2020 13:14:23 -0400
X-MC-Unique: Ymekn6f8Ply5acsj-J9mKw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04E49107ACCD;
 Mon,  4 May 2020 17:14:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 80DD35C221;
 Mon,  4 May 2020 17:14:17 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:14:16 +0100
Message-ID: <158861245670.340223.11283691470830647768.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVeuk-007BjJ-3c
Subject: [V9fs-developer] [RFC PATCH 45/61] fscache: Remove the update
 operation
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove the cache-side of the object update operation as it doesn't
serialise with other setattr, O_TRUNC and write operations.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c     |   59 -----------------------------------------
 fs/fscache/internal.h         |    1 -
 fs/fscache/obj.c              |   14 ----------
 fs/fscache/stats.c            |    4 +--
 include/linux/fscache-cache.h |    2 -
 5 files changed, 1 insertion(+), 79 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index f9c2c09e1713..59910433f2a3 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -152,64 +152,6 @@ struct fscache_object *cachefiles_grab_object(struct fscache_object *_object,
 	return &object->fscache;
 }
 
-/*
- * update the auxiliary data for an object object on disk
- */
-static void cachefiles_update_object(struct fscache_object *_object)
-{
-	struct cachefiles_object *object;
-	struct cachefiles_cache *cache;
-	const struct cred *saved_cred;
-	struct inode *inode;
-	loff_t object_size, i_size;
-	int ret;
-
-	_enter("{OBJ%x}", _object->debug_id);
-
-	object = container_of(_object, struct cachefiles_object, fscache);
-	cache = container_of(object->fscache.cache, struct cachefiles_cache,
-			     cache);
-
-	cachefiles_begin_secure(cache, &saved_cred);
-
-	object_size = object->fscache.cookie->object_size;
-	inode = d_inode(object->dentry);
-	i_size = i_size_read(inode);
-	if (i_size > object_size) {
-		struct path path = {
-			.mnt	= cache->mnt,
-			.dentry	= object->dentry
-		};
-		_debug("trunc %llx -> %llx", i_size, object_size);
-		trace_cachefiles_trunc(object, inode, i_size, object_size);
-		ret = vfs_truncate(&path, object_size);
-		if (ret < 0) {
-			cachefiles_io_error_obj(object, "Trunc-to-size failed");
-			cachefiles_remove_object_xattr(cache, object->dentry);
-			goto out;
-		}
-
-		object_size = round_up(object_size, CACHEFILES_DIO_BLOCK_SIZE);
-		i_size = i_size_read(inode);
-		_debug("trunc %llx -> %llx", i_size, object_size);
-		if (i_size < object_size) {
-			trace_cachefiles_trunc(object, inode, i_size, object_size);
-			ret = vfs_truncate(&path, object_size);
-			if (ret < 0) {
-				cachefiles_io_error_obj(object, "Trunc-to-dio-size failed");
-				cachefiles_remove_object_xattr(cache, object->dentry);
-				goto out;
-			}
-		}
-	}
-
-	cachefiles_set_object_xattr(object);
-
-out:
-	cachefiles_end_secure(cache, saved_cred);
-	_leave("");
-}
-
 /*
  * Shorten the backing object to discard any dirty data and free up
  * any unused granules.
@@ -655,7 +597,6 @@ const struct fscache_cache_ops cachefiles_cache_ops = {
 	.lookup_object		= cachefiles_lookup_object,
 	.free_lookup_data	= cachefiles_free_lookup_data,
 	.grab_object		= cachefiles_grab_object,
-	.update_object		= cachefiles_update_object,
 	.resize_object		= cachefiles_resize_object,
 	.invalidate_object	= cachefiles_invalidate_object,
 	.drop_object		= cachefiles_drop_object,
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 7a0b36a49457..2670c821e1c9 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -200,7 +200,6 @@ extern atomic_t fscache_n_cop_alloc_object;
 extern atomic_t fscache_n_cop_lookup_object;
 extern atomic_t fscache_n_cop_create_object;
 extern atomic_t fscache_n_cop_invalidate_object;
-extern atomic_t fscache_n_cop_update_object;
 extern atomic_t fscache_n_cop_drop_object;
 extern atomic_t fscache_n_cop_put_object;
 extern atomic_t fscache_n_cop_sync_cache;
diff --git a/fs/fscache/obj.c b/fs/fscache/obj.c
index 332ba132413d..b2e7675a80c1 100644
--- a/fs/fscache/obj.c
+++ b/fs/fscache/obj.c
@@ -54,14 +54,6 @@ static int fscache_do_create_object(struct fscache_object *object, void *data)
 	return ret;
 }
 
-static void fscache_do_update_object(struct fscache_object *object)
-{
-	fscache_stat(&fscache_n_updates_run);
-	fscache_stat(&fscache_n_cop_update_object);
-	object->cache->ops->update_object(object);
-	fscache_stat_d(&fscache_n_cop_update_object);
-}
-
 static void fscache_do_drop_object(struct fscache_cache *cache,
 				   struct fscache_object *object,
 				   bool invalidate)
@@ -279,12 +271,6 @@ void fscache_drop_object(struct fscache_cookie *cookie,
 	_enter("{OBJ%x,%d},%u",
 	       object->debug_id, object->n_children, invalidate);
 
-	if (!invalidate &&
-	    test_bit(FSCACHE_OBJECT_NEEDS_UPDATE, &object->flags)) {
-		_debug("final update");
-		fscache_do_update_object(object);
-	}
-
 	spin_lock(&cache->object_list_lock);
 	list_del_init(&object->cache_link);
 	spin_unlock(&cache->object_list_lock);
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 3b262af57625..cf71c8b2a22a 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -50,7 +50,6 @@ atomic_t fscache_n_cop_alloc_object;
 atomic_t fscache_n_cop_lookup_object;
 atomic_t fscache_n_cop_create_object;
 atomic_t fscache_n_cop_invalidate_object;
-atomic_t fscache_n_cop_update_object;
 atomic_t fscache_n_cop_drop_object;
 atomic_t fscache_n_cop_put_object;
 atomic_t fscache_n_cop_sync_cache;
@@ -135,9 +134,8 @@ int fscache_stats_show(struct seq_file *m, void *v)
 	seq_printf(m, "CacheOp: alo=%d luo=%d\n",
 		   atomic_read(&fscache_n_cop_alloc_object),
 		   atomic_read(&fscache_n_cop_lookup_object));
-	seq_printf(m, "CacheOp: inv=%d upo=%d dro=%d pto=%d atc=%d syn=%d\n",
+	seq_printf(m, "CacheOp: inv=%d dro=%d pto=%d atc=%d syn=%d\n",
 		   atomic_read(&fscache_n_cop_invalidate_object),
-		   atomic_read(&fscache_n_cop_update_object),
 		   atomic_read(&fscache_n_cop_drop_object),
 		   atomic_read(&fscache_n_cop_put_object),
 		   atomic_read(&fscache_n_cop_attr_changed),
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index adb899448f6e..95f7c60b9092 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -116,8 +116,6 @@ struct fscache_cache_ops {
 	/* unpin an object in the cache */
 	void (*unpin_object)(struct fscache_object *object);
 
-	/* store the updated auxiliary data on an object */
-	void (*update_object)(struct fscache_object *object);
 	/* Change the size of a data object */
 	void (*resize_object)(struct fscache_object *object, loff_t new_size);
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
