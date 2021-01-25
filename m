Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1460302DC4
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 22:32:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l49TY-0002BZ-J0; Mon, 25 Jan 2021 21:32:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l49TX-0002BS-SI
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v7fCoJ8HkBfmxmTyjKKl7GkYsc8QfZgtAwp9O5OoZEE=; b=ACznv7xwUls0ZSwhSoY9C95Qkl
 FfVW0SayMXo4qzl4el+RYTT1njLfy+7XZqXUyquC+Iw3Dac+/dXbSqutMNO7d5/e5y5hD3+4oOSfG
 v8iUgiXdRFK4DEQD09aQl0vrqnQNovdoMt5L+RBXHCuzPP6w75XQ88quQSCaKjoLqpSk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v7fCoJ8HkBfmxmTyjKKl7GkYsc8QfZgtAwp9O5OoZEE=; b=d6fTpSPdDvLgOxJHkBYPTzs5C8
 EbVdDnPUJ0zLWkRF23W9DCHEc5YO1ICxoeayBg7kSLbgBORVnBAorlCrcH12D7h4WZ9MUGQGmytRh
 V9zosBp5c36a5Q9vm/2BjXQUH58Kpzqs6YQgkdr4ll7tsntJV1RmDxzS2KxBk1IYc6zs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l49TU-007cOL-97
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611610354;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v7fCoJ8HkBfmxmTyjKKl7GkYsc8QfZgtAwp9O5OoZEE=;
 b=jCamnq/P4WWHczWSkmpjl5E+UrnRH62dDOpxwnN69NfBW1FShhuibDgX7bCK4n6PEtKiNZ
 dZ2QczrqmnudgE9lcd0tQnsmJcCF58CjVyvZ7gbwfaLWgkuOTAJIFbsqq04ENiW9mTrbZl
 9jty+2sS/dNHeJ/VVLrEj4SEziv2/h0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-4f-PkSIdM065CBmjMwzDvQ-1; Mon, 25 Jan 2021 16:32:32 -0500
X-MC-Unique: 4f-PkSIdM065CBmjMwzDvQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30DCFCE649;
 Mon, 25 Jan 2021 21:32:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BC3D5D6AB;
 Mon, 25 Jan 2021 21:32:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 25 Jan 2021 21:32:26 +0000
Message-ID: <161161034669.2537118.2761232524997091480.stgit@warthog.procyon.org.uk>
In-Reply-To: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l49TU-007cOL-97
Subject: [V9fs-developer] [PATCH 08/32] netfs: Gather stats
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Gather statistics from the netfs interface that can be exported through a
seqfile.  This is intended to be called by a later patch when viewing
/proc/fs/fscache/stats.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/netfs/Kconfig       |   15 +++++++++++++
 fs/netfs/Makefile      |    3 +--
 fs/netfs/internal.h    |   34 ++++++++++++++++++++++++++++++
 fs/netfs/read_helper.c |   23 ++++++++++++++++++++
 fs/netfs/stats.c       |   54 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/netfs.h  |    1 +
 6 files changed, 128 insertions(+), 2 deletions(-)
 create mode 100644 fs/netfs/stats.c

diff --git a/fs/netfs/Kconfig b/fs/netfs/Kconfig
index 2ebf90e6ca95..578112713703 100644
--- a/fs/netfs/Kconfig
+++ b/fs/netfs/Kconfig
@@ -6,3 +6,18 @@ config NETFS_SUPPORT
 	  This option enables support for network filesystems, including
 	  helpers for high-level buffered I/O, abstracting out read
 	  segmentation, local caching and transparent huge page support.
+
+config NETFS_STATS
+	bool "Gather statistical information on local caching"
+	depends on NETFS_SUPPORT && PROC_FS
+	help
+	  This option causes statistical information to be gathered on local
+	  caching and exported through file:
+
+		/proc/fs/fscache/stats
+
+	  The gathering of statistics adds a certain amount of overhead to
+	  execution as there are a quite a few stats gathered, and on a
+	  multi-CPU system these may be on cachelines that keep bouncing
+	  between CPUs.  On the other hand, the stats are very useful for
+	  debugging purposes.  Saying 'Y' here is recommended.
diff --git a/fs/netfs/Makefile b/fs/netfs/Makefile
index 4b4eff2ba369..c15bfc966d96 100644
--- a/fs/netfs/Makefile
+++ b/fs/netfs/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-netfs-y := \
-	read_helper.o
+netfs-y := read_helper.o stats.o
 
 obj-$(CONFIG_NETFS_SUPPORT) := netfs.o
diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index ee665c0e7dc8..98b6f4516da1 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -16,8 +16,42 @@
  */
 extern unsigned int netfs_debug;
 
+/*
+ * stats.c
+ */
+#ifdef CONFIG_NETFS_STATS
+extern atomic_t netfs_n_rh_readahead;
+extern atomic_t netfs_n_rh_readpage;
+extern atomic_t netfs_n_rh_rreq;
+extern atomic_t netfs_n_rh_sreq;
+extern atomic_t netfs_n_rh_download;
+extern atomic_t netfs_n_rh_download_done;
+extern atomic_t netfs_n_rh_download_failed;
+extern atomic_t netfs_n_rh_download_instead;
+extern atomic_t netfs_n_rh_read;
+extern atomic_t netfs_n_rh_read_done;
+extern atomic_t netfs_n_rh_read_failed;
+extern atomic_t netfs_n_rh_zero;
+extern atomic_t netfs_n_rh_short_read;
+extern atomic_t netfs_n_rh_write;
+extern atomic_t netfs_n_rh_write_done;
+extern atomic_t netfs_n_rh_write_failed;
+
+
+static inline void netfs_stat(atomic_t *stat)
+{
+	atomic_inc(stat);
+}
+
+static inline void netfs_stat_d(atomic_t *stat)
+{
+	atomic_dec(stat);
+}
+
+#else
 #define netfs_stat(x) do {} while(0)
 #define netfs_stat_d(x) do {} while(0)
+#endif
 
 /*****************************************************************************/
 /*
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 2a90314ea36f..275ac37e2834 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -55,6 +55,7 @@ static struct netfs_read_request *netfs_alloc_read_request(
 		refcount_set(&rreq->usage, 1);
 		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 		ops->init_rreq(rreq, file);
+		netfs_stat(&netfs_n_rh_rreq);
 	}
 
 	return rreq;
@@ -86,6 +87,7 @@ static void netfs_free_read_request(struct work_struct *work)
 		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
 	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
 	kfree(rreq);
+	netfs_stat_d(&netfs_n_rh_rreq);
 }
 
 static void netfs_put_read_request(struct netfs_read_request *rreq)
@@ -114,6 +116,7 @@ static struct netfs_read_subrequest *netfs_alloc_subrequest(
 		INIT_LIST_HEAD(&subreq->rreq_link);
 		refcount_set(&subreq->usage, 2);
 		subreq->rreq = rreq;
+		netfs_stat(&netfs_n_rh_sreq);
 	}
 
 	return subreq;
@@ -129,6 +132,7 @@ static void __netfs_put_subrequest(struct netfs_read_subrequest *subreq)
 	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
 	netfs_put_read_request(subreq->rreq);
 	kfree(subreq);
+	netfs_stat_d(&netfs_n_rh_sreq);
 }
 
 /*
@@ -150,6 +154,7 @@ static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
 static void netfs_fill_with_zeroes(struct netfs_read_request *rreq,
 				   struct netfs_read_subrequest *subreq)
 {
+	netfs_stat(&netfs_n_rh_zero);
 	__set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
 	netfs_subreq_terminated(subreq, 0);
 }
@@ -173,6 +178,7 @@ static void netfs_fill_with_zeroes(struct netfs_read_request *rreq,
 static void netfs_read_from_server(struct netfs_read_request *rreq,
 				   struct netfs_read_subrequest *subreq)
 {
+	netfs_stat(&netfs_n_rh_download);
 	rreq->netfs_ops->issue_op(subreq);
 }
 
@@ -278,6 +284,7 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
 	__clear_bit(NETFS_SREQ_SHORT_READ, &subreq->flags);
 	__set_bit(NETFS_SREQ_SEEK_DATA_READ, &subreq->flags);
 
+	netfs_stat(&netfs_n_rh_short_read);
 	trace_netfs_sreq(subreq, netfs_sreq_trace_resubmit_short);
 
 	netfs_get_read_subrequest(subreq);
@@ -309,6 +316,7 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
 				break;
 			subreq->source = NETFS_DOWNLOAD_FROM_SERVER;
 			subreq->error = 0;
+			netfs_stat(&netfs_n_rh_download_instead);
 			trace_netfs_sreq(subreq, netfs_sreq_trace_download_instead);
 			netfs_get_read_subrequest(subreq);
 			atomic_inc(&rreq->nr_rd_ops);
@@ -399,6 +407,17 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
 	       subreq->debug_index, subreq->start, subreq->flags,
 	       transferred_or_error);
 
+	switch (subreq->source) {
+	case NETFS_READ_FROM_CACHE:
+		netfs_stat(&netfs_n_rh_read_done);
+		break;
+	case NETFS_DOWNLOAD_FROM_SERVER:
+		netfs_stat(&netfs_n_rh_download_done);
+		break;
+	default:
+		break;
+	}
+
 	if (IS_ERR_VALUE(transferred_or_error)) {
 		subreq->error = transferred_or_error;
 		goto failed;
@@ -452,8 +471,10 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
 
 failed:
 	if (subreq->source == NETFS_READ_FROM_CACHE) {
+		netfs_stat(&netfs_n_rh_read_failed);
 		set_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags);
 	} else {
+		netfs_stat(&netfs_n_rh_download_failed);
 		set_bit(NETFS_RREQ_FAILED, &rreq->flags);
 		rreq->error = subreq->error;
 	}
@@ -636,6 +657,7 @@ void netfs_readahead(struct readahead_control *ractl,
 	rreq->start	= readahead_pos(ractl);
 	rreq->len	= readahead_length(ractl);
 
+	netfs_stat(&netfs_n_rh_readahead);
 	trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
 			 netfs_read_trace_readahead);
 
@@ -710,6 +732,7 @@ int netfs_readpage(struct file *file,
 	rreq->start	= page->index * PAGE_SIZE;
 	rreq->len	= thp_size(page);
 
+	netfs_stat(&netfs_n_rh_readpage);
 	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
 
 	netfs_get_read_request(rreq);
diff --git a/fs/netfs/stats.c b/fs/netfs/stats.c
new file mode 100644
index 000000000000..df6ff5718f25
--- /dev/null
+++ b/fs/netfs/stats.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Netfs support statistics
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/export.h>
+#include <linux/seq_file.h>
+#include <linux/netfs.h>
+#include "internal.h"
+
+atomic_t netfs_n_rh_readahead;
+atomic_t netfs_n_rh_readpage;
+atomic_t netfs_n_rh_rreq;
+atomic_t netfs_n_rh_sreq;
+atomic_t netfs_n_rh_download;
+atomic_t netfs_n_rh_download_done;
+atomic_t netfs_n_rh_download_failed;
+atomic_t netfs_n_rh_download_instead;
+atomic_t netfs_n_rh_read;
+atomic_t netfs_n_rh_read_done;
+atomic_t netfs_n_rh_read_failed;
+atomic_t netfs_n_rh_zero;
+atomic_t netfs_n_rh_short_read;
+atomic_t netfs_n_rh_write;
+atomic_t netfs_n_rh_write_done;
+atomic_t netfs_n_rh_write_failed;
+
+void netfs_stats_show(struct seq_file *m)
+{
+	seq_printf(m, "RdHelp : RA=%u RP=%u rr=%u sr=%u\n",
+		   atomic_read(&netfs_n_rh_readahead),
+		   atomic_read(&netfs_n_rh_readpage),
+		   atomic_read(&netfs_n_rh_rreq),
+		   atomic_read(&netfs_n_rh_sreq));
+	seq_printf(m, "RdHelp : ZR=%u sh=%u\n",
+		   atomic_read(&netfs_n_rh_zero),
+		   atomic_read(&netfs_n_rh_short_read));
+	seq_printf(m, "RdHelp : DL=%u ds=%u df=%u di=%u\n",
+		   atomic_read(&netfs_n_rh_download),
+		   atomic_read(&netfs_n_rh_download_done),
+		   atomic_read(&netfs_n_rh_download_failed),
+		   atomic_read(&netfs_n_rh_download_instead));
+	seq_printf(m, "RdHelp : RD=%u rs=%u rf=%u\n",
+		   atomic_read(&netfs_n_rh_read),
+		   atomic_read(&netfs_n_rh_read_done),
+		   atomic_read(&netfs_n_rh_read_failed));
+	seq_printf(m, "RdHelp : WR=%u ws=%u wf=%u\n",
+		   atomic_read(&netfs_n_rh_write),
+		   atomic_read(&netfs_n_rh_write_done),
+		   atomic_read(&netfs_n_rh_write_failed));
+}
+EXPORT_SYMBOL(netfs_stats_show);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 0779cf082101..92a08d8b8e61 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -106,5 +106,6 @@ extern int netfs_readpage(struct file *,
 			  void *);
 
 extern void netfs_subreq_terminated(struct netfs_read_subrequest *, ssize_t);
+extern void netfs_stats_show(struct seq_file *);
 
 #endif /* _LINUX_NETFS_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
