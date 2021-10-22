Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3303F437D42
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:02:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzoY-0007t6-Ss; Fri, 22 Oct 2021 19:02:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzoX-0007sw-Ua
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yjTNSIxFRDL44jvQFECUW8mK4G1l0eMgy7+Wk2PPO0o=; b=ItZtM7mf/p7ZqTCHj+sgam7prn
 j4zSFx4P90PSz9oiAMhuSK7Gh3F0RKmWJrfvv7LqTLwUPuQlwUiSGw3HrVUK5abGxZKemCw5uESmJ
 q45EyDXZpCWb2V9sjewiuzmQcZPeYR7wFk1srRBUeH0PqMbI6L9WFFaN6BWGdMPuxGdU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yjTNSIxFRDL44jvQFECUW8mK4G1l0eMgy7+Wk2PPO0o=; b=jc39TcmB0CB7m1z+FBTzlHWbSf
 GfOHrCIZLUeopYQrzNFneFi8w15QD5l+ZCjqYGW+o8+nJgSBHLoMoBG5gKdRIkOPGr7WxXMoSgEXZ
 iA1SdhibE8RJu9xw5VEi40q/MD7R/byYLuws/tVtWvHq4WDIF66jl8zgXAYE075OFOTM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzoX-00CHI1-5u
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yjTNSIxFRDL44jvQFECUW8mK4G1l0eMgy7+Wk2PPO0o=;
 b=fEcA36Dq+IuKGFSmQO2B1hbW4SOkqDLK05/mo2pZJArfkv7+Uu8EvcM5uvUUwMzX+6jHa+
 rJGBzU9TzhNogn3CNBFWNLul9s59WRb1PJopD7W5fYqLZmQMB7lkbVaZAP+EJeOOIG4OS3
 YUyrwoehbqylonwgMEoZt1Cw8XE3oH0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-gniEatD7NMCFhKaeC4eI1w-1; Fri, 22 Oct 2021 15:02:39 -0400
X-MC-Unique: gniEatD7NMCFhKaeC4eI1w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFBF61006AA6;
 Fri, 22 Oct 2021 19:02:37 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4028060C13;
 Fri, 22 Oct 2021 19:02:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:02:31 +0100
Message-ID: <163492935136.1038219.11707612718347288119.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a pair of helper functions to manage access to a cookie, 
 pinning the cache object in place for the duration to prevent cache withdrawal
 from removing it: bool fscache_begin_cookie_access(struct fscache_cookie
 *cookie, enum fscache_access_trace why); void fscache_end_cookie_access(struct
 fscache_cookie *cookie, enum fscache_access_trace why); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzoX-00CHI1-5u
Subject: [V9fs-developer] [PATCH v2 14/53] fscache: Implement cookie-level
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a pair of helper functions to manage access to a cookie, pinning the
cache object in place for the duration to prevent cache withdrawal from
removing it:

	bool fscache_begin_cookie_access(struct fscache_cookie *cookie,
					 enum fscache_access_trace why);
	void fscache_end_cookie_access(struct fscache_cookie *cookie,
				       enum fscache_access_trace why);

The first is intended for internal use only, but the second will be used by
the cache backend also.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/cookie.c            |   60 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    3 ++
 fs/fscache/main.c              |    1 +
 include/linux/fscache-cache.h  |    2 +
 include/trace/events/fscache.h |   29 +++++++++++++++++++
 5 files changed, 95 insertions(+)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 87ee8b666765..9b6ddbc01825 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -57,6 +57,66 @@ static void fscache_free_cookie(struct fscache_cookie *cookie)
 	kmem_cache_free(fscache_cookie_jar, cookie);
 }
 
+static void __fscache_end_cookie_access(struct fscache_cookie *cookie)
+{
+	if (test_bit(FSCACHE_COOKIE_DO_RELINQUISH, &cookie->flags))
+		fscache_set_cookie_stage(cookie, FSCACHE_COOKIE_STAGE_RELINQUISHING);
+	else if (test_bit(FSCACHE_COOKIE_DO_WITHDRAW, &cookie->flags))
+		fscache_set_cookie_stage(cookie, FSCACHE_COOKIE_STAGE_WITHDRAWING);
+	// PLACEHOLDER: Schedule cookie cleanup
+}
+
+/*
+ * Mark the end of an access on a cookie.  This brings a deferred
+ * relinquishment or withdrawal stage into effect.
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
+	smp_mb__after_atomic(); /* (Future) read stage after is-caching.
+				 * Reread n_accesses after is-caching
+				 */
+	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+			     n_accesses, why);
+}
+
+/*
+ * Pin the cache behind a cookie so that we can access it.
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
 static inline void wake_up_cookie_stage(struct fscache_cookie *cookie)
 {
 	/* Use a barrier to ensure that waiters see the stage variable
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 18f9a408a4f4..5669ba4bc8a9 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -34,6 +34,9 @@ extern struct kmem_cache *fscache_cookie_jar;
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
index 7db4dda74951..a10f87421438 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -84,6 +84,8 @@ extern struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
 						 enum fscache_cookie_trace where);
 extern void fscache_put_cookie(struct fscache_cookie *cookie,
 			       enum fscache_cookie_trace where);
+extern void fscache_end_cookie_access(struct fscache_cookie *cookie,
+				      enum fscache_access_trace why);
 extern void fscache_set_cookie_stage(struct fscache_cookie *cookie,
 				     enum fscache_cookie_stage stage);
 
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 4b35fe9cd906..132381921be9 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -269,6 +269,35 @@ TRACE_EVENT(fscache_access_volume,
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
