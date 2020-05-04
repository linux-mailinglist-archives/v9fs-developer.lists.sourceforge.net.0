Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4451F1C4137
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:10:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVeby-0006zm-3D; Mon, 04 May 2020 17:10:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVebw-0006zJ-Ry
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rA0WCT3SJ+ommZv0GyXmhp8dmMfY7p0/e4ey+Kz4bq0=; b=QXImv9DNijLcxjF/jdTsMbf9rP
 ZdVGt9VHW8bE9pVmCU87+lm/MxJsTnBCKRMCsoGZlnEXSW4zyjztQGe7P13/gvsC1mtY6VG4oMQht
 JczwV5MKrsfx1SR2vhB2LdtGyLYAL8MVBljsfFjF1Bz4QzLQwVb0zLRXWIBNhTseNV+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rA0WCT3SJ+ommZv0GyXmhp8dmMfY7p0/e4ey+Kz4bq0=; b=TGqzuz/KSSbrIOhxKi0B9ddVw6
 JId5son8fpm0r2Nd4R1jzk4vjgCaiby9KfpL+ymG4HUbKQj0EYgXTXbFbPlX7LsdnqfMewbotXkMf
 uDJBzlpBOamydiEWzUEY6HdGPixVo1zlX8sZ3osX8bmrLwNQdKjni9cybyJiNsWF+o24=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVebv-0079pf-Ix
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612225;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rA0WCT3SJ+ommZv0GyXmhp8dmMfY7p0/e4ey+Kz4bq0=;
 b=gQFnrprCn79aNwZAZ3EsjuiZOZ1xYFTX9W4D+E5TN2+VUR1ZRuoaKToMJy8LO6opB+4IPp
 bqLTPKXqiYSMPr6msYhBX6p+TIJs+OmZ97TreoHfT/T8E1PBYYkOAry2feAWnSNSXZmMp3
 11TJD3mPmiXpzzO/ojdfJv2Vi6B/+KU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-i4BtdIXMNlGyhyvLoKT9mA-1; Mon, 04 May 2020 13:10:18 -0400
X-MC-Unique: i4BtdIXMNlGyhyvLoKT9mA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAB538014D5;
 Mon,  4 May 2020 17:10:16 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 468C710013D9;
 Mon,  4 May 2020 17:10:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:10:13 +0100
Message-ID: <158861221344.340223.7994598331009724796.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Headers-End: 1jVebv-0079pf-Ix
Subject: [V9fs-developer] [RFC PATCH 18/61] fscache: Temporarily disable
 fscache_invalidate()
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

Temporarily disable the fscache side of fscache_invalidate() so that the
operation managing code can be removed.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c     |    9 ++---
 fs/fscache/cookie.c           |    4 +-
 fs/fscache/object.c           |   78 +----------------------------------------
 include/linux/fscache-cache.h |    2 +
 4 files changed, 7 insertions(+), 86 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 81322e3acadd..99f42d216ef7 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -388,7 +388,7 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 /*
  * Invalidate an object
  */
-static void cachefiles_invalidate_object(struct fscache_operation *op)
+static void cachefiles_invalidate_object(struct fscache_object *_object)
 {
 	struct cachefiles_object *object;
 	struct cachefiles_cache *cache;
@@ -397,14 +397,14 @@ static void cachefiles_invalidate_object(struct fscache_operation *op)
 	uint64_t ni_size;
 	int ret;
 
-	object = container_of(op->object, struct cachefiles_object, fscache);
+	object = container_of(_object, struct cachefiles_object, fscache);
 	cache = container_of(object->fscache.cache,
 			     struct cachefiles_cache, cache);
 
-	ni_size = op->object->cookie->object_size;
+	ni_size = object->fscache.cookie->object_size;
 
 	_enter("{OBJ%x},[%llu]",
-	       op->object->debug_id, (unsigned long long)ni_size);
+	       object->fscache.debug_id, (unsigned long long)ni_size);
 
 	if (object->backer) {
 		ASSERT(d_is_reg(object->backer));
@@ -425,7 +425,6 @@ static void cachefiles_invalidate_object(struct fscache_operation *op)
 		}
 	}
 
-	fscache_op_complete(op, true);
 	_leave("");
 }
 
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index cd2e166d5f29..cd105227cb83 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -653,9 +653,7 @@ void __fscache_invalidate(struct fscache_cookie *cookie)
 			object = hlist_entry(cookie->backing_objects.first,
 					     struct fscache_object,
 					     cookie_link);
-			if (fscache_object_is_live(object))
-				fscache_raise_event(
-					object, FSCACHE_OBJECT_EV_INVALIDATE);
+			/* TODO: Do invalidation */
 		}
 
 		spin_unlock(&cookie->lock);
diff --git a/fs/fscache/object.c b/fs/fscache/object.c
index a90451cdbdde..73231fdf565c 100644
--- a/fs/fscache/object.c
+++ b/fs/fscache/object.c
@@ -908,86 +908,10 @@ static void fscache_dequeue_object(struct fscache_object *object)
 	_leave("");
 }
 
-/*
- * Asynchronously invalidate an object.
- */
-static const struct fscache_state *_fscache_invalidate_object(struct fscache_object *object,
-							      int event)
-{
-	struct fscache_operation *op;
-	struct fscache_cookie *cookie = object->cookie;
-
-	_enter("{OBJ%x},%d", object->debug_id, event);
-
-	/* We're going to need the cookie.  If the cookie is not available then
-	 * retire the object instead.
-	 */
-	if (!fscache_use_cookie(object)) {
-		set_bit(FSCACHE_OBJECT_RETIRED, &object->flags);
-		_leave(" [no cookie]");
-		return transit_to(KILL_OBJECT);
-	}
-
-	/* Reject any new read/write ops and abort any that are pending. */
-	clear_bit(FSCACHE_OBJECT_PENDING_WRITE, &object->flags);
-	fscache_cancel_all_ops(object);
-
-	/* Now we have to wait for in-progress reads and writes */
-	op = kzalloc(sizeof(*op), GFP_KERNEL);
-	if (!op)
-		goto nomem;
-
-	fscache_operation_init(cookie, op, object->cache->ops->invalidate_object,
-			       NULL, NULL);
-	op->flags = FSCACHE_OP_ASYNC |
-		(1 << FSCACHE_OP_EXCLUSIVE) |
-		(1 << FSCACHE_OP_UNUSE_COOKIE);
-
-	spin_lock(&cookie->lock);
-	if (fscache_submit_exclusive_op(object, op) < 0)
-		goto submit_op_failed;
-	spin_unlock(&cookie->lock);
-	fscache_put_operation(op);
-
-	/* Once we've completed the invalidation, we know there will be no data
-	 * stored in the cache and thus we can reinstate the data-check-skip
-	 * optimisation.
-	 */
-	set_bit(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);
-
-	/* We can allow read and write requests to come in once again.  They'll
-	 * queue up behind our exclusive invalidation operation.
-	 */
-	if (test_and_clear_bit(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
-		wake_up_bit(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);
-	_leave(" [ok]");
-	return transit_to(UPDATE_OBJECT);
-
-nomem:
-	fscache_mark_object_dead(object);
-	fscache_unuse_cookie(object);
-	_leave(" [ENOMEM]");
-	return transit_to(KILL_OBJECT);
-
-submit_op_failed:
-	fscache_mark_object_dead(object);
-	spin_unlock(&cookie->lock);
-	fscache_unuse_cookie(object);
-	kfree(op);
-	_leave(" [EIO]");
-	return transit_to(KILL_OBJECT);
-}
-
 static const struct fscache_state *fscache_invalidate_object(struct fscache_object *object,
 							     int event)
 {
-	const struct fscache_state *s;
-
-	fscache_stat(&fscache_n_invalidates_run);
-	fscache_stat(&fscache_n_cop_invalidate_object);
-	s = _fscache_invalidate_object(object, event);
-	fscache_stat_d(&fscache_n_cop_invalidate_object);
-	return s;
+	return transit_to(UPDATE_OBJECT);
 }
 
 /*
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 627e1ab7123d..3c543f8ac663 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -171,7 +171,7 @@ struct fscache_cache_ops {
 	void (*update_object)(struct fscache_object *object);
 
 	/* Invalidate an object */
-	void (*invalidate_object)(struct fscache_operation *op);
+	void (*invalidate_object)(struct fscache_object *object);
 
 	/* discard the resources pinned by an object and effect retirement if
 	 * necessary */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
