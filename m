Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F15447D9E5
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:17:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0ArH-00055V-T0; Wed, 22 Dec 2021 23:17:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0ArF-00055O-Qo
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:17:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ROUKDoITxu+2ETxvzt25hXmhtJ3R05UryHKl5XiJ3sI=; b=PBHTKtuj9jvzTpefrxPlDQo4+x
 uAoD1hrrL3u69mePRqYGrFzMDrdgfMAOJCbsgJtfcyQBs3gsUFwsVhjxEMYp77bCAqcD3+nvpVo5O
 gFTBhRVOLG/QRAN0KagWbZuAvDL1sezTDFVwp+RJnPs3OgazJ+kVKvQ41wiCkd+xFH6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ROUKDoITxu+2ETxvzt25hXmhtJ3R05UryHKl5XiJ3sI=; b=iLqPWg/lYJPIkXBKzu/w7B1eYE
 +O+8orFA8ncC/fR6YFt6v1Z9oXqIyZzf4Uwv9GA0TT9ReCrsM0spqxRT7GU28Z6qA575ENBQtpkI0
 Ed/Sa195+//+WA4AQzatENKe8UoDqxgPdRUyms+8mIyT6D+iG9yzSL4whnMha8sRudDU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0ArE-0006hI-Tq
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:17:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ROUKDoITxu+2ETxvzt25hXmhtJ3R05UryHKl5XiJ3sI=;
 b=JN7bz1/fXQC4y3YQks4KHG3F2WKooWwA0V6M9hz0Nq6rHmpB+CdaExe0l8X6HX0/Lq1HZI
 qRBhMRYN4n+KYuWu9lfvW+KBAU/rfpjkkE1oy81BHotlaPfBXn3vn9gL4yehnu6SDAVYBW
 bMn45xiEA1uqRLNrEu9NYwlt8f/5THA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-L1K_vZMBOKGnFMT1fw42zw-1; Wed, 22 Dec 2021 18:17:07 -0500
X-MC-Unique: L1K_vZMBOKGnFMT1fw42zw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6412A801ADB;
 Wed, 22 Dec 2021 23:17:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59D0584765;
 Wed, 22 Dec 2021 23:16:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:16:55 +0000
Message-ID: <164021501546.640689.9631510472149608443.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview:  Add a pair of helper functions to manage access to a volume, 
 pinning the volume in place for the duration to prevent cache withdrawal
 from removing it: bool fscache_begin_volume_access(struct fscache_volume
 *volume, enum fscache_access_trace why);
 void fscache_end_volume_access(struct fscache_volume
 *volume, enum fscache_access_trace why); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0ArE-0006hI-Tq
Subject: [V9fs-developer] [PATCH v4 12/68] fscache: Implement volume-level
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

Add a pair of helper functions to manage access to a volume, pinning the
volume in place for the duration to prevent cache withdrawal from removing
it:

	bool fscache_begin_volume_access(struct fscache_volume *volume,
					 enum fscache_access_trace why);
	void fscache_end_volume_access(struct fscache_volume *volume,
				       enum fscache_access_trace why);

The way the access gate on the volume works/will work is:

  (1) If the cache tests as not live (state is not FSCACHE_CACHE_IS_ACTIVE),
      then we return false to indicate access was not permitted.

  (2) If the cache tests as live, then we increment the volume's n_accesses
      count and then recheck the cache liveness, ending the access if it
      ceased to be live.

  (3) When we end the access, we decrement the volume's n_accesses and wake
      up the any waiters if it reaches 0.

  (4) Whilst the cache is caching, the volume's n_accesses is kept
      artificially incremented to prevent wakeups from happening.

  (5) When the cache is taken offline, the state is changed to prevent new
      accesses, the volume's n_accesses is decremented and we wait for it to
      become 0.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819594158.215744.8285859817391683254.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906894315.143852.5454793807544710479.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967095028.1823006.9173132503876627466.stgit@warthog.procyon.org.uk/ # v3
---

 fs/fscache/internal.h          |    3 +
 fs/fscache/main.c              |    1 
 fs/fscache/volume.c            |   84 ++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache-cache.h  |    4 ++
 include/trace/events/fscache.h |   34 ++++++++++++++++
 5 files changed, 126 insertions(+)

diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index be29816b37ef..91a4ea08ec0b 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -130,6 +130,9 @@ struct fscache_volume *fscache_get_volume(struct fscache_volume *volume,
 					  enum fscache_volume_trace where);
 void fscache_put_volume(struct fscache_volume *volume,
 			enum fscache_volume_trace where);
+bool fscache_begin_volume_access(struct fscache_volume *volume,
+				 struct fscache_cookie *cookie,
+				 enum fscache_access_trace why);
 void fscache_create_volume(struct fscache_volume *volume, bool wait);
 
 
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index 876f4bee5840..6cab5d99ba4c 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -22,6 +22,7 @@ MODULE_PARM_DESC(fscache_debug,
 		 "FS-Cache debugging mask");
 
 EXPORT_TRACEPOINT_SYMBOL(fscache_access_cache);
+EXPORT_TRACEPOINT_SYMBOL(fscache_access_volume);
 
 struct workqueue_struct *fscache_wq;
 EXPORT_SYMBOL(fscache_wq);
diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index 630894fefd02..20497f0f10bb 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -33,6 +33,90 @@ static void fscache_see_volume(struct fscache_volume *volume,
 	trace_fscache_volume(volume->debug_id, ref, where);
 }
 
+/*
+ * Pin the cache behind a volume so that we can access it.
+ */
+static void __fscache_begin_volume_access(struct fscache_volume *volume,
+					  struct fscache_cookie *cookie,
+					  enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	n_accesses = atomic_inc_return(&volume->n_accesses);
+	smp_mb__after_atomic();
+	trace_fscache_access_volume(volume->debug_id, cookie ? cookie->debug_id : 0,
+				    refcount_read(&volume->ref),
+				    n_accesses, why);
+}
+
+/**
+ * fscache_begin_volume_access - Pin a cache so a volume can be accessed
+ * @volume: The volume cookie
+ * @cookie: A datafile cookie for a tracing reference (or NULL)
+ * @why: An indication of the circumstances of the access for tracing
+ *
+ * Attempt to pin the cache to prevent it from going away whilst we're
+ * accessing a volume and returns true if successful.  This works as follows:
+ *
+ *  (1) If the cache tests as not live (state is not FSCACHE_CACHE_IS_ACTIVE),
+ *      then we return false to indicate access was not permitted.
+ *
+ *  (2) If the cache tests as live, then we increment the volume's n_accesses
+ *      count and then recheck the cache liveness, ending the access if it
+ *      ceased to be live.
+ *
+ *  (3) When we end the access, we decrement the volume's n_accesses and wake
+ *      up the any waiters if it reaches 0.
+ *
+ *  (4) Whilst the cache is caching, the volume's n_accesses is kept
+ *      artificially incremented to prevent wakeups from happening.
+ *
+ *  (5) When the cache is taken offline, the state is changed to prevent new
+ *      accesses, the volume's n_accesses is decremented and we wait for it to
+ *      become 0.
+ *
+ * The datafile @cookie and the @why indicator are merely provided for tracing
+ * purposes.
+ */
+bool fscache_begin_volume_access(struct fscache_volume *volume,
+				 struct fscache_cookie *cookie,
+				 enum fscache_access_trace why)
+{
+	if (!fscache_cache_is_live(volume->cache))
+		return false;
+	__fscache_begin_volume_access(volume, cookie, why);
+	if (!fscache_cache_is_live(volume->cache)) {
+		fscache_end_volume_access(volume, cookie, fscache_access_unlive);
+		return false;
+	}
+	return true;
+}
+
+/**
+ * fscache_end_volume_access - Unpin a cache at the end of an access.
+ * @volume: The volume cookie
+ * @cookie: A datafile cookie for a tracing reference (or NULL)
+ * @why: An indication of the circumstances of the access for tracing
+ *
+ * Unpin a cache volume after we've accessed it.  The datafile @cookie and the
+ * @why indicator are merely provided for tracing purposes.
+ */
+void fscache_end_volume_access(struct fscache_volume *volume,
+			       struct fscache_cookie *cookie,
+			       enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	smp_mb__before_atomic();
+	n_accesses = atomic_dec_return(&volume->n_accesses);
+	trace_fscache_access_volume(volume->debug_id, cookie ? cookie->debug_id : 0,
+				    refcount_read(&volume->ref),
+				    n_accesses, why);
+	if (n_accesses == 0)
+		wake_up_var(&volume->n_accesses);
+}
+EXPORT_SYMBOL(fscache_end_volume_access);
+
 static bool fscache_volume_same(const struct fscache_volume *a,
 				const struct fscache_volume *b)
 {
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index c4355b888c91..fbbd8a2afe12 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -53,6 +53,10 @@ extern struct rw_semaphore fscache_addremove_sem;
 extern struct fscache_cache *fscache_acquire_cache(const char *name);
 extern void fscache_relinquish_cache(struct fscache_cache *cache);
 
+extern void fscache_end_volume_access(struct fscache_volume *volume,
+				      struct fscache_cookie *cookie,
+				      enum fscache_access_trace why);
+
 extern struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
 						 enum fscache_cookie_trace where);
 extern void fscache_put_cookie(struct fscache_cookie *cookie,
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 734966bc49e1..4f40cfa52469 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -43,6 +43,7 @@ enum fscache_volume_trace {
 	fscache_volume_put_relinquish,
 	fscache_volume_see_create_work,
 	fscache_volume_see_hash_wake,
+	fscache_volume_wait_create_work,
 };
 
 enum fscache_cookie_trace {
@@ -245,6 +246,39 @@ TRACE_EVENT(fscache_access_cache,
 		      __entry->n_accesses)
 	    );
 
+TRACE_EVENT(fscache_access_volume,
+	    TP_PROTO(unsigned int volume_debug_id,
+		     unsigned int cookie_debug_id,
+		     int ref,
+		     int n_accesses,
+		     enum fscache_access_trace why),
+
+	    TP_ARGS(volume_debug_id, cookie_debug_id, ref, n_accesses, why),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		volume		)
+		    __field(unsigned int,		cookie		)
+		    __field(int,			ref		)
+		    __field(int,			n_accesses	)
+		    __field(enum fscache_access_trace,	why		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->volume	= volume_debug_id;
+		    __entry->cookie	= cookie_debug_id;
+		    __entry->ref	= ref;
+		    __entry->n_accesses	= n_accesses;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("V=%08x c=%08x %s r=%d a=%d",
+		      __entry->volume,
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
