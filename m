Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A371A4777C0
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:15:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtPr-0001Jr-4B; Thu, 16 Dec 2021 16:15:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtPf-0001Jd-AW
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bqyajELkkx0L5yd81Ro5FRuuAJj0UYEFX9wImpAXvxQ=; b=e2YMWIdG8wGTCWn9PFnt4EBVoO
 I7XY76dxogPv6uAvLIpMh+haUPsHRA04ipHuc3zRf9DlM54+PqIhIGGq5RNMka8qvg4njUduMp0HI
 h19W+RufDrJeBGDLMiUSinLKAvXl+mEZjMKx5MpUMg6bpFyKRrBHWXp3Zx0u67mjZcJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bqyajELkkx0L5yd81Ro5FRuuAJj0UYEFX9wImpAXvxQ=; b=JdGJU+u2P+TaywoohXJbtVuj0J
 y6pukTAVaWoWZq1uy+PdAf2x9XX/ZSMX5cmZ9oNW9McXg8Ey1lQjjwqJqeamLQTJEX4K0L3gwbOMj
 wGhSxcInIWK7u6YWy/Vxmy89k8/DKUdLf49bZQzTfHqRyeVxXvMZypp9w+BtLlswpEk4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtPe-0007jv-4Z
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bqyajELkkx0L5yd81Ro5FRuuAJj0UYEFX9wImpAXvxQ=;
 b=faHRBs09RY77pLae9mRNhrb4gNfCYEFKKdfO00MlCxmMV1jwWSd7Cc+RmL8J7p84PVvoRz
 rkjes4wXHsqYyPs1FLVgGYe6s7909vZcvWPXco8xqdVJoWVEIBl0uXqbLSrm2fMorm2mE0
 EWrjjyhndReBw4Px6CDbQFQ0OL3Fjbs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-De5pWCEpPySaQJ_5j9bSFA-1; Thu, 16 Dec 2021 11:15:11 -0500
X-MC-Unique: De5pWCEpPySaQJ_5j9bSFA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC180101AFBA;
 Thu, 16 Dec 2021 16:15:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1BAB75ED4A;
 Thu, 16 Dec 2021 16:15:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:15:03 +0000
Message-ID: <163967130320.1823006.15791456613198441566.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Introduce basic skeleton of the rewritten cachefiles driver
 including config options so that it can be enabled for compilation.
 Signed-off-by:
 David Howells <dhowells@redhat.com> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163819622766.215744.9108359326983195047.stgit@warthog.procyon.org.uk/
 # v1 Link: https:/ [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
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
X-Headers-End: 1mxtPe-0007jv-4Z
Subject: [V9fs-developer] [PATCH v3 30/68] cachefiles: Introduce rewritten
 driver
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
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Introduce basic skeleton of the rewritten cachefiles driver including
config options so that it can be enabled for compilation.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819622766.215744.9108359326983195047.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906923341.143852.3856498104256721447.stgit@warthog.procyon.org.uk/ # v2
---

 fs/Kconfig                        |    1 
 fs/Makefile                       |    1 
 fs/cachefiles/Kconfig             |   21 +++++++
 fs/cachefiles/Makefile            |    9 +++
 fs/cachefiles/internal.h          |  115 +++++++++++++++++++++++++++++++++++++
 fs/cachefiles/main.c              |   53 +++++++++++++++++
 include/trace/events/cachefiles.h |   49 ++++++++++++++++
 7 files changed, 249 insertions(+)
 create mode 100644 fs/cachefiles/Kconfig
 create mode 100644 fs/cachefiles/Makefile
 create mode 100644 fs/cachefiles/internal.h
 create mode 100644 fs/cachefiles/main.c
 create mode 100644 include/trace/events/cachefiles.h

diff --git a/fs/Kconfig b/fs/Kconfig
index 86e311377e6e..a6313a969bc5 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -132,6 +132,7 @@ menu "Caches"
 
 source "fs/netfs/Kconfig"
 source "fs/fscache/Kconfig"
+source "fs/cachefiles/Kconfig"
 
 endmenu
 
diff --git a/fs/Makefile b/fs/Makefile
index 290815f3fd31..84c5e4cdfee5 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -125,6 +125,7 @@ obj-$(CONFIG_AFS_FS)		+= afs/
 obj-$(CONFIG_NILFS2_FS)		+= nilfs2/
 obj-$(CONFIG_BEFS_FS)		+= befs/
 obj-$(CONFIG_HOSTFS)		+= hostfs/
+obj-$(CONFIG_CACHEFILES)	+= cachefiles/
 obj-$(CONFIG_DEBUG_FS)		+= debugfs/
 obj-$(CONFIG_TRACING)		+= tracefs/
 obj-$(CONFIG_OCFS2_FS)		+= ocfs2/
diff --git a/fs/cachefiles/Kconfig b/fs/cachefiles/Kconfig
new file mode 100644
index 000000000000..6827b40f7ddc
--- /dev/null
+++ b/fs/cachefiles/Kconfig
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config CACHEFILES
+	tristate "Filesystem caching on files"
+	depends on FSCACHE && BLOCK
+	help
+	  This permits use of a mounted filesystem as a cache for other
+	  filesystems - primarily networking filesystems - thus allowing fast
+	  local disk to enhance the speed of slower devices.
+
+	  See Documentation/filesystems/caching/cachefiles.rst for more
+	  information.
+
+config CACHEFILES_DEBUG
+	bool "Debug CacheFiles"
+	depends on CACHEFILES
+	help
+	  This permits debugging to be dynamically enabled in the filesystem
+	  caching on files module.  If this is set, the debugging output may be
+	  enabled by setting bits in /sys/modules/cachefiles/parameter/debug or
+	  by including a debugging specifier in /etc/cachefilesd.conf.
diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
new file mode 100644
index 000000000000..a7f3e982e249
--- /dev/null
+++ b/fs/cachefiles/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for caching in a mounted filesystem
+#
+
+cachefiles-y := \
+	main.o
+
+obj-$(CONFIG_CACHEFILES) := cachefiles.o
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
new file mode 100644
index 000000000000..26e0e23d7702
--- /dev/null
+++ b/fs/cachefiles/internal.h
@@ -0,0 +1,115 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* General netfs cache on cache files internal defs
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#ifdef pr_fmt
+#undef pr_fmt
+#endif
+
+#define pr_fmt(fmt) "CacheFiles: " fmt
+
+
+#include <linux/fscache-cache.h>
+#include <linux/cred.h>
+#include <linux/security.h>
+
+
+/*
+ * Debug tracing.
+ */
+extern unsigned cachefiles_debug;
+#define CACHEFILES_DEBUG_KENTER	1
+#define CACHEFILES_DEBUG_KLEAVE	2
+#define CACHEFILES_DEBUG_KDEBUG	4
+
+#define dbgprintk(FMT, ...) \
+	printk(KERN_DEBUG "[%-6.6s] "FMT"\n", current->comm, ##__VA_ARGS__)
+
+#define kenter(FMT, ...) dbgprintk("==> %s("FMT")", __func__, ##__VA_ARGS__)
+#define kleave(FMT, ...) dbgprintk("<== %s()"FMT"", __func__, ##__VA_ARGS__)
+#define kdebug(FMT, ...) dbgprintk(FMT, ##__VA_ARGS__)
+
+
+#if defined(__KDEBUG)
+#define _enter(FMT, ...) kenter(FMT, ##__VA_ARGS__)
+#define _leave(FMT, ...) kleave(FMT, ##__VA_ARGS__)
+#define _debug(FMT, ...) kdebug(FMT, ##__VA_ARGS__)
+
+#elif defined(CONFIG_CACHEFILES_DEBUG)
+#define _enter(FMT, ...)				\
+do {							\
+	if (cachefiles_debug & CACHEFILES_DEBUG_KENTER)	\
+		kenter(FMT, ##__VA_ARGS__);		\
+} while (0)
+
+#define _leave(FMT, ...)				\
+do {							\
+	if (cachefiles_debug & CACHEFILES_DEBUG_KLEAVE)	\
+		kleave(FMT, ##__VA_ARGS__);		\
+} while (0)
+
+#define _debug(FMT, ...)				\
+do {							\
+	if (cachefiles_debug & CACHEFILES_DEBUG_KDEBUG)	\
+		kdebug(FMT, ##__VA_ARGS__);		\
+} while (0)
+
+#else
+#define _enter(FMT, ...) no_printk("==> %s("FMT")", __func__, ##__VA_ARGS__)
+#define _leave(FMT, ...) no_printk("<== %s()"FMT"", __func__, ##__VA_ARGS__)
+#define _debug(FMT, ...) no_printk(FMT, ##__VA_ARGS__)
+#endif
+
+#if 1 /* defined(__KDEBUGALL) */
+
+#define ASSERT(X)							\
+do {									\
+	if (unlikely(!(X))) {						\
+		pr_err("\n");						\
+		pr_err("Assertion failed\n");		\
+		BUG();							\
+	}								\
+} while (0)
+
+#define ASSERTCMP(X, OP, Y)						\
+do {									\
+	if (unlikely(!((X) OP (Y)))) {					\
+		pr_err("\n");						\
+		pr_err("Assertion failed\n");		\
+		pr_err("%lx " #OP " %lx is false\n",			\
+		       (unsigned long)(X), (unsigned long)(Y));		\
+		BUG();							\
+	}								\
+} while (0)
+
+#define ASSERTIF(C, X)							\
+do {									\
+	if (unlikely((C) && !(X))) {					\
+		pr_err("\n");						\
+		pr_err("Assertion failed\n");		\
+		BUG();							\
+	}								\
+} while (0)
+
+#define ASSERTIFCMP(C, X, OP, Y)					\
+do {									\
+	if (unlikely((C) && !((X) OP (Y)))) {				\
+		pr_err("\n");						\
+		pr_err("Assertion failed\n");		\
+		pr_err("%lx " #OP " %lx is false\n",			\
+		       (unsigned long)(X), (unsigned long)(Y));		\
+		BUG();							\
+	}								\
+} while (0)
+
+#else
+
+#define ASSERT(X)			do {} while (0)
+#define ASSERTCMP(X, OP, Y)		do {} while (0)
+#define ASSERTIF(C, X)			do {} while (0)
+#define ASSERTIFCMP(C, X, OP, Y)	do {} while (0)
+
+#endif
diff --git a/fs/cachefiles/main.c b/fs/cachefiles/main.c
new file mode 100644
index 000000000000..47bc1cc078de
--- /dev/null
+++ b/fs/cachefiles/main.c
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Network filesystem caching backend to use cache files on a premounted
+ * filesystem
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/sched.h>
+#include <linux/completion.h>
+#include <linux/slab.h>
+#include <linux/fs.h>
+#include <linux/file.h>
+#include <linux/namei.h>
+#include <linux/mount.h>
+#include <linux/statfs.h>
+#include <linux/sysctl.h>
+#include <linux/miscdevice.h>
+#include <linux/netfs.h>
+#include <trace/events/netfs.h>
+#define CREATE_TRACE_POINTS
+#include "internal.h"
+
+unsigned cachefiles_debug;
+module_param_named(debug, cachefiles_debug, uint, S_IWUSR | S_IRUGO);
+MODULE_PARM_DESC(cachefiles_debug, "CacheFiles debugging mask");
+
+MODULE_DESCRIPTION("Mounted-filesystem based cache");
+MODULE_AUTHOR("Red Hat, Inc.");
+MODULE_LICENSE("GPL");
+
+/*
+ * initialise the fs caching module
+ */
+static int __init cachefiles_init(void)
+{
+	pr_info("Loaded\n");
+	return 0;
+}
+
+fs_initcall(cachefiles_init);
+
+/*
+ * clean up on module removal
+ */
+static void __exit cachefiles_exit(void)
+{
+	pr_info("Unloading\n");
+}
+
+module_exit(cachefiles_exit);
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
new file mode 100644
index 000000000000..5ee0aabb20be
--- /dev/null
+++ b/include/trace/events/cachefiles.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* CacheFiles tracepoints
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM cachefiles
+
+#if !defined(_TRACE_CACHEFILES_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_CACHEFILES_H
+
+#include <linux/tracepoint.h>
+
+/*
+ * Define enums for tracing information.
+ */
+#ifndef __CACHEFILES_DECLARE_TRACE_ENUMS_ONCE_ONLY
+#define __CACHEFILES_DECLARE_TRACE_ENUMS_ONCE_ONLY
+
+#endif
+
+/*
+ * Define enum -> string mappings for display.
+ */
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
+/*
+ * Now redefine the EM() and E_() macros to map the enums to the strings that
+ * will be printed in the output.
+ */
+#undef EM
+#undef E_
+#define EM(a, b)	{ a, b },
+#define E_(a, b)	{ a, b }
+
+
+#endif /* _TRACE_CACHEFILES_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
