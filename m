Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6262A47DACE
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:25:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AzC-0005Ls-Sp; Wed, 22 Dec 2021 23:25:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AzB-0005Li-8e
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/uzRZMer5z6WS6dS+wrpCqKam5ER/17NM8wpjBKGhGc=; b=gwy0FNQ+Fs8Ort87Xh/R1wNP2Q
 6AveS4ajCq2z/oG/7dwa6O6x3c47944Y4NFcy/mBbeMAh8zgpzXMiLzWOAXaJ78isbmsIs8KcFLt2
 gOBvI4sT2h0yITanjxYepZ+mD49yXHfJNy6L/+/kPlZ9VKAB7ed4Ao8diOWv618ZPJ7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/uzRZMer5z6WS6dS+wrpCqKam5ER/17NM8wpjBKGhGc=; b=BKiBX1g1G7znuxtbAQgHy4/V/C
 uIdTfE8CDepy2XiQFh0uFx0aHNKnKy13PWKTUmNVEC3a8zgT32Z5Wo+aO+t/yFexwiNh6cJfeR3K2
 8wsgegJMe1P1nBySDqHlpjBBH2I1tc4ia5VxqJzPeN32sG8J0/LBWH77H5IOaHS/Y0YU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Az9-006i0H-BR
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215521;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/uzRZMer5z6WS6dS+wrpCqKam5ER/17NM8wpjBKGhGc=;
 b=XTEf2GRIoxQFiTKyn92hQWyovpauq+ZJ6cbwoWIl1PKhIyNzb2JSD6kg7AZyyDztuDSlhO
 Z3mW1SbSCRB6eMj/c+fOpprMzg5xs0DBJTmfHcCYyM7P8OV343OeL1UBHCw6IqwZmUKwtJ
 z9Cwa8RqohaHUGVUBzrQhvN8yL9DVdQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-351-cIpO7br8NgecApYVO-Sd4w-1; Wed, 22 Dec 2021 18:25:20 -0500
X-MC-Unique: cIpO7br8NgecApYVO-Sd4w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC613801ADB;
 Wed, 22 Dec 2021 23:25:17 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9323F798D8;
 Wed, 22 Dec 2021 23:25:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:25:04 +0000
Message-ID: <164021550471.640689.553853918307994335.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview: Use an xattr on each backing file in the cache to store some
 metadata, such as the content type and the coherency data. Five content types
 are defined: (0) No content stored. 
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
X-Headers-End: 1n0Az9-006i0H-BR
Subject: [V9fs-developer] [PATCH v4 45/68] cachefiles: Implement
 metadata/coherency data storage in xattrs
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

Use an xattr on each backing file in the cache to store some metadata, such
as the content type and the coherency data.

Five content types are defined:

 (0) No content stored.

 (1) The file contains a single monolithic blob and must be all or nothing.
     This would be used for something like an AFS directory or a symlink.

 (2) The file is populated with content completely up to a point with
     nothing beyond that.

 (3) The file has a map attached and is sparsely populated.  This would be
     stored in one or more additional xattrs.

 (4) The file is dirty, being in the process of local modification and the
     contents are not necessarily represented correctly by the metadata.
     The file should be deleted if this is seen on binding.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819641320.215744.16346770087799536862.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906942248.143852.5423738045012094252.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967151734.1823006.9301249989443622576.stgit@warthog.procyon.org.uk/ # v3
---

 fs/cachefiles/Makefile            |    3 -
 fs/cachefiles/internal.h          |   21 ++++
 fs/cachefiles/xattr.c             |  181 +++++++++++++++++++++++++++++++++++++
 include/trace/events/cachefiles.h |   56 +++++++++++
 4 files changed, 260 insertions(+), 1 deletion(-)
 create mode 100644 fs/cachefiles/xattr.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 6f025940a65c..cb7a6bcf51eb 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -11,7 +11,8 @@ cachefiles-y := \
 	main.o \
 	namei.o \
 	security.o \
-	volume.o
+	volume.o \
+	xattr.o
 
 cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
 
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index dbc37f5d4714..01071e7a7c02 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -55,6 +55,7 @@ struct cachefiles_object {
 	u8				d_name_len;	/* Length of filename */
 	enum cachefiles_content		content_info:8;	/* Info about content presence */
 	unsigned long			flags;
+#define CACHEFILES_OBJECT_USING_TMPFILE	0		/* Have an unlinked tmpfile */
 };
 
 /*
@@ -219,6 +220,17 @@ void cachefiles_acquire_volume(struct fscache_volume *volume);
 void cachefiles_free_volume(struct fscache_volume *volume);
 void cachefiles_withdraw_volume(struct cachefiles_volume *volume);
 
+/*
+ * xattr.c
+ */
+extern int cachefiles_set_object_xattr(struct cachefiles_object *object);
+extern int cachefiles_check_auxdata(struct cachefiles_object *object,
+				    struct file *file);
+extern int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
+					  struct cachefiles_object *object,
+					  struct dentry *dentry);
+extern void cachefiles_prepare_to_write(struct fscache_cookie *cookie);
+
 /*
  * Error handling
  */
@@ -229,6 +241,15 @@ do {							\
 	set_bit(CACHEFILES_DEAD, &(___cache)->flags);	\
 } while (0)
 
+#define cachefiles_io_error_obj(object, FMT, ...)			\
+do {									\
+	struct cachefiles_cache *___cache;				\
+									\
+	___cache = (object)->volume->cache;				\
+	cachefiles_io_error(___cache, FMT " [o=%08x]", ##__VA_ARGS__,	\
+			    (object)->debug_id);			\
+} while (0)
+
 
 /*
  * Debug tracing
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
new file mode 100644
index 000000000000..0601c46a22ef
--- /dev/null
+++ b/fs/cachefiles/xattr.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* CacheFiles extended attribute management
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
+#include <linux/slab.h>
+#include "internal.h"
+
+#define CACHEFILES_COOKIE_TYPE_DATA 1
+
+struct cachefiles_xattr {
+	__be64	object_size;	/* Actual size of the object */
+	__be64	zero_point;	/* Size after which server has no data not written by us */
+	__u8	type;		/* Type of object */
+	__u8	content;	/* Content presence (enum cachefiles_content) */
+	__u8	data[];		/* netfs coherency data */
+} __packed;
+
+static const char cachefiles_xattr_cache[] =
+	XATTR_USER_PREFIX "CacheFiles.cache";
+
+/*
+ * set the state xattr on a cache file
+ */
+int cachefiles_set_object_xattr(struct cachefiles_object *object)
+{
+	struct cachefiles_xattr *buf;
+	struct dentry *dentry;
+	struct file *file = object->file;
+	unsigned int len = object->cookie->aux_len;
+	int ret;
+
+	if (!file)
+		return -ESTALE;
+	dentry = file->f_path.dentry;
+
+	_enter("%x,#%d", object->debug_id, len);
+
+	buf = kmalloc(sizeof(struct cachefiles_xattr) + len, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	buf->object_size	= cpu_to_be64(object->cookie->object_size);
+	buf->zero_point		= 0;
+	buf->type		= CACHEFILES_COOKIE_TYPE_DATA;
+	buf->content		= object->content_info;
+	if (test_bit(FSCACHE_COOKIE_LOCAL_WRITE, &object->cookie->flags))
+		buf->content	= CACHEFILES_CONTENT_DIRTY;
+	if (len > 0)
+		memcpy(buf->data, fscache_get_aux(object->cookie), len);
+
+	ret = cachefiles_inject_write_error();
+	if (ret == 0)
+		ret = vfs_setxattr(&init_user_ns, dentry, cachefiles_xattr_cache,
+				   buf, sizeof(struct cachefiles_xattr) + len, 0);
+	if (ret < 0) {
+		trace_cachefiles_vfs_error(object, file_inode(file), ret,
+					   cachefiles_trace_setxattr_error);
+		trace_cachefiles_coherency(object, file_inode(file)->i_ino,
+					   buf->content,
+					   cachefiles_coherency_set_fail);
+		if (ret != -ENOMEM)
+			cachefiles_io_error_obj(
+				object,
+				"Failed to set xattr with error %d", ret);
+	} else {
+		trace_cachefiles_coherency(object, file_inode(file)->i_ino,
+					   buf->content,
+					   cachefiles_coherency_set_ok);
+	}
+
+	kfree(buf);
+	_leave(" = %d", ret);
+	return ret;
+}
+
+/*
+ * check the consistency between the backing cache and the FS-Cache cookie
+ */
+int cachefiles_check_auxdata(struct cachefiles_object *object, struct file *file)
+{
+	struct cachefiles_xattr *buf;
+	struct dentry *dentry = file->f_path.dentry;
+	unsigned int len = object->cookie->aux_len, tlen;
+	const void *p = fscache_get_aux(object->cookie);
+	enum cachefiles_coherency_trace why;
+	ssize_t xlen;
+	int ret = -ESTALE;
+
+	tlen = sizeof(struct cachefiles_xattr) + len;
+	buf = kmalloc(tlen, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	xlen = cachefiles_inject_read_error();
+	if (xlen == 0)
+		xlen = vfs_getxattr(&init_user_ns, dentry, cachefiles_xattr_cache, buf, tlen);
+	if (xlen != tlen) {
+		if (xlen < 0)
+			trace_cachefiles_vfs_error(object, file_inode(file), xlen,
+						   cachefiles_trace_getxattr_error);
+		if (xlen == -EIO)
+			cachefiles_io_error_obj(
+				object,
+				"Failed to read aux with error %zd", xlen);
+		why = cachefiles_coherency_check_xattr;
+	} else if (buf->type != CACHEFILES_COOKIE_TYPE_DATA) {
+		why = cachefiles_coherency_check_type;
+	} else if (memcmp(buf->data, p, len) != 0) {
+		why = cachefiles_coherency_check_aux;
+	} else if (be64_to_cpu(buf->object_size) != object->cookie->object_size) {
+		why = cachefiles_coherency_check_objsize;
+	} else if (buf->content == CACHEFILES_CONTENT_DIRTY) {
+		// TODO: Begin conflict resolution
+		pr_warn("Dirty object in cache\n");
+		why = cachefiles_coherency_check_dirty;
+	} else {
+		why = cachefiles_coherency_check_ok;
+		ret = 0;
+	}
+
+	trace_cachefiles_coherency(object, file_inode(file)->i_ino,
+				   buf->content, why);
+	kfree(buf);
+	return ret;
+}
+
+/*
+ * remove the object's xattr to mark it stale
+ */
+int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
+				   struct cachefiles_object *object,
+				   struct dentry *dentry)
+{
+	int ret;
+
+	ret = cachefiles_inject_remove_error();
+	if (ret == 0)
+		ret = vfs_removexattr(&init_user_ns, dentry, cachefiles_xattr_cache);
+	if (ret < 0) {
+		trace_cachefiles_vfs_error(object, d_inode(dentry), ret,
+					   cachefiles_trace_remxattr_error);
+		if (ret == -ENOENT || ret == -ENODATA)
+			ret = 0;
+		else if (ret != -ENOMEM)
+			cachefiles_io_error(cache,
+					    "Can't remove xattr from %lu"
+					    " (error %d)",
+					    d_backing_inode(dentry)->i_ino, -ret);
+	}
+
+	_leave(" = %d", ret);
+	return ret;
+}
+
+/*
+ * Stick a marker on the cache object to indicate that it's dirty.
+ */
+void cachefiles_prepare_to_write(struct fscache_cookie *cookie)
+{
+	const struct cred *saved_cred;
+	struct cachefiles_object *object = cookie->cache_priv;
+	struct cachefiles_cache *cache = object->volume->cache;
+
+	_enter("c=%08x", object->cookie->debug_id);
+
+	if (!test_bit(CACHEFILES_OBJECT_USING_TMPFILE, &object->flags)) {
+		cachefiles_begin_secure(cache, &saved_cred);
+		cachefiles_set_object_xattr(object);
+		cachefiles_end_secure(cache, saved_cred);
+	}
+}
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 54815cc776ba..98b1eee4a7a8 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -42,6 +42,19 @@ enum fscache_why_object_killed {
 	FSCACHE_OBJECT_WAS_CULLED,
 };
 
+enum cachefiles_coherency_trace {
+	cachefiles_coherency_check_aux,
+	cachefiles_coherency_check_content,
+	cachefiles_coherency_check_dirty,
+	cachefiles_coherency_check_len,
+	cachefiles_coherency_check_objsize,
+	cachefiles_coherency_check_ok,
+	cachefiles_coherency_check_type,
+	cachefiles_coherency_check_xattr,
+	cachefiles_coherency_set_fail,
+	cachefiles_coherency_set_ok,
+};
+
 enum cachefiles_trunc_trace {
 	cachefiles_trunc_dio_adjust,
 	cachefiles_trunc_expand_tmpfile,
@@ -95,6 +108,18 @@ enum cachefiles_error_trace {
 	EM(cachefiles_obj_see_withdraw_cookie,	"SEE withdraw_cookie")	\
 	E_(cachefiles_obj_see_withdrawal,	"SEE withdrawal")
 
+#define cachefiles_coherency_traces					\
+	EM(cachefiles_coherency_check_aux,	"BAD aux ")		\
+	EM(cachefiles_coherency_check_content,	"BAD cont")		\
+	EM(cachefiles_coherency_check_dirty,	"BAD dirt")		\
+	EM(cachefiles_coherency_check_len,	"BAD len ")		\
+	EM(cachefiles_coherency_check_objsize,	"BAD osiz")		\
+	EM(cachefiles_coherency_check_ok,	"OK      ")		\
+	EM(cachefiles_coherency_check_type,	"BAD type")		\
+	EM(cachefiles_coherency_check_xattr,	"BAD xatt")		\
+	EM(cachefiles_coherency_set_fail,	"SET fail")		\
+	E_(cachefiles_coherency_set_ok,		"SET ok  ")
+
 #define cachefiles_trunc_traces						\
 	EM(cachefiles_trunc_dio_adjust,		"DIOADJ")		\
 	EM(cachefiles_trunc_expand_tmpfile,	"EXPTMP")		\
@@ -130,6 +155,7 @@ enum cachefiles_error_trace {
 
 cachefiles_obj_kill_traces;
 cachefiles_obj_ref_traces;
+cachefiles_coherency_traces;
 cachefiles_trunc_traces;
 cachefiles_error_traces;
 
@@ -287,6 +313,36 @@ TRACE_EVENT(cachefiles_rename,
 		      __print_symbolic(__entry->why, cachefiles_obj_kill_traces))
 	    );
 
+TRACE_EVENT(cachefiles_coherency,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     ino_t ino,
+		     enum cachefiles_content content,
+		     enum cachefiles_coherency_trace why),
+
+	    TP_ARGS(obj, ino, content, why),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(enum cachefiles_coherency_trace,	why	)
+		    __field(enum cachefiles_content,		content	)
+		    __field(u64,				ino	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->debug_id;
+		    __entry->why	= why;
+		    __entry->content	= content;
+		    __entry->ino	= ino;
+			   ),
+
+	    TP_printk("o=%08x %s i=%llx c=%u",
+		      __entry->obj,
+		      __print_symbolic(__entry->why, cachefiles_coherency_traces),
+		      __entry->ino,
+		      __entry->content)
+	    );
+
 TRACE_EVENT(cachefiles_trunc,
 	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer,
 		     loff_t from, loff_t to, enum cachefiles_trunc_trace why),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
