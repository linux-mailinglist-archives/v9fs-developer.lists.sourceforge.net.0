Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F22536A683
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:14:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labmC-0006KA-69; Sun, 25 Apr 2021 10:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lablV-00069I-FJ
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:13:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EXm0/zkCpc46eEZAEOGKiNQPLLsOpPGJ+uA8iZ9Jp0Q=; b=b/OCl52NqURbS+5g0yeFTLu210
 UOiVcaiOlrn3vbducfDfdgsqHYaqghX2iURwUWGbkmaW8EB4I62yaSBTSJmpCyqiP61pe5BYZBJpV
 nODo7g5nP/N92KlaqCUz3i6Sg56KfrWs2zqrcTxya0td+z2w9JkMX1fdKDFG685Tg/Lc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EXm0/zkCpc46eEZAEOGKiNQPLLsOpPGJ+uA8iZ9Jp0Q=; b=Muqjq3el4euX3nV6uNUSR2AoK/
 mAfAPa3eyjR42yWI/7vf/8vmB6TSYd0gbr1epkwL7wnG23NWFU56Pl+3AD7jSOknXNK9bh3x7fOee
 QozmdHMDPZC+VTztA1EamtmTJKk1oDAG7KxvEKn5+19wHkqUBBt0NP7aDZctxQLmt9ds=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lablI-006Cxh-Bj
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:13:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345585;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EXm0/zkCpc46eEZAEOGKiNQPLLsOpPGJ+uA8iZ9Jp0Q=;
 b=LNKpWGXq9LET+BjEqQ9Oe6oggjhywUnftmT77DMGwBU8rLRQpa8W0NMqXZ5i1KcaIlOkok
 5RT7tlFdg59OgdyzpN+Z1klKDD+8DW6SSi1KXFPi+WKGfM7k5iuxiymBmertk1LUH1u290
 Qws6Yn7Vp86pShEjzPLJ4Gd7Hze6vtY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-Z4015FNLP9m4Gk-osDTUdw-1; Fri, 23 Apr 2021 09:29:52 -0400
X-MC-Unique: Z4015FNLP9m4Gk-osDTUdw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0E4183DD20;
 Fri, 23 Apr 2021 13:29:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 69DDD19C71;
 Fri, 23 Apr 2021 13:29:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:29:42 +0100
Message-ID: <161918458267.3145707.636812865092750424.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lablI-006Cxh-Bj
Subject: [V9fs-developer] [PATCH v7 09/31] netfs,
 mm: Move PG_fscache helper funcs to linux/netfs.h
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
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Move the PG_fscache related helper funcs (such as SetPageFsCache()) to
linux/netfs.h rather than linux/fscache.h as the intention is to move to a
model where they're used by the network filesystem and the helper library,
but not by fscache/cachefiles itself.

Signed-off-by: David Howells <dhowells@redhat.com>
Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dave Wysochanski <dwysocha@redhat.com>
Tested-By: Marc Dionne <marc.dionne@auristor.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/161340392347.1303470.18065131603507621762.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539534516.286939.6265142985563005000.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653792959.2770958.5386546945273988117.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789073997.6155.18442271115255650614.stgit@warthog.procyon.org.uk/ # v6
---

 include/linux/fscache.h |   11 +----------
 include/linux/netfs.h   |   29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 10 deletions(-)
 create mode 100644 include/linux/netfs.h

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index a1c928fe98e7..1f8dc72369ee 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -19,6 +19,7 @@
 #include <linux/pagemap.h>
 #include <linux/pagevec.h>
 #include <linux/list_bl.h>
+#include <linux/netfs.h>
 
 #if defined(CONFIG_FSCACHE) || defined(CONFIG_FSCACHE_MODULE)
 #define fscache_available() (1)
@@ -29,16 +30,6 @@
 #endif
 
 
-/*
- * overload PG_private_2 to give us PG_fscache - this is used to indicate that
- * a page is currently backed by a local disk cache
- */
-#define PageFsCache(page)		PagePrivate2((page))
-#define SetPageFsCache(page)		SetPagePrivate2((page))
-#define ClearPageFsCache(page)		ClearPagePrivate2((page))
-#define TestSetPageFsCache(page)	TestSetPagePrivate2((page))
-#define TestClearPageFsCache(page)	TestClearPagePrivate2((page))
-
 /* pattern used to fill dead space in an index entry */
 #define FSCACHE_INDEX_DEADFILL_PATTERN 0x79
 
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
new file mode 100644
index 000000000000..cc1102040488
--- /dev/null
+++ b/include/linux/netfs.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Network filesystem support services.
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * See:
+ *
+ *	Documentation/filesystems/netfs_library.rst
+ *
+ * for a description of the network filesystem interface declared here.
+ */
+
+#ifndef _LINUX_NETFS_H
+#define _LINUX_NETFS_H
+
+#include <linux/pagemap.h>
+
+/*
+ * Overload PG_private_2 to give us PG_fscache - this is used to indicate that
+ * a page is currently backed by a local disk cache
+ */
+#define PageFsCache(page)		PagePrivate2((page))
+#define SetPageFsCache(page)		SetPagePrivate2((page))
+#define ClearPageFsCache(page)		ClearPagePrivate2((page))
+#define TestSetPageFsCache(page)	TestSetPagePrivate2((page))
+#define TestClearPageFsCache(page)	TestClearPagePrivate2((page))
+
+#endif /* _LINUX_NETFS_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
