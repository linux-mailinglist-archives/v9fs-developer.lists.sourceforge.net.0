Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B34B64D24EC
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:30:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjHG-0004ik-P4; Tue, 08 Mar 2022 23:30:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjHF-0004id-PE
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:30:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LzpdmCDROwTrlpYlkIraqtI+njSbi6AnE1ba2zkJXHY=; b=Gs9I2pTyco1Ci2HeLH40PTZfTK
 6hEmuBNpLMQvIhpMPqa1DfRdmg9psPt0Z+n7r7aHZtwPquwyS14jJtEYqJGZTr6St3DlmGyoS1BdE
 EXBmfR9S1x+ISPbjdYR3vHuFjIaWMy7ZIHYD+W6FmB2mSPosnZnECOVdB75mJpI5+fEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LzpdmCDROwTrlpYlkIraqtI+njSbi6AnE1ba2zkJXHY=; b=dA4IahliyBETXZ67jo3o9Ce2Ud
 Oa27QDj8sdT/L0uJIyVTfki14cy6Lz6POcZzTx0ZDCXKwcDZ/sQhPZo5cdGJVTSRKlMSBCsIfhbK2
 glm4hcvAS6QPWu1vGCL86kbly40KTCPi2o3h2Ukab5Jafg8Ro92/Y/K2V+XPeOVdNrZY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjHC-0003pm-MO
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646782192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LzpdmCDROwTrlpYlkIraqtI+njSbi6AnE1ba2zkJXHY=;
 b=OueNPT97Oio6upg/75t34RGkyQNkNHoZE4Zz6gA6lOgnr82C2ttW4CJP4E2PNAOmF//0Xv
 xtAqFyv9jU78a4dJXU8maY8a7GtPsBWuvwCsO45Q/yq0jlw9n6KvoRRwz9tQcE+fntCUpN
 +wJUtrRO/wbGXzPFJ2IiO7fPMqMW+f8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-134-MLHGqE6TOLyeFxOn5_KQqQ-1; Tue, 08 Mar 2022 18:29:49 -0500
X-MC-Unique: MLHGqE6TOLyeFxOn5_KQqQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB4ED80205C;
 Tue,  8 Mar 2022 23:29:47 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D44435DBA0;
 Tue,  8 Mar 2022 23:29:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:29:44 +0000
Message-ID: <164678218407.1200972.1731208226140990280.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Split some core bits out into their own file. More bits will
 be added to this file later. Signed-off-by: David Howells
 <dhowells@redhat.com> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/164623006934.3564931.17932680017894039748.stgit@warthog.procyon.org.uk/
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
X-Headers-End: 1nRjHC-0003pm-MO
Subject: [V9fs-developer] [PATCH v2 17/19] netfs: Split some core bits out
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

Split some core bits out into their own file.  More bits will be added to
this file later.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/164623006934.3564931.17932680017894039748.stgit@warthog.procyon.org.uk/ # v1
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
index 1fe9706c58a5..4a3b7989cd1c 100644
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
