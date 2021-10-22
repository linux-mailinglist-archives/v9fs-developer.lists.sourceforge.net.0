Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14626437D11
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:01:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdznD-0004PJ-Jo; Fri, 22 Oct 2021 19:01:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdznB-0004Ow-Q9
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ytbs/zXNK3wuO9yZSpNlpZaQfwQRB7REJakITqRsDuI=; b=Wj/D5OLZSGoPiLu7pDTJuIApjd
 2xTMwSgx3EAHydFh/l3CWhKAeGyLArpuj14v4snl9OU8ONYGtGMcYPYKEw76+pxM4T7Z+U/nrZSnb
 8qv9uqQ6TN3hNUKCfuxUSSO2bYb6Ornqr//jXq+x06/eAdGANL4asbqGy6dTvA+My/ZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ytbs/zXNK3wuO9yZSpNlpZaQfwQRB7REJakITqRsDuI=; b=lq6AOy8/tRMNh8m1mvRlRJnB4b
 2wM26+D0rf0rSBCgfwz8Xj3ZlPbSOY/5JaffA5EVrcvcQvSui6iFW7FIVoCZZuNaKiZ2mH+t9rCKb
 mp3DjJE9mEiXJQwyjj3KeqqwAxPeKc7LKkXuES953drFojFJqQk9NI6x4nXsGFA+nftk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzn5-00CHDg-M7
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929273;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ytbs/zXNK3wuO9yZSpNlpZaQfwQRB7REJakITqRsDuI=;
 b=CCDxOZ8sXth5SBPjIs0FGbLKdK7xvOScu9nAb6TBN3IVMsmrySP/fYgzoDSQPA4KDfZEVf
 d+2ScBfi4RlsFviWdcLx0SPvKQMRI8fIOSTIQyDH2H31P7I9A1io4VSykyrHzNV4+LTx5Z
 e/xLXI4ncOuKahKDD8eduY35WL1dNfA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-lBWdvtjUPQqsfzTjxmBzXw-1; Fri, 22 Oct 2021 15:01:09 -0400
X-MC-Unique: lBWdvtjUPQqsfzTjxmBzXw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F6EA806689;
 Fri, 22 Oct 2021 19:01:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C3595F707;
 Fri, 22 Oct 2021 19:00:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:00:58 +0100
Message-ID: <163492925850.1038219.15174806410814798944.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Introduce basic skeleton of the new,
 rewritten fscache driver.
 Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com
 --- fs/Kconfig | 1 fs/Makefile | 1 fs/cachefiles_old/Kconfig | 6 +
 fs/fscache/Kconfig
 | 40 +++++++++ fs/fscache/Makefile | 12 +++ fs/fscache/internal.h | 183
 ++++++++++++++++++++++++++++++++++++++++ fs/f [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzn5-00CHDg-M7
Subject: [V9fs-developer] [PATCH v2 07/53] fscache: Introduce new driver
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Introduce basic skeleton of the new, rewritten fscache driver.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/Kconfig                     |    1 
 fs/Makefile                    |    1 
 fs/cachefiles_old/Kconfig      |    6 +
 fs/fscache/Kconfig             |   40 +++++++++
 fs/fscache/Makefile            |   12 +++
 fs/fscache/internal.h          |  183 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/main.c              |   65 ++++++++++++++
 fs/fscache/proc.c              |   42 +++++++++
 fs/fscache/stats.c             |   22 +++++
 fs/fscache_old/Kconfig         |    4 +
 include/linux/fscache-cache.h  |   21 +++++
 include/linux/fscache.h        |   33 +++++++
 include/trace/events/fscache.h |   49 +++++++++++
 13 files changed, 478 insertions(+), 1 deletion(-)
 create mode 100644 fs/fscache/Kconfig
 create mode 100644 fs/fscache/Makefile
 create mode 100644 fs/fscache/internal.h
 create mode 100644 fs/fscache/main.c
 create mode 100644 fs/fscache/proc.c
 create mode 100644 fs/fscache/stats.c
 create mode 100644 include/linux/fscache-cache.h
 create mode 100644 include/linux/fscache.h
 create mode 100644 include/trace/events/fscache.h

diff --git a/fs/Kconfig b/fs/Kconfig
index 944f8b21f17c..68f662c09a8d 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -131,6 +131,7 @@ source "fs/overlayfs/Kconfig"
 menu "Caches"
 
 source "fs/netfs/Kconfig"
+source "fs/fscache/Kconfig"
 source "fs/fscache_old/Kconfig"
 source "fs/cachefiles_old/Kconfig"
 
diff --git a/fs/Makefile b/fs/Makefile
index e5cb91ecb29f..0dd8a4d526ad 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -67,6 +67,7 @@ obj-$(CONFIG_DLM)		+= dlm/
  
 # Do not add any filesystems before this line
 obj-$(CONFIG_NETFS_SUPPORT)	+= netfs/
+obj-$(CONFIG_FSCACHE)		+= fscache/
 obj-$(CONFIG_FSCACHE_OLD)	+= fscache_old/
 obj-$(CONFIG_REISERFS_FS)	+= reiserfs/
 obj-$(CONFIG_EXT4_FS)		+= ext4/
diff --git a/fs/cachefiles_old/Kconfig b/fs/cachefiles_old/Kconfig
index 48977018c64e..f1a657df6edd 100644
--- a/fs/cachefiles_old/Kconfig
+++ b/fs/cachefiles_old/Kconfig
@@ -2,12 +2,16 @@
 
 config CACHEFILES_OLD
 	tristate "Filesystem caching on files (old driver)"
-	depends on FSCACHE_OLD && BLOCK
+	depends on FSCACHE_OLD && BLOCK && !FSCACHE
 	help
 	  This permits use of a mounted filesystem as a cache for other
 	  filesystems - primarily networking filesystems - thus allowing fast
 	  local disk to enhance the speed of slower devices.
 
+	  [!] Note that this is mutually exclusive with the new cachefiles
+	  driver.  Only one may be built as they share a lot of the same
+	  symbols and also want to register the same device file.
+
 	  See Documentation/filesystems/caching/cachefiles.rst for more
 	  information.
 
diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
new file mode 100644
index 000000000000..b313a978ae0a
--- /dev/null
+++ b/fs/fscache/Kconfig
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config FSCACHE
+	tristate "General filesystem local caching manager"
+	select NETFS_SUPPORT
+	help
+	  This option enables a generic filesystem caching manager that can be
+	  used by various network and other filesystems to cache data locally.
+	  Different sorts of caches can be plugged in, depending on the
+	  resources available.
+
+	  See Documentation/filesystems/caching/fscache.rst for more information.
+
+config FSCACHE_STATS
+	bool "Gather statistical information on local caching"
+	depends on FSCACHE && PROC_FS
+	select NETFS_STATS
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
+
+	  See Documentation/filesystems/caching/fscache.rst for more information.
+
+config FSCACHE_DEBUG
+	bool "Debug FS-Cache"
+	depends on FSCACHE
+	help
+	  This permits debugging to be dynamically enabled in the local caching
+	  management module.  If this is set, the debugging output may be
+	  enabled by setting bits in /sys/modules/fscache/parameter/debug.
+
+	  See Documentation/filesystems/caching/fscache.rst for more information.
diff --git a/fs/fscache/Makefile b/fs/fscache/Makefile
new file mode 100644
index 000000000000..f9722de32247
--- /dev/null
+++ b/fs/fscache/Makefile
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for general filesystem caching code
+#
+
+fscache-y := \
+	main.o
+
+fscache-$(CONFIG_PROC_FS) += proc.o
+fscache-$(CONFIG_FSCACHE_STATS) += stats.o
+
+obj-$(CONFIG_FSCACHE) := fscache.o
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
new file mode 100644
index 000000000000..ea52f8594a77
--- /dev/null
+++ b/fs/fscache/internal.h
@@ -0,0 +1,183 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Internal definitions for FS-Cache
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#ifdef pr_fmt
+#undef pr_fmt
+#endif
+
+#define pr_fmt(fmt) "FS-Cache: " fmt
+
+#include <linux/slab.h>
+#include <linux/fscache-cache.h>
+#include <trace/events/fscache.h>
+#include <linux/sched.h>
+#include <linux/seq_file.h>
+
+/*
+ * main.c
+ */
+extern unsigned fscache_debug;
+
+/*
+ * proc.c
+ */
+#ifdef CONFIG_PROC_FS
+extern int __init fscache_proc_init(void);
+extern void fscache_proc_cleanup(void);
+#else
+#define fscache_proc_init()	(0)
+#define fscache_proc_cleanup()	do {} while (0)
+#endif
+
+/*
+ * stats.c
+ */
+#ifdef CONFIG_FSCACHE_STATS
+
+static inline void fscache_stat(atomic_t *stat)
+{
+	atomic_inc(stat);
+}
+
+static inline void fscache_stat_d(atomic_t *stat)
+{
+	atomic_dec(stat);
+}
+
+#define __fscache_stat(stat) (stat)
+
+int fscache_stats_show(struct seq_file *m, void *v);
+#else
+
+#define __fscache_stat(stat) (NULL)
+#define fscache_stat(stat) do {} while (0)
+#define fscache_stat_d(stat) do {} while (0)
+#endif
+
+
+/*****************************************************************************/
+/*
+ * debug tracing
+ */
+#define dbgprintk(FMT, ...) \
+	printk("[%-6.6s] "FMT"\n", current->comm, ##__VA_ARGS__)
+
+#define kenter(FMT, ...) dbgprintk("==> %s("FMT")", __func__, ##__VA_ARGS__)
+#define kleave(FMT, ...) dbgprintk("<== %s()"FMT"", __func__, ##__VA_ARGS__)
+#define kdebug(FMT, ...) dbgprintk(FMT, ##__VA_ARGS__)
+
+#define kjournal(FMT, ...) no_printk(FMT, ##__VA_ARGS__)
+
+#ifdef __KDEBUG
+#define _enter(FMT, ...) kenter(FMT, ##__VA_ARGS__)
+#define _leave(FMT, ...) kleave(FMT, ##__VA_ARGS__)
+#define _debug(FMT, ...) kdebug(FMT, ##__VA_ARGS__)
+
+#elif defined(CONFIG_FSCACHE_DEBUG)
+#define _enter(FMT, ...)			\
+do {						\
+	if (__do_kdebug(ENTER))			\
+		kenter(FMT, ##__VA_ARGS__);	\
+} while (0)
+
+#define _leave(FMT, ...)			\
+do {						\
+	if (__do_kdebug(LEAVE))			\
+		kleave(FMT, ##__VA_ARGS__);	\
+} while (0)
+
+#define _debug(FMT, ...)			\
+do {						\
+	if (__do_kdebug(DEBUG))			\
+		kdebug(FMT, ##__VA_ARGS__);	\
+} while (0)
+
+#else
+#define _enter(FMT, ...) no_printk("==> %s("FMT")", __func__, ##__VA_ARGS__)
+#define _leave(FMT, ...) no_printk("<== %s()"FMT"", __func__, ##__VA_ARGS__)
+#define _debug(FMT, ...) no_printk(FMT, ##__VA_ARGS__)
+#endif
+
+/*
+ * determine whether a particular optional debugging point should be logged
+ * - we need to go through three steps to persuade cpp to correctly join the
+ *   shorthand in FSCACHE_DEBUG_LEVEL with its prefix
+ */
+#define ____do_kdebug(LEVEL, POINT) \
+	unlikely((fscache_debug & \
+		  (FSCACHE_POINT_##POINT << (FSCACHE_DEBUG_ ## LEVEL * 3))))
+#define ___do_kdebug(LEVEL, POINT) \
+	____do_kdebug(LEVEL, POINT)
+#define __do_kdebug(POINT) \
+	___do_kdebug(FSCACHE_DEBUG_LEVEL, POINT)
+
+#define FSCACHE_DEBUG_CACHE	0
+#define FSCACHE_DEBUG_COOKIE	1
+#define FSCACHE_DEBUG_OBJECT	2
+#define FSCACHE_DEBUG_OPERATION	3
+
+#define FSCACHE_POINT_ENTER	1
+#define FSCACHE_POINT_LEAVE	2
+#define FSCACHE_POINT_DEBUG	4
+
+#ifndef FSCACHE_DEBUG_LEVEL
+#define FSCACHE_DEBUG_LEVEL CACHE
+#endif
+
+/*
+ * assertions
+ */
+#if 1 /* defined(__KDEBUGALL) */
+
+#define ASSERT(X)							\
+do {									\
+	if (unlikely(!(X))) {						\
+		pr_err("\n");					\
+		pr_err("Assertion failed\n");	\
+		BUG();							\
+	}								\
+} while (0)
+
+#define ASSERTCMP(X, OP, Y)						\
+do {									\
+	if (unlikely(!((X) OP (Y)))) {					\
+		pr_err("\n");					\
+		pr_err("Assertion failed\n");	\
+		pr_err("%lx " #OP " %lx is false\n",		\
+		       (unsigned long)(X), (unsigned long)(Y));		\
+		BUG();							\
+	}								\
+} while (0)
+
+#define ASSERTIF(C, X)							\
+do {									\
+	if (unlikely((C) && !(X))) {					\
+		pr_err("\n");					\
+		pr_err("Assertion failed\n");	\
+		BUG();							\
+	}								\
+} while (0)
+
+#define ASSERTIFCMP(C, X, OP, Y)					\
+do {									\
+	if (unlikely((C) && !((X) OP (Y)))) {				\
+		pr_err("\n");					\
+		pr_err("Assertion failed\n");	\
+		pr_err("%lx " #OP " %lx is false\n",		\
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
+#endif /* assert or not */
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
new file mode 100644
index 000000000000..819de2ee1276
--- /dev/null
+++ b/fs/fscache/main.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* General filesystem local caching manager
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#define FSCACHE_DEBUG_LEVEL CACHE
+#include <linux/module.h>
+#include <linux/init.h>
+#define CREATE_TRACE_POINTS
+#include "internal.h"
+
+MODULE_DESCRIPTION("FS Cache Manager");
+MODULE_AUTHOR("Red Hat, Inc.");
+MODULE_LICENSE("GPL");
+
+unsigned fscache_debug;
+module_param_named(debug, fscache_debug, uint,
+		   S_IWUSR | S_IRUGO);
+MODULE_PARM_DESC(fscache_debug,
+		 "FS-Cache debugging mask");
+
+struct workqueue_struct *fscache_wq;
+EXPORT_SYMBOL(fscache_wq);
+
+/*
+ * initialise the fs caching module
+ */
+static int __init fscache_init(void)
+{
+	int ret = -ENOMEM;
+
+	fscache_wq = alloc_workqueue("fscache", WQ_UNBOUND | WQ_FREEZABLE, 0);
+	if (!fscache_wq)
+		goto error_wq;
+
+	ret = fscache_proc_init();
+	if (ret < 0)
+		goto error_proc;
+
+	pr_notice("Loaded\n");
+	return 0;
+
+error_proc:
+	destroy_workqueue(fscache_wq);
+error_wq:
+	return ret;
+}
+
+fs_initcall(fscache_init);
+
+/*
+ * clean up on module removal
+ */
+static void __exit fscache_exit(void)
+{
+	_enter("");
+
+	fscache_proc_cleanup();
+	destroy_workqueue(fscache_wq);
+	pr_notice("Unloaded\n");
+}
+
+module_exit(fscache_exit);
diff --git a/fs/fscache/proc.c b/fs/fscache/proc.c
new file mode 100644
index 000000000000..b28003d7d63f
--- /dev/null
+++ b/fs/fscache/proc.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* FS-Cache statistics viewing interface
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#define FSCACHE_DEBUG_LEVEL CACHE
+#include <linux/module.h>
+#include <linux/proc_fs.h>
+#include <linux/seq_file.h>
+#include "internal.h"
+
+/*
+ * initialise the /proc/fs/fscache/ directory
+ */
+int __init fscache_proc_init(void)
+{
+	if (!proc_mkdir("fs/fscache", NULL))
+		goto error_dir;
+
+#ifdef CONFIG_FSCACHE_STATS
+	if (!proc_create_single("fs/fscache/stats", S_IFREG | 0444, NULL,
+				fscache_stats_show))
+		goto error;
+#endif
+
+	return 0;
+
+error:
+	remove_proc_entry("fs/fscache", NULL);
+error_dir:
+	return -ENOMEM;
+}
+
+/*
+ * clean up the /proc/fs/fscache/ directory
+ */
+void fscache_proc_cleanup(void)
+{
+	remove_proc_entry("fs/fscache", NULL);
+}
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
new file mode 100644
index 000000000000..bd92f93e1680
--- /dev/null
+++ b/fs/fscache/stats.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* FS-Cache statistics
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#define FSCACHE_DEBUG_LEVEL CACHE
+#include <linux/proc_fs.h>
+#include <linux/seq_file.h>
+#include "internal.h"
+
+/*
+ * display the general statistics
+ */
+int fscache_stats_show(struct seq_file *m, void *v)
+{
+	seq_puts(m, "FS-Cache statistics\n");
+
+	netfs_stats_show(m);
+	return 0;
+}
diff --git a/fs/fscache_old/Kconfig b/fs/fscache_old/Kconfig
index a5a657246df8..1e2e804e96f6 100644
--- a/fs/fscache_old/Kconfig
+++ b/fs/fscache_old/Kconfig
@@ -2,6 +2,7 @@
 
 config FSCACHE_OLD
 	tristate "General filesystem local caching manager (old driver)"
+	depends on FSCACHE=n
 	select NETFS_SUPPORT
 	help
 	  This option enables a generic filesystem caching manager that can be
@@ -9,6 +10,9 @@ config FSCACHE_OLD
 	  Different sorts of caches can be plugged in, depending on the
 	  resources available.
 
+	  [!] Note that this is mutually exclusive with the new fscache driver.
+	  Only one may be built as they share a lot of the same symbols.
+
 	  See Documentation/filesystems/caching/fscache.rst for more information.
 
 config FSCACHE_OLD_STATS
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
new file mode 100644
index 000000000000..d6910a913918
--- /dev/null
+++ b/include/linux/fscache-cache.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* General filesystem caching backing cache interface
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * NOTE!!! See:
+ *
+ *	Documentation/filesystems/caching/backend-api.rst
+ *
+ * for a description of the cache backend interface declared here.
+ */
+
+#ifndef _LINUX_FSCACHE_CACHE_H
+#define _LINUX_FSCACHE_CACHE_H
+
+#include <linux/fscache.h>
+
+extern struct workqueue_struct *fscache_wq;
+
+#endif /* _LINUX_FSCACHE_CACHE_H */
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
new file mode 100644
index 000000000000..18c5336e41a5
--- /dev/null
+++ b/include/linux/fscache.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* General filesystem caching interface
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * NOTE!!! See:
+ *
+ *	Documentation/filesystems/caching/netfs-api.rst
+ *
+ * for a description of the network filesystem interface declared here.
+ */
+
+#ifndef _LINUX_FSCACHE_H
+#define _LINUX_FSCACHE_H
+
+#include <linux/fs.h>
+#include <linux/list.h>
+#include <linux/pagemap.h>
+#include <linux/pagevec.h>
+#include <linux/list_bl.h>
+#include <linux/writeback.h>
+#include <linux/netfs.h>
+
+#if defined(CONFIG_FSCACHE) || defined(CONFIG_FSCACHE_MODULE)
+#define __fscache_available (1)
+#define fscache_available() (1)
+#else
+#define __fscache_available (0)
+#define fscache_available() (0)
+#endif
+
+#endif /* _LINUX_FSCACHE_H */
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
new file mode 100644
index 000000000000..fe214c5cc87f
--- /dev/null
+++ b/include/trace/events/fscache.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* FS-Cache tracepoints
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM fscache
+
+#if !defined(_TRACE_FSCACHE_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_FSCACHE_H
+
+#include <linux/fscache.h>
+#include <linux/tracepoint.h>
+
+/*
+ * Define enums for tracing information.
+ */
+#ifndef __FSCACHE_DECLARE_TRACE_ENUMS_ONCE_ONLY
+#define __FSCACHE_DECLARE_TRACE_ENUMS_ONCE_ONLY
+
+#endif
+
+/*
+ * Declare tracing information enums and their string mappings for display.
+ */
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
+#endif /* _TRACE_FSCACHE_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
