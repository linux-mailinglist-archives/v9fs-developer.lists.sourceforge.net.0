Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F084CA758
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Mar 2022 15:07:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPPds-0002aC-KH; Wed, 02 Mar 2022 14:07:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nPPdq-0002a5-JS
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sUVtMW7d6l40UWSY4IvFwCkFg+1Oe4SVsKPpt57tUXM=; b=VJUFplHCUXr8TxaxHFffDO5ox1
 Q+lrR7G4SLf4032+XQ0WAiEdtdqMYYrkZZjB4xEsck0IIN/b9qFk3RIueyq1It7RXOaFgINZf6/7a
 sm0GtebeWdboCiQ3wzErKnuQU3GEUH0T8lTqyfgshGh8zXqr5EVI+Ocd5bOf+f1jYghc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sUVtMW7d6l40UWSY4IvFwCkFg+1Oe4SVsKPpt57tUXM=; b=dexkSAu0Eax4fVX9YFtd8u/4kg
 Bjr2DA7WQP/df7oHeR2a8BllGpLsAXwA4lQqy0K8NOMjfp4jg9qWOxA/v23F/RFUhJo/FT3rfB2+u
 uMhgdY54GinwSPYxxM1GkZqrV7Zd0SkyNUvETgU2Gj2rZY6zGyownjzkttuO/lEoQGds=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPPdn-002cGr-Ll
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:07:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646230057;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sUVtMW7d6l40UWSY4IvFwCkFg+1Oe4SVsKPpt57tUXM=;
 b=C+aDgDmYCrQ5AhD0I1mE+/RiDKp1Obeks2lrEt/CQKJS7VQa1g9/Rr/gZRnR9IrqF+ijwa
 78Ac4n93VcTlA4jUgAJu2jHQXdotDJwLBm2J9+WERuJfUih1fij1w8xIe60hXDKtxSFGt1
 l0t1S/60cyB5pKRPcO3hrzW2NXCPBYo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-65-M5979wKvPU2Sx3YICIN4lw-1; Wed, 02 Mar 2022 09:07:32 -0500
X-MC-Unique: M5979wKvPU2Sx3YICIN4lw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C4AF2D4;
 Wed,  2 Mar 2022 14:07:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BCC78359B;
 Wed,  2 Mar 2022 14:07:24 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 02 Mar 2022 14:07:23 +0000
Message-ID: <164623004355.3564931.7275693529042495641.stgit@warthog.procyon.org.uk>
In-Reply-To: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
References: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a function to do the steps needed to begin a read request,
 allowing this code to be removed from several other functions and
 consolidated.
 Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
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
X-Headers-End: 1nPPdn-002cGr-Ll
Subject: [V9fs-developer] [PATCH 13/19] netfs: Add a function to consolidate
 beginning a read
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a function to do the steps needed to begin a read request, allowing this
code to be removed from several other functions and consolidated.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/netfs/internal.h          |    5 -
 fs/netfs/objects.c           |    2 -
 fs/netfs/read_helper.c       |  152 +++++++++++++++++++++---------------------
 include/trace/events/netfs.h |    5 +
 4 files changed, 81 insertions(+), 83 deletions(-)

diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index 3970528955be..7d8e83deaf81 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -44,10 +44,7 @@ static inline void netfs_see_request(struct netfs_io_request *rreq,
  */
 extern unsigned int netfs_debug;
 
-void netfs_rreq_work(struct work_struct *work);
-void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async);
-bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
-			     unsigned int *_debug_index);
+int netfs_begin_read(struct netfs_io_request *rreq, bool sync);
 
 /*
  * stats.c
diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
index c46d027c1692..8f99269c5344 100644
--- a/fs/netfs/objects.c
+++ b/fs/netfs/objects.c
@@ -32,7 +32,7 @@ struct netfs_io_request *netfs_alloc_request(struct address_space *mapping,
 		rreq->i_size	= i_size_read(inode);
 		rreq->debug_id	= atomic_inc_return(&debug_ids);
 		INIT_LIST_HEAD(&rreq->subrequests);
-		INIT_WORK(&rreq->work, netfs_rreq_work);
+		INIT_WORK(&rreq->work, NULL);
 		refcount_set(&rreq->ref, 1);
 		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 		if (ctx->ops->init_request)
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index e666f9cccc95..df73e276decd 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -418,7 +418,7 @@ static void netfs_rreq_is_still_valid(struct netfs_io_request *rreq)
  * Note that we could be in an ordinary kernel thread, on a workqueue or in
  * softirq context at this point.  We inherit a ref from the caller.
  */
-void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
+static void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
 {
 	trace_netfs_rreq(rreq, netfs_rreq_trace_assess);
 
@@ -443,7 +443,7 @@ void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
 	netfs_rreq_completed(rreq, was_async);
 }
 
-void netfs_rreq_work(struct work_struct *work)
+static void netfs_rreq_work(struct work_struct *work)
 {
 	struct netfs_io_request *rreq =
 		container_of(work, struct netfs_io_request, work);
@@ -632,8 +632,8 @@ netfs_rreq_prepare_read(struct netfs_io_request *rreq,
 /*
  * Slice off a piece of a read request and submit an I/O request for it.
  */
-bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
-			     unsigned int *_debug_index)
+static bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
+				    unsigned int *_debug_index)
 {
 	struct netfs_io_subrequest *subreq;
 	enum netfs_io_source source;
@@ -688,6 +688,68 @@ bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
 	return false;
 }
 
+/*
+ * Begin the process of reading in a chunk of data, where that data may be
+ * stitched together from multiple sources, including multiple servers and the
+ * local cache.
+ */
+int netfs_begin_read(struct netfs_io_request *rreq, bool sync)
+{
+	unsigned int debug_index = 0;
+	int ret;
+
+	_enter("R=%x %llx-%llx",
+	       rreq->debug_id, rreq->start, rreq->start + rreq->len - 1);
+
+	if (rreq->len == 0) {
+		pr_err("Zero-sized read [R=%x]\n", rreq->debug_id);
+		netfs_put_request(rreq, false, netfs_rreq_trace_put_zero_len);
+		return -EIO;
+	}
+
+	rreq->work.func = netfs_rreq_work;
+
+	if (sync)
+		netfs_get_request(rreq, netfs_rreq_trace_get_hold);
+
+	/* Chop the read into slices according to what the cache and the netfs
+	 * want and submit each one.
+	 */
+	atomic_set(&rreq->nr_outstanding, 1);
+	do {
+		if (!netfs_rreq_submit_slice(rreq, &debug_index))
+			break;
+
+	} while (rreq->submitted < rreq->len);
+
+	if (sync) {
+		/* Keep nr_outstanding incremented so that the ref always belongs to
+		 * us, and the service code isn't punted off to a random thread pool to
+		 * process.
+		 */
+		for (;;) {
+			wait_var_event(&rreq->nr_outstanding,
+				       atomic_read(&rreq->nr_outstanding) == 1);
+			netfs_rreq_assess(rreq, false);
+			if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
+				break;
+			cond_resched();
+		}
+
+		ret = rreq->error;
+		if (ret == 0 && rreq->submitted < rreq->len) {
+			trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_read);
+			ret = -EIO;
+		}
+		netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
+	} else {
+		/* If we decrement nr_outstanding to 0, the ref belongs to us. */
+		if (atomic_dec_and_test(&rreq->nr_outstanding))
+			netfs_rreq_assess(rreq, false);
+	}
+	return ret;
+}
+
 static void netfs_cache_expand_readahead(struct netfs_io_request *rreq,
 					 loff_t *_start, size_t *_len, loff_t i_size)
 {
@@ -750,7 +812,6 @@ void netfs_readahead(struct readahead_control *ractl)
 {
 	struct netfs_io_request *rreq;
 	struct netfs_i_context *ctx = netfs_i_context(ractl->mapping->host);
-	unsigned int debug_index = 0;
 	int ret;
 
 	_enter("%lx,%x", readahead_index(ractl), readahead_count(ractl));
@@ -777,22 +838,13 @@ void netfs_readahead(struct readahead_control *ractl)
 
 	netfs_rreq_expand(rreq, ractl);
 
-	atomic_set(&rreq->nr_outstanding, 1);
-	do {
-		if (!netfs_rreq_submit_slice(rreq, &debug_index))
-			break;
-
-	} while (rreq->submitted < rreq->len);
-
 	/* Drop the refs on the folios here rather than in the cache or
 	 * filesystem.  The locks will be dropped in netfs_rreq_unlock().
 	 */
 	while (readahead_folio(ractl))
 		;
 
-	/* If we decrement nr_outstanding to 0, the ref belongs to us. */
-	if (atomic_dec_and_test(&rreq->nr_outstanding))
-		netfs_rreq_assess(rreq, false);
+	netfs_begin_read(rreq, false);
 	return;
 
 cleanup_free:
@@ -821,8 +873,7 @@ int netfs_readpage(struct file *file, struct page *subpage)
 	struct address_space *mapping = folio_file_mapping(folio);
 	struct netfs_io_request *rreq;
 	struct netfs_i_context *ctx = netfs_i_context(mapping->host);
-	unsigned int debug_index = 0;
-	int ret;
+	int ret = -ENOMEM;
 
 	_enter("%lx", folio_index(folio));
 
@@ -833,45 +884,19 @@ int netfs_readpage(struct file *file, struct page *subpage)
 
 	if (ctx->ops->begin_cache_operation) {
 		ret = ctx->ops->begin_cache_operation(rreq);
-		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS) {
-			folio_unlock(folio);
-			goto out;
-		}
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
+			goto discard;
 	}
 
 	netfs_stat(&netfs_n_rh_readpage);
 	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
+	return netfs_begin_read(rreq, true);
 
-	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
-
-	atomic_set(&rreq->nr_outstanding, 1);
-	do {
-		if (!netfs_rreq_submit_slice(rreq, &debug_index))
-			break;
-
-	} while (rreq->submitted < rreq->len);
-
-	/* Keep nr_outstanding incremented so that the ref always belongs to us, and
-	 * the service code isn't punted off to a random thread pool to
-	 * process.
-	 */
-	do {
-		wait_var_event(&rreq->nr_outstanding,
-			       atomic_read(&rreq->nr_outstanding) == 1);
-		netfs_rreq_assess(rreq, false);
-	} while (test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags));
-
-	ret = rreq->error;
-	if (ret == 0 && rreq->submitted < rreq->len) {
-		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_readpage);
-		ret = -EIO;
-	}
-out:
-	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
-	return ret;
+discard:
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_discard);
 nomem:
 	folio_unlock(folio);
-	return -ENOMEM;
+	return ret;
 }
 EXPORT_SYMBOL(netfs_readpage);
 
@@ -963,7 +988,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	struct netfs_io_request *rreq;
 	struct netfs_i_context *ctx = netfs_i_context(file_inode(file ));
 	struct folio *folio;
-	unsigned int debug_index = 0, fgp_flags;
+	unsigned int fgp_flags;
 	pgoff_t index = pos >> PAGE_SHIFT;
 	int ret;
 
@@ -1033,32 +1058,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	while (readahead_folio(&ractl))
 		;
 
-	atomic_set(&rreq->nr_outstanding, 1);
-	do {
-		if (!netfs_rreq_submit_slice(rreq, &debug_index))
-			break;
-
-	} while (rreq->submitted < rreq->len);
-
-	/* Keep nr_outstanding incremented so that the ref always belongs to
-	 * us, and the service code isn't punted off to a random thread pool to
-	 * process.
-	 */
-	for (;;) {
-		wait_var_event(&rreq->nr_outstanding,
-			       atomic_read(&rreq->nr_outstanding) == 1);
-		netfs_rreq_assess(rreq, false);
-		if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
-			break;
-		cond_resched();
-	}
-
-	ret = rreq->error;
-	if (ret == 0 && rreq->submitted < rreq->len) {
-		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_write_begin);
-		ret = -EIO;
-	}
-	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
+	ret = netfs_begin_read(rreq, true);
 	if (ret < 0)
 		goto error;
 
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index 685b07573394..55501d044bbc 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -56,17 +56,18 @@
 	EM(netfs_fail_check_write_begin,	"check-write-begin")	\
 	EM(netfs_fail_copy_to_cache,		"copy-to-cache")	\
 	EM(netfs_fail_read,			"read")			\
-	EM(netfs_fail_short_readpage,		"short-readpage")	\
-	EM(netfs_fail_short_write_begin,	"short-write-begin")	\
+	EM(netfs_fail_short_read,		"short-read")		\
 	E_(netfs_fail_prepare_write,		"prep-write")
 
 #define netfs_rreq_ref_traces					\
 	EM(netfs_rreq_trace_get_hold,		"GET HOLD   ")	\
 	EM(netfs_rreq_trace_get_subreq,		"GET SUBREQ ")	\
 	EM(netfs_rreq_trace_put_complete,	"PUT COMPLT ")	\
+	EM(netfs_rreq_trace_put_discard,	"PUT DISCARD")	\
 	EM(netfs_rreq_trace_put_failed,		"PUT FAILED ")	\
 	EM(netfs_rreq_trace_put_hold,		"PUT HOLD   ")	\
 	EM(netfs_rreq_trace_put_subreq,		"PUT SUBREQ ")	\
+	EM(netfs_rreq_trace_put_zero_len,	"PUT ZEROLEN")	\
 	E_(netfs_rreq_trace_new,		"NEW        ")
 
 #define netfs_sreq_ref_traces					\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
