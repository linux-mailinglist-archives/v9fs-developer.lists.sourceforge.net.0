Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A3821DC1F
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:30:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1Lq-0007UO-9s; Mon, 13 Jul 2020 16:30:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1Lp-0007UH-B6
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qlpoFG9UE2PZ4YzZD7LoYFPy0ipCd11j2S++SHUpFkg=; b=aiU8MxZqbBa1XnUBnrj9zEKl5D
 js/HhE6mQWR+xB8COOTcFfrs9JHMit5uru9e2oCsqeKXXpahu+509m0zHVbVDBRLkwsgk7kGAS8K8
 SQOZgCA/WpTEVE+G3SX7dkmzzRMmoUBzg/B25k6IZzmzzzWKVkheUguN+lAjXz/Hfo8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qlpoFG9UE2PZ4YzZD7LoYFPy0ipCd11j2S++SHUpFkg=; b=DFVl5pUoCacBKaRjpOD/nGSK/L
 t2IHo6Bm9EfCcAtTtUpvIQqLY3XGmXIuFFs8nBAtiXiF6/DX/Td4XZVb8fYlYa4zdU/Q8fO0uj1dX
 IHkhxIZRyMNTMbYoxgEy8CO4uwP2DTiG5hzqgp0on9wnjpVpRKGLbduT28KASxRuYslU=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1Lo-001hE7-12
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594657830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qlpoFG9UE2PZ4YzZD7LoYFPy0ipCd11j2S++SHUpFkg=;
 b=Wvz5Db28lSEacBQC9//jdUTnTSUCHdX2pv+LR9s7BBHpNVr86fy6SgDcMMP7P3b5YUxm/9
 LeNTZtOOdkD/W/P33mIlWXnJ/ID17m+6IXc94zOUn65mWCBf7a5WJtwP49/qLkCmkFKNsi
 hFDnlpiHNbJycxwhFu1nCWYbLdTojBA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-uRz_svXkMVCcXz4WRynmpA-1; Mon, 13 Jul 2020 12:30:28 -0400
X-MC-Unique: uRz_svXkMVCcXz4WRynmpA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C1CE80572E;
 Mon, 13 Jul 2020 16:30:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 89ED25C1D0;
 Mon, 13 Jul 2020 16:30:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:30:18 +0100
Message-ID: <159465781881.1376105.1868382147118644514.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk>
References: <159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1Lo-001hE7-12
Subject: [V9fs-developer] [PATCH 13/14] fscache: Temporarily disable
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
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
index a50fd9e384a6..30394b32a91c 100644
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
index e31164f0446b..5eda1cd265ef 100644
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
index 60b2f8288668..0fbe25b1271b 100644
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
