Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BA63AF7E8
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Jun 2021 23:47:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvRkv-0007S0-H3; Mon, 21 Jun 2021 21:46:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lvRku-0007Rl-3d
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SbbVB4FpkmcioO44CGnrs17nTJPcJV2QWm6aKy436l8=; b=CPy0o1/RqBv2HUl4TgbjaBQACf
 2ltbh4YkcKyxgiOn05mQfFNmwOxRRGViK95Qi0hPN8sOlptNzf+gjpFe06b7co8/haXmu9lQomXoT
 aSMWwgxfO8Rsc4C4btK+rlAiA23H8tmBczUkV3EFdscpmt3INGlP5l81engcJtUOU+48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SbbVB4FpkmcioO44CGnrs17nTJPcJV2QWm6aKy436l8=; b=FMxCTXi59W2Aq5kMYv/52i0uBP
 otb4Nef5ea3nZge45GvSK3SN0bW3eO/0fk3RTbsYk/pL1MTqohx1ROLjcYaAJhshj3kUdqqtDWFpH
 Wb1l7nDlJg8cjo9vHdc3HzNbkopqKELTiqZHDfC58zjoO5q/6UqKxt/PxXWPbCqRDL+Y=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvRko-00672l-LV
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:47:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624312004;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SbbVB4FpkmcioO44CGnrs17nTJPcJV2QWm6aKy436l8=;
 b=BoXbtVre7K5d9Gi26t4sNMhAKAbCgfwHin9wEl8dzJvBgyMvZMC+WxHDzRAiFczai+PscE
 WsDZDXgufQZ4Buo3mKSobe84BtHISUg4UoeyBBNRXAAMXjeGMTNvGdig6xt1ONYDIjcQYs
 xttIbHAQYmPBTdur9FDQ7pUKoPAG8F0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-JjeOCgASM5OymNJKUqT_sA-1; Mon, 21 Jun 2021 17:46:43 -0400
X-MC-Unique: JjeOCgASM5OymNJKUqT_sA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD7C85074B;
 Mon, 21 Jun 2021 21:46:41 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-65.rdu2.redhat.com
 [10.10.118.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F17CD608BA;
 Mon, 21 Jun 2021 21:46:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 21 Jun 2021 22:46:35 +0100
Message-ID: <162431199509.2908479.2950631488219944294.stgit@warthog.procyon.org.uk>
In-Reply-To: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lvRko-00672l-LV
Subject: [V9fs-developer] [PATCH 08/12] fscache: Change %p in format strings
 to something else
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Change plain %p in format strings in fscache code to something more useful,
since %p is now hashed before printing and thus no longer matches the
contents of an oops register dump.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/cache.c  |    8 ++++----
 fs/fscache/cookie.c |   16 +++++++---------
 fs/fscache/object.c |    1 -
 3 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index 8a6ffcac867f..e7a5d7ab4085 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -116,7 +116,7 @@ struct fscache_cache *fscache_select_cache_for_object(
 			cache = NULL;
 
 		spin_unlock(&cookie->lock);
-		_leave(" = %p [parent]", cache);
+		_leave(" = %s [parent]", cache ? cache->tag->name : "NULL");
 		return cache;
 	}
 
@@ -152,14 +152,14 @@ struct fscache_cache *fscache_select_cache_for_object(
 	if (test_bit(FSCACHE_IOERROR, &tag->cache->flags))
 		return NULL;
 
-	_leave(" = %p [specific]", tag->cache);
+	_leave(" = %s [specific]", tag->name);
 	return tag->cache;
 
 no_preference:
 	/* netfs has no preference - just select first cache */
 	cache = list_entry(fscache_cache_list.next,
 			   struct fscache_cache, link);
-	_leave(" = %p [first]", cache);
+	_leave(" = %s [first]", cache->tag->name);
 	return cache;
 }
 
@@ -334,7 +334,7 @@ static void fscache_withdraw_all_objects(struct fscache_cache *cache,
 					    struct fscache_object, cache_link);
 			list_move_tail(&object->cache_link, dying_objects);
 
-			_debug("withdraw %p", object->cookie);
+			_debug("withdraw %x", object->cookie->debug_id);
 
 			/* This must be done under object_list_lock to prevent
 			 * a race with fscache_drop_object().
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 2f4d5271ad2e..ec9bce33085f 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -375,7 +375,7 @@ void __fscache_enable_cookie(struct fscache_cookie *cookie,
 			     bool (*can_enable)(void *data),
 			     void *data)
 {
-	_enter("%p", cookie);
+	_enter("%x", cookie->debug_id);
 
 	trace_fscache_enable(cookie);
 
@@ -472,10 +472,8 @@ static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie,
 
 	/* we may be required to wait for lookup to complete at this point */
 	if (!fscache_defer_lookup) {
-		_debug("non-deferred lookup %p", &cookie->flags);
 		wait_on_bit(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP,
 			    TASK_UNINTERRUPTIBLE);
-		_debug("complete");
 		if (test_bit(FSCACHE_COOKIE_UNAVAILABLE, &cookie->flags))
 			goto unavailable;
 	}
@@ -500,7 +498,7 @@ static int fscache_alloc_object(struct fscache_cache *cache,
 	struct fscache_object *object;
 	int ret;
 
-	_enter("%p,%p{%s}", cache, cookie, cookie->def->name);
+	_enter("%s,%x{%s}", cache->tag->name, cookie->debug_id, cookie->def->name);
 
 	spin_lock(&cookie->lock);
 	hlist_for_each_entry(object, &cookie->backing_objects,
@@ -676,7 +674,7 @@ EXPORT_SYMBOL(__fscache_invalidate);
  */
 void __fscache_wait_on_invalidate(struct fscache_cookie *cookie)
 {
-	_enter("%p", cookie);
+	_enter("%x", cookie->debug_id);
 
 	wait_on_bit(&cookie->flags, FSCACHE_COOKIE_INVALIDATING,
 		    TASK_UNINTERRUPTIBLE);
@@ -731,7 +729,7 @@ void __fscache_disable_cookie(struct fscache_cookie *cookie,
 	struct fscache_object *object;
 	bool awaken = false;
 
-	_enter("%p,%u", cookie, invalidate);
+	_enter("%x,%u", cookie->debug_id, invalidate);
 
 	trace_fscache_disable(cookie);
 
@@ -821,8 +819,8 @@ void __fscache_relinquish_cookie(struct fscache_cookie *cookie,
 		return;
 	}
 
-	_enter("%p{%s,%p,%d},%d",
-	       cookie, cookie->def->name, cookie->netfs_data,
+	_enter("%x{%s,%d},%d",
+	       cookie->debug_id, cookie->def->name,
 	       atomic_read(&cookie->n_active), retire);
 
 	trace_fscache_relinquish(cookie, retire);
@@ -877,7 +875,7 @@ void fscache_cookie_put(struct fscache_cookie *cookie,
 	struct fscache_cookie *parent;
 	int usage;
 
-	_enter("%p", cookie);
+	_enter("%x", cookie->debug_id);
 
 	do {
 		usage = atomic_dec_return(&cookie->usage);
diff --git a/fs/fscache/object.c b/fs/fscache/object.c
index b3853274733f..f346a78f4bd6 100644
--- a/fs/fscache/object.c
+++ b/fs/fscache/object.c
@@ -518,7 +518,6 @@ void fscache_object_lookup_negative(struct fscache_object *object)
 		set_bit(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);
 		clear_bit(FSCACHE_COOKIE_UNAVAILABLE, &cookie->flags);
 
-		_debug("wake up lookup %p", &cookie->flags);
 		clear_bit_unlock(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags);
 		wake_up_bit(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP);
 	}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
