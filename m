Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53792461848
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:27:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhcr-0002bJ-QW; Mon, 29 Nov 2021 14:27:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhcq-0002b8-OV
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cqUpnC5i4vAq69Z4GOp2vv8AzLQyANu8LoxWacRiCQw=; b=eM04NonaZY5zDAJ1sEWDUrUMJ0
 UsBF/Wk8ZMowMhPIjnog/iqOjTOTVCQEGk13iQGIcGudLWOHaFj47jP/3W2fLprsYBBqX47SPzj87
 U3y4OHvzhmb/FUWpUQjj30U3q+8dlKeh4I/eoPCkdn1hVPt3IdP2ygmqJMIZPlKKURUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cqUpnC5i4vAq69Z4GOp2vv8AzLQyANu8LoxWacRiCQw=; b=WdlmeQt89i+Di+DHGCT4iHlJ4w
 e2Q4DjaYS2zOFDS74j/RvO0UjyeOIXYiHMmKOSUNiQ88P+l7iF3oxqXZ3iDtEWO5IRa4mxx5AReDt
 mBK96Q18B8BMggNEaIuK3ujsiNhD2PC+fXiSTGKzmWIoY+fplFgJPW2QzrkDkZnn1naE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhcp-00008N-AI
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cqUpnC5i4vAq69Z4GOp2vv8AzLQyANu8LoxWacRiCQw=;
 b=BcndYZwzLwyqMo8APe7dn7uqXNj49V70NLZ7yWNavE8TYUBuMl0zaWFNt+tXmkib5X7LD1
 q3P2AnsWpL1GlL9yGyeecsAWPYEWJ64tnmbarn5AynpsnIjfAkIs4u2navJ8F+eKe9/ynw
 w+2fjvmB+IaSOGhE8Blf7lpXFEbM3Go=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-81-p5EOQ2KwPYSpahEaHArPZA-1; Mon, 29 Nov 2021 09:27:14 -0500
X-MC-Unique: p5EOQ2KwPYSpahEaHArPZA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C034610168C7;
 Mon, 29 Nov 2021 14:27:11 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 23F925D9C0;
 Mon, 29 Nov 2021 14:27:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:27:02 +0000
Message-ID: <163819602231.215744.11206598147269491575.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a function to invalidate the cache behind a cookie: void
 fscache_invalidate(struct fscache_cookie *cookie, const void *aux_data, loff_t
 size, unsigned int flags) This causes any cached data for the specified cookie
 to be discarded. If the cookie is marked as being in use, a new cache object
 will be created if possible and future I/O will use that instead. In-f [...]
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
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
X-Headers-End: 1mrhcp-00008N-AI
Subject: [V9fs-developer] [PATCH 19/64] fscache: Implement cookie
 invalidation
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

Add a function to invalidate the cache behind a cookie:

	void fscache_invalidate(struct fscache_cookie *cookie,
				const void *aux_data,
				loff_t size,
				unsigned int flags)

This causes any cached data for the specified cookie to be discarded.  If
the cookie is marked as being in use, a new cache object will be created if
possible and future I/O will use that instead.  In-flight I/O should be
abandoned (writes) or reconsidered (reads).  Each time it is called
cookie->inval_counter is incremented and this can be used to detect
invalidation at the end of an I/O operation.

The coherency data attached to the cookie can be updated and the cookie
size should be reset.  One flag is available, FSCACHE_INVAL_DIO_WRITE,
which should be used to indicate invalidation due to a DIO write on a
file.  This will temporarily disable caching for this cookie.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/cookie.c            |   87 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    2 +
 fs/fscache/stats.c             |    5 ++
 include/linux/fscache-cache.h  |    4 ++
 include/linux/fscache.h        |   31 ++++++++++++++
 include/linux/netfs.h          |    1 
 include/trace/events/fscache.h |   25 +++++++++++
 7 files changed, 154 insertions(+), 1 deletion(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index f056f834639b..7919d7f5747b 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -19,6 +19,7 @@ static void fscache_cookie_lru_timed_out(struct timer_list *timer);
 static void fscache_cookie_lru_worker(struct work_struct *work);
 static void fscache_cookie_worker(struct work_struct *work);
 static void fscache_unhash_cookie(struct fscache_cookie *cookie);
+static void fscache_perform_invalidation(struct fscache_cookie *cookie);
 
 #define fscache_cookie_hash_shift 15
 static struct hlist_bl_head fscache_cookie_hash[1 << fscache_cookie_hash_shift];
@@ -28,7 +29,7 @@ static LIST_HEAD(fscache_cookie_lru);
 static DEFINE_SPINLOCK(fscache_cookie_lru_lock);
 DEFINE_TIMER(fscache_cookie_lru_timer, fscache_cookie_lru_timed_out);
 static DECLARE_WORK(fscache_cookie_lru_work, fscache_cookie_lru_worker);
-static const char fscache_cookie_states[FSCACHE_COOKIE_STATE__NR] = "-LCAFUWRD";
+static const char fscache_cookie_states[FSCACHE_COOKIE_STATE__NR] = "-LCAIFUWRD";
 unsigned int fscache_lru_cookie_timeout = 10 * HZ;
 
 void fscache_print_cookie(struct fscache_cookie *cookie, char prefix)
@@ -228,6 +229,19 @@ void fscache_cookie_lookup_negative(struct fscache_cookie *cookie)
 }
 EXPORT_SYMBOL(fscache_cookie_lookup_negative);
 
+/**
+ * fscache_resume_after_invalidation - Allow I/O to resume after invalidation
+ * @cookie: The cookie that was invalidated
+ *
+ * Tell fscache that invalidation is sufficiently complete that I/O can be
+ * allowed again.
+ */
+void fscache_resume_after_invalidation(struct fscache_cookie *cookie)
+{
+	fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_ACTIVE);
+}
+EXPORT_SYMBOL(fscache_resume_after_invalidation);
+
 /**
  * fscache_caching_failed - Report that a failure stopped caching on a cookie
  * @cookie: The cookie that was affected
@@ -558,6 +572,7 @@ void __fscache_use_cookie(struct fscache_cookie *cookie, bool will_modify)
 			set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags);
 		break;
 	case FSCACHE_COOKIE_STATE_ACTIVE:
+	case FSCACHE_COOKIE_STATE_INVALIDATING:
 		if (will_modify &&
 		    !test_and_set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags)) {
 			set_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
@@ -663,6 +678,11 @@ static void fscache_cookie_state_machine(struct fscache_cookie *cookie)
 		fscache_perform_lookup(cookie);
 		goto again;
 
+	case FSCACHE_COOKIE_STATE_INVALIDATING:
+		spin_unlock(&cookie->lock);
+		fscache_perform_invalidation(cookie);
+		goto again;
+
 	case FSCACHE_COOKIE_STATE_ACTIVE:
 		if (test_and_clear_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags)) {
 			spin_unlock(&cookie->lock);
@@ -939,6 +959,71 @@ struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
 }
 EXPORT_SYMBOL(fscache_get_cookie);
 
+/*
+ * Ask the cache to effect invalidation of a cookie.
+ */
+static void fscache_perform_invalidation(struct fscache_cookie *cookie)
+{
+	if (!cookie->volume->cache->ops->invalidate_cookie(cookie))
+		fscache_caching_failed(cookie);
+	fscache_end_cookie_access(cookie, fscache_access_invalidate_cookie_end);
+}
+
+/*
+ * Invalidate an object.
+ */
+void __fscache_invalidate(struct fscache_cookie *cookie,
+			  const void *aux_data, loff_t new_size,
+			  unsigned int flags)
+{
+	bool is_caching;
+
+	_enter("c=%x", cookie->debug_id);
+
+	fscache_stat(&fscache_n_invalidates);
+
+	if (WARN(test_bit(FSCACHE_COOKIE_RELINQUISHED, &cookie->flags),
+		 "Trying to invalidate relinquished cookie\n"))
+		return;
+
+	if ((flags & FSCACHE_INVAL_DIO_WRITE) &&
+	    test_and_set_bit(FSCACHE_COOKIE_DISABLED, &cookie->flags))
+		return;
+
+	spin_lock(&cookie->lock);
+	set_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
+	fscache_update_aux(cookie, aux_data, &new_size);
+	cookie->inval_counter++;
+	trace_fscache_invalidate(cookie, new_size);
+
+	switch (cookie->state) {
+	case FSCACHE_COOKIE_STATE_INVALIDATING: /* is_still_valid will catch it */
+	default:
+		spin_unlock(&cookie->lock);
+		_leave(" [no %u]", cookie->state);
+		return;
+
+	case FSCACHE_COOKIE_STATE_LOOKING_UP:
+	case FSCACHE_COOKIE_STATE_CREATING:
+		spin_unlock(&cookie->lock);
+		_leave(" [look %x]", cookie->inval_counter);
+		return;
+
+	case FSCACHE_COOKIE_STATE_ACTIVE:
+		__fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_INVALIDATING);
+		is_caching = fscache_begin_cookie_access(
+			cookie, fscache_access_invalidate_cookie);
+		spin_unlock(&cookie->lock);
+		wake_up_cookie_state(cookie);
+
+		if (is_caching)
+			fscache_queue_cookie(cookie, fscache_cookie_get_inval_work);
+		_leave(" [inv]");
+		return;
+	}
+}
+EXPORT_SYMBOL(__fscache_invalidate);
+
 /*
  * Generate a list of extant cookies in /proc/fs/fscache/cookies
  */
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 9af8de906bf0..e4f3a1a993f6 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -105,6 +105,8 @@ extern atomic_t fscache_n_acquires;
 extern atomic_t fscache_n_acquires_ok;
 extern atomic_t fscache_n_acquires_oom;
 
+extern atomic_t fscache_n_invalidates;
+
 extern atomic_t fscache_n_relinquishes;
 extern atomic_t fscache_n_relinquishes_retire;
 extern atomic_t fscache_n_relinquishes_dropped;
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 5aa4bd9fe207..cdbb672a274f 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -26,6 +26,8 @@ atomic_t fscache_n_acquires;
 atomic_t fscache_n_acquires_ok;
 atomic_t fscache_n_acquires_oom;
 
+atomic_t fscache_n_invalidates;
+
 atomic_t fscache_n_updates;
 EXPORT_SYMBOL(fscache_n_updates);
 
@@ -59,6 +61,9 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   timer_pending(&fscache_cookie_lru_timer) ?
 		   fscache_cookie_lru_timer.expires - jiffies : 0);
 
+	seq_printf(m, "Invals : n=%u\n",
+		   atomic_read(&fscache_n_invalidates));
+
 	seq_printf(m, "Updates: n=%u\n",
 		   atomic_read(&fscache_n_updates));
 
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index ae6a75976450..1ad56bfd9d72 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -64,6 +64,9 @@ struct fscache_cache_ops {
 	/* Withdraw an object without any cookie access counts held */
 	void (*withdraw_cookie)(struct fscache_cookie *cookie);
 
+	/* Invalidate an object */
+	bool (*invalidate_cookie)(struct fscache_cookie *cookie);
+
 	/* Prepare to write to a live cache object */
 	void (*prepare_to_write)(struct fscache_cookie *cookie);
 };
@@ -96,6 +99,7 @@ extern void fscache_put_cookie(struct fscache_cookie *cookie,
 extern void fscache_end_cookie_access(struct fscache_cookie *cookie,
 				      enum fscache_access_trace why);
 extern void fscache_cookie_lookup_negative(struct fscache_cookie *cookie);
+extern void fscache_resume_after_invalidation(struct fscache_cookie *cookie);
 extern void fscache_caching_failed(struct fscache_cookie *cookie);
 
 /**
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index c5b7eeb76835..cfbace3bdc88 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -39,6 +39,8 @@ struct fscache_cookie;
 #define FSCACHE_ADV_WRITE_CACHE		0x00 /* Do cache if written to locally */
 #define FSCACHE_ADV_WRITE_NOCACHE	0x02 /* Don't cache if written to locally */
 
+#define FSCACHE_INVAL_DIO_WRITE		0x01 /* Invalidate due to DIO write */
+
 /*
  * Data object state.
  */
@@ -47,6 +49,7 @@ enum fscache_cookie_state {
 	FSCACHE_COOKIE_STATE_LOOKING_UP,	/* The cache object is being looked up */
 	FSCACHE_COOKIE_STATE_CREATING,		/* The cache object is being created */
 	FSCACHE_COOKIE_STATE_ACTIVE,		/* The cache is active, readable and writable */
+	FSCACHE_COOKIE_STATE_INVALIDATING,	/* The cache is being invalidated */
 	FSCACHE_COOKIE_STATE_FAILED,		/* The cache failed, withdraw to clear */
 	FSCACHE_COOKIE_STATE_LRU_DISCARDING,	/* The cookie is being discarded by the LRU */
 	FSCACHE_COOKIE_STATE_WITHDRAWING,	/* The cookie is being withdrawn */
@@ -152,6 +155,7 @@ extern struct fscache_cookie *__fscache_acquire_cookie(
 extern void __fscache_use_cookie(struct fscache_cookie *, bool);
 extern void __fscache_unuse_cookie(struct fscache_cookie *, const void *, const loff_t *);
 extern void __fscache_relinquish_cookie(struct fscache_cookie *, bool);
+extern void __fscache_invalidate(struct fscache_cookie *, const void *, loff_t, unsigned int);
 
 /**
  * fscache_acquire_volume - Register a volume as desiring caching services
@@ -319,4 +323,31 @@ void __fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data
 	set_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
 }
 
+/**
+ * fscache_invalidate - Notify cache that an object needs invalidation
+ * @cookie: The cookie representing the cache object
+ * @aux_data: The updated auxiliary data for the cookie (may be NULL)
+ * @size: The revised size of the object.
+ * @flags: Invalidation flags (FSCACHE_INVAL_*)
+ *
+ * Notify the cache that an object is needs to be invalidated and that it
+ * should abort any retrievals or stores it is doing on the cache.  This
+ * increments inval_counter on the cookie which can be used by the caller to
+ * reconsider I/O requests as they complete.
+ *
+ * If @flags has FSCACHE_INVAL_DIO_WRITE set, this indicates that this is due
+ * to a direct I/O write and will cause caching to be disabled on this cookie
+ * until it is completely unused.
+ *
+ * See Documentation/filesystems/caching/netfs-api.rst for a complete
+ * description.
+ */
+static inline
+void fscache_invalidate(struct fscache_cookie *cookie,
+			const void *aux_data, loff_t size, unsigned int flags)
+{
+	if (fscache_cookie_enabled(cookie))
+		__fscache_invalidate(cookie, aux_data, size, flags);
+}
+
 #endif /* _LINUX_FSCACHE_H */
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 1ea22fc48818..5a46fde65759 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -124,6 +124,7 @@ struct netfs_cache_resources {
 	void				*cache_priv;
 	void				*cache_priv2;
 	unsigned int			debug_id;	/* Cookie debug ID */
+	unsigned int			inval_counter;	/* object->inval_counter at begin_op */
 };
 
 /*
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 17654fa657a6..5f88479fb06a 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -51,6 +51,7 @@ enum fscache_cookie_trace {
 	fscache_cookie_discard,
 	fscache_cookie_get_end_access,
 	fscache_cookie_get_hash_collision,
+	fscache_cookie_get_inval_work,
 	fscache_cookie_get_lru,
 	fscache_cookie_get_use_work,
 	fscache_cookie_new_acquire,
@@ -73,6 +74,8 @@ enum fscache_access_trace {
 	fscache_access_acquire_volume_end,
 	fscache_access_cache_pin,
 	fscache_access_cache_unpin,
+	fscache_access_invalidate_cookie,
+	fscache_access_invalidate_cookie_end,
 	fscache_access_lookup_cookie,
 	fscache_access_lookup_cookie_end,
 	fscache_access_lookup_cookie_end_failed,
@@ -116,6 +119,7 @@ enum fscache_access_trace {
 	EM(fscache_cookie_discard,		"DISCARD  ")		\
 	EM(fscache_cookie_get_hash_collision,	"GET hcoll")		\
 	EM(fscache_cookie_get_end_access,	"GQ  endac")		\
+	EM(fscache_cookie_get_inval_work,	"GQ  inval")		\
 	EM(fscache_cookie_get_lru,		"GET lru  ")		\
 	EM(fscache_cookie_get_use_work,		"GQ  use  ")		\
 	EM(fscache_cookie_new_acquire,		"NEW acq  ")		\
@@ -137,6 +141,8 @@ enum fscache_access_trace {
 	EM(fscache_access_acquire_volume_end,	"END   acq_vol")	\
 	EM(fscache_access_cache_pin,		"PIN   cache  ")	\
 	EM(fscache_access_cache_unpin,		"UNPIN cache  ")	\
+	EM(fscache_access_invalidate_cookie,	"BEGIN inval  ")	\
+	EM(fscache_access_invalidate_cookie_end,"END   inval  ")	\
 	EM(fscache_access_lookup_cookie,	"BEGIN lookup ")	\
 	EM(fscache_access_lookup_cookie_end,	"END   lookup ")	\
 	EM(fscache_access_lookup_cookie_end_failed,"END   lookupf")	\
@@ -386,6 +392,25 @@ TRACE_EVENT(fscache_relinquish,
 		      __entry->n_active, __entry->flags, __entry->retire)
 	    );
 
+TRACE_EVENT(fscache_invalidate,
+	    TP_PROTO(struct fscache_cookie *cookie, loff_t new_size),
+
+	    TP_ARGS(cookie, new_size),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		cookie		)
+		    __field(loff_t,			new_size	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->cookie	= cookie->debug_id;
+		    __entry->new_size	= new_size;
+			   ),
+
+	    TP_printk("c=%08x sz=%llx",
+		      __entry->cookie, __entry->new_size)
+	    );
+
 #endif /* _TRACE_FSCACHE_H */
 
 /* This part must be outside protection */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
