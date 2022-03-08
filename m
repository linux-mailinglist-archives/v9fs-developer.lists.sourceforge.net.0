Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1330E4D24D2
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:26:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjE3-0008NY-Q9; Tue, 08 Mar 2022 23:26:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjE3-0008NS-BN
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GhHHLyAjfmCvHkc6zjg+9RgO+mlt1hAD4KWIlSJJ4KE=; b=DH03i6p71HldUHJTnrrv23VJkt
 pLrVD7XahXLBaHQSHmorJMxIiPR+J2BhXuWO+kbYTOe0vlQoSWTfqhH1RsmlCH7YjYgSuQUH3Z2Un
 KXwTwZofZqFso1ucEPoYGG+lLp2ZjIEslaV9ujHdgxttk9tttB7fAkLh2RC+tz7DsJ8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GhHHLyAjfmCvHkc6zjg+9RgO+mlt1hAD4KWIlSJJ4KE=; b=WtlfvIoB1eR+/z6iGj4NSN8IaX
 Is4/gyZcNs0Ry/2UgJQzhjtJUiilzxrhV1PJUbyiMHVQnVCU2V9qVonFVgtSQ9ADzy5U/Vrzl6hBy
 7wTTVPAEF2+5P9jqrMa8HG6P12J2OQ4BO16zl6fJGQ5dwSPuUPF2XZ+KeS7FYX/ULyTk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjE0-0003ZR-JS
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646781994;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GhHHLyAjfmCvHkc6zjg+9RgO+mlt1hAD4KWIlSJJ4KE=;
 b=SGNh2h/frWRziu9CAHsD9qL+qJe4uRlXGxEnk4r9461Ij/hAABgDlzKcp9oqAgtUX78xuQ
 S0isxmUEzgl4+aR2j004V5jfZ0cYL4HWLqsqe9HeqjilXhj7nTFpBya/GAPY57ONAYiugx
 5fagjZejjmRtqc0PxA68a+1ZrbAaN7E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-Pnrvi-oOOlO-5CE8Zq5CeA-1; Tue, 08 Mar 2022 18:26:31 -0500
X-MC-Unique: Pnrvi-oOOlO-5CE8Zq5CeA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 793E11091DA2;
 Tue,  8 Mar 2022 23:26:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4FB9A78C12;
 Tue,  8 Mar 2022 23:26:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:26:10 +0000
Message-ID: <164678197044.1200972.11511937252083343775.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Split netfs_io_* object handling out into a file that's going
 to contain object allocation, get and put routines. Signed-off-by: David
 Howells <dhowells@redhat.com> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/164622995118.3564931.6089530629052064470.stgit@warthog.procyon.org.uk/
 # v1 --- 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
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
X-Headers-End: 1nRjE0-0003ZR-JS
Subject: [V9fs-developer] [PATCH v2 05/19] netfs: Split netfs_io_* object
 handling out
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

Split netfs_io_* object handling out into a file that's going to contain
object allocation, get and put routines.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/164622995118.3564931.6089530629052064470.stgit@warthog.procyon.org.uk/ # v1
---

 fs/netfs/Makefile      |    6 ++
 fs/netfs/internal.h    |   18 +++++++
 fs/netfs/objects.c     |  123 ++++++++++++++++++++++++++++++++++++++++++++++++
 fs/netfs/read_helper.c |  118 ----------------------------------------------
 4 files changed, 147 insertions(+), 118 deletions(-)
 create mode 100644 fs/netfs/objects.c

diff --git a/fs/netfs/Makefile b/fs/netfs/Makefile
index c15bfc966d96..939fd00a1fc9 100644
--- a/fs/netfs/Makefile
+++ b/fs/netfs/Makefile
@@ -1,5 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 
-netfs-y := read_helper.o stats.o
+netfs-y := \
+	objects.o \
+	read_helper.o
+
+netfs-$(CONFIG_NETFS_STATS) += stats.o
 
 obj-$(CONFIG_NETFS_SUPPORT) := netfs.o
diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index b7f2c4459f33..cf7a3ddb16a4 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -5,17 +5,35 @@
  * Written by David Howells (dhowells@redhat.com)
  */
 
+#include <linux/netfs.h>
+#include <trace/events/netfs.h>
+
 #ifdef pr_fmt
 #undef pr_fmt
 #endif
 
 #define pr_fmt(fmt) "netfs: " fmt
 
+/*
+ * objects.c
+ */
+struct netfs_io_request *netfs_alloc_request(const struct netfs_request_ops *ops,
+					     void *netfs_priv,
+					     struct file *file);
+void netfs_get_request(struct netfs_io_request *rreq);
+void netfs_clear_subrequests(struct netfs_io_request *rreq, bool was_async);
+void netfs_put_request(struct netfs_io_request *rreq, bool was_async);
+struct netfs_io_subrequest *netfs_alloc_subrequest(struct netfs_io_request *rreq);
+void netfs_put_subrequest(struct netfs_io_subrequest *subreq, bool was_async);
+void netfs_get_subrequest(struct netfs_io_subrequest *subreq);
+
 /*
  * read_helper.c
  */
 extern unsigned int netfs_debug;
 
+void netfs_rreq_work(struct work_struct *work);
+
 /*
  * stats.c
  */
diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
new file mode 100644
index 000000000000..f7383c28dc6e
--- /dev/null
+++ b/fs/netfs/objects.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Object lifetime handling and tracing.
+ *
+ * Copyright (C) 2022 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/slab.h>
+#include "internal.h"
+
+/*
+ * Allocate an I/O request and initialise it.
+ */
+struct netfs_io_request *netfs_alloc_request(
+	const struct netfs_request_ops *ops, void *netfs_priv,
+	struct file *file)
+{
+	static atomic_t debug_ids;
+	struct netfs_io_request *rreq;
+
+	rreq = kzalloc(sizeof(struct netfs_io_request), GFP_KERNEL);
+	if (rreq) {
+		rreq->netfs_ops	= ops;
+		rreq->netfs_priv = netfs_priv;
+		rreq->inode	= file_inode(file);
+		rreq->i_size	= i_size_read(rreq->inode);
+		rreq->debug_id	= atomic_inc_return(&debug_ids);
+		INIT_LIST_HEAD(&rreq->subrequests);
+		INIT_WORK(&rreq->work, netfs_rreq_work);
+		refcount_set(&rreq->usage, 1);
+		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
+		if (ops->init_request)
+			ops->init_request(rreq, file);
+		netfs_stat(&netfs_n_rh_rreq);
+	}
+
+	return rreq;
+}
+
+void netfs_get_request(struct netfs_io_request *rreq)
+{
+	refcount_inc(&rreq->usage);
+}
+
+void netfs_clear_subrequests(struct netfs_io_request *rreq, bool was_async)
+{
+	struct netfs_io_subrequest *subreq;
+
+	while (!list_empty(&rreq->subrequests)) {
+		subreq = list_first_entry(&rreq->subrequests,
+					  struct netfs_io_subrequest, rreq_link);
+		list_del(&subreq->rreq_link);
+		netfs_put_subrequest(subreq, was_async);
+	}
+}
+
+static void netfs_free_request(struct work_struct *work)
+{
+	struct netfs_io_request *rreq =
+		container_of(work, struct netfs_io_request, work);
+	netfs_clear_subrequests(rreq, false);
+	if (rreq->netfs_priv)
+		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
+	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
+	if (rreq->cache_resources.ops)
+		rreq->cache_resources.ops->end_operation(&rreq->cache_resources);
+	kfree(rreq);
+	netfs_stat_d(&netfs_n_rh_rreq);
+}
+
+void netfs_put_request(struct netfs_io_request *rreq, bool was_async)
+{
+	if (refcount_dec_and_test(&rreq->usage)) {
+		if (was_async) {
+			rreq->work.func = netfs_free_request;
+			if (!queue_work(system_unbound_wq, &rreq->work))
+				BUG();
+		} else {
+			netfs_free_request(&rreq->work);
+		}
+	}
+}
+
+/*
+ * Allocate and partially initialise an I/O request structure.
+ */
+struct netfs_io_subrequest *netfs_alloc_subrequest(struct netfs_io_request *rreq)
+{
+	struct netfs_io_subrequest *subreq;
+
+	subreq = kzalloc(sizeof(struct netfs_io_subrequest), GFP_KERNEL);
+	if (subreq) {
+		INIT_LIST_HEAD(&subreq->rreq_link);
+		refcount_set(&subreq->usage, 2);
+		subreq->rreq = rreq;
+		netfs_get_request(rreq);
+		netfs_stat(&netfs_n_rh_sreq);
+	}
+
+	return subreq;
+}
+
+void netfs_get_subrequest(struct netfs_io_subrequest *subreq)
+{
+	refcount_inc(&subreq->usage);
+}
+
+static void __netfs_put_subrequest(struct netfs_io_subrequest *subreq,
+				   bool was_async)
+{
+	struct netfs_io_request *rreq = subreq->rreq;
+
+	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
+	kfree(subreq);
+	netfs_stat_d(&netfs_n_rh_sreq);
+	netfs_put_request(rreq, was_async);
+}
+
+void netfs_put_subrequest(struct netfs_io_subrequest *subreq, bool was_async)
+{
+	if (refcount_dec_and_test(&subreq->usage))
+		__netfs_put_subrequest(subreq, was_async);
+}
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 26d54055b17e..ef23ef9889d5 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -27,122 +27,6 @@ unsigned netfs_debug;
 module_param_named(debug, netfs_debug, uint, S_IWUSR | S_IRUGO);
 MODULE_PARM_DESC(netfs_debug, "Netfs support debugging mask");
 
-static void netfs_rreq_work(struct work_struct *);
-static void __netfs_put_subrequest(struct netfs_io_subrequest *, bool);
-
-static void netfs_put_subrequest(struct netfs_io_subrequest *subreq,
-				 bool was_async)
-{
-	if (refcount_dec_and_test(&subreq->usage))
-		__netfs_put_subrequest(subreq, was_async);
-}
-
-static struct netfs_io_request *netfs_alloc_request(
-	const struct netfs_request_ops *ops, void *netfs_priv,
-	struct file *file)
-{
-	static atomic_t debug_ids;
-	struct netfs_io_request *rreq;
-
-	rreq = kzalloc(sizeof(struct netfs_io_request), GFP_KERNEL);
-	if (rreq) {
-		rreq->netfs_ops	= ops;
-		rreq->netfs_priv = netfs_priv;
-		rreq->inode	= file_inode(file);
-		rreq->i_size	= i_size_read(rreq->inode);
-		rreq->debug_id	= atomic_inc_return(&debug_ids);
-		INIT_LIST_HEAD(&rreq->subrequests);
-		INIT_WORK(&rreq->work, netfs_rreq_work);
-		refcount_set(&rreq->usage, 1);
-		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
-		if (ops->init_request)
-			ops->init_request(rreq, file);
-		netfs_stat(&netfs_n_rh_rreq);
-	}
-
-	return rreq;
-}
-
-static void netfs_get_request(struct netfs_io_request *rreq)
-{
-	refcount_inc(&rreq->usage);
-}
-
-static void netfs_clear_subrequests(struct netfs_io_request *rreq, bool was_async)
-{
-	struct netfs_io_subrequest *subreq;
-
-	while (!list_empty(&rreq->subrequests)) {
-		subreq = list_first_entry(&rreq->subrequests,
-					  struct netfs_io_subrequest, rreq_link);
-		list_del(&subreq->rreq_link);
-		netfs_put_subrequest(subreq, was_async);
-	}
-}
-
-static void netfs_free_request(struct work_struct *work)
-{
-	struct netfs_io_request *rreq =
-		container_of(work, struct netfs_io_request, work);
-	netfs_clear_subrequests(rreq, false);
-	if (rreq->netfs_priv)
-		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
-	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
-	if (rreq->cache_resources.ops)
-		rreq->cache_resources.ops->end_operation(&rreq->cache_resources);
-	kfree(rreq);
-	netfs_stat_d(&netfs_n_rh_rreq);
-}
-
-static void netfs_put_request(struct netfs_io_request *rreq, bool was_async)
-{
-	if (refcount_dec_and_test(&rreq->usage)) {
-		if (was_async) {
-			rreq->work.func = netfs_free_request;
-			if (!queue_work(system_unbound_wq, &rreq->work))
-				BUG();
-		} else {
-			netfs_free_request(&rreq->work);
-		}
-	}
-}
-
-/*
- * Allocate and partially initialise an I/O request structure.
- */
-static struct netfs_io_subrequest *netfs_alloc_subrequest(
-	struct netfs_io_request *rreq)
-{
-	struct netfs_io_subrequest *subreq;
-
-	subreq = kzalloc(sizeof(struct netfs_io_subrequest), GFP_KERNEL);
-	if (subreq) {
-		INIT_LIST_HEAD(&subreq->rreq_link);
-		refcount_set(&subreq->usage, 2);
-		subreq->rreq = rreq;
-		netfs_get_request(rreq);
-		netfs_stat(&netfs_n_rh_sreq);
-	}
-
-	return subreq;
-}
-
-static void netfs_get_subrequest(struct netfs_io_subrequest *subreq)
-{
-	refcount_inc(&subreq->usage);
-}
-
-static void __netfs_put_subrequest(struct netfs_io_subrequest *subreq,
-				   bool was_async)
-{
-	struct netfs_io_request *rreq = subreq->rreq;
-
-	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
-	kfree(subreq);
-	netfs_stat_d(&netfs_n_rh_sreq);
-	netfs_put_request(rreq, was_async);
-}
-
 /*
  * Clear the unread part of an I/O request.
  */
@@ -558,7 +442,7 @@ static void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
 	netfs_rreq_completed(rreq, was_async);
 }
 
-static void netfs_rreq_work(struct work_struct *work)
+void netfs_rreq_work(struct work_struct *work)
 {
 	struct netfs_io_request *rreq =
 		container_of(work, struct netfs_io_request, work);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
