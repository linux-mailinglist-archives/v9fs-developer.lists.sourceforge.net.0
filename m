Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A8F46182A
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:26:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhbk-0005Q0-Oi; Mon, 29 Nov 2021 14:26:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhbe-0005Pi-PS
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9XjuMt78gXUZmOcKgW3fQLemJXdAKoOgxZQZDYQsxWM=; b=H2x6ZTSyzrD9UqM6sNhCw2ybuG
 OJ+A1vl1zpTgpUDTNjCcys0UxiqBKWzKSUmiud9JkrZE95jvAYycWWzwd2WxnMy9bmeDCIyxFwS49
 M+kJbbdz0/mMF3HxlAfshQte1IVW94llZ64LbwwfbiImRskrEJG9i+7kpmYJuW9hzpA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9XjuMt78gXUZmOcKgW3fQLemJXdAKoOgxZQZDYQsxWM=; b=YAPwOsvOKYJq/rAtcy4VlzbUt3
 oaOOv5g2t7hz17X+S8zziqczrG53qgzHQkruzf/LSaLmxQdtwsp2yeyDC2Ux3AdteUtxPchKpQGi+
 83Gxlwqbq/Ppdk/SIRj54IfN62ep6UxObunPmtUxq8lvW9fbGhTgpUUyQPihZxOrHorM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhbc-00EDS3-Nd
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638195962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9XjuMt78gXUZmOcKgW3fQLemJXdAKoOgxZQZDYQsxWM=;
 b=RZGzsRlQpu4uunID7KYdozzX67sTppy9C/xxQ5vmFFOnwcp/ZGwPpX6jsN2vY5yiv9PAqZ
 1ocxIQfUJdcTaspYFuqm0oBvEMaRrmxoisQZg4G3ezcKK6IXVWGb0xJiav69YoLeO4dpz0
 CGH4TeZh9+XKIy/EV35hGmQ0Qzl1UaE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-SAOgnYhwP1iqCyj7uZeaEw-1; Mon, 29 Nov 2021 09:25:57 -0500
X-MC-Unique: SAOgnYhwP1iqCyj7uZeaEw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02D371018725;
 Mon, 29 Nov 2021 14:25:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA18757CD2;
 Mon, 29 Nov 2021 14:25:51 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:25:50 +0000
Message-ID: <163819595085.215744.1706073049250505427.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.1 (-)
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
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhbc-00EDS3-Nd
Subject: [V9fs-developer] [PATCH 13/64] fscache: Implement cookie-level
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
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

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/cookie.c            |  104 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    3 +
 fs/fscache/main.c              |    1 
 include/linux/fscache-cache.h  |    2 +
 include/trace/events/fscache.h |   29 +++++++++++
 5 files changed, 139 insertions(+)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index c790f08e2f52..3dd150182d97 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -57,6 +57,110 @@ static void fscache_free_cookie(struct fscache_cookie *cookie)
 	kmem_cache_free(fscache_cookie_jar, cookie);
 }
 
+/*
+ * Initialise the access gate on a cookie by keeping its n_accesses counter
+ * raised by 1.  This will prevent end-access from transitioning it to 0 until
+ * we decrement when we withdraw caching services from the cookie.
+ */
+static void fscache_init_access_gate(struct fscache_cookie *cookie)
+{
+	int n_accesses;
+
+	n_accesses = atomic_inc_return(&cookie->n_accesses);
+	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+			     n_accesses, fscache_access_cache_pin);
+	set_bit(FSCACHE_COOKIE_NACC_ELEVATED, &cookie->flags);
+}
+
+static void __fscache_end_cookie_access(struct fscache_cookie *cookie)
+{
+	if (test_bit(FSCACHE_COOKIE_DO_RELINQUISH, &cookie->flags))
+		fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_RELINQUISHING);
+	else if (test_bit(FSCACHE_COOKIE_DO_WITHDRAW, &cookie->flags))
+		fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_WITHDRAWING);
+	// PLACEHOLDER: Schedule cookie cleanup
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
+	if (n_accesses == 0)
+		__fscache_end_cookie_access(cookie);
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
index 104aad12021b..33ef0b23cd6a 100644
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
