Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC91D4D4E74
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 17:17:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSLTQ-0000Vd-GS; Thu, 10 Mar 2022 16:17:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nSLTP-0000VT-FV
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8cfGxYB8njuOkQO17893uLOX/1s/bBn62z9nmWYRuKs=; b=OGAjLjJl7UaSjJY2LFxG2JdMq6
 cfE6STS0x/qSG8J9lL2Sv7lBVrYypHgkXUJyUvmE0CfmCBfbD1edhRlTShXrAjtvhUdmo1EtiUZI7
 gITbWHDXpMOMYoHkdvppHn8Khq5msu9NjvT7PUGoC0NlUZIue7psHOPvhL7bJmy7aQUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8cfGxYB8njuOkQO17893uLOX/1s/bBn62z9nmWYRuKs=; b=BwYGvYIUpwUvrptI7FEbQj+tqL
 FYtu2XjluN36bgPV+IZitVRVkxGKqg6jN1ZanheskF7Q0iFkPaAFIJixxT+oXkSZj7NGetdguj7qw
 JBojT5bYyxDzJJuAHhkHdZMNWL+4DPmWwA+9Rt1n6rr8MCvkDXCPi5MRF3/HtLfPNqTk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSLTM-0005qp-Uh
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646929018;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8cfGxYB8njuOkQO17893uLOX/1s/bBn62z9nmWYRuKs=;
 b=bBLXAbJjUawhOwBdLPyDHZHEs9i6CtdWOA1TBxlT9VUECdv1FuCFHshEhgW27w3GDMY7gr
 nX2A4YQsJPyJB+mucGslMheHqBlkNUGkS2WJfvvdY7hRwkz03F6QHFvSdvmV8YoyOxLlXR
 Wn5mE9KqyyCh6Hu4CYe6bDV7wmHDPmM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-674-QdzTfoPGN_-AwGmAAkQoyg-1; Thu, 10 Mar 2022 11:16:55 -0500
X-MC-Unique: QdzTfoPGN_-AwGmAAkQoyg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C85B1006AAA;
 Thu, 10 Mar 2022 16:16:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1AB5086593;
 Thu, 10 Mar 2022 16:16:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 16:16:49 +0000
Message-ID: <164692900920.2099075.11847712419940675791.stgit@warthog.procyon.org.uk>
In-Reply-To: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add refcount tracing for the netfs_io_request structure.
 Changes
 ======= ver #3) - Switch 'W=' to 'R=' in the traceline to match other request
 debug IDs. Signed-off-by: David Howells <dhowells@redhat.com> Reviewed-by:
 Jeff Layton <jlayton@kernel.org> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/164622997668.3564931.14456171619219324968.
 [...] Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSLTM-0005qp-Uh
Subject: [V9fs-developer] [PATCH v3 07/20] netfs: Trace refcounting on the
 netfs_io_request struct
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Jeffle Xu <jefflexu@linux.alibaba.com>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add refcount tracing for the netfs_io_request structure.

Changes
=======
ver #3)
 - Switch 'W=' to 'R=' in the traceline to match other request debug IDs.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/164622997668.3564931.14456171619219324968.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/164678200943.1200972.7241495532327787765.stgit@warthog.procyon.org.uk/ # v2
---

 fs/netfs/internal.h          |   11 +++++++++--
 fs/netfs/objects.c           |   24 +++++++++++++++++-------
 fs/netfs/read_helper.c       |   14 +++++++-------
 include/linux/netfs.h        |    2 +-
 include/trace/events/netfs.h |   35 +++++++++++++++++++++++++++++++++++
 5 files changed, 69 insertions(+), 17 deletions(-)

diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index cf7a3ddb16a4..89b02357500d 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -20,13 +20,20 @@
 struct netfs_io_request *netfs_alloc_request(const struct netfs_request_ops *ops,
 					     void *netfs_priv,
 					     struct file *file);
-void netfs_get_request(struct netfs_io_request *rreq);
+void netfs_get_request(struct netfs_io_request *rreq, enum netfs_rreq_ref_trace what);
 void netfs_clear_subrequests(struct netfs_io_request *rreq, bool was_async);
-void netfs_put_request(struct netfs_io_request *rreq, bool was_async);
+void netfs_put_request(struct netfs_io_request *rreq, bool was_async,
+		       enum netfs_rreq_ref_trace what);
 struct netfs_io_subrequest *netfs_alloc_subrequest(struct netfs_io_request *rreq);
 void netfs_put_subrequest(struct netfs_io_subrequest *subreq, bool was_async);
 void netfs_get_subrequest(struct netfs_io_subrequest *subreq);
 
+static inline void netfs_see_request(struct netfs_io_request *rreq,
+				     enum netfs_rreq_ref_trace what)
+{
+	trace_netfs_rreq_ref(rreq->debug_id, refcount_read(&rreq->ref), what);
+}
+
 /*
  * read_helper.c
  */
diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
index f7383c28dc6e..4e29c3bb6e5a 100644
--- a/fs/netfs/objects.c
+++ b/fs/netfs/objects.c
@@ -27,7 +27,7 @@ struct netfs_io_request *netfs_alloc_request(
 		rreq->debug_id	= atomic_inc_return(&debug_ids);
 		INIT_LIST_HEAD(&rreq->subrequests);
 		INIT_WORK(&rreq->work, netfs_rreq_work);
-		refcount_set(&rreq->usage, 1);
+		refcount_set(&rreq->ref, 1);
 		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 		if (ops->init_request)
 			ops->init_request(rreq, file);
@@ -37,9 +37,12 @@ struct netfs_io_request *netfs_alloc_request(
 	return rreq;
 }
 
-void netfs_get_request(struct netfs_io_request *rreq)
+void netfs_get_request(struct netfs_io_request *rreq, enum netfs_rreq_ref_trace what)
 {
-	refcount_inc(&rreq->usage);
+	int r;
+
+	__refcount_inc(&rreq->ref, &r);
+	trace_netfs_rreq_ref(rreq->debug_id, r + 1, what);
 }
 
 void netfs_clear_subrequests(struct netfs_io_request *rreq, bool was_async)
@@ -68,9 +71,16 @@ static void netfs_free_request(struct work_struct *work)
 	netfs_stat_d(&netfs_n_rh_rreq);
 }
 
-void netfs_put_request(struct netfs_io_request *rreq, bool was_async)
+void netfs_put_request(struct netfs_io_request *rreq, bool was_async,
+		       enum netfs_rreq_ref_trace what)
 {
-	if (refcount_dec_and_test(&rreq->usage)) {
+	unsigned int debug_id = rreq->debug_id;
+	bool dead;
+	int r;
+
+	dead = __refcount_dec_and_test(&rreq->ref, &r);
+	trace_netfs_rreq_ref(debug_id, r - 1, what);
+	if (dead) {
 		if (was_async) {
 			rreq->work.func = netfs_free_request;
 			if (!queue_work(system_unbound_wq, &rreq->work))
@@ -93,7 +103,7 @@ struct netfs_io_subrequest *netfs_alloc_subrequest(struct netfs_io_request *rreq
 		INIT_LIST_HEAD(&subreq->rreq_link);
 		refcount_set(&subreq->usage, 2);
 		subreq->rreq = rreq;
-		netfs_get_request(rreq);
+		netfs_get_request(rreq, netfs_rreq_trace_get_subreq);
 		netfs_stat(&netfs_n_rh_sreq);
 	}
 
@@ -113,7 +123,7 @@ static void __netfs_put_subrequest(struct netfs_io_subrequest *subreq,
 	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
 	kfree(subreq);
 	netfs_stat_d(&netfs_n_rh_sreq);
-	netfs_put_request(rreq, was_async);
+	netfs_put_request(rreq, was_async, netfs_rreq_trace_put_subreq);
 }
 
 void netfs_put_subrequest(struct netfs_io_subrequest *subreq, bool was_async)
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 181aeda32649..620c3be5ec0a 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -109,7 +109,7 @@ static void netfs_rreq_completed(struct netfs_io_request *rreq, bool was_async)
 {
 	trace_netfs_rreq(rreq, netfs_rreq_trace_done);
 	netfs_clear_subrequests(rreq, was_async);
-	netfs_put_request(rreq, was_async);
+	netfs_put_request(rreq, was_async, netfs_rreq_trace_put_complete);
 }
 
 /*
@@ -799,7 +799,7 @@ void netfs_readahead(struct readahead_control *ractl,
 	return;
 
 cleanup_free:
-	netfs_put_request(rreq, false);
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_failed);
 	return;
 cleanup:
 	if (netfs_priv)
@@ -858,7 +858,7 @@ int netfs_readpage(struct file *file,
 	netfs_stat(&netfs_n_rh_readpage);
 	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
 
-	netfs_get_request(rreq);
+	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
 
 	atomic_set(&rreq->nr_outstanding, 1);
 	do {
@@ -883,7 +883,7 @@ int netfs_readpage(struct file *file,
 		ret = -EIO;
 	}
 out:
-	netfs_put_request(rreq, false);
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
 	return ret;
 }
 EXPORT_SYMBOL(netfs_readpage);
@@ -1030,13 +1030,13 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	 */
 	ractl._nr_pages = folio_nr_pages(folio);
 	netfs_rreq_expand(rreq, &ractl);
-	netfs_get_request(rreq);
 
 	/* We hold the folio locks, so we can drop the references */
 	folio_get(folio);
 	while (readahead_folio(&ractl))
 		;
 
+	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
 	atomic_set(&rreq->nr_outstanding, 1);
 	do {
 		if (!netfs_rreq_submit_slice(rreq, &debug_index))
@@ -1062,7 +1062,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_write_begin);
 		ret = -EIO;
 	}
-	netfs_put_request(rreq, false);
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
 	if (ret < 0)
 		goto error;
 
@@ -1078,7 +1078,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	return 0;
 
 error_put:
-	netfs_put_request(rreq, false);
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_failed);
 error:
 	folio_unlock(folio);
 	folio_put(folio);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index f63de27d6f29..541aebe828f3 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -168,7 +168,7 @@ struct netfs_io_request {
 	loff_t			i_size;		/* Size of the file */
 	loff_t			start;		/* Start position */
 	pgoff_t			no_unlock_folio; /* Don't unlock this folio after read */
-	refcount_t		usage;
+	refcount_t		ref;
 	unsigned long		flags;
 #define NETFS_RREQ_INCOMPLETE_IO	0	/* Some ioreqs terminated short or with error */
 #define NETFS_RREQ_COPY_TO_CACHE	1	/* Need to write to the cache */
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index 0c7a26c4d11c..e35a5ce52eb5 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -55,6 +55,15 @@
 	EM(netfs_fail_short_write_begin,	"short-write-begin")	\
 	E_(netfs_fail_prepare_write,		"prep-write")
 
+#define netfs_rreq_ref_traces					\
+	EM(netfs_rreq_trace_get_hold,		"GET HOLD   ")	\
+	EM(netfs_rreq_trace_get_subreq,		"GET SUBREQ ")	\
+	EM(netfs_rreq_trace_put_complete,	"PUT COMPLT ")	\
+	EM(netfs_rreq_trace_put_failed,		"PUT FAILED ")	\
+	EM(netfs_rreq_trace_put_hold,		"PUT HOLD   ")	\
+	EM(netfs_rreq_trace_put_subreq,		"PUT SUBREQ ")	\
+	E_(netfs_rreq_trace_new,		"NEW        ")
+
 #ifndef __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
 #define __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
 
@@ -67,6 +76,7 @@ enum netfs_read_trace { netfs_read_traces } __mode(byte);
 enum netfs_rreq_trace { netfs_rreq_traces } __mode(byte);
 enum netfs_sreq_trace { netfs_sreq_traces } __mode(byte);
 enum netfs_failure { netfs_failures } __mode(byte);
+enum netfs_rreq_ref_trace { netfs_rreq_ref_traces } __mode(byte);
 
 #endif
 
@@ -83,6 +93,7 @@ netfs_rreq_traces;
 netfs_sreq_sources;
 netfs_sreq_traces;
 netfs_failures;
+netfs_rreq_ref_traces;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -229,6 +240,30 @@ TRACE_EVENT(netfs_failure,
 		      __entry->error)
 	    );
 
+TRACE_EVENT(netfs_rreq_ref,
+	    TP_PROTO(unsigned int rreq_debug_id, int ref,
+		     enum netfs_rreq_ref_trace what),
+
+	    TP_ARGS(rreq_debug_id, ref, what),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		rreq		)
+		    __field(int,			ref		)
+		    __field(enum netfs_rreq_ref_trace,	what		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->rreq	= rreq_debug_id;
+		    __entry->ref	= ref;
+		    __entry->what	= what;
+			   ),
+
+	    TP_printk("R=%08x %s r=%u",
+		      __entry->rreq,
+		      __print_symbolic(__entry->what, netfs_rreq_ref_traces),
+		      __entry->ref)
+	    );
+
 #undef EM
 #undef E_
 #endif /* _TRACE_NETFS_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
