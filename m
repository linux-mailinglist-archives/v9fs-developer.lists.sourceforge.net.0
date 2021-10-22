Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90434437D3E
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:02:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzoS-0003bE-9v; Fri, 22 Oct 2021 19:02:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzoL-0003Zn-2E
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pTKUPqqhLn13oYPq3rhi9ijm3zwM7t7uFhQagyxsqOg=; b=S2AWiFee4A84pHzGsgPz7HoBL9
 Md3vJUTRe+7k7riO/oOmG4+Pn193cXcVz9c1PbF0kYp7qsF1/YjkfUwqZSg076E2hNRFhoV/cf+HI
 xKF0hJ3GJ/otSwdEwvwBMXCuj4hIago0GW5MQO1mRSa7Wui4xjSE8kjuXNMeXxa/M0NI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pTKUPqqhLn13oYPq3rhi9ijm3zwM7t7uFhQagyxsqOg=; b=lZYMeh8mr0hgUL4JJWjPLYTTQg
 yzpCvse3dDwRdhvz2ePiwwy1IWL/hKhHev6Hdk9oEWY2X9qB9tUYpoXMFhfQkM7rmydNtinLqBZCS
 7WM+jT706wQ62SvHr9010XC1TDdB4a3h3DsqsgCmRgoCHpbLrtE3sYvOfSlc/5vFRSY4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzoC-00CHH8-Bo
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929342;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pTKUPqqhLn13oYPq3rhi9ijm3zwM7t7uFhQagyxsqOg=;
 b=E6PxVDQPRzDb2eXNUFvDICTJ9fT2aAInReMDbEZvP2V7k34cwT2OBTfdxKRApDDziUX1Ka
 xbiSUETMounIet2RUzi3jvBAE9au22sZ30JG3tot8QhBEjEaHY4JjP++6d+84EQZKpgMlb
 6BUjMMcZ24xfkGsgF3Vbrlf/6RovBP8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-pHBC_Mw6NYuUtO8ZZgTlOw-1; Fri, 22 Oct 2021 15:02:19 -0400
X-MC-Unique: pHBC_Mw6NYuUtO8ZZgTlOw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4E2318D6A25;
 Fri, 22 Oct 2021 19:02:16 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D30CC5C1A3;
 Fri, 22 Oct 2021 19:02:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:02:03 +0100
Message-ID: <163492932300.1038219.13528401231144480258.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a pair of helper functions to pin/unpin a cache that
 we're
 wanting to do a high-level access to (such as creating or removing a volume).
 Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com --- 
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
X-Headers-End: 1mdzoC-00CHH8-Bo
Subject: [V9fs-developer] [PATCH v2 12/53] fscache: Implement cache-level
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

Add a pair of helper functions to pin/unpin a cache that we're wanting to
do a high-level access to (such as creating or removing a volume).

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/cache.c             |   37 ++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    2 ++
 fs/fscache/main.c              |    2 ++
 include/trace/events/fscache.h |   41 ++++++++++++++++++++++++++++++++++++++++
 4 files changed, 82 insertions(+)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index da08e29ee5b9..3cde698c5015 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -171,6 +171,43 @@ void fscache_put_cache(struct fscache_cache *cache,
 }
 EXPORT_SYMBOL(fscache_put_cache);
 
+/*
+ * Get an increment on a cache's access counter if the cache is live to prevent
+ * it from going away whilst we're accessing it.
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
+/*
+ * Drop an increment on a cache's access counter.
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
index 9daacd7de9ea..5546c24d18d8 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -23,6 +23,8 @@
 #ifdef CONFIG_PROC_FS
 extern const struct seq_operations fscache_caches_seq_ops;
 #endif
+bool fscache_begin_cache_access(struct fscache_cache *cache, enum fscache_access_trace why);
+void fscache_end_cache_access(struct fscache_cache *cache, enum fscache_access_trace why);
 struct fscache_cache *fscache_lookup_cache(const char *name, bool is_cache);
 
 /*
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index fad9c1933987..e1f14b29cff4 100644
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
index cfa4c153c72b..d09d7e3ac86c 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -59,6 +59,12 @@ enum fscache_cookie_trace {
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
@@ -101,6 +107,11 @@ enum fscache_cookie_trace {
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
@@ -112,6 +123,7 @@ enum fscache_cookie_trace {
 fscache_cache_traces;
 fscache_volume_traces;
 fscache_cookie_traces;
+fscache_access_traces;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -198,6 +210,35 @@ TRACE_EVENT(fscache_cookie,
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
