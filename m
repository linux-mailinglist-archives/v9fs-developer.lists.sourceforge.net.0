Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C8047D9D9
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:17:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0Ar3-0000hL-TX; Wed, 22 Dec 2021 23:17:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0Ar3-0000hA-5B
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RmTpHVG4w1DDSJVwbUXUDVRNW8n5nBor+VQEYFULplo=; b=Vbq2vQHss6M3JkOnWYbLcPoSi2
 bTnVQ5cN0KjIRB94Nnq+ut5VIDn8psBP+h9P+f6m2e4GbXzuFindfb2ieCM3Bp4WxCUrJEemwc+WY
 cvZov8zy91mzxgPcAfQrSEMMkQkqjw2gZY7cU+Xd3apSiXt6KJhvCpBxxRtooSOyZuko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RmTpHVG4w1DDSJVwbUXUDVRNW8n5nBor+VQEYFULplo=; b=gF9jWP1KHeoTl834I9IT9nF4PR
 JcRdR1SQFhPSeT9L/8je88h65ywCLY+dEJHSMAWILdje/t7aW98qmSYbssf25VCSyjXpIsWHLHMT5
 I9K3kkmfrqfwyYxVhahq2QG5i5/i/hntIFgMe/mIfSY5R9De+WRGmlOzL6fYgqrUwfAI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Ar1-0006gX-Tv
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215018;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RmTpHVG4w1DDSJVwbUXUDVRNW8n5nBor+VQEYFULplo=;
 b=RfQguh7XKYYmUwgGOkyFAsOSiV174SxfyiM8pAdAdQH1GNYDvE8fT0DvWocXB/NwjZNp9V
 AtAeBwJo8xX3HmK5w7cpPOP+ieF21hXPqkp2Eiw8wF2V8VKzxSt7cmE/xEeSakJ7VDKETH
 H3hXuKqbUhVzFn6/8hQRmfVmSGiwqoM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-NwUgopGnNvytrQasUWrdNA-1; Wed, 22 Dec 2021 18:16:52 -0500
X-MC-Unique: NwUgopGnNvytrQasUWrdNA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3CFDE8042E1;
 Wed, 22 Dec 2021 23:16:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD95C798D1;
 Wed, 22 Dec 2021 23:16:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:16:39 +0000
Message-ID: <164021499995.640689.18286203753480287850.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a pair of functions to pin/unpin a cache that we're
 wanting
 to do a high-level access to (such as creating or removing a volume): bool
 fscache_begin_cache_access(struct fscache_cache *cache,
 enum fscache_access_trace why);
 void fscache_end_cache_access(struct fscache_cache *cache, enum
 fscache_access_trace why); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0Ar1-0006gX-Tv
Subject: [V9fs-developer] [PATCH v4 11/68] fscache: Implement cache-level
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

Add a pair of functions to pin/unpin a cache that we're wanting to do a
high-level access to (such as creating or removing a volume):

	bool fscache_begin_cache_access(struct fscache_cache *cache,
					enum fscache_access_trace why);
	void fscache_end_cache_access(struct fscache_cache *cache,
				      enum fscache_access_trace why);

The way the access gate works/will work is:

 (1) If the cache tests as not live (state is not FSCACHE_CACHE_IS_ACTIVE),
     then we return false to indicate access was not permitted.

 (2) If the cache tests as live, then we increment the n_accesses count and
     then recheck the liveness, ending the access if it ceased to be live.

 (3) When we end the access, we decrement n_accesses and wake up the any
     waiters if it reaches 0.

 (4) Whilst the cache is caching, n_accesses is kept artificially
     incremented to prevent wakeups from happening.

 (5) When the cache is taken offline, the state is changed to prevent new
     accesses, n_accesses is decremented and we wait for n_accesses to
     become 0.

Note that some of this is implemented in a later patch.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819593239.215744.7537428720603638088.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906893368.143852.14164004598465617981.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967093977.1823006.6967886507023056409.stgit@warthog.procyon.org.uk/ # v3
---

 fs/fscache/cache.c             |   62 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    2 +
 fs/fscache/main.c              |    2 +
 include/trace/events/fscache.h |   41 ++++++++++++++++++++++++++
 4 files changed, 107 insertions(+)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index 8db77bb9f8e2..e867cff53a70 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -216,6 +216,68 @@ void fscache_relinquish_cache(struct fscache_cache *cache)
 }
 EXPORT_SYMBOL(fscache_relinquish_cache);
 
+/**
+ * fscache_begin_cache_access - Pin a cache so it can be accessed
+ * @cache: The cache-level cookie
+ * @why: An indication of the circumstances of the access for tracing
+ *
+ * Attempt to pin the cache to prevent it from going away whilst we're
+ * accessing it and returns true if successful.  This works as follows:
+ *
+ *  (1) If the cache tests as not live (state is not FSCACHE_CACHE_IS_ACTIVE),
+ *      then we return false to indicate access was not permitted.
+ *
+ *  (2) If the cache tests as live, then we increment the n_accesses count and
+ *      then recheck the liveness, ending the access if it ceased to be live.
+ *
+ *  (3) When we end the access, we decrement n_accesses and wake up the any
+ *      waiters if it reaches 0.
+ *
+ *  (4) Whilst the cache is caching, n_accesses is kept artificially
+ *      incremented to prevent wakeups from happening.
+ *
+ *  (5) When the cache is taken offline, the state is changed to prevent new
+ *      accesses, n_accesses is decremented and we wait for n_accesses to
+ *      become 0.
+ */
+bool fscache_begin_cache_access(struct fscache_cache *cache, enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	if (!fscache_cache_is_live(cache))
+		return false;
+
+	n_accesses = atomic_inc_return(&cache->n_accesses);
+	smp_mb__after_atomic(); /* Reread live flag after n_accesses */
+	trace_fscache_access_cache(cache->debug_id, refcount_read(&cache->ref),
+				   n_accesses, why);
+	if (!fscache_cache_is_live(cache)) {
+		fscache_end_cache_access(cache, fscache_access_unlive);
+		return false;
+	}
+	return true;
+}
+
+/**
+ * fscache_end_cache_access - Unpin a cache at the end of an access.
+ * @cache: The cache-level cookie
+ * @why: An indication of the circumstances of the access for tracing
+ *
+ * Unpin a cache after we've accessed it.  The @why indicator is merely
+ * provided for tracing purposes.
+ */
+void fscache_end_cache_access(struct fscache_cache *cache, enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	smp_mb__before_atomic();
+	n_accesses = atomic_dec_return(&cache->n_accesses);
+	trace_fscache_access_cache(cache->debug_id, refcount_read(&cache->ref),
+				   n_accesses, why);
+	if (n_accesses == 0)
+		wake_up_var(&cache->n_accesses);
+}
+
 #ifdef CONFIG_PROC_FS
 static const char fscache_cache_states[NR__FSCACHE_CACHE_STATE] = "-PAEW";
 
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 71c897757d44..be29816b37ef 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -23,6 +23,8 @@
 #ifdef CONFIG_PROC_FS
 extern const struct seq_operations fscache_caches_seq_ops;
 #endif
+bool fscache_begin_cache_access(struct fscache_cache *cache, enum fscache_access_trace why);
+void fscache_end_cache_access(struct fscache_cache *cache, enum fscache_access_trace why);
 struct fscache_cache *fscache_lookup_cache(const char *name, bool is_cache);
 void fscache_put_cache(struct fscache_cache *cache, enum fscache_cache_trace where);
 
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index ae493e9ca1c9..876f4bee5840 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -21,6 +21,8 @@ module_param_named(debug, fscache_debug, uint,
 MODULE_PARM_DESC(fscache_debug,
 		 "FS-Cache debugging mask");
 
+EXPORT_TRACEPOINT_SYMBOL(fscache_access_cache);
+
 struct workqueue_struct *fscache_wq;
 EXPORT_SYMBOL(fscache_wq);
 
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 9286e1c4b2ac..734966bc49e1 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -62,6 +62,12 @@ enum fscache_cookie_trace {
 	fscache_cookie_see_work,
 };
 
+enum fscache_access_trace {
+	fscache_access_cache_pin,
+	fscache_access_cache_unpin,
+	fscache_access_unlive,
+};
+
 #endif
 
 /*
@@ -107,6 +113,11 @@ enum fscache_cookie_trace {
 	EM(fscache_cookie_see_withdraw,		"-   x-wth")		\
 	E_(fscache_cookie_see_work,		"-   work ")
 
+#define fscache_access_traces		\
+	EM(fscache_access_cache_pin,		"PIN   cache  ")	\
+	EM(fscache_access_cache_unpin,		"UNPIN cache  ")	\
+	E_(fscache_access_unlive,		"END   unlive ")
+
 /*
  * Export enum symbols via userspace.
  */
@@ -118,6 +129,7 @@ enum fscache_cookie_trace {
 fscache_cache_traces;
 fscache_volume_traces;
 fscache_cookie_traces;
+fscache_access_traces;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -204,6 +216,35 @@ TRACE_EVENT(fscache_cookie,
 		      __entry->ref)
 	    );
 
+TRACE_EVENT(fscache_access_cache,
+	    TP_PROTO(unsigned int cache_debug_id,
+		     int ref,
+		     int n_accesses,
+		     enum fscache_access_trace why),
+
+	    TP_ARGS(cache_debug_id, ref, n_accesses, why),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		cache		)
+		    __field(int,			ref		)
+		    __field(int,			n_accesses	)
+		    __field(enum fscache_access_trace,	why		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->cache	= cache_debug_id;
+		    __entry->ref	= ref;
+		    __entry->n_accesses	= n_accesses;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("C=%08x %s r=%d a=%d",
+		      __entry->cache,
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
