Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E52D646EE5C
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 17:56:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvMiU-0002EM-E7; Thu, 09 Dec 2021 16:56:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvMiT-0002E4-8x
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 16:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gM8hPy7uTxLTswFZ+vEJYphgio3Vmu0bWl1c76vi9UU=; b=I6y+KR74n5FpZjBQgA9FQwMRRK
 9cJNKnRH7X2UIW1YwmIIT7U3bCEXk7QwVrmrlvd8ZiNL9airkOSxbJx0/32LbokteXU6w4MqWSjwd
 l7xJwK1NZ+Z34x65IhoGO72sZGknmZGj6J0WUr+moipXrriX3gz4gsukOrPxNT2qRrvM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gM8hPy7uTxLTswFZ+vEJYphgio3Vmu0bWl1c76vi9UU=; b=Pqzl94/a7x7WvhI+qQWJ3iWYnM
 3F/3CBw2Bzoz7X+w7YRyvMyKs77oiebpQLwLGPO7Xfw0wypfnFxBD2j3q5vYDZlKv9cewVk+ae8ma
 KFzc1h1f3er8youfDgvjUZnmP0eMO843IXozKJ5CIUUL5iUuSIXtTAmweQ78IWX49Rw4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvMiI-0000kU-7n
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 16:56:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639068964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gM8hPy7uTxLTswFZ+vEJYphgio3Vmu0bWl1c76vi9UU=;
 b=Iflvs9tK2kFUpo+w8d65F+JgyYZuOlafH2cdPdjFqVieLQuHNl+CPoFE8tbKjKvqAR1LwZ
 vBxZEOYGB6/LNg6ruytWeTHEtL33+vUwHHbFyVSeOkMnpBtyntBxhA/VEuyNd4eyl0iOW9
 geSgTlqIeHM3u0cMreDqJeSlU5CFVo0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-380-7X8AJ5VoPDSTCtLRAYEdqw-1; Thu, 09 Dec 2021 11:56:03 -0500
X-MC-Unique: 7X8AJ5VoPDSTCtLRAYEdqw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBD85801962;
 Thu,  9 Dec 2021 16:56:00 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F34C45F70B;
 Thu,  9 Dec 2021 16:55:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 09 Dec 2021 16:55:53 +0000
Message-ID: <163906895313.143852.10141619544149102193.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a number of helper functions to manage access to a cookie,
 pinning the cache object in place for the duration to prevent cache withdrawal
 from removing it: (1) void fscache_init_access_gate(struct fscache_cookie
 *cookie); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvMiI-0000kU-7n
Subject: [V9fs-developer] [PATCH v2 13/67] fscache: Implement cookie-level
 access helpers
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

Add a number of helper functions to manage access to a cookie, pinning the
cache object in place for the duration to prevent cache withdrawal from
removing it:

 (1) void fscache_init_access_gate(struct fscache_cookie *cookie);

     This function initialises the access count when a cache binds to a
     cookie.  An extra ref is taken on the access count to prevent wakeups
     while the cache is active.  We're only interested in the wakeup when a
     cookie is being withdrawn and we're waiting for it to quiesce - at
     which point the counter will be decremented before the wait.

     The FSCACHE_COOKIE_NACC_ELEVATED flag is set on the cookie to keep
     track of the extra ref in order to handle a race between
     relinquishment and withdrawal both trying to drop the extra ref.

 (2) bool fscache_begin_cookie_access(struct fscache_cookie *cookie,
				      enum fscache_access_trace why);

     This function attempts to begin access upon a cookie, pinning it in
     place if it's cached.  If successful, it returns true and leaves a the
     access count incremented.

 (3) void fscache_end_cookie_access(struct fscache_cookie *cookie,
				    enum fscache_access_trace why);

     This function drops the access count obtained by (2), permitting
     object withdrawal to take place when it reaches zero.

A tracepoint is provided to track changes to the access counter on a
cookie.

Changes
=======
ver #2:
 - Don't hold n_accesses elevated whilst cache is bound to a cookie, but
   rather add a flag that prevents the state machine from being queued when
   n_accesses reaches 0.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819595085.215744.1706073049250505427.stgit@warthog.procyon.org.uk/ # v1
---

 fs/fscache/cookie.c            |   98 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    3 +
 fs/fscache/main.c              |    1 
 include/linux/fscache-cache.h  |    2 +
 include/trace/events/fscache.h |   29 ++++++++++++
 5 files changed, 133 insertions(+)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 5422c523f207..96d0adfc3040 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -57,6 +57,104 @@ static void fscache_free_cookie(struct fscache_cookie *cookie)
 	kmem_cache_free(fscache_cookie_jar, cookie);
 }
 
+/*
+ * Initialise the access gate on a cookie by setting a flag to prevent the
+ * state machine from being queued when the access counter transitions to 0.
+ * We're only interested in this when we withdraw caching services from the
+ * cookie.
+ */
+static void fscache_init_access_gate(struct fscache_cookie *cookie)
+{
+	int n_accesses;
+
+	n_accesses = atomic_read(&cookie->n_accesses);
+	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+			     n_accesses, fscache_access_cache_pin);
+	set_bit(FSCACHE_COOKIE_NO_ACCESS_WAKE, &cookie->flags);
+}
+
+/**
+ * fscache_end_cookie_access - Unpin a cache at the end of an access.
+ * @cookie: A data file cookie
+ * @why: An indication of the circumstances of the access for tracing
+ *
+ * Unpin a cache cookie after we've accessed it and bring a deferred
+ * relinquishment or withdrawal state into effect.
+ *
+ * The @why indicator is provided for tracing purposes.
+ */
+void fscache_end_cookie_access(struct fscache_cookie *cookie,
+			       enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	smp_mb__before_atomic();
+	n_accesses = atomic_dec_return(&cookie->n_accesses);
+	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+			     n_accesses, why);
+	if (n_accesses == 0 &&
+	    !test_bit(FSCACHE_COOKIE_NO_ACCESS_WAKE, &cookie->flags)) {
+		// PLACEHOLDER: Need to poke the state machine
+	}
+}
+EXPORT_SYMBOL(fscache_end_cookie_access);
+
+/*
+ * Pin the cache behind a cookie so that we can access it.
+ */
+static void __fscache_begin_cookie_access(struct fscache_cookie *cookie,
+					  enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	n_accesses = atomic_inc_return(&cookie->n_accesses);
+	smp_mb__after_atomic(); /* (Future) read state after is-caching.
+				 * Reread n_accesses after is-caching
+				 */
+	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+			     n_accesses, why);
+}
+
+/**
+ * fscache_begin_cookie_access - Pin a cache so data can be accessed
+ * @cookie: A data file cookie
+ * @why: An indication of the circumstances of the access for tracing
+ *
+ * Attempt to pin the cache to prevent it from going away whilst we're
+ * accessing data and returns true if successful.  This works as follows:
+ *
+ *  (1) If the cookie is not being cached (ie. FSCACHE_COOKIE_IS_CACHING is not
+ *      set), we return false to indicate access was not permitted.
+ *
+ *  (2) If the cookie is being cached, we increment its n_accesses count and
+ *      then recheck the IS_CACHING flag, ending the access if it got cleared.
+ *
+ *  (3) When we end the access, we decrement the cookie's n_accesses and wake
+ *      up the any waiters if it reaches 0.
+ *
+ *  (4) Whilst the cookie is actively being cached, its n_accesses is kept
+ *      artificially incremented to prevent wakeups from happening.
+ *
+ *  (5) When the cache is taken offline or if the cookie is culled, the flag is
+ *      cleared to prevent new accesses, the cookie's n_accesses is decremented
+ *      and we wait for it to become 0.
+ *
+ * The @why indicator are merely provided for tracing purposes.
+ */
+bool fscache_begin_cookie_access(struct fscache_cookie *cookie,
+				 enum fscache_access_trace why)
+{
+	if (!test_bit(FSCACHE_COOKIE_IS_CACHING, &cookie->flags))
+		return false;
+	__fscache_begin_cookie_access(cookie, why);
+	if (!test_bit(FSCACHE_COOKIE_IS_CACHING, &cookie->flags) ||
+	    !fscache_cache_is_live(cookie->volume->cache)) {
+		fscache_end_cookie_access(cookie, fscache_access_unlive);
+		return false;
+	}
+	return true;
+}
+
 static inline void wake_up_cookie_state(struct fscache_cookie *cookie)
 {
 	/* Use a barrier to ensure that waiters see the state variable
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 8727419870aa..712be6819297 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -59,6 +59,9 @@ extern struct kmem_cache *fscache_cookie_jar;
 extern const struct seq_operations fscache_cookies_seq_ops;
 
 extern void fscache_print_cookie(struct fscache_cookie *cookie, char prefix);
+extern bool fscache_begin_cookie_access(struct fscache_cookie *cookie,
+					enum fscache_access_trace why);
+
 static inline void fscache_see_cookie(struct fscache_cookie *cookie,
 				      enum fscache_cookie_trace where)
 {
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index 6a024c45eb0b..01d57433702c 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -23,6 +23,7 @@ MODULE_PARM_DESC(fscache_debug,
 
 EXPORT_TRACEPOINT_SYMBOL(fscache_access_cache);
 EXPORT_TRACEPOINT_SYMBOL(fscache_access_volume);
+EXPORT_TRACEPOINT_SYMBOL(fscache_access);
 
 struct workqueue_struct *fscache_wq;
 EXPORT_SYMBOL(fscache_wq);
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index fbbd8a2afe12..66624407ba84 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -61,6 +61,8 @@ extern struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
 						 enum fscache_cookie_trace where);
 extern void fscache_put_cookie(struct fscache_cookie *cookie,
 			       enum fscache_cookie_trace where);
+extern void fscache_end_cookie_access(struct fscache_cookie *cookie,
+				      enum fscache_access_trace why);
 extern void fscache_set_cookie_state(struct fscache_cookie *cookie,
 				     enum fscache_cookie_state state);
 
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 4f40cfa52469..b1a962adfd16 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -279,6 +279,35 @@ TRACE_EVENT(fscache_access_volume,
 		      __entry->n_accesses)
 	    );
 
+TRACE_EVENT(fscache_access,
+	    TP_PROTO(unsigned int cookie_debug_id,
+		     int ref,
+		     int n_accesses,
+		     enum fscache_access_trace why),
+
+	    TP_ARGS(cookie_debug_id, ref, n_accesses, why),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		cookie		)
+		    __field(int,			ref		)
+		    __field(int,			n_accesses	)
+		    __field(enum fscache_access_trace,	why		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->cookie	= cookie_debug_id;
+		    __entry->ref	= ref;
+		    __entry->n_accesses	= n_accesses;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("c=%08x %s r=%d a=%d",
+		      __entry->cookie,
+		      __print_symbolic(__entry->why, fscache_access_traces),
+		      __entry->ref,
+		      __entry->n_accesses)
+	    );
+
 TRACE_EVENT(fscache_acquire,
 	    TP_PROTO(struct fscache_cookie *cookie),
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
