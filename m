Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF544437DCA
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:07:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzt2-00085n-KF; Fri, 22 Oct 2021 19:07:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzt0-00085a-Pt
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CMxHhXvUOlvGw+qeTEv6X6muQC06Hq1jUlVTYd/qhDc=; b=DUCszxXaOqG5dBNWWlhOVOQ/EM
 OyVyorzBCMZ8qW7ug0m/lddO4Ds7+dTCgNP2hq0Av5uxih1+0iGUjPcDzZxkImC+Gd3hV7IKnASnN
 YOgLr86dt6Q9wCgCTdGTRi7D9WliXIOxde+EvOCnUtTtZFEwAtXWqGa14Fhbuj0Cv8jw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CMxHhXvUOlvGw+qeTEv6X6muQC06Hq1jUlVTYd/qhDc=; b=knnQLH+OfL4v8V3jTDypv4s+yw
 oO8Kh0FfesFvNdQZieGHGx5wuO/0cbTmM+DfXeCy13k6RrCLh36+Ba2MVRYIgxTgE9X3FA1cVun7I
 l0nBQ+iglhjMuAxH5WTkcTcW/ppHGSmuKN6BEDcKwMoCBFxPw4iOWeswm7nbZWyOGKNs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzsz-00CHaj-Lr
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929639;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CMxHhXvUOlvGw+qeTEv6X6muQC06Hq1jUlVTYd/qhDc=;
 b=TSfHSQkOMbgu+RdSiZzv+1Wjw5Y2t0C0BCUDNq6EWv+XDR8MAtGptzQcm0d0PoUPpgm8r9
 o9iZeGocZxlsFtFFXjObNrv9RBaQlON9wlAlS1GJOQKgXfOuSkRyhwtRvAVBavWAsdJSTW
 pjo804k2edTYydXNb5zaw74qzj2/qpM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-9AonSckGNo6IBQYtBAP3vQ-1; Fri, 22 Oct 2021 15:07:16 -0400
X-MC-Unique: 9AonSckGNo6IBQYtBAP3vQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52BE1108087A;
 Fri, 22 Oct 2021 19:07:14 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8956E16A31;
 Fri, 22 Oct 2021 19:07:08 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:07:07 +0100
Message-ID: <163492962776.1038219.10021364844260712717.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Implement a function to get/create structural directories
 in the cache. This is used for setting up a cache and creating volume
 substructures.
 Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzsz-00CHaj-Lr
Subject: [V9fs-developer] [PATCH v2 35/53] cachefiles: Implement a function
 to get/create a directory in the cache
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

Implement a function to get/create structural directories in the cache.
This is used for setting up a cache and creating volume substructures.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/Makefile   |    3 +
 fs/cachefiles/internal.h |    7 ++
 fs/cachefiles/namei.c    |  133 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 142 insertions(+), 1 deletion(-)
 create mode 100644 fs/cachefiles/namei.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 4c80d9af151f..06a87f78b88c 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -5,7 +5,8 @@
 
 cachefiles-y := \
 	daemon.o \
-	main.o
+	main.o \
+	namei.o
 
 cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
 
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 3ccc8411c502..4e77c3004d98 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -168,6 +168,13 @@ static inline int cachefiles_inject_remove_error(void)
 	return cachefiles_error_injection_state & 2 ? -EIO : 0;
 }
 
+/*
+ * namei.c
+ */
+extern struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
+					       struct dentry *dir,
+					       const char *name);
+
 /*
  * error handling
  */
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
new file mode 100644
index 000000000000..69915dde0a83
--- /dev/null
+++ b/fs/cachefiles/namei.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* CacheFiles path walking and related routines
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/module.h>
+#include <linux/sched.h>
+#include <linux/file.h>
+#include <linux/fs.h>
+#include <linux/fsnotify.h>
+#include <linux/quotaops.h>
+#include <linux/xattr.h>
+#include <linux/mount.h>
+#include <linux/namei.h>
+#include <linux/security.h>
+#include <linux/slab.h>
+#include "internal.h"
+
+/*
+ * get a subdirectory
+ */
+struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
+					struct dentry *dir,
+					const char *dirname)
+{
+	struct dentry *subdir;
+	struct path path;
+	int ret;
+
+	_enter(",,%s", dirname);
+
+	/* search the current directory for the element name */
+	inode_lock(d_inode(dir));
+
+retry:
+	ret = cachefiles_inject_read_error();
+	if (ret == 0)
+		subdir = lookup_one_len(dirname, dir, strlen(dirname));
+	else
+		subdir = ERR_PTR(ret);
+	if (IS_ERR(subdir)) {
+		trace_cachefiles_vfs_error(NULL, d_backing_inode(dir),
+					   PTR_ERR(subdir),
+					   cachefiles_trace_lookup_error);
+		if (PTR_ERR(subdir) == -ENOMEM)
+			goto nomem_d_alloc;
+		goto lookup_error;
+	}
+
+	_debug("subdir -> %pd %s",
+	       subdir, d_backing_inode(subdir) ? "positive" : "negative");
+
+	/* we need to create the subdir if it doesn't exist yet */
+	if (d_is_negative(subdir)) {
+		if (cache->store) {
+			ret = cachefiles_has_space(cache, 1, 0);
+			if (ret < 0)
+				goto mkdir_error;
+		}
+
+		_debug("attempt mkdir");
+
+		path.mnt = cache->mnt;
+		path.dentry = dir;
+		ret = security_path_mkdir(&path, subdir, 0700);
+		if (ret < 0)
+			goto mkdir_error;
+		ret = cachefiles_inject_write_error();
+		if (ret == 0)
+			ret = vfs_mkdir(&init_user_ns, d_inode(dir), subdir, 0700);
+		if (ret < 0) {
+			trace_cachefiles_vfs_error(NULL, d_inode(dir), ret,
+						   cachefiles_trace_mkdir_error);
+			goto mkdir_error;
+		}
+
+		if (unlikely(d_unhashed(subdir))) {
+			dput(subdir);
+			goto retry;
+		}
+		ASSERT(d_backing_inode(subdir));
+
+		_debug("mkdir -> %pd{ino=%lu}",
+		       subdir, d_backing_inode(subdir)->i_ino);
+	}
+
+	inode_unlock(d_inode(dir));
+
+	/* we need to make sure the subdir is a directory */
+	ASSERT(d_backing_inode(subdir));
+
+	if (!d_can_lookup(subdir)) {
+		pr_err("%s is not a directory\n", dirname);
+		ret = -EIO;
+		goto check_error;
+	}
+
+	ret = -EPERM;
+	if (!(d_backing_inode(subdir)->i_opflags & IOP_XATTR) ||
+	    !d_backing_inode(subdir)->i_op->lookup ||
+	    !d_backing_inode(subdir)->i_op->mkdir ||
+	    !d_backing_inode(subdir)->i_op->rename ||
+	    !d_backing_inode(subdir)->i_op->rmdir ||
+	    !d_backing_inode(subdir)->i_op->unlink)
+		goto check_error;
+
+	_leave(" = [%lu]", d_backing_inode(subdir)->i_ino);
+	return subdir;
+
+check_error:
+	dput(subdir);
+	_leave(" = %d [check]", ret);
+	return ERR_PTR(ret);
+
+mkdir_error:
+	inode_unlock(d_inode(dir));
+	dput(subdir);
+	pr_err("mkdir %s failed with error %d\n", dirname, ret);
+	return ERR_PTR(ret);
+
+lookup_error:
+	inode_unlock(d_inode(dir));
+	ret = PTR_ERR(subdir);
+	pr_err("Lookup %s failed with error %d\n", dirname, ret);
+	return ERR_PTR(ret);
+
+nomem_d_alloc:
+	inode_unlock(d_inode(dir));
+	_leave(" = -ENOMEM");
+	return ERR_PTR(-ENOMEM);
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
