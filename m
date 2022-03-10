Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8894D4EDE
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 17:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSLWc-0000pK-4m; Thu, 10 Mar 2022 16:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nSLWa-0000p0-JT
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vx29rT5TlHTfNGQkxguW5BNxDabNH2dmb1JDbWcqEMk=; b=jgOPMYLGvyXPeCfTqTtHXedZIO
 LG5G84TIbFMJ5abOT+wcc04/Jn/3nECpc97DbFMwhZ2swcRNY3Yc+Z6GvLEwQzqr5+YXQFv/fB1hg
 mftbgkyRYP3mL9AhE4fZBvyGWRZ3RBmEVGYsTIgBUNEO8+msjaEIUJVv+HLBXAZFeJ2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vx29rT5TlHTfNGQkxguW5BNxDabNH2dmb1JDbWcqEMk=; b=gks4SjfCwobJTUqkZ+OGRAVV8+
 +Ek9SuFC1rA2OSs7L10QcEduPOimeh1ymGt7yDeBI22smPMmA9RTFP1q9ouzZXQln9WjD9fjPNIfo
 ng08lTXRFeFR8idQ7oJytefXjWgyCUkSWWXv5DZKr/dcwk+F1SXb9uNd7u35/tZ5TSGY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSLWY-00B6P2-ER
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646929216;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Vx29rT5TlHTfNGQkxguW5BNxDabNH2dmb1JDbWcqEMk=;
 b=hLtkkC7zbdoPfFL1ifyZBnzS9kMqTDfrOknAamIP5ihprG10GHAILCdL7VU3EnAImWIGzP
 5dZXlUBOqzALdb7CD2ZaYyI0V2l236UGEW3hKgwIR8Jf/1Ohy+U2yPf7o8GhFXQJZ4Qf3L
 cPPJR+4988B/ReHUGHh6rph5hDJrMLg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-28-v9Q8EBx7MqaLc751bjzqdQ-1; Thu, 10 Mar 2022 11:20:15 -0500
X-MC-Unique: v9Q8EBx7MqaLc751bjzqdQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 672C51091DA2;
 Thu, 10 Mar 2022 16:20:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E4637C038;
 Thu, 10 Mar 2022 16:20:10 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 16:20:09 +0000
Message-ID: <164692920944.2099075.11990502173226013856.stgit@warthog.procyon.org.uk>
In-Reply-To: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Split some core bits out into their own file. More bits will
 be added to this file later. Signed-off-by: David Howells
 <dhowells@redhat.com>
 Reviewed-by: Jeff Layton <jlayton@kernel.org> cc: linux-cachefs@redhat.com
 Link: https://lore.kernel.org/r/164623006934.3564931.17932680017894039748.
 [...] Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Headers-End: 1nSLWY-00B6P2-ER
Subject: [V9fs-developer] [PATCH v3 18/20] netfs: Split some core bits out
 into their own file
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

Split some core bits out into their own file.  More bits will be added to
this file later.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/164623006934.3564931.17932680017894039748.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/164678218407.1200972.1731208226140990280.stgit@warthog.procyon.org.uk/ # v2
---

 fs/netfs/Makefile   |    1 +
 fs/netfs/internal.h |    7 +++++--
 fs/netfs/io.c       |   10 ----------
 fs/netfs/main.c     |   20 ++++++++++++++++++++
 4 files changed, 26 insertions(+), 12 deletions(-)
 create mode 100644 fs/netfs/main.c

diff --git a/fs/netfs/Makefile b/fs/netfs/Makefile
index 88b904532bc7..f684c0cd1ec5 100644
--- a/fs/netfs/Makefile
+++ b/fs/netfs/Makefile
@@ -3,6 +3,7 @@
 netfs-y := \
 	buffered_read.o \
 	io.o \
+	main.o \
 	objects.o
 
 netfs-$(CONFIG_NETFS_STATS) += stats.o
diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index 1cd2778bfa7d..622b421d4753 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -23,10 +23,13 @@ void netfs_rreq_unlock_folios(struct netfs_io_request *rreq);
 /*
  * io.c
  */
-extern unsigned int netfs_debug;
-
 int netfs_begin_read(struct netfs_io_request *rreq, bool sync);
 
+/*
+ * main.c
+ */
+extern unsigned int netfs_debug;
+
 /*
  * objects.c
  */
diff --git a/fs/netfs/io.c b/fs/netfs/io.c
index 6d43f9ea1b5a..428925899282 100644
--- a/fs/netfs/io.c
+++ b/fs/netfs/io.c
@@ -15,16 +15,6 @@
 #include <linux/sched/mm.h>
 #include <linux/task_io_accounting_ops.h>
 #include "internal.h"
-#define CREATE_TRACE_POINTS
-#include <trace/events/netfs.h>
-
-MODULE_DESCRIPTION("Network fs support");
-MODULE_AUTHOR("Red Hat, Inc.");
-MODULE_LICENSE("GPL");
-
-unsigned netfs_debug;
-module_param_named(debug, netfs_debug, uint, S_IWUSR | S_IRUGO);
-MODULE_PARM_DESC(netfs_debug, "Netfs support debugging mask");
 
 /*
  * Clear the unread part of an I/O request.
diff --git a/fs/netfs/main.c b/fs/netfs/main.c
new file mode 100644
index 000000000000..068568702957
--- /dev/null
+++ b/fs/netfs/main.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Miscellaneous bits for the netfs support library.
+ *
+ * Copyright (C) 2022 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/module.h>
+#include <linux/export.h>
+#include "internal.h"
+#define CREATE_TRACE_POINTS
+#include <trace/events/netfs.h>
+
+MODULE_DESCRIPTION("Network fs support");
+MODULE_AUTHOR("Red Hat, Inc.");
+MODULE_LICENSE("GPL");
+
+unsigned netfs_debug;
+module_param_named(debug, netfs_debug, uint, S_IWUSR | S_IRUGO);
+MODULE_PARM_DESC(netfs_debug, "Netfs support debugging mask");




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
