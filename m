Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0594777E6
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:16:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtQw-0005d2-6x; Thu, 16 Dec 2021 16:16:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtQv-0005cs-3a
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:16:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KymHupIXw83JHorZiSSnslywZOK6yGkW37dRdC6tTqc=; b=M8cUwOqMZR62juOYOZy29bu7dc
 u4MGdwkPns6ov3X+ugEZHhwMlh8YuHLbirGxXC4Uhr72cBi3WfmHetC+CKwD4MoKa5rQ35W+WCdLX
 iFIXzl+vc4WNsUkdAUFvvhiTT50Og2ad+6ZeiQ+11VPLUBCdx/Cd9lUBTLYkGLQv3wPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KymHupIXw83JHorZiSSnslywZOK6yGkW37dRdC6tTqc=; b=ktYNq7+Vmpj0Gq3LIoO5fhzFOd
 VV49wqNcfvSr/Q6bYs84Xe+D/aQfrd+GwxU8S+Q9biVUF0CVfLBGPd/VsFD/hUrzHh9mB+cjwMRh2
 8RqmLmU7I1gRHL7EjQzHImuHlt5bM+i/TAU8ZxxHZLA3rxhiWTew9fG44Rxx2z8NSMsY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtQu-0007n0-07
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671393;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KymHupIXw83JHorZiSSnslywZOK6yGkW37dRdC6tTqc=;
 b=a7UvF5eVUO9BmfDgURGROpJqMsf/7HFhSvTiFLDoRjKH5c4TkmNutrj/mEgm57Oy3KPw73
 af6D/oEfz7Tky6dLXzYfc7M8/wF+KKI9JjQ2P3b8M3inxCM3vr401ODqGIjSWJx+BuBBp+
 P9P5sTOMSRj2fAoa8O4+O65XsGqBw8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-nnrVPZGTPwiUJPTNv1FddA-1; Thu, 16 Dec 2021 11:16:28 -0500
X-MC-Unique: nnrVPZGTPwiUJPTNv1FddA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98AAE1926DA4;
 Thu, 16 Dec 2021 16:16:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2F9904E2B6;
 Thu, 16 Dec 2021 16:16:22 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:16:21 +0000
Message-ID: <163967138138.1823006.7620933448261939504.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Implement code to derive a new set of creds for the
 cachefiles
 to use when making VFS or I/O calls and to change the auditing info since
 the application interacting with the network filesystem is not [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1mxtQu-0007n0-07
Subject: [V9fs-developer] [PATCH v3 35/68] cachefiles: Add security
 derivation
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

Implement code to derive a new set of creds for the cachefiles to use when
making VFS or I/O calls and to change the auditing info since the
application interacting with the network filesystem is not accessing the
cache directly.  Cachefiles uses override_creds() to change the effective
creds temporarily.

set_security_override_from_ctx() is called to derive the LSM 'label' that
the cachefiles driver will act with.  set_create_files_as() is called to
determine the LSM 'label' that will be applied to files and directories
created in the cache.  These functions alter the new creds.

Also implement a couple of functions to wrap the calls to begin/end cred
overriding.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819627469.215744.3603633690679962985.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906928172.143852.15886637013364286786.stgit@warthog.procyon.org.uk/ # v2
---

 fs/cachefiles/Makefile   |    3 +
 fs/cachefiles/internal.h |   20 ++++++++
 fs/cachefiles/security.c |  112 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 134 insertions(+), 1 deletion(-)
 create mode 100644 fs/cachefiles/security.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 183fb5f3b8b1..28bbb0d14868 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -4,7 +4,8 @@
 #
 
 cachefiles-y := \
-	main.o
+	main.o \
+	security.o
 
 cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
 
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index b2adcb59b4ce..e57ce5ef875c 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -104,6 +104,26 @@ static inline int cachefiles_inject_remove_error(void)
 	return cachefiles_error_injection_state & 2 ? -EIO : 0;
 }
 
+/*
+ * security.c
+ */
+extern int cachefiles_get_security_ID(struct cachefiles_cache *cache);
+extern int cachefiles_determine_cache_security(struct cachefiles_cache *cache,
+					       struct dentry *root,
+					       const struct cred **_saved_cred);
+
+static inline void cachefiles_begin_secure(struct cachefiles_cache *cache,
+					   const struct cred **_saved_cred)
+{
+	*_saved_cred = override_creds(cache->cache_cred);
+}
+
+static inline void cachefiles_end_secure(struct cachefiles_cache *cache,
+					 const struct cred *saved_cred)
+{
+	revert_creds(saved_cred);
+}
+
 /*
  * Error handling
  */
diff --git a/fs/cachefiles/security.c b/fs/cachefiles/security.c
new file mode 100644
index 000000000000..fe777164f1d8
--- /dev/null
+++ b/fs/cachefiles/security.c
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* CacheFiles security management
+ *
+ * Copyright (C) 2007, 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/fs.h>
+#include <linux/cred.h>
+#include "internal.h"
+
+/*
+ * determine the security context within which we access the cache from within
+ * the kernel
+ */
+int cachefiles_get_security_ID(struct cachefiles_cache *cache)
+{
+	struct cred *new;
+	int ret;
+
+	_enter("{%s}", cache->secctx);
+
+	new = prepare_kernel_cred(current);
+	if (!new) {
+		ret = -ENOMEM;
+		goto error;
+	}
+
+	if (cache->secctx) {
+		ret = set_security_override_from_ctx(new, cache->secctx);
+		if (ret < 0) {
+			put_cred(new);
+			pr_err("Security denies permission to nominate security context: error %d\n",
+			       ret);
+			goto error;
+		}
+	}
+
+	cache->cache_cred = new;
+	ret = 0;
+error:
+	_leave(" = %d", ret);
+	return ret;
+}
+
+/*
+ * see if mkdir and create can be performed in the root directory
+ */
+static int cachefiles_check_cache_dir(struct cachefiles_cache *cache,
+				      struct dentry *root)
+{
+	int ret;
+
+	ret = security_inode_mkdir(d_backing_inode(root), root, 0);
+	if (ret < 0) {
+		pr_err("Security denies permission to make dirs: error %d",
+		       ret);
+		return ret;
+	}
+
+	ret = security_inode_create(d_backing_inode(root), root, 0);
+	if (ret < 0)
+		pr_err("Security denies permission to create files: error %d",
+		       ret);
+
+	return ret;
+}
+
+/*
+ * check the security details of the on-disk cache
+ * - must be called with security override in force
+ * - must return with a security override in force - even in the case of an
+ *   error
+ */
+int cachefiles_determine_cache_security(struct cachefiles_cache *cache,
+					struct dentry *root,
+					const struct cred **_saved_cred)
+{
+	struct cred *new;
+	int ret;
+
+	_enter("");
+
+	/* duplicate the cache creds for COW (the override is currently in
+	 * force, so we can use prepare_creds() to do this) */
+	new = prepare_creds();
+	if (!new)
+		return -ENOMEM;
+
+	cachefiles_end_secure(cache, *_saved_cred);
+
+	/* use the cache root dir's security context as the basis with
+	 * which create files */
+	ret = set_create_files_as(new, d_backing_inode(root));
+	if (ret < 0) {
+		abort_creds(new);
+		cachefiles_begin_secure(cache, _saved_cred);
+		_leave(" = %d [cfa]", ret);
+		return ret;
+	}
+
+	put_cred(cache->cache_cred);
+	cache->cache_cred = new;
+
+	cachefiles_begin_secure(cache, _saved_cred);
+	ret = cachefiles_check_cache_dir(cache, root);
+
+	if (ret == -EOPNOTSUPP)
+		ret = 0;
+	_leave(" = %d", ret);
+	return ret;
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
