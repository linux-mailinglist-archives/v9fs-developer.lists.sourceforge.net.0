Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 212414777CE
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:16:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtQK-0001L0-FB; Thu, 16 Dec 2021 16:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtQI-0001Kp-4P
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rhSCYlNAxROZVZPugYlqvIpH9Ku/neDzWS3oKwN+gC8=; b=HtHelzYwYUbZbo4bp5hIu7m2gW
 Wtwv6YLtpwIT49Gcw75w7akg5cPrM2fyqmsUUi39qkoKa0vFHoH3++qeKUHqwDtNud4oJSP6RbsQF
 S8DUCrTWZf1kuH7AOUXbodJEA3oldAGM2BKTk5NCATKR7iKSRInO+fy4+d7vl5WW7DUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rhSCYlNAxROZVZPugYlqvIpH9Ku/neDzWS3oKwN+gC8=; b=Fq9jOPfOvyxhf3bf1MiVH65w9j
 8BsJXEnQG6u8J36B7yCG6VAX7Rl2HDwv5e+Gd27jn4J6hP0+scH6xWeNfRotkf3F364EtpzIu09dy
 ifjsWGgj8qvnBhvWRat6MkCap2+l/kJDDnlTft1LMx0VkFvYbiW/lWPzzZaybNywew54=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtQG-0004Q5-RG
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:16:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671355;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rhSCYlNAxROZVZPugYlqvIpH9Ku/neDzWS3oKwN+gC8=;
 b=I0GQL+qyVk1HBUzojgqxEBUY+Mc3/R78U8VvFDcoG6xQxP+CUw0WA/ADPBHneVeHc/xKG9
 F4JEOzVJkQUXzJ7Tis92dkZX36jIkpTJDhcc8NtYa3ZtkV7NxVgGZm5CeuECQRHNv+W7zf
 N6nosHS0WRnezN5lVk/vTPimsVG1vyA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-M1a_Wi9cOyO3-Fzu0A1bTg-1; Thu, 16 Dec 2021 11:15:51 -0500
X-MC-Unique: M1a_Wi9cOyO3-Fzu0A1bTg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A737910B7464;
 Thu, 16 Dec 2021 16:15:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 051FF5BE3C;
 Thu, 16 Dec 2021 16:15:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:15:44 +0000
Message-ID: <163967134412.1823006.7354285948280296595.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add support for injecting ENOSPC or EIO errors. This needs
 to be enabled by CONFIG_CACHEFILES_ERROR_INJECTION=y. Once enabled, ENOSPC
 on things like write and mkdir can be triggered by: echo 1
 >/proc/sys/cachefiles/error_injection
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxtQG-0004Q5-RG
Subject: [V9fs-developer] [PATCH v3 32/68] cachefiles: Add some error
 injection support
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

Add support for injecting ENOSPC or EIO errors.  This needs to be enabled
by CONFIG_CACHEFILES_ERROR_INJECTION=y.  Once enabled, ENOSPC on things
like write and mkdir can be triggered by:

        echo 1 >/proc/sys/cachefiles/error_injection

and EIO can be triggered on most operations by:

        echo 2 >/proc/sys/cachefiles/error_injection

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819624706.215744.6911916249119962943.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906925343.143852.5465695512984025812.stgit@warthog.procyon.org.uk/ # v2
---

 fs/cachefiles/Kconfig        |    7 ++++++
 fs/cachefiles/Makefile       |    2 ++
 fs/cachefiles/error_inject.c |   46 ++++++++++++++++++++++++++++++++++++++++++
 fs/cachefiles/internal.h     |   42 +++++++++++++++++++++++++++++++++++++-
 fs/cachefiles/main.c         |   12 +++++++++++
 5 files changed, 108 insertions(+), 1 deletion(-)
 create mode 100644 fs/cachefiles/error_inject.c

diff --git a/fs/cachefiles/Kconfig b/fs/cachefiles/Kconfig
index 6827b40f7ddc..719faeeda168 100644
--- a/fs/cachefiles/Kconfig
+++ b/fs/cachefiles/Kconfig
@@ -19,3 +19,10 @@ config CACHEFILES_DEBUG
 	  caching on files module.  If this is set, the debugging output may be
 	  enabled by setting bits in /sys/modules/cachefiles/parameter/debug or
 	  by including a debugging specifier in /etc/cachefilesd.conf.
+
+config CACHEFILES_ERROR_INJECTION
+	bool "Provide error injection for cachefiles"
+	depends on CACHEFILES && SYSCTL
+	help
+	  This permits error injection to be enabled in cachefiles whilst a
+	  cache is in service.
diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index a7f3e982e249..183fb5f3b8b1 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -6,4 +6,6 @@
 cachefiles-y := \
 	main.o
 
+cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
+
 obj-$(CONFIG_CACHEFILES) := cachefiles.o
diff --git a/fs/cachefiles/error_inject.c b/fs/cachefiles/error_inject.c
new file mode 100644
index 000000000000..58f8aec964e4
--- /dev/null
+++ b/fs/cachefiles/error_inject.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Error injection handling.
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/sysctl.h>
+#include "internal.h"
+
+unsigned int cachefiles_error_injection_state;
+
+static struct ctl_table_header *cachefiles_sysctl;
+static struct ctl_table cachefiles_sysctls[] = {
+	{
+		.procname	= "error_injection",
+		.data		= &cachefiles_error_injection_state,
+		.maxlen		= sizeof(unsigned int),
+		.mode		= 0644,
+		.proc_handler	= proc_douintvec,
+	},
+	{}
+};
+
+static struct ctl_table cachefiles_sysctls_root[] = {
+	{
+		.procname	= "cachefiles",
+		.mode		= 0555,
+		.child		= cachefiles_sysctls,
+	},
+	{}
+};
+
+int __init cachefiles_register_error_injection(void)
+{
+	cachefiles_sysctl = register_sysctl_table(cachefiles_sysctls_root);
+	if (!cachefiles_sysctl)
+		return -ENOMEM;
+	return 0;
+
+}
+
+void cachefiles_unregister_error_injection(void)
+{
+	unregister_sysctl_table(cachefiles_sysctl);
+}
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index cff4b2a5f928..1f2fea902d3e 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -64,7 +64,47 @@ struct cachefiles_cache {
 
 
 /*
- * Debug tracing.
+ * error_inject.c
+ */
+#ifdef CONFIG_CACHEFILES_ERROR_INJECTION
+extern unsigned int cachefiles_error_injection_state;
+extern int cachefiles_register_error_injection(void);
+extern void cachefiles_unregister_error_injection(void);
+
+#else
+#define cachefiles_error_injection_state 0
+
+static inline int cachefiles_register_error_injection(void)
+{
+	return 0;
+}
+
+static inline void cachefiles_unregister_error_injection(void)
+{
+}
+#endif
+
+
+static inline int cachefiles_inject_read_error(void)
+{
+	return cachefiles_error_injection_state & 2 ? -EIO : 0;
+}
+
+static inline int cachefiles_inject_write_error(void)
+{
+	return cachefiles_error_injection_state & 2 ? -EIO :
+		cachefiles_error_injection_state & 1 ? -ENOSPC :
+		0;
+}
+
+static inline int cachefiles_inject_remove_error(void)
+{
+	return cachefiles_error_injection_state & 2 ? -EIO : 0;
+}
+
+
+/*
+ * Debug tracing
  */
 extern unsigned cachefiles_debug;
 #define CACHEFILES_DEBUG_KENTER	1
diff --git a/fs/cachefiles/main.c b/fs/cachefiles/main.c
index 47bc1cc078de..387d42c7185f 100644
--- a/fs/cachefiles/main.c
+++ b/fs/cachefiles/main.c
@@ -36,8 +36,18 @@ MODULE_LICENSE("GPL");
  */
 static int __init cachefiles_init(void)
 {
+	int ret;
+
+	ret = cachefiles_register_error_injection();
+	if (ret < 0)
+		goto error_einj;
+
 	pr_info("Loaded\n");
 	return 0;
+
+error_einj:
+	pr_err("failed to register: %d\n", ret);
+	return ret;
 }
 
 fs_initcall(cachefiles_init);
@@ -48,6 +58,8 @@ fs_initcall(cachefiles_init);
 static void __exit cachefiles_exit(void)
 {
 	pr_info("Unloading\n");
+
+	cachefiles_unregister_error_injection();
 }
 
 module_exit(cachefiles_exit);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
