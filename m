Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6574320F1
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:57:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU56-0006ml-39; Mon, 18 Oct 2021 14:57:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcU54-0006md-Hy
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uAB0lmzHxTBxFxXC1tk45FGe7+KmK5QRRpgwLjHh3T8=; b=OWzbmd55B6bLjIbK/O0eWAP4/m
 V59CWfI0daKBE6gR5DTR6w5tFAyu0xS7YEYTXUEpdLvLfO7FTUctCOB2lVIUYZDOajFG6y58DrHvU
 1uIB2kGfnYrceDfsOBTe1TeuEH5MzE1pj6AfiTlvIFdVGapmHYhcuelUC8PejiULXl7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uAB0lmzHxTBxFxXC1tk45FGe7+KmK5QRRpgwLjHh3T8=; b=GNifN7mlSvAJTPI8txDeCg/iVQ
 gcs39ap9pDUm1huYuVqMb5A2fgP4h+BnPN16Zp33L8XJZ26FHs0w6OuFlyNfepsnnQ4jugK9giCAn
 eLqC8AuBVzlmE8FIvz9+kWVdvYu2k2xkY8LPqZEtfm6s5XgMuL/qpzgj5pO8k2BT7+yE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU52-004T7n-Id
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uAB0lmzHxTBxFxXC1tk45FGe7+KmK5QRRpgwLjHh3T8=;
 b=PE/tEmpSuVlAXKGHFWIL/ZadGtC30uyVHFPSpVLJP52G09i/6DV1ppTeqf3rwAajzvbdpm
 pidnxkEl4x9h4+VXCqTw/NJUgk2MYJ0N1mOqBfARiX4BNOfaVKJZKJmKM8HTl0LHulz2vB
 m/QMKst2MvX1gr19yZcyWBy1HC4htOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-I4Vx8zoNMYqEEg6v5JGNuw-1; Mon, 18 Oct 2021 10:57:27 -0400
X-MC-Unique: I4Vx8zoNMYqEEg6v5JGNuw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68BB48066F0;
 Mon, 18 Oct 2021 14:57:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1436E100E809;
 Mon, 18 Oct 2021 14:57:21 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:57:21 +0100
Message-ID: <163456904116.2614702.18059895913577688154.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Attempting to open an ext4 file while files are being closed
 by do_exit() results in an oops in ext4 because it uses d_path() which expects
 current->fs to point somewhere. This is a problem if I want to open a cache
 file in order to write out data to it from the writeback code. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU52-004T7n-Id
Subject: [V9fs-developer] [PATCH 26/67] cachefiles: Change to storing file*
 rather than dentry*
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Attempting to open an ext4 file while files are being closed by do_exit()
results in an oops in ext4 because it uses d_path() which expects
current->fs to point somewhere.

This is a problem if I want to open a cache file in order to write out data
to it from the writeback code.

Mitigate this by opening a file right at the beginning and keeping it open,
replacing it with a new file when invalidation occurs.

This has the downside of keeping a bunch of file resources open.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/bind.c              |   17 +++-
 fs/cachefiles/interface.c         |   41 +++++-----
 fs/cachefiles/internal.h          |    6 ++
 fs/cachefiles/io.c                |   41 ++--------
 fs/cachefiles/namei.c             |  146 ++++++++++++++++++++++---------------
 fs/cachefiles/xattr.c             |   11 +--
 include/linux/fscache-cache.h     |    2 -
 include/trace/events/cachefiles.h |   25 +++---
 8 files changed, 151 insertions(+), 138 deletions(-)

diff --git a/fs/cachefiles/bind.c b/fs/cachefiles/bind.c
index 8db1ef2d1196..af7386ad14af 100644
--- a/fs/cachefiles/bind.c
+++ b/fs/cachefiles/bind.c
@@ -82,6 +82,7 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 	struct path path;
 	struct kstatfs stats;
 	struct dentry *graveyard, *cachedir, *root;
+	struct file *dirf;
 	const struct cred *saved_cred;
 	int ret;
 
@@ -192,7 +193,13 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 		goto error_unsupported;
 	}
 
-	fsdef->dentry = cachedir;
+	dirf = open_with_fake_path(&path, O_RDONLY | O_DIRECTORY,
+				   d_inode(cachedir), cache->cache_cred);
+	if (IS_ERR(dirf)) {
+		ret = PTR_ERR(dirf);
+		goto error_unsupported;
+	}
+	fsdef->file = dirf;
 	fsdef->cookie = NULL;
 
 	/* get the graveyard directory */
@@ -208,7 +215,7 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 	fscache_init_cache(&cache->cache,
 			   &cachefiles_cache_ops,
 			   "%s",
-			   fsdef->dentry->d_sb->s_id);
+			   graveyard->d_sb->s_id);
 
 	fscache_object_init(fsdef, &fscache_fsdef_index,
 			    &cache->cache);
@@ -234,8 +241,10 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 error_unsupported:
 	mntput(cache->mnt);
 	cache->mnt = NULL;
-	dput(fsdef->dentry);
-	fsdef->dentry = NULL;
+	if (fsdef->file) {
+		fput(fsdef->file);
+		fsdef->file = NULL;
+	}
 	dput(root);
 error_open_root:
 	kmem_cache_free(cachefiles_object_jar, fsdef);
diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 7ec2302a3214..4edb3a09932a 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -161,7 +161,7 @@ static void cachefiles_drop_object(struct cachefiles_object *object)
 	 * initialised if the parent goes away or the object gets retired
 	 * before we set it up.
 	 */
-	if (object->dentry) {
+	if (object->file) {
 		/* delete retired objects */
 		if (test_bit(FSCACHE_OBJECT_RETIRED, &object->flags) &&
 		    object != cache->cache.fsdef
@@ -174,8 +174,8 @@ static void cachefiles_drop_object(struct cachefiles_object *object)
 
 		/* close the filesystem stuff attached to the object */
 		cachefiles_unmark_inode_in_use(object);
-		dput(object->dentry);
-		object->dentry = NULL;
+		fput(object->file);
+		object->file = NULL;
 	}
 
 	_leave("");
@@ -210,7 +210,7 @@ void cachefiles_put_object(struct cachefiles_object *object,
 		_debug("- kill object OBJ%x", object->debug_id);
 
 		ASSERTCMP(object->parent, ==, NULL);
-		ASSERTCMP(object->dentry, ==, NULL);
+		ASSERTCMP(object->file, ==, NULL);
 		ASSERTCMP(object->n_ops, ==, 0);
 		ASSERTCMP(object->n_children, ==, 0);
 
@@ -262,6 +262,7 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 	struct cachefiles_cache *cache;
 	const struct cred *saved_cred;
 	struct iattr newattrs;
+	struct file *file = object->file;
 	uint64_t ni_size;
 	loff_t oi_size;
 	int ret;
@@ -271,20 +272,22 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 	_enter("{OBJ%x},[%llu]",
 	       object->debug_id, (unsigned long long) ni_size);
 
-	cache = container_of(object->cache,
-			     struct cachefiles_cache, cache);
+	if (!file)
+		return -ENOBUFS;
+
+	cache = container_of(object->cache, struct cachefiles_cache, cache);
 
 	if (ni_size == object->i_size)
 		return 0;
 
-	ASSERT(d_is_reg(object->dentry));
+	ASSERT(d_is_reg(file->f_path.dentry));
 
-	oi_size = i_size_read(d_backing_inode(object->dentry));
+	oi_size = i_size_read(file_inode(file));
 	if (oi_size == ni_size)
 		return 0;
 
 	cachefiles_begin_secure(cache, &saved_cred);
-	inode_lock(d_inode(object->dentry));
+	inode_lock(file_inode(file));
 
 	/* if there's an extension to a partial page at the end of the backing
 	 * file, we need to discard the partial page so that we pick up new
@@ -293,17 +296,18 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 		_debug("discard tail %llx", oi_size);
 		newattrs.ia_valid = ATTR_SIZE;
 		newattrs.ia_size = oi_size & PAGE_MASK;
-		ret = notify_change(&init_user_ns, object->dentry, &newattrs, NULL);
+		ret = notify_change(&init_user_ns, file->f_path.dentry,
+				    &newattrs, NULL);
 		if (ret < 0)
 			goto truncate_failed;
 	}
 
 	newattrs.ia_valid = ATTR_SIZE;
 	newattrs.ia_size = ni_size;
-	ret = notify_change(&init_user_ns, object->dentry, &newattrs, NULL);
+	ret = notify_change(&init_user_ns, file->f_path.dentry, &newattrs, NULL);
 
 truncate_failed:
-	inode_unlock(d_inode(object->dentry));
+	inode_unlock(file_inode(file));
 	cachefiles_end_secure(cache, saved_cred);
 
 	if (ret == -EIO) {
@@ -322,7 +326,7 @@ static void cachefiles_invalidate_object(struct cachefiles_object *object)
 {
 	struct cachefiles_cache *cache;
 	const struct cred *saved_cred;
-	struct path path;
+	struct file *file = object->file;
 	uint64_t ni_size;
 	int ret;
 
@@ -333,16 +337,13 @@ static void cachefiles_invalidate_object(struct cachefiles_object *object)
 	_enter("{OBJ%x},[%llu]",
 	       object->debug_id, (unsigned long long)ni_size);
 
-	if (object->dentry) {
-		ASSERT(d_is_reg(object->dentry));
-
-		path.dentry = object->dentry;
-		path.mnt = cache->mnt;
+	if (file) {
+		ASSERT(d_is_reg(file->f_path.dentry));
 
 		cachefiles_begin_secure(cache, &saved_cred);
-		ret = vfs_truncate(&path, 0);
+		ret = vfs_truncate(&file->f_path, 0);
 		if (ret == 0)
-			ret = vfs_truncate(&path, ni_size);
+			ret = vfs_truncate(&file->f_path, ni_size);
 		cachefiles_end_secure(cache, saved_cred);
 
 		if (ret != 0) {
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index f268495ecbc6..4705f968e661 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -71,6 +71,12 @@ struct cachefiles_cache {
 
 #include <trace/events/cachefiles.h>
 
+static inline
+struct file *cachefiles_cres_file(struct netfs_cache_resources *cres)
+{
+	return cres->cache_priv2;
+}
+
 /*
  * note change of state for daemon
  */
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 920ca48eecfa..0e1fb44b5d04 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -63,7 +63,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
 			   void *term_func_priv)
 {
 	struct cachefiles_kiocb *ki;
-	struct file *file = cres->cache_priv2;
+	struct file *file = cachefiles_cres_file(cres);
 	unsigned int old_nofs;
 	ssize_t ret = -ENODATA;
 	size_t len = iov_iter_count(iter), skipped = 0;
@@ -190,7 +190,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 {
 	struct cachefiles_kiocb *ki;
 	struct inode *inode;
-	struct file *file = cres->cache_priv2;
+	struct file *file = cachefiles_cres_file(cres);
 	unsigned int old_nofs;
 	ssize_t ret = -ENOBUFS;
 	size_t len = iov_iter_count(iter);
@@ -385,7 +385,7 @@ static void cachefiles_end_operation(struct netfs_cache_resources *cres)
 {
 #if 0
 	struct fscache_operation *op = cres->cache_priv;
-	struct file *file = cres->cache_priv2;
+	struct file *file = cachefiles_cres_file(cres);
 
 	_enter("");
 
@@ -414,41 +414,16 @@ static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
 int cachefiles_begin_operation(struct netfs_cache_resources *cres)
 {
 #if 0
-	struct cachefiles_object *object;
-	struct cachefiles_cache *cache;
-	struct path path;
-	struct file *file;
+	struct cachefiles_object *object = op->object;
 
 	_enter("");
 
-	object = container_of(op->object, struct cachefiles_object, fscache);
-	cache = container_of(object->fscache.cache,
-			     struct cachefiles_cache, cache);
-
-	path.mnt = cache->mnt;
-	path.dentry = object->dentry;
-	file = open_with_fake_path(&path, O_RDWR | O_LARGEFILE | O_DIRECT,
-				   d_inode(object->dentry), cache->cache_cred);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-	if (!S_ISREG(file_inode(file)->i_mode))
-		goto error_file;
-	if (unlikely(!file->f_op->read_iter) ||
-	    unlikely(!file->f_op->write_iter)) {
-		pr_notice("Cache does not support read_iter and write_iter\n");
-		goto error_file;
-	}
-
-	atomic_inc(&op->usage);
-	cres->cache_priv = op;
-	cres->cache_priv2 = file;
-	cres->ops = &cachefiles_netfs_cache_ops;
-	cres->debug_id = object->fscache.debug_id;
+	cres->cache_priv	= op;
+	cres->cache_priv2	= get_file(object->file);
+	cres->ops		= &cachefiles_netfs_cache_ops;
+	cres->debug_id		= object->cookie->debug_id;
 	_leave("");
 	return 0;
-
-error_file:
-	fput(file);
 #endif
 	cres->ops = &cachefiles_netfs_cache_ops;
 	return -EIO;
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index d3903cbb7de3..a60ef6f1cf1e 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -25,8 +25,7 @@
  */
 static bool cachefiles_mark_inode_in_use(struct cachefiles_object *object)
 {
-	struct dentry *dentry = object->dentry;
-	struct inode *inode = d_backing_inode(dentry);
+	struct inode *inode = file_inode(object->file);
 	bool can_use = false;
 
 	_enter(",%x", object->debug_id);
@@ -35,10 +34,10 @@ static bool cachefiles_mark_inode_in_use(struct cachefiles_object *object)
 
 	if (!(inode->i_flags & S_KERNEL_FILE)) {
 		inode->i_flags |= S_KERNEL_FILE;
-		trace_cachefiles_mark_active(object, dentry);
+		trace_cachefiles_mark_active(object, inode);
 		can_use = true;
 	} else {
-		pr_notice("cachefiles: Inode already in use: %pd\n", dentry);
+		pr_notice("cachefiles: Inode already in use: %pD\n", object->file);
 	}
 
 	inode_unlock(inode);
@@ -50,13 +49,12 @@ static bool cachefiles_mark_inode_in_use(struct cachefiles_object *object)
  */
 void cachefiles_unmark_inode_in_use(struct cachefiles_object *object)
 {
-	struct dentry *dentry = object->dentry;
-	struct inode *inode = d_backing_inode(dentry);
+	struct inode *inode = file_inode(object->file);
 
 	inode_lock(inode);
 	inode->i_flags &= ~S_KERNEL_FILE;
 	inode_unlock(inode);
-	trace_cachefiles_mark_inactive(object, dentry, inode);
+	trace_cachefiles_mark_inactive(object, inode);
 }
 
 /*
@@ -65,7 +63,7 @@ void cachefiles_unmark_inode_in_use(struct cachefiles_object *object)
 static void cachefiles_mark_object_inactive(struct cachefiles_cache *cache,
 					    struct cachefiles_object *object)
 {
-	blkcnt_t i_blocks = d_backing_inode(object->dentry)->i_blocks;
+	blkcnt_t i_blocks = file_inode(object->file)->i_blocks;
 
 	/* This object can now be culled, so we need to let the daemon know
 	 * that there is something it can remove if it needs to.
@@ -106,7 +104,9 @@ static int cachefiles_bury_object(struct cachefiles_cache *cache,
 			cachefiles_io_error(cache, "Unlink security error");
 		} else {
 			trace_cachefiles_unlink(object, rep, why);
-			dget(rep);
+			dget(rep); /* Stop the dentry being negated if it's
+				    * only pinned by a file struct.
+				    */
 			ret = vfs_unlink(&init_user_ns, d_inode(dir), rep, NULL);
 			dput(rep);
 		}
@@ -232,30 +232,29 @@ static int cachefiles_bury_object(struct cachefiles_cache *cache,
 int cachefiles_delete_object(struct cachefiles_cache *cache,
 			     struct cachefiles_object *object)
 {
-	struct dentry *dir;
+	struct dentry *dentry = object->file->f_path.dentry, *dir;
 	int ret;
 
-	_enter(",OBJ%x{%pd}", object->debug_id, object->dentry);
+	_enter(",OBJ%x{%pD}", object->debug_id, object->file);
 
-	ASSERT(object->dentry);
-	ASSERT(d_backing_inode(object->dentry));
-	ASSERT(object->dentry->d_parent);
+	ASSERT(d_backing_inode(dentry));
+	ASSERT(dentry->d_parent);
 
-	dir = dget_parent(object->dentry);
+	dir = dget_parent(dentry);
 
-	inode_lock_nested(d_inode(dir), I_MUTEX_PARENT);
+	inode_lock_nested(d_backing_inode(dir), I_MUTEX_PARENT);
 
 	/* We need to check that our parent is _still_ our parent - it may have
 	 * been renamed.
 	 */
-	if (dir == object->dentry->d_parent) {
-		ret = cachefiles_bury_object(cache, object, dir, object->dentry,
+	if (dir == dentry->d_parent) {
+		ret = cachefiles_bury_object(cache, object, dir, dentry,
 					     FSCACHE_OBJECT_WAS_RETIRED);
 	} else {
 		/* It got moved, presumably by cachefilesd culling it, so it's
 		 * no longer in the key path and we can ignore it.
 		 */
-		inode_unlock(d_inode(dir));
+		inode_unlock(d_backing_inode(dir));
 		ret = 0;
 	}
 
@@ -271,7 +270,6 @@ static int cachefiles_check_open_object(struct cachefiles_cache *cache,
 					struct cachefiles_object *object,
 					struct dentry *fan)
 {
-	struct path path;
 	int ret;
 
 	if (!cachefiles_mark_inode_in_use(object))
@@ -280,7 +278,7 @@ static int cachefiles_check_open_object(struct cachefiles_cache *cache,
 	/* if we've found that the terminal object exists, then we need to
 	 * check its attributes and delete it if it's out of date */
 	if (!object->new) {
-		_debug("validate '%pd'", object->dentry);
+		_debug("validate '%pD'", object->file);
 
 		ret = cachefiles_check_auxdata(object);
 		if (ret == -ESTALE)
@@ -301,9 +299,7 @@ static int cachefiles_check_open_object(struct cachefiles_cache *cache,
 		 * (this is used to keep track of culling, and atimes are only
 		 * updated by read, write and readdir but not lookup or
 		 * open) */
-		path.mnt = cache->mnt;
-		path.dentry = object->dentry;
-		touch_atime(&path);
+		touch_atime(&object->file->f_path);
 	}
 
 	return 0;
@@ -311,7 +307,8 @@ static int cachefiles_check_open_object(struct cachefiles_cache *cache,
 stale:
 	cachefiles_unmark_inode_in_use(object);
 	inode_lock_nested(d_inode(fan), I_MUTEX_PARENT);
-	ret = cachefiles_bury_object(cache, object, fan, object->dentry,
+	ret = cachefiles_bury_object(cache, object, fan,
+				     object->file->f_path.dentry,
 				     FSCACHE_OBJECT_IS_STALE);
 	if (ret < 0)
 		return ret;
@@ -326,13 +323,14 @@ static int cachefiles_check_open_object(struct cachefiles_cache *cache,
 /*
  * Walk to a file, creating it if necessary.
  */
-static int cachefiles_walk_to_file(struct cachefiles_cache *cache,
-				   struct cachefiles_object *object,
-				   struct dentry *fan)
+static int cachefiles_open_file(struct cachefiles_cache *cache,
+				struct cachefiles_object *object,
+				struct dentry *fan)
 {
 	struct dentry *dentry;
-	struct inode *dinode = d_backing_inode(fan);
-	struct path fan_path;
+	struct inode *dinode = d_backing_inode(fan), *inode;
+	struct file *file;
+	struct path fan_path, path;
 	int ret;
 
 	_enter("%pd %s", fan, object->d_name);
@@ -343,7 +341,7 @@ static int cachefiles_walk_to_file(struct cachefiles_cache *cache,
 	trace_cachefiles_lookup(object, dentry);
 	if (IS_ERR(dentry)) {
 		ret = PTR_ERR(dentry);
-		goto error;
+		goto error_unlock;
 	}
 
 	if (d_is_negative(dentry)) {
@@ -368,34 +366,53 @@ static int cachefiles_walk_to_file(struct cachefiles_cache *cache,
 		if (ret < 0)
 			goto error_dput;
 
-		_debug("create -> %pd{ino=%lu}",
-		       dentry, d_backing_inode(dentry)->i_ino);
-		object->new = true;
+		inode = d_backing_inode(dentry);
+		_debug("create -> %pd{ino=%lu}", dentry, inode->i_ino);
 
 	} else if (!d_is_reg(dentry)) {
-		pr_err("inode %lu is not a file\n",
-		       d_backing_inode(dentry)->i_ino);
+		inode = d_backing_inode(dentry);
+		pr_err("inode %lu is not a file\n", inode->i_ino);
 		ret = -EIO;
 		goto error_dput;
 	} else {
+		inode = d_backing_inode(dentry);
 		_debug("file -> %pd positive", dentry);
 	}
 
-	if (dentry->d_sb->s_blocksize > PAGE_SIZE) {
-		pr_warn("cachefiles: Block size too large\n");
+	inode_unlock(dinode);
+
+	/* We need to open a file interface onto a data file now as we can't do
+	 * it on demand because writeback called from do_exit() sees
+	 * current->fs == NULL - which breaks d_path() called from ext4 open.
+	 */
+	path.mnt = cache->mnt;
+	path.dentry = dentry;
+	file = open_with_fake_path(&path, O_RDWR | O_LARGEFILE | O_DIRECT,
+				   inode, cache->cache_cred);
+	dput(dentry);
+	if (IS_ERR(file)) {
+		ret = PTR_ERR(file);
+		goto error;
+	}
+	if (unlikely(!file->f_op->read_iter) ||
+	    unlikely(!file->f_op->write_iter)) {
+		pr_notice("Cache does not support read_iter and write_iter\n");
 		ret = -EIO;
-		goto error_dput;
+		goto error_fput;
 	}
 
-	object->dentry = dentry;
-	inode_unlock(dinode);
+	object->file = file;
 	return 0;
 
 error_dput:
 	dput(dentry);
-error:
+error_unlock:
 	inode_unlock(dinode);
 	return ret;
+error_fput:
+	fput(file);
+error:
+	return ret;
 }
 
 /*
@@ -419,33 +436,46 @@ int cachefiles_walk_to_object(struct cachefiles_object *parent,
 			      struct cachefiles_object *object)
 {
 	struct cachefiles_cache *cache;
-	struct dentry *fan, *dentry;
+	struct dentry *fan;
 	int ret;
 
-	_enter("OBJ%x{%pd},OBJ%x,%s,",
-	       parent->debug_id, parent->dentry,
+	_enter("OBJ%x{%pD},OBJ%x,%s,",
+	       parent->debug_id, parent->file,
 	       object->debug_id, object->d_name);
 
 	cache = container_of(parent->cache, struct cachefiles_cache, cache);
-	ASSERT(parent->dentry);
-	ASSERT(d_backing_inode(parent->dentry));
+	ASSERT(parent->file);
 
 lookup_again:
-	fan = cachefiles_walk_over_fanout(object, cache, parent->dentry);
+	fan = cachefiles_walk_over_fanout(object, cache, parent->file->f_path.dentry);
 	if (IS_ERR(fan))
 		return PTR_ERR(fan);
 
-	/* Walk over path "parent/fanout/object". */
+	/* Open path "parent/fanout/object". */
 	if (object->type == FSCACHE_COOKIE_TYPE_INDEX) {
+		struct dentry *dentry;
+		struct file *file;
+		struct path path;
+
 		dentry = cachefiles_get_directory(cache, fan, object->d_name,
 						  object);
 		if (IS_ERR(dentry)) {
 			dput(fan);
 			return PTR_ERR(dentry);
 		}
-		object->dentry = dentry;
+		path.mnt = cache->mnt;
+		path.dentry = dentry;
+		file = open_with_fake_path(&path, O_RDONLY | O_DIRECTORY,
+					   d_backing_inode(dentry),
+					   cache->cache_cred);
+		dput(dentry);
+		if (IS_ERR(file)) {
+			dput(fan);
+			return PTR_ERR(file);
+		}
+		object->file = file;
 	} else {
-		ret = cachefiles_walk_to_file(cache, object, fan);
+		ret = cachefiles_open_file(cache, object, fan);
 		if (ret < 0) {
 			dput(fan);
 			return ret;
@@ -460,21 +490,17 @@ int cachefiles_walk_to_object(struct cachefiles_object *parent,
 
 	object->new = false;
 	fscache_obtained_object(object);
-	_leave(" = 0 [%lu]", d_backing_inode(object->dentry)->i_ino);
-	return 0;
+	_leave(" = t [%lu]", file_inode(object->file)->i_ino);
+	return true;
 
 check_error:
-	if (ret == -ESTALE) {
-		dput(object->dentry);
-		object->dentry = NULL;
-		fscache_object_retrying_stale(object);
+	fput(object->file);
+	object->file = NULL;
+	if (ret == -ESTALE)
 		goto lookup_again;
-	}
 	if (ret == -EIO)
 		cachefiles_io_error_obj(object, "Lookup failed");
 	cachefiles_mark_object_inactive(cache, object);
-	dput(object->dentry);
-	object->dentry = NULL;
 	_leave(" = error %d", ret);
 	return ret;
 }
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index 464dea0b467c..2f14618d9a36 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -30,12 +30,14 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object,
 				unsigned int xattr_flags)
 {
 	struct cachefiles_xattr *buf;
-	struct dentry *dentry = object->dentry;
+	struct dentry *dentry;
+	struct file *file = object->file;
 	unsigned int len = object->cookie->aux_len;
 	int ret;
 
-	if (!dentry)
+	if (!file)
 		return -ESTALE;
+	dentry = file->f_path.dentry;
 
 	_enter("%x,#%d", object->debug_id, len);
 
@@ -67,14 +69,11 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object,
 int cachefiles_check_auxdata(struct cachefiles_object *object)
 {
 	struct cachefiles_xattr *buf;
-	struct dentry *dentry = object->dentry;
+	struct dentry *dentry = object->file->f_path.dentry;
 	unsigned int len = object->cookie->aux_len, tlen;
 	const void *p = fscache_get_aux(object->cookie);
 	ssize_t ret;
 
-	ASSERT(dentry);
-	ASSERT(d_backing_inode(dentry));
-
 	tlen = sizeof(struct cachefiles_xattr) + len;
 	buf = kmalloc(tlen, GFP_KERNEL);
 	if (!buf)
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 7021c1ec2b64..90a7c92fca98 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -198,7 +198,7 @@ struct cachefiles_object {
 	struct list_head	dep_link;	/* link in parent's dependents list */
 
 	char				*d_name;	/* Filename */
-	struct dentry			*dentry;	/* the file/dir representing this object */
+	struct file			*file;		/* The file representing this object */
 	loff_t				i_size;		/* object size */
 	atomic_t			usage;		/* object usage count */
 	uint8_t				type;		/* object type */
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 5aec097d51ae..10ad5305d1c5 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -196,47 +196,44 @@ TRACE_EVENT(cachefiles_rename,
 
 TRACE_EVENT(cachefiles_mark_active,
 	    TP_PROTO(struct cachefiles_object *obj,
-		     struct dentry *de),
+		     struct inode *inode),
 
-	    TP_ARGS(obj, de),
+	    TP_ARGS(obj, inode),
 
 	    /* Note that obj may be NULL */
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		obj		)
-		    __field(struct dentry *,		de		)
+		    __field(ino_t,			inode		)
 			     ),
 
 	    TP_fast_assign(
 		    __entry->obj	= obj->debug_id;
-		    __entry->de		= de;
+		    __entry->inode	= inode->i_ino;
 			   ),
 
-	    TP_printk("o=%08x d=%p",
-		      __entry->obj, __entry->de)
+	    TP_printk("o=%08x i=%lx",
+		      __entry->obj, __entry->inode)
 	    );
 
 TRACE_EVENT(cachefiles_mark_inactive,
 	    TP_PROTO(struct cachefiles_object *obj,
-		     struct dentry *de,
 		     struct inode *inode),
 
-	    TP_ARGS(obj, de, inode),
+	    TP_ARGS(obj, inode),
 
 	    /* Note that obj may be NULL */
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		obj		)
-		    __field(struct dentry *,		de		)
-		    __field(struct inode *,		inode		)
+		    __field(ino_t,			inode		)
 			     ),
 
 	    TP_fast_assign(
 		    __entry->obj	= obj->debug_id;
-		    __entry->de		= de;
-		    __entry->inode	= inode;
+		    __entry->inode	= inode->i_ino;
 			   ),
 
-	    TP_printk("o=%08x d=%p i=%p",
-		      __entry->obj, __entry->de, __entry->inode)
+	    TP_printk("o=%08x i=%lx",
+		      __entry->obj, __entry->inode)
 	    );
 
 #endif /* _TRACE_CACHEFILES_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
