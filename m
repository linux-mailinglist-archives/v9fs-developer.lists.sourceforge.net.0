Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5703A46EFD7
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 18:02:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvMoG-0003az-Un; Thu, 09 Dec 2021 17:02:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvMoF-0003am-0i
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rlz2og2HMBSSCZQNdBkqbSN2wIBhObGZncvgJ6g4Rzk=; b=MGnJz4ku6fmGXpAnd6GXtDIhoM
 Dh4zG9oJ3eITwl4kHXocuSctaaVk2HOh3tzFpt0cG/LWn7SQ15H05CqwCP7jZPDHeAQhjZV1mvvHN
 KhqPZnpCFOmZkx/bjTxrSoahfIkTGnVyW2+F92zouS+zH+iLa/Y48e2ARzK3hFpUeCjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rlz2og2HMBSSCZQNdBkqbSN2wIBhObGZncvgJ6g4Rzk=; b=bcSiRGbbinGxFT0tvlCCSu8fXf
 YacobYZ1TzLPh4vzUzwX4BQpSO/1mxHX3Ewy7hSbVB0sDiO+bAVLafXFvajUbtogXMH0zRj9cuguL
 tuKZM4B8yNPstFUwRZoAyv2yI6eSIquQtDvgU4VlIzfvllKTIcZBfo0tspr3fGyIaSJ0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvMoD-00012e-NZ
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639069331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rlz2og2HMBSSCZQNdBkqbSN2wIBhObGZncvgJ6g4Rzk=;
 b=U4VkbaG0SkZYi1n9zpy2wclh1sS0dFiAblD83Z/iglcQYFCwebXzRTv/AdIiFpcDq4qfB3
 8CEBLpgUKoby6bF67vBeV1T9Razg0EnNgrNmZmTKz5gEJQP155tAJKFOXvE/pCglA38/Lw
 LZXXWHlCCsUqd9xt0l21U8Hfl7NeZe8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-488-I59W042GPgum5C45LE8vFw-1; Thu, 09 Dec 2021 12:02:08 -0500
X-MC-Unique: I59W042GPgum5C45LE8vFw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15EF993920;
 Thu,  9 Dec 2021 17:02:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC6A560BF1;
 Thu,  9 Dec 2021 17:01:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 09 Dec 2021 17:01:56 +0000
Message-ID: <163906931596.143852.8642051223094013028.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use an inode flag, S_KERNEL_FILE, to mark that a backing file
 is in use by the kernel to prevent cachefiles or other kernel services from
 interfering with that file. Alter rmdir to reject attempts to remove a
 directory
 marked with this flag. This is used by cachefiles to prevent cachefilesd
 from removing them. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvMoD-00012e-NZ
Subject: [V9fs-developer] [PATCH v2 38/67] vfs,
 cachefiles: Mark a backing file in use with an inode flag
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

Use an inode flag, S_KERNEL_FILE, to mark that a backing file is in use by
the kernel to prevent cachefiles or other kernel services from interfering
with that file.

Alter rmdir to reject attempts to remove a directory marked with this flag.
This is used by cachefiles to prevent cachefilesd from removing them.

Using S_SWAPFILE instead isn't really viable as that has other effects in
the I/O paths.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819630256.215744.4815885535039369574.stgit@warthog.procyon.org.uk/ # v1
---

 fs/cachefiles/Makefile            |    1 +
 fs/cachefiles/namei.c             |   44 +++++++++++++++++++++++++++++++++++++
 fs/namei.c                        |    3 ++-
 include/linux/fs.h                |    1 +
 include/trace/events/cachefiles.h |   42 +++++++++++++++++++++++++++++++++++
 5 files changed, 90 insertions(+), 1 deletion(-)
 create mode 100644 fs/cachefiles/namei.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 463e3d608b75..e0b092ca077f 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -7,6 +7,7 @@ cachefiles-y := \
 	cache.o \
 	daemon.o \
 	main.o \
+	namei.o \
 	security.o
 
 cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
new file mode 100644
index 000000000000..fef06d2a88ec
--- /dev/null
+++ b/fs/cachefiles/namei.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* CacheFiles path walking and related routines
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/fs.h>
+#include "internal.h"
+
+/*
+ * Mark the backing file as being a cache file if it's not already in use.  The
+ * mark tells the culling request command that it's not allowed to cull the
+ * file or directory.  The caller must hold the inode lock.
+ */
+static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
+					   struct dentry *dentry)
+{
+	struct inode *inode = d_backing_inode(dentry);
+	bool can_use = false;
+
+	if (!(inode->i_flags & S_KERNEL_FILE)) {
+		inode->i_flags |= S_KERNEL_FILE;
+		if (object)
+			trace_cachefiles_mark_active(object, inode);
+		can_use = true;
+	} else {
+		pr_notice("cachefiles: Inode already in use: %pd\n", dentry);
+	}
+
+	return can_use;
+}
+
+/*
+ * Unmark a backing inode.  The caller must hold the inode lock.
+ */
+static void __cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
+					     struct dentry *dentry)
+{
+	struct inode *inode = d_backing_inode(dentry);
+
+	inode->i_flags &= ~S_KERNEL_FILE;
+	trace_cachefiles_mark_inactive(object, inode);
+}
diff --git a/fs/namei.c b/fs/namei.c
index 1f9d2187c765..d81f04f8d818 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -3958,7 +3958,8 @@ int vfs_rmdir(struct user_namespace *mnt_userns, struct inode *dir,
 	inode_lock(dentry->d_inode);
 
 	error = -EBUSY;
-	if (is_local_mountpoint(dentry))
+	if (is_local_mountpoint(dentry) ||
+	    (dentry->d_inode->i_flags & S_KERNEL_FILE))
 		goto out;
 
 	error = security_inode_rmdir(dir, dentry);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 2c0b8e77d9ab..bcf1ca430139 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -2249,6 +2249,7 @@ struct super_operations {
 #define S_ENCRYPTED	(1 << 14) /* Encrypted file (using fs/crypto/) */
 #define S_CASEFOLD	(1 << 15) /* Casefolded file */
 #define S_VERITY	(1 << 16) /* Verity file (using fs/verity/) */
+#define S_KERNEL_FILE	(1 << 17) /* File is in use by the kernel (eg. fs/cachefiles) */
 
 /*
  * Note that nosuid etc flags are inode-specific: setting some file-system
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 9bd5a8a60801..29fdcfddbbc2 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -83,6 +83,48 @@ cachefiles_error_traces;
 #define E_(a, b)	{ a, b }
 
 
+TRACE_EVENT(cachefiles_mark_active,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct inode *inode),
+
+	    TP_ARGS(obj, inode),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		obj		)
+		    __field(ino_t,			inode		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->debug_id;
+		    __entry->inode	= inode->i_ino;
+			   ),
+
+	    TP_printk("o=%08x i=%lx",
+		      __entry->obj, __entry->inode)
+	    );
+
+TRACE_EVENT(cachefiles_mark_inactive,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct inode *inode),
+
+	    TP_ARGS(obj, inode),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		obj		)
+		    __field(ino_t,			inode		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->debug_id;
+		    __entry->inode	= inode->i_ino;
+			   ),
+
+	    TP_printk("o=%08x i=%lx",
+		      __entry->obj, __entry->inode)
+	    );
+
 TRACE_EVENT(cachefiles_vfs_error,
 	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer,
 		     int error, enum cachefiles_error_trace where),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
