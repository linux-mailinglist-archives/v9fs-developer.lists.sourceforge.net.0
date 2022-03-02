Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F534CA768
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Mar 2022 15:08:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPPeH-0002bw-4s; Wed, 02 Mar 2022 14:08:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nPPeE-0002bp-Ba
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:08:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VTkKdjHuL63ApKjhrgCkFANVRCDzUZyuGqw8sCyTceM=; b=Kon1EHNwBhPorLj6xJI98WZBJU
 mFgpR/fCG/sxTo85rB5HrSp1AJ08WsJs/28Rm/k8WlhVAYg+/XGPASFX/ERdCEJPAQItteYGCezzJ
 eMg3T18cHFYUrql/B9lIGdgi2+WCH7QEeTtBKrHAaM13OuRbjsnXqGhhA21X+AidLCNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VTkKdjHuL63ApKjhrgCkFANVRCDzUZyuGqw8sCyTceM=; b=ZCg1g08WL26ifIW23GsfSPBiG3
 4Kppej9e5GILNVN+u9EYHlnOY4BiRS0k9DWUGZfDn2cgDBWe/s2Q9GkmDE5eM4yO2ktMtZqZq6dob
 aGwdyYZL0PUt4wQgs64fF38wgRnkbvjW2Gz467r/2ERiI8qv3APU4jtifksRK9WwL/n0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPPeC-002cHw-4Z
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646230082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VTkKdjHuL63ApKjhrgCkFANVRCDzUZyuGqw8sCyTceM=;
 b=SB70tJo2A7W79Ld/mA2D+aEJ56TT5Jp9fxkTGs6MBXk6CpjvcdgmOGCb/T9+VaEy9Q6qDm
 S+RF0cKGCATUkBYvonmpsPpQOpKIgmD+0mS/tMocQZgSFU18xt1N1pda21yIhCOLuVObBa
 liWgIWhiMWX25Z/+bfTmlQ9Y3M7PwlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-358-WYsPWAjRMGWQ01Qx1d2wDA-1; Wed, 02 Mar 2022 09:07:59 -0500
X-MC-Unique: WYsPWAjRMGWQ01Qx1d2wDA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B1E11091DA2;
 Wed,  2 Mar 2022 14:07:57 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3EFF77B61E;
 Wed,  2 Mar 2022 14:07:50 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 02 Mar 2022 14:07:49 +0000
Message-ID: <164623006934.3564931.17932680017894039748.stgit@warthog.procyon.org.uk>
In-Reply-To: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
References: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Split some core bits out into their own file. More bits will
 be added to this file later. Signed-off-by: David Howells
 <dhowells@redhat.com>
 cc: linux-cachefs@redhat.com --- fs/netfs/Makefile | 1 + fs/netfs/internal.h
 | 7 +++++-- fs/netfs/main.c | 20 ++++++++++++++++++++ fs/netfs/read_helper.c
 | 10 4 files changed, 26 insertions(+), 12 deletions(-) create mode [...]
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nPPeC-002cHw-4Z
Subject: [V9fs-developer] [PATCH 15/19] netfs: Split some core bits out into
 their own file
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
---

 fs/netfs/Makefile      |    1 +
 fs/netfs/internal.h    |    7 +++++--
 fs/netfs/main.c        |   20 ++++++++++++++++++++
 fs/netfs/read_helper.c |   10 ----------
 4 files changed, 26 insertions(+), 12 deletions(-)
 create mode 100644 fs/netfs/main.c

diff --git a/fs/netfs/Makefile b/fs/netfs/Makefile
index 0466159b8222..029657b6db63 100644
--- a/fs/netfs/Makefile
+++ b/fs/netfs/Makefile
@@ -2,6 +2,7 @@
 
 netfs-y := \
 	buffered_read.o \
+	main.o \
 	objects.o \
 	read_helper.o
 
diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index 7d8e83deaf81..f9dd64521fe6 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -20,6 +20,11 @@
  */
 void netfs_rreq_unlock_folios(struct netfs_io_request *rreq);
 
+/*
+ * main.c
+ */
+extern unsigned int netfs_debug;
+
 /*
  * objects.c
  */
@@ -42,8 +47,6 @@ static inline void netfs_see_request(struct netfs_io_request *rreq,
 /*
  * read_helper.c
  */
-extern unsigned int netfs_debug;
-
 int netfs_begin_read(struct netfs_io_request *rreq, bool sync);
 
 /*
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
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 78843820d9f1..3db9356eb7c2 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
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




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
