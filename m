Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D5631BD5F
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:47:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg61-0001l4-FM; Mon, 15 Feb 2021 15:47:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg58-0001gf-68
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OhawpzYF9TXmoZ6dVvDLnLzXkrsQa778e+Po+y2nBnY=; b=O7LpeH1guxhWj1W92pL0ko/Uqc
 bhyKuP3Z8ZpVI8CHIfC9KmQZrYKiVsAOqjn0DSOtM++x8QPa9ELhnVT9z60e0PZo669zMRaKXATkd
 coUwc0iFytd7Re+tKlzImlJlqmFyFfF8CCIu93L9vFRwujNNKAFix29/nL18bAUUOHoA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OhawpzYF9TXmoZ6dVvDLnLzXkrsQa778e+Po+y2nBnY=; b=j3Ujy4CVnioI6MBuZNKVFQWwTi
 92zK4+8O6UUveQzjzVGi+HuRusbuYnlcuapszepMwDDBpSzUp1RCYE7uILeKABHM6nO+oClTjF+Ck
 4LVfRnyBxx5ZemDM4Jrl5xDa5BO8F2+bqyL49XX//OPLuADianYLoHYj8HQcLCB5xFsg=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lBg4n-0006UH-AC
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:46:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613403971;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OhawpzYF9TXmoZ6dVvDLnLzXkrsQa778e+Po+y2nBnY=;
 b=W283v+sE8rlAg1zI9+1SVlcBPeBKPptQgvXZQCsT/R2UOoOG68w2j5BXxGYDD5LQTLi0Dv
 fQ6VjOPUlG+LYjH+bS2RfBMADzY8RrM7XAXm8qY6Ct5jCa+cxHc4DPeOwU1rMH/rtK5mCb
 QGPSklbNdfGktDquMYub0P5DZOBfgq0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-Cy2-TE12MsWZ4xtZuKaaCw-1; Mon, 15 Feb 2021 10:46:07 -0500
X-MC-Unique: Cy2-TE12MsWZ4xtZuKaaCw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0EEA874980;
 Mon, 15 Feb 2021 15:46:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 422465C241;
 Mon, 15 Feb 2021 15:45:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:45:58 +0000
Message-ID: <161340395843.1303470.7355519662919639648.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lBg4n-0006UH-AC
Subject: [V9fs-developer] [PATCH 09/33] netfs: Add tracepoints
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add three tracepoints to track the activity of the read helpers:

 (1) netfs/netfs_read

     This logs entry to the read helpers and also expansion of the range in
     a readahead request.

 (2) netfs/netfs_rreq

     This logs the progress of netfs_read_request objects which track
     read requests.  A read request may be a compound of multiple
     subrequests.

 (3) netfs/netfs_sreq

     This logs the progress of netfs_read_subrequest objects, which track
     the contributions from various sources to a read request.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
---

 fs/netfs/read_helper.c       |   28 ++++++
 include/linux/netfs.h        |    2 
 include/trace/events/netfs.h |  199 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 229 insertions(+)
 create mode 100644 include/trace/events/netfs.h

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index a35bd29928fa..53b04b105179 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -16,6 +16,8 @@
 #include <linux/task_io_accounting_ops.h>
 #include <linux/netfs.h>
 #include "internal.h"
+#define CREATE_TRACE_POINTS
+#include <trace/events/netfs.h>
 
 MODULE_DESCRIPTION("Network fs support");
 MODULE_AUTHOR("Red Hat, Inc.");
@@ -38,6 +40,7 @@ static struct netfs_read_request *netfs_alloc_read_request(
 	const struct netfs_read_request_ops *ops, void *netfs_priv,
 	struct file *file)
 {
+	static atomic_t debug_ids;
 	struct netfs_read_request *rreq;
 
 	rreq = kzalloc(sizeof(struct netfs_read_request), GFP_KERNEL);
@@ -46,6 +49,7 @@ static struct netfs_read_request *netfs_alloc_read_request(
 		rreq->netfs_priv = netfs_priv;
 		rreq->inode	= file_inode(file);
 		rreq->i_size	= i_size_read(rreq->inode);
+		rreq->debug_id	= atomic_inc_return(&debug_ids);
 		INIT_LIST_HEAD(&rreq->subrequests);
 		INIT_WORK(&rreq->work, netfs_rreq_work);
 		refcount_set(&rreq->usage, 1);
@@ -80,6 +84,7 @@ static void netfs_free_read_request(struct work_struct *work)
 	netfs_rreq_clear_subreqs(rreq);
 	if (rreq->netfs_priv)
 		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
+	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
 	kfree(rreq);
 }
 
@@ -122,6 +127,7 @@ static void netfs_get_read_subrequest(struct netfs_read_subrequest *subreq)
 
 static void __netfs_put_subrequest(struct netfs_read_subrequest *subreq)
 {
+	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
 	netfs_put_read_request(subreq->rreq);
 	kfree(subreq);
 }
@@ -176,6 +182,7 @@ static void netfs_read_from_server(struct netfs_read_request *rreq,
  */
 static void netfs_rreq_completed(struct netfs_read_request *rreq)
 {
+	trace_netfs_rreq(rreq, netfs_rreq_trace_done);
 	netfs_rreq_clear_subreqs(rreq);
 	netfs_put_read_request(rreq);
 }
@@ -214,6 +221,8 @@ static void netfs_rreq_unlock(struct netfs_read_request *rreq)
 	iopos = 0;
 	subreq_failed = (subreq->error < 0);
 
+	trace_netfs_rreq(rreq, netfs_rreq_trace_unlock);
+
 	rcu_read_lock();
 	xas_for_each(&xas, page, last_page) {
 		unsigned int pgpos = (page->index - start_page) * PAGE_SIZE;
@@ -274,6 +283,8 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
 	__clear_bit(NETFS_SREQ_SHORT_READ, &subreq->flags);
 	__set_bit(NETFS_SREQ_SEEK_DATA_READ, &subreq->flags);
 
+	trace_netfs_sreq(subreq, netfs_sreq_trace_resubmit_short);
+
 	netfs_get_read_subrequest(subreq);
 	atomic_inc(&rreq->nr_rd_ops);
 	netfs_read_from_server(rreq, subreq);
@@ -289,6 +300,8 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
 
 	WARN_ON(in_softirq());
 
+	trace_netfs_rreq(rreq, netfs_rreq_trace_resubmit);
+
 	/* We don't want terminating submissions trying to wake us up whilst
 	 * we're still going through the list.
 	 */
@@ -301,6 +314,7 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
 				break;
 			subreq->source = NETFS_DOWNLOAD_FROM_SERVER;
 			subreq->error = 0;
+			trace_netfs_sreq(subreq, netfs_sreq_trace_download_instead);
 			netfs_get_read_subrequest(subreq);
 			atomic_inc(&rreq->nr_rd_ops);
 			netfs_read_from_server(rreq, subreq);
@@ -325,6 +339,8 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
  */
 static void netfs_rreq_assess(struct netfs_read_request *rreq)
 {
+	trace_netfs_rreq(rreq, netfs_rreq_trace_assess);
+
 again:
 	if (!test_bit(NETFS_RREQ_FAILED, &rreq->flags) &&
 	    test_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags)) {
@@ -409,6 +425,8 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
 		set_bit(NETFS_RREQ_WRITE_TO_CACHE, &rreq->flags);
 
 out:
+	trace_netfs_sreq(subreq, netfs_sreq_trace_terminated);
+
 	/* If we decrement nr_rd_ops to 0, the ref belongs to us. */
 	u = atomic_dec_return(&rreq->nr_rd_ops);
 	if (u == 0)
@@ -497,6 +515,7 @@ netfs_rreq_prepare_read(struct netfs_read_request *rreq,
 
 out:
 	subreq->source = source;
+	trace_netfs_sreq(subreq, netfs_sreq_trace_prepare);
 	return source;
 }
 
@@ -536,6 +555,7 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
 
 	rreq->submitted += subreq->len;
 
+	trace_netfs_sreq(subreq, netfs_sreq_trace_submit);
 	switch (source) {
 	case NETFS_FILL_WITH_ZEROES:
 		netfs_fill_with_zeroes(rreq, subreq);
@@ -578,6 +598,9 @@ static void netfs_rreq_expand(struct netfs_read_request *rreq,
 		readahead_expand(ractl, rreq->start, rreq->len);
 		rreq->start  = readahead_pos(ractl);
 		rreq->len = readahead_length(ractl);
+
+		trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
+				 netfs_read_trace_expanded);
 	}
 }
 
@@ -619,6 +642,9 @@ void netfs_readahead(struct readahead_control *ractl,
 	rreq->start	= readahead_pos(ractl);
 	rreq->len	= readahead_length(ractl);
 
+	trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
+			 netfs_read_trace_readahead);
+
 	netfs_rreq_expand(rreq, ractl);
 
 	atomic_set(&rreq->nr_rd_ops, 1);
@@ -690,6 +716,8 @@ int netfs_readpage(struct file *file,
 	rreq->start	= page->index * PAGE_SIZE;
 	rreq->len	= thp_size(page);
 
+	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
+
 	netfs_get_read_request(rreq);
 
 	atomic_set(&rreq->nr_rd_ops, 1);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 7f74d668a459..24083dc0adfa 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -91,6 +91,8 @@ struct netfs_read_request {
 	struct address_space	*mapping;	/* The mapping being accessed */
 	struct list_head	subrequests;	/* Requests to fetch I/O from disk or net */
 	void			*netfs_priv;	/* Private data for the netfs */
+	unsigned int		debug_id;
+	unsigned int		cookie_debug_id;
 	atomic_t		nr_rd_ops;	/* Number of read ops in progress */
 	size_t			submitted;	/* Amount submitted for I/O so far */
 	size_t			len;		/* Length of the request */
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
new file mode 100644
index 000000000000..12ad382764c5
--- /dev/null
+++ b/include/trace/events/netfs.h
@@ -0,0 +1,199 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Network filesystem support module tracepoints
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM netfs
+
+#if !defined(_TRACE_NETFS_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_NETFS_H
+
+#include <linux/tracepoint.h>
+
+/*
+ * Define enums for tracing information.
+ */
+#ifndef __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
+#define __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
+
+enum netfs_read_trace {
+	netfs_read_trace_expanded,
+	netfs_read_trace_readahead,
+	netfs_read_trace_readpage,
+};
+
+enum netfs_rreq_trace {
+	netfs_rreq_trace_assess,
+	netfs_rreq_trace_done,
+	netfs_rreq_trace_free,
+	netfs_rreq_trace_resubmit,
+	netfs_rreq_trace_unlock,
+	netfs_rreq_trace_unmark,
+	netfs_rreq_trace_write,
+};
+
+enum netfs_sreq_trace {
+	netfs_sreq_trace_download_instead,
+	netfs_sreq_trace_free,
+	netfs_sreq_trace_prepare,
+	netfs_sreq_trace_resubmit_short,
+	netfs_sreq_trace_submit,
+	netfs_sreq_trace_terminated,
+	netfs_sreq_trace_write,
+	netfs_sreq_trace_write_term,
+};
+
+#endif
+
+#define netfs_read_traces					\
+	EM(netfs_read_trace_expanded,		"EXPANDED ")	\
+	EM(netfs_read_trace_readahead,		"READAHEAD")	\
+	E_(netfs_read_trace_readpage,		"READPAGE ")
+
+#define netfs_rreq_traces					\
+	EM(netfs_rreq_trace_assess,		"ASSESS")	\
+	EM(netfs_rreq_trace_done,		"DONE  ")	\
+	EM(netfs_rreq_trace_free,		"FREE  ")	\
+	EM(netfs_rreq_trace_resubmit,		"RESUBM")	\
+	EM(netfs_rreq_trace_unlock,		"UNLOCK")	\
+	EM(netfs_rreq_trace_unmark,		"UNMARK")	\
+	E_(netfs_rreq_trace_write,		"WRITE ")
+
+#define netfs_sreq_sources					\
+	EM(NETFS_FILL_WITH_ZEROES,		"ZERO")		\
+	EM(NETFS_DOWNLOAD_FROM_SERVER,		"DOWN")		\
+	EM(NETFS_READ_FROM_CACHE,		"READ")		\
+	E_(NETFS_INVALID_READ,			"INVL")		\
+
+#define netfs_sreq_traces					\
+	EM(netfs_sreq_trace_download_instead,	"RDOWN")	\
+	EM(netfs_sreq_trace_free,		"FREE ")	\
+	EM(netfs_sreq_trace_prepare,		"PREP ")	\
+	EM(netfs_sreq_trace_resubmit_short,	"SHORT")	\
+	EM(netfs_sreq_trace_submit,		"SUBMT")	\
+	EM(netfs_sreq_trace_terminated,		"TERM ")	\
+	EM(netfs_sreq_trace_write,		"WRITE")	\
+	E_(netfs_sreq_trace_write_term,		"WTERM")
+
+
+/*
+ * Export enum symbols via userspace.
+ */
+#undef EM
+#undef E_
+#define EM(a, b) TRACE_DEFINE_ENUM(a);
+#define E_(a, b) TRACE_DEFINE_ENUM(a);
+
+netfs_read_traces;
+netfs_rreq_traces;
+netfs_sreq_sources;
+netfs_sreq_traces;
+
+/*
+ * Now redefine the EM() and E_() macros to map the enums to the strings that
+ * will be printed in the output.
+ */
+#undef EM
+#undef E_
+#define EM(a, b)	{ a, b },
+#define E_(a, b)	{ a, b }
+
+TRACE_EVENT(netfs_read,
+	    TP_PROTO(struct netfs_read_request *rreq,
+		     loff_t start, size_t len,
+		     enum netfs_read_trace what),
+
+	    TP_ARGS(rreq, start, len, what),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		rreq		)
+		    __field(unsigned int,		cookie		)
+		    __field(loff_t,			start		)
+		    __field(size_t,			len		)
+		    __field(enum netfs_read_trace,	what		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->rreq	= rreq->debug_id;
+		    __entry->cookie	= rreq->cookie_debug_id;
+		    __entry->start	= start;
+		    __entry->len	= len;
+		    __entry->what	= what;
+			   ),
+
+	    TP_printk("R=%08x %s c=%08x s=%llx %zx",
+		      __entry->rreq,
+		      __print_symbolic(__entry->what, netfs_read_traces),
+		      __entry->cookie,
+		      __entry->start, __entry->len)
+	    );
+
+TRACE_EVENT(netfs_rreq,
+	    TP_PROTO(struct netfs_read_request *rreq,
+		     enum netfs_rreq_trace what),
+
+	    TP_ARGS(rreq, what),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		rreq		)
+		    __field(unsigned short,		flags		)
+		    __field(enum netfs_rreq_trace,	what		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->rreq	= rreq->debug_id;
+		    __entry->flags	= rreq->flags;
+		    __entry->what	= what;
+			   ),
+
+	    TP_printk("R=%08x %s f=%02x",
+		      __entry->rreq,
+		      __print_symbolic(__entry->what, netfs_rreq_traces),
+		      __entry->flags)
+	    );
+
+TRACE_EVENT(netfs_sreq,
+	    TP_PROTO(struct netfs_read_subrequest *sreq,
+		     enum netfs_sreq_trace what),
+
+	    TP_ARGS(sreq, what),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		rreq		)
+		    __field(unsigned short,		index		)
+		    __field(short,			error		)
+		    __field(unsigned short,		flags		)
+		    __field(enum netfs_read_source,	source		)
+		    __field(enum netfs_sreq_trace,	what		)
+		    __field(size_t,			len		)
+		    __field(size_t,			transferred	)
+		    __field(loff_t,			start		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->rreq	= sreq->rreq->debug_id;
+		    __entry->index	= sreq->debug_index;
+		    __entry->error	= sreq->error;
+		    __entry->flags	= sreq->flags;
+		    __entry->source	= sreq->source;
+		    __entry->what	= what;
+		    __entry->len	= sreq->len;
+		    __entry->transferred = sreq->transferred;
+		    __entry->start	= sreq->start;
+			   ),
+
+	    TP_printk("R=%08x[%u] %s %s f=%02x s=%llx %zx/%zx e=%d",
+		      __entry->rreq, __entry->index,
+		      __print_symbolic(__entry->what, netfs_sreq_traces),
+		      __print_symbolic(__entry->source, netfs_sreq_sources),
+		      __entry->flags,
+		      __entry->start, __entry->transferred, __entry->len,
+		      __entry->error)
+	    );
+
+#endif /* _TRACE_NETFS_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
