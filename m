Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BA847DA09
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:18:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0Ash-0002Ql-QA; Wed, 22 Dec 2021 23:18:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0Asg-0002Qa-PW
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:18:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1gUaQ0ont0vAvQ6TRHpN18jPZCr3W3kiHwJpcE296OI=; b=WGovrE4NqhT1bps2sm5dPcPbh+
 buf2ic0G1n2U3N9kVC9CXA6Panp004+eQvfpLQf7Ky/P/xtVpxsSoQnE1D3hwQEmHUCVE4aT2unZe
 r1FZsz+xqY9t3wxer4EDfsV88iVdEZXjjtjDRin5gMhru+brnQ+j9xpYYdp8BC0JbN3s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1gUaQ0ont0vAvQ6TRHpN18jPZCr3W3kiHwJpcE296OI=; b=DW6e8aU+SM9pMJf0ZzowYiPd0K
 1lblCAvlIdq9FVDZvIlzwlT3OTbdu5SDKj+pP2FgzEc+eeW2m2pOYswfZVXsLj7ED7+UCJCR8AQMZ
 QG1SJwYZbH6vdKe4udkcCeq+YzXdOgYSkPXU4adSMeOmNRBXbwi52gW37xDI8SwMT6HE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Asd-0006mz-Ik
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:18:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215117;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1gUaQ0ont0vAvQ6TRHpN18jPZCr3W3kiHwJpcE296OI=;
 b=ZtFcBGkn9AJ7GXhH1TQcg686KGwmbaJgjmIuFYE1euoCT9TnAEsFWDktXa7hes6skLJ5fy
 pLmpaMvC+MQDIfsi+RsA7xDCiarHkjH5W/VUVRkSMxSWiR7FfBj1M1CdoF1cQ5s3O3vj5F
 9HG9/zdNmsG0k+knWYTeM0yud4yDDqM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-355-dpCAhNDOMmu9T-WMSdpEYg-1; Wed, 22 Dec 2021 18:18:33 -0500
X-MC-Unique: dpCAhNDOMmu9T-WMSdpEYg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DA1E1800D50;
 Wed, 22 Dec 2021 23:18:31 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E01AA798D5;
 Wed, 22 Dec 2021 23:18:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:18:27 +0000
Message-ID: <164021510706.640689.7961423370243272583.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview: Implement a very simple cookie state machine to handle lookup,
 invalidation, withdrawal, relinquishment and, to be added later, commit on
 LRU discard. Three cache methods are provided: ->lookup_cookie() to look
 up and, if necessary, create a data storage object; ->withdraw_cookie() to
 free the resources associated with that object and potentially de [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0Asd-0006mz-Ik
Subject: [V9fs-developer] [PATCH v4 17/68] fscache: Implement simple cookie
 state machine
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
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Implement a very simple cookie state machine to handle lookup,
invalidation, withdrawal, relinquishment and, to be added later, commit on
LRU discard.

Three cache methods are provided: ->lookup_cookie() to look up and, if
necessary, create a data storage object; ->withdraw_cookie() to free the
resources associated with that object and potentially delete it; and
->prepare_to_write(), to do prepare for changes to the cached data to be
modified locally.

Changes
=======
ver #3:
 - Fix a race between LRU discard and relinquishment whereby the former
   would override the latter and thus the latter would never happen[1].

ver #2:
 - Don't hold n_accesses elevated whilst cache is bound to a cookie, but
   rather add a flag that prevents the state machine from being queued when
   n_accesses reaches 0.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/599331.1639410068@warthog.procyon.org.uk/ [1]
Link: https://lore.kernel.org/r/163819599657.215744.15799615296912341745.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906903925.143852.1805855338154353867.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967105456.1823006.14730395299835841776.stgit@warthog.procyon.org.uk/ # v3
---

 fs/fscache/cookie.c            |  313 +++++++++++++++++++++++++++++++++++-----
 include/linux/fscache-cache.h  |   27 +++
 include/trace/events/fscache.h |    4 +
 3 files changed, 300 insertions(+), 44 deletions(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 04d2127bd354..336046de08ee 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -15,7 +15,8 @@
 
 struct kmem_cache *fscache_cookie_jar;
 
-static void fscache_drop_cookie(struct fscache_cookie *cookie);
+static void fscache_cookie_worker(struct work_struct *work);
+static void fscache_unhash_cookie(struct fscache_cookie *cookie);
 
 #define fscache_cookie_hash_shift 15
 static struct hlist_bl_head fscache_cookie_hash[1 << fscache_cookie_hash_shift];
@@ -62,6 +63,19 @@ static void fscache_free_cookie(struct fscache_cookie *cookie)
 	kmem_cache_free(fscache_cookie_jar, cookie);
 }
 
+static void __fscache_queue_cookie(struct fscache_cookie *cookie)
+{
+	if (!queue_work(fscache_wq, &cookie->work))
+		fscache_put_cookie(cookie, fscache_cookie_put_over_queued);
+}
+
+static void fscache_queue_cookie(struct fscache_cookie *cookie,
+				 enum fscache_cookie_trace where)
+{
+	fscache_get_cookie(cookie, where);
+	__fscache_queue_cookie(cookie);
+}
+
 /*
  * Initialise the access gate on a cookie by setting a flag to prevent the
  * state machine from being queued when the access counter transitions to 0.
@@ -98,9 +112,8 @@ void fscache_end_cookie_access(struct fscache_cookie *cookie,
 	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
 			     n_accesses, why);
 	if (n_accesses == 0 &&
-	    !test_bit(FSCACHE_COOKIE_NO_ACCESS_WAKE, &cookie->flags)) {
-		// PLACEHOLDER: Need to poke the state machine
-	}
+	    !test_bit(FSCACHE_COOKIE_NO_ACCESS_WAKE, &cookie->flags))
+		fscache_queue_cookie(cookie, fscache_cookie_get_end_access);
 }
 EXPORT_SYMBOL(fscache_end_cookie_access);
 
@@ -171,35 +184,58 @@ static inline void wake_up_cookie_state(struct fscache_cookie *cookie)
 	wake_up_var(&cookie->state);
 }
 
+/*
+ * Change the state a cookie is at and wake up anyone waiting for that.  Impose
+ * an ordering between the stuff stored in the cookie and the state member.
+ * Paired with fscache_cookie_state().
+ */
 static void __fscache_set_cookie_state(struct fscache_cookie *cookie,
 				       enum fscache_cookie_state state)
 {
-	cookie->state = state;
+	smp_store_release(&cookie->state, state);
 }
 
-/*
- * Change the state a cookie is at and wake up anyone waiting for that - but
- * only if the cookie isn't already marked as being in a cleanup state.
- */
-void fscache_set_cookie_state(struct fscache_cookie *cookie,
-			      enum fscache_cookie_state state)
+static void fscache_set_cookie_state(struct fscache_cookie *cookie,
+				     enum fscache_cookie_state state)
 {
-	bool changed = false;
-
 	spin_lock(&cookie->lock);
-	switch (cookie->state) {
-	case FSCACHE_COOKIE_STATE_RELINQUISHING:
-		break;
-	default:
-		__fscache_set_cookie_state(cookie, state);
-		changed = true;
-		break;
-	}
+	__fscache_set_cookie_state(cookie, state);
 	spin_unlock(&cookie->lock);
-	if (changed)
-		wake_up_cookie_state(cookie);
+	wake_up_cookie_state(cookie);
+}
+
+/**
+ * fscache_cookie_lookup_negative - Note negative lookup
+ * @cookie: The cookie that was being looked up
+ *
+ * Note that some part of the metadata path in the cache doesn't exist and so
+ * we can release any waiting readers in the certain knowledge that there's
+ * nothing for them to actually read.
+ *
+ * This function uses no locking and must only be called from the state machine.
+ */
+void fscache_cookie_lookup_negative(struct fscache_cookie *cookie)
+{
+	set_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
+	fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_CREATING);
+}
+EXPORT_SYMBOL(fscache_cookie_lookup_negative);
+
+/**
+ * fscache_caching_failed - Report that a failure stopped caching on a cookie
+ * @cookie: The cookie that was affected
+ *
+ * Tell fscache that caching on a cookie needs to be stopped due to some sort
+ * of failure.
+ *
+ * This function uses no locking and must only be called from the state machine.
+ */
+void fscache_caching_failed(struct fscache_cookie *cookie)
+{
+	clear_bit(FSCACHE_COOKIE_IS_CACHING, &cookie->flags);
+	fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_FAILED);
 }
-EXPORT_SYMBOL(fscache_set_cookie_state);
+EXPORT_SYMBOL(fscache_caching_failed);
 
 /*
  * Set the index key in a cookie.  The cookie struct has space for a 16-byte
@@ -291,10 +327,10 @@ static struct fscache_cookie *fscache_alloc_cookie(
 
 	refcount_set(&cookie->ref, 1);
 	cookie->debug_id = atomic_inc_return(&fscache_cookie_debug_id);
-	cookie->state = FSCACHE_COOKIE_STATE_QUIESCENT;
 	spin_lock_init(&cookie->lock);
 	INIT_LIST_HEAD(&cookie->commit_link);
-	INIT_WORK(&cookie->work, NULL /* PLACEHOLDER */);
+	INIT_WORK(&cookie->work, fscache_cookie_worker);
+	__fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_QUIESCENT);
 
 	write_lock(&fscache_cookies_lock);
 	list_add_tail(&cookie->proc_link, &fscache_cookies);
@@ -417,6 +453,192 @@ struct fscache_cookie *__fscache_acquire_cookie(
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
+/*
+ * Look up a cookie in the cache.
+ */
+static void fscache_perform_lookup(struct fscache_cookie *cookie)
+{
+	enum fscache_access_trace trace = fscache_access_lookup_cookie_end_failed;
+	bool need_withdraw = false;
+
+	_enter("");
+
+	if (!cookie->volume->cache_priv) {
+		fscache_create_volume(cookie->volume, true);
+		if (!cookie->volume->cache_priv) {
+			fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_QUIESCENT);
+			goto out;
+		}
+	}
+
+	if (!cookie->volume->cache->ops->lookup_cookie(cookie)) {
+		if (cookie->state != FSCACHE_COOKIE_STATE_FAILED)
+			fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_QUIESCENT);
+		need_withdraw = true;
+		_leave(" [fail]");
+		goto out;
+	}
+
+	fscache_see_cookie(cookie, fscache_cookie_see_active);
+	fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_ACTIVE);
+	trace = fscache_access_lookup_cookie_end;
+
+out:
+	fscache_end_cookie_access(cookie, trace);
+	if (need_withdraw)
+		fscache_withdraw_cookie(cookie);
+	fscache_end_volume_access(cookie->volume, cookie, trace);
+}
+
+/*
+ * Perform work upon the cookie, such as committing its cache state,
+ * relinquishing it or withdrawing the backing cache.  We're protected from the
+ * cache going away under us as object withdrawal must come through this
+ * non-reentrant work item.
+ */
+static void fscache_cookie_state_machine(struct fscache_cookie *cookie)
+{
+	enum fscache_cookie_state state;
+	bool wake = false;
+
+	_enter("c=%x", cookie->debug_id);
+
+again:
+	spin_lock(&cookie->lock);
+again_locked:
+	state = cookie->state;
+	switch (state) {
+	case FSCACHE_COOKIE_STATE_QUIESCENT:
+		/* The QUIESCENT state is jumped to the LOOKING_UP state by
+		 * fscache_use_cookie().
+		 */
+
+		if (atomic_read(&cookie->n_accesses) == 0 &&
+		    test_bit(FSCACHE_COOKIE_DO_RELINQUISH, &cookie->flags)) {
+			__fscache_set_cookie_state(cookie,
+						   FSCACHE_COOKIE_STATE_RELINQUISHING);
+			wake = true;
+			goto again_locked;
+		}
+		break;
+
+	case FSCACHE_COOKIE_STATE_LOOKING_UP:
+		spin_unlock(&cookie->lock);
+		fscache_init_access_gate(cookie);
+		fscache_perform_lookup(cookie);
+		goto again;
+
+	case FSCACHE_COOKIE_STATE_ACTIVE:
+		if (test_and_clear_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags)) {
+			spin_unlock(&cookie->lock);
+			fscache_prepare_to_write(cookie);
+			spin_lock(&cookie->lock);
+		}
+		fallthrough;
+
+	case FSCACHE_COOKIE_STATE_FAILED:
+		if (atomic_read(&cookie->n_accesses) != 0)
+			break;
+		if (test_bit(FSCACHE_COOKIE_DO_RELINQUISH, &cookie->flags)) {
+			__fscache_set_cookie_state(cookie,
+						   FSCACHE_COOKIE_STATE_RELINQUISHING);
+			wake = true;
+			goto again_locked;
+		}
+		if (test_bit(FSCACHE_COOKIE_DO_WITHDRAW, &cookie->flags)) {
+			__fscache_set_cookie_state(cookie,
+						   FSCACHE_COOKIE_STATE_WITHDRAWING);
+			wake = true;
+			goto again_locked;
+		}
+		break;
+
+	case FSCACHE_COOKIE_STATE_RELINQUISHING:
+	case FSCACHE_COOKIE_STATE_WITHDRAWING:
+		if (cookie->cache_priv) {
+			spin_unlock(&cookie->lock);
+			cookie->volume->cache->ops->withdraw_cookie(cookie);
+			spin_lock(&cookie->lock);
+		}
+
+		switch (state) {
+		case FSCACHE_COOKIE_STATE_RELINQUISHING:
+			fscache_see_cookie(cookie, fscache_cookie_see_relinquish);
+			fscache_unhash_cookie(cookie);
+			__fscache_set_cookie_state(cookie,
+						   FSCACHE_COOKIE_STATE_DROPPED);
+			wake = true;
+			goto out;
+		case FSCACHE_COOKIE_STATE_WITHDRAWING:
+			fscache_see_cookie(cookie, fscache_cookie_see_withdraw);
+			break;
+		default:
+			BUG();
+		}
+
+		clear_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
+		clear_bit(FSCACHE_COOKIE_DO_WITHDRAW, &cookie->flags);
+		clear_bit(FSCACHE_COOKIE_DO_LRU_DISCARD, &cookie->flags);
+		clear_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
+		set_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
+		__fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_QUIESCENT);
+		wake = true;
+		goto again_locked;
+
+	case FSCACHE_COOKIE_STATE_DROPPED:
+		break;
+
+	default:
+		WARN_ONCE(1, "Cookie %x in unexpected state %u\n",
+			  cookie->debug_id, state);
+		break;
+	}
+
+out:
+	spin_unlock(&cookie->lock);
+	if (wake)
+		wake_up_cookie_state(cookie);
+	_leave("");
+}
+
+static void fscache_cookie_worker(struct work_struct *work)
+{
+	struct fscache_cookie *cookie = container_of(work, struct fscache_cookie, work);
+
+	fscache_see_cookie(cookie, fscache_cookie_see_work);
+	fscache_cookie_state_machine(cookie);
+	fscache_put_cookie(cookie, fscache_cookie_put_work);
+}
+
+/*
+ * Wait for the object to become inactive.  The cookie's work item will be
+ * scheduled when someone transitions n_accesses to 0 - but if someone's
+ * already done that, schedule it anyway.
+ */
+static void __fscache_withdraw_cookie(struct fscache_cookie *cookie)
+{
+	int n_accesses;
+	bool unpinned;
+
+	unpinned = test_and_clear_bit(FSCACHE_COOKIE_NO_ACCESS_WAKE, &cookie->flags);
+
+	/* Need to read the access count after unpinning */
+	n_accesses = atomic_read(&cookie->n_accesses);
+	if (unpinned)
+		trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+				     n_accesses, fscache_access_cache_unpin);
+	if (n_accesses == 0)
+		fscache_queue_cookie(cookie, fscache_cookie_get_end_access);
+}
+
 /*
  * Remove a cookie from the hash table.
  */
@@ -432,21 +654,27 @@ static void fscache_unhash_cookie(struct fscache_cookie *cookie)
 	hlist_bl_del(&cookie->hash_link);
 	clear_bit(FSCACHE_COOKIE_IS_HASHED, &cookie->flags);
 	hlist_bl_unlock(h);
+	fscache_stat(&fscache_n_relinquishes_dropped);
 }
 
-/*
- * Finalise a cookie after all its resources have been disposed of.
- */
-static void fscache_drop_cookie(struct fscache_cookie *cookie)
+static void fscache_drop_withdraw_cookie(struct fscache_cookie *cookie)
 {
-	spin_lock(&cookie->lock);
-	__fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_DROPPED);
-	spin_unlock(&cookie->lock);
-	wake_up_cookie_state(cookie);
+	__fscache_withdraw_cookie(cookie);
+}
 
-	fscache_unhash_cookie(cookie);
-	fscache_stat(&fscache_n_relinquishes_dropped);
+/**
+ * fscache_withdraw_cookie - Mark a cookie for withdrawal
+ * @cookie: The cookie to be withdrawn.
+ *
+ * Allow the cache backend to withdraw the backing for a cookie for its own
+ * reasons, even if that cookie is in active use.
+ */
+void fscache_withdraw_cookie(struct fscache_cookie *cookie)
+{
+	set_bit(FSCACHE_COOKIE_DO_WITHDRAW, &cookie->flags);
+	fscache_drop_withdraw_cookie(cookie);
 }
+EXPORT_SYMBOL(fscache_withdraw_cookie);
 
 /*
  * Allow the netfs to release a cookie back to the cache.
@@ -473,12 +701,13 @@ void __fscache_relinquish_cookie(struct fscache_cookie *cookie, bool retire)
 	ASSERTCMP(atomic_read(&cookie->volume->n_cookies), >, 0);
 	atomic_dec(&cookie->volume->n_cookies);
 
-	set_bit(FSCACHE_COOKIE_DO_RELINQUISH, &cookie->flags);
-
-	if (test_bit(FSCACHE_COOKIE_HAS_BEEN_CACHED, &cookie->flags))
-		; // PLACEHOLDER: Do something here if the cookie was cached
-	else
-		fscache_drop_cookie(cookie);
+	if (test_bit(FSCACHE_COOKIE_HAS_BEEN_CACHED, &cookie->flags)) {
+		set_bit(FSCACHE_COOKIE_DO_RELINQUISH, &cookie->flags);
+		fscache_drop_withdraw_cookie(cookie);
+	} else {
+		fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_DROPPED);
+		fscache_unhash_cookie(cookie);
+	}
 	fscache_put_cookie(cookie, fscache_cookie_put_relinquish);
 }
 EXPORT_SYMBOL(__fscache_relinquish_cookie);
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 936ef731bbc7..ae6a75976450 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -57,6 +57,15 @@ struct fscache_cache_ops {
 
 	/* Free the cache's data attached to a volume */
 	void (*free_volume)(struct fscache_volume *volume);
+
+	/* Look up a cookie in the cache */
+	bool (*lookup_cookie)(struct fscache_cookie *cookie);
+
+	/* Withdraw an object without any cookie access counts held */
+	void (*withdraw_cookie)(struct fscache_cookie *cookie);
+
+	/* Prepare to write to a live cache object */
+	void (*prepare_to_write)(struct fscache_cookie *cookie);
 };
 
 extern struct workqueue_struct *fscache_wq;
@@ -72,6 +81,7 @@ extern int fscache_add_cache(struct fscache_cache *cache,
 			     void *cache_priv);
 extern void fscache_withdraw_cache(struct fscache_cache *cache);
 extern void fscache_withdraw_volume(struct fscache_volume *volume);
+extern void fscache_withdraw_cookie(struct fscache_cookie *cookie);
 
 extern void fscache_io_error(struct fscache_cache *cache);
 
@@ -85,8 +95,21 @@ extern void fscache_put_cookie(struct fscache_cookie *cookie,
 			       enum fscache_cookie_trace where);
 extern void fscache_end_cookie_access(struct fscache_cookie *cookie,
 				      enum fscache_access_trace why);
-extern void fscache_set_cookie_state(struct fscache_cookie *cookie,
-				     enum fscache_cookie_state state);
+extern void fscache_cookie_lookup_negative(struct fscache_cookie *cookie);
+extern void fscache_caching_failed(struct fscache_cookie *cookie);
+
+/**
+ * fscache_cookie_state - Read the state of a cookie
+ * @cookie: The cookie to query
+ *
+ * Get the state of a cookie, imposing an ordering between the cookie contents
+ * and the state value.  Paired with fscache_set_cookie_state().
+ */
+static inline
+enum fscache_cookie_state fscache_cookie_state(struct fscache_cookie *cookie)
+{
+	return smp_load_acquire(&cookie->state);
+}
 
 /**
  * fscache_get_key - Get a pointer to the cookie key
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 1d576bd8112e..030c97bb9c8b 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -68,6 +68,8 @@ enum fscache_access_trace {
 	fscache_access_acquire_volume_end,
 	fscache_access_cache_pin,
 	fscache_access_cache_unpin,
+	fscache_access_lookup_cookie_end,
+	fscache_access_lookup_cookie_end_failed,
 	fscache_access_relinquish_volume,
 	fscache_access_relinquish_volume_end,
 	fscache_access_unlive,
@@ -124,6 +126,8 @@ enum fscache_access_trace {
 	EM(fscache_access_acquire_volume_end,	"END   acq_vol")	\
 	EM(fscache_access_cache_pin,		"PIN   cache  ")	\
 	EM(fscache_access_cache_unpin,		"UNPIN cache  ")	\
+	EM(fscache_access_lookup_cookie_end,	"END   lookup ")	\
+	EM(fscache_access_lookup_cookie_end_failed,"END   lookupf")	\
 	EM(fscache_access_relinquish_volume,	"BEGIN rlq_vol")	\
 	EM(fscache_access_relinquish_volume_end,"END   rlq_vol")	\
 	E_(fscache_access_unlive,		"END   unlive ")




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
