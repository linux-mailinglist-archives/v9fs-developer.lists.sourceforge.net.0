Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B4747DA91
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:24:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0Ay7-0000ti-Bp; Wed, 22 Dec 2021 23:24:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0Ay6-0000tc-1v
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:24:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nw72bvcIKoyI61tfXR7VoouMKSHMWa+xwkjm1Yim2TI=; b=QgDwBO41YVzB+6xsEEOZPMwhgu
 fgOcxvBrJlS72t4UEEnreGHIcj+FJL63pDz46OvZNIAAAkDccVf6MSeZJwQFE//B8Q9OZPiAIDIKB
 Lj27i5IHkWOUSZ8l47E7ylCcVdZNkgxLsSGSfESue+RbPzaNAo0pja7pFgN5/zKW37tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nw72bvcIKoyI61tfXR7VoouMKSHMWa+xwkjm1Yim2TI=; b=Fa1RZT57Os2drLVaWLW9bQ/Zwn
 xqqUGHY+ixU1nkwJtYNO9gW44RlfAXzHDyoto8+53mH0CduYE4bzV/TNVQRmUK/C8lqx+ax3VVL1+
 EfP7pGoL1/xHCfe4DqOmMEPcipPK24qhPWwm7b0wEtXx6NjfUbwAeNnDMWjepMGnTTa0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Ay4-006hv7-Nc
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215454;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nw72bvcIKoyI61tfXR7VoouMKSHMWa+xwkjm1Yim2TI=;
 b=X4uQeQbmTrkhArzB27nkJPRawgak+oW7zRB352bBRitGxZZ7b3B7mZT8Zxtdsn98l1L8Ys
 2/3V/ckr273tJtCik6HAaabboBGcqBSDK96zvwH27kJqxzWsL1zQX7wesHINeTemh46M2r
 GKieNQK4QqV/tQaLNNUT6WLRUtY+8y8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-413-eQ68lBjsO-Wx-juOfOk8-A-1; Wed, 22 Dec 2021 18:24:09 -0500
X-MC-Unique: eQ68lBjsO-Wx-juOfOk8-A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F115418397A7;
 Wed, 22 Dec 2021 23:24:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 96AF07ED7A;
 Wed, 22 Dec 2021 23:23:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:23:58 +0000
Message-ID: <164021543872.640689.14370017789605073222.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Do the following: (1) Fill out cachefiles_daemon_add_cache()
 so that it sets up the cache directories and registers the cache with
 cachefiles.
 (2) Add a function to do the top-level part of cache withdrawal and
 unregistration.
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
X-Headers-End: 1n0Ay4-006hv7-Nc
Subject: [V9fs-developer] [PATCH v4 40/68] cachefiles: Implement cache
 registration and withdrawal
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

Do the following:

 (1) Fill out cachefiles_daemon_add_cache() so that it sets up the cache
     directories and registers the cache with cachefiles.

 (2) Add a function to do the top-level part of cache withdrawal and
     unregistration.

 (3) Add a function to sync a cache.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819633175.215744.10857127598041268340.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906935445.143852.15545194974036410029.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967142904.1823006.244055483596047072.stgit@warthog.procyon.org.uk/ # v3
---

 fs/cachefiles/Makefile    |    1 
 fs/cachefiles/cache.c     |  207 +++++++++++++++++++++++++++++++++++++++++++++
 fs/cachefiles/daemon.c    |    8 +-
 fs/cachefiles/interface.c |   18 ++++
 fs/cachefiles/internal.h  |    9 ++
 5 files changed, 240 insertions(+), 3 deletions(-)
 create mode 100644 fs/cachefiles/interface.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index e0b092ca077f..92af5daee8ce 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -6,6 +6,7 @@
 cachefiles-y := \
 	cache.o \
 	daemon.o \
+	interface.o \
 	main.o \
 	namei.o \
 	security.o
diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
index 73636f89eefa..0462e7af87fb 100644
--- a/fs/cachefiles/cache.c
+++ b/fs/cachefiles/cache.c
@@ -10,6 +10,166 @@
 #include <linux/namei.h>
 #include "internal.h"
 
+/*
+ * Bring a cache online.
+ */
+int cachefiles_add_cache(struct cachefiles_cache *cache)
+{
+	struct fscache_cache *cache_cookie;
+	struct path path;
+	struct kstatfs stats;
+	struct dentry *graveyard, *cachedir, *root;
+	const struct cred *saved_cred;
+	int ret;
+
+	_enter("");
+
+	cache_cookie = fscache_acquire_cache(cache->tag);
+	if (IS_ERR(cache_cookie))
+		return PTR_ERR(cache_cookie);
+
+	/* we want to work under the module's security ID */
+	ret = cachefiles_get_security_ID(cache);
+	if (ret < 0)
+		goto error_getsec;
+
+	cachefiles_begin_secure(cache, &saved_cred);
+
+	/* look up the directory at the root of the cache */
+	ret = kern_path(cache->rootdirname, LOOKUP_DIRECTORY, &path);
+	if (ret < 0)
+		goto error_open_root;
+
+	cache->mnt = path.mnt;
+	root = path.dentry;
+
+	ret = -EINVAL;
+	if (mnt_user_ns(path.mnt) != &init_user_ns) {
+		pr_warn("File cache on idmapped mounts not supported");
+		goto error_unsupported;
+	}
+
+	/* check parameters */
+	ret = -EOPNOTSUPP;
+	if (d_is_negative(root) ||
+	    !d_backing_inode(root)->i_op->lookup ||
+	    !d_backing_inode(root)->i_op->mkdir ||
+	    !(d_backing_inode(root)->i_opflags & IOP_XATTR) ||
+	    !root->d_sb->s_op->statfs ||
+	    !root->d_sb->s_op->sync_fs ||
+	    root->d_sb->s_blocksize > PAGE_SIZE)
+		goto error_unsupported;
+
+	ret = -EROFS;
+	if (sb_rdonly(root->d_sb))
+		goto error_unsupported;
+
+	/* determine the security of the on-disk cache as this governs
+	 * security ID of files we create */
+	ret = cachefiles_determine_cache_security(cache, root, &saved_cred);
+	if (ret < 0)
+		goto error_unsupported;
+
+	/* get the cache size and blocksize */
+	ret = vfs_statfs(&path, &stats);
+	if (ret < 0)
+		goto error_unsupported;
+
+	ret = -ERANGE;
+	if (stats.f_bsize <= 0)
+		goto error_unsupported;
+
+	ret = -EOPNOTSUPP;
+	if (stats.f_bsize > PAGE_SIZE)
+		goto error_unsupported;
+
+	cache->bsize = stats.f_bsize;
+	cache->bshift = 0;
+	if (stats.f_bsize < PAGE_SIZE)
+		cache->bshift = PAGE_SHIFT - ilog2(stats.f_bsize);
+
+	_debug("blksize %u (shift %u)",
+	       cache->bsize, cache->bshift);
+
+	_debug("size %llu, avail %llu",
+	       (unsigned long long) stats.f_blocks,
+	       (unsigned long long) stats.f_bavail);
+
+	/* set up caching limits */
+	do_div(stats.f_files, 100);
+	cache->fstop = stats.f_files * cache->fstop_percent;
+	cache->fcull = stats.f_files * cache->fcull_percent;
+	cache->frun  = stats.f_files * cache->frun_percent;
+
+	_debug("limits {%llu,%llu,%llu} files",
+	       (unsigned long long) cache->frun,
+	       (unsigned long long) cache->fcull,
+	       (unsigned long long) cache->fstop);
+
+	stats.f_blocks >>= cache->bshift;
+	do_div(stats.f_blocks, 100);
+	cache->bstop = stats.f_blocks * cache->bstop_percent;
+	cache->bcull = stats.f_blocks * cache->bcull_percent;
+	cache->brun  = stats.f_blocks * cache->brun_percent;
+
+	_debug("limits {%llu,%llu,%llu} blocks",
+	       (unsigned long long) cache->brun,
+	       (unsigned long long) cache->bcull,
+	       (unsigned long long) cache->bstop);
+
+	/* get the cache directory and check its type */
+	cachedir = cachefiles_get_directory(cache, root, "cache", NULL);
+	if (IS_ERR(cachedir)) {
+		ret = PTR_ERR(cachedir);
+		goto error_unsupported;
+	}
+
+	cache->store = cachedir;
+
+	/* get the graveyard directory */
+	graveyard = cachefiles_get_directory(cache, root, "graveyard", NULL);
+	if (IS_ERR(graveyard)) {
+		ret = PTR_ERR(graveyard);
+		goto error_unsupported;
+	}
+
+	cache->graveyard = graveyard;
+	cache->cache = cache_cookie;
+
+	ret = fscache_add_cache(cache_cookie, &cachefiles_cache_ops, cache);
+	if (ret < 0)
+		goto error_add_cache;
+
+	/* done */
+	set_bit(CACHEFILES_READY, &cache->flags);
+	dput(root);
+
+	pr_info("File cache on %s registered\n", cache_cookie->name);
+
+	/* check how much space the cache has */
+	cachefiles_has_space(cache, 0, 0);
+	cachefiles_end_secure(cache, saved_cred);
+	_leave(" = 0 [%px]", cache->cache);
+	return 0;
+
+error_add_cache:
+	cachefiles_put_directory(cache->graveyard);
+	cache->graveyard = NULL;
+error_unsupported:
+	cachefiles_put_directory(cache->store);
+	cache->store = NULL;
+	mntput(cache->mnt);
+	cache->mnt = NULL;
+	dput(root);
+error_open_root:
+	cachefiles_end_secure(cache, saved_cred);
+error_getsec:
+	fscache_relinquish_cache(cache_cookie);
+	cache->cache = NULL;
+	pr_err("Failed to register: %d\n", ret);
+	return ret;
+}
+
 /*
  * See if we have space for a number of pages and/or a number of files in the
  * cache
@@ -101,3 +261,50 @@ int cachefiles_has_space(struct cachefiles_cache *cache,
 	_leave(" = %d", ret);
 	return ret;
 }
+
+/*
+ * Sync a cache to backing disk.
+ */
+static void cachefiles_sync_cache(struct cachefiles_cache *cache)
+{
+	const struct cred *saved_cred;
+	int ret;
+
+	_enter("%s", cache->cache->name);
+
+	/* make sure all pages pinned by operations on behalf of the netfs are
+	 * written to disc */
+	cachefiles_begin_secure(cache, &saved_cred);
+	down_read(&cache->mnt->mnt_sb->s_umount);
+	ret = sync_filesystem(cache->mnt->mnt_sb);
+	up_read(&cache->mnt->mnt_sb->s_umount);
+	cachefiles_end_secure(cache, saved_cred);
+
+	if (ret == -EIO)
+		cachefiles_io_error(cache,
+				    "Attempt to sync backing fs superblock returned error %d",
+				    ret);
+}
+
+/*
+ * Withdraw cache objects.
+ */
+void cachefiles_withdraw_cache(struct cachefiles_cache *cache)
+{
+	struct fscache_cache *fscache = cache->cache;
+
+	pr_info("File cache on %s unregistering\n", fscache->name);
+
+	fscache_withdraw_cache(fscache);
+
+	/* we now have to destroy all the active objects pertaining to this
+	 * cache - which we do by passing them off to thread pool to be
+	 * disposed of */
+	// PLACEHOLDER: Withdraw objects
+	fscache_wait_for_objects(fscache);
+
+	// PLACEHOLDER: Withdraw volume
+	cachefiles_sync_cache(cache);
+	cache->cache = NULL;
+	fscache_relinquish_cache(fscache);
+}
diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
index 7d4691614cec..a449ee661987 100644
--- a/fs/cachefiles/daemon.c
+++ b/fs/cachefiles/daemon.c
@@ -702,6 +702,7 @@ static int cachefiles_daemon_bind(struct cachefiles_cache *cache, char *args)
 
 	pr_warn("Cache is disabled for development\n");
 	return -ENOANO; // Don't allow the cache to operate yet
+	//return cachefiles_add_cache(cache);
 }
 
 /*
@@ -711,10 +712,11 @@ static void cachefiles_daemon_unbind(struct cachefiles_cache *cache)
 {
 	_enter("");
 
-	if (test_bit(CACHEFILES_READY, &cache->flags)) {
-		// PLACEHOLDER: Withdraw cache
-	}
+	if (test_bit(CACHEFILES_READY, &cache->flags))
+		cachefiles_withdraw_cache(cache);
 
+	cachefiles_put_directory(cache->graveyard);
+	cachefiles_put_directory(cache->store);
 	mntput(cache->mnt);
 
 	kfree(cache->rootdirname);
diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
new file mode 100644
index 000000000000..564ea8fa6641
--- /dev/null
+++ b/fs/cachefiles/interface.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* FS-Cache interface to CacheFiles
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/slab.h>
+#include <linux/mount.h>
+#include <linux/xattr.h>
+#include <linux/file.h>
+#include <linux/falloc.h>
+#include <trace/events/fscache.h>
+#include "internal.h"
+
+const struct fscache_cache_ops cachefiles_cache_ops = {
+	.name			= "cachefiles",
+};
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 48768a3ab105..77e874c2bbe7 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -32,6 +32,8 @@ struct cachefiles_object {
 struct cachefiles_cache {
 	struct fscache_cache		*cache;		/* Cache cookie */
 	struct vfsmount			*mnt;		/* mountpoint holding the cache */
+	struct dentry			*store;		/* Directory into which live objects go */
+	struct dentry			*graveyard;	/* directory into which dead objects go */
 	struct file			*cachefilesd;	/* manager daemon handle */
 	const struct cred		*cache_cred;	/* security override for accessing cache */
 	struct mutex			daemon_mutex;	/* command serialisation mutex */
@@ -78,8 +80,10 @@ static inline void cachefiles_state_changed(struct cachefiles_cache *cache)
 /*
  * cache.c
  */
+extern int cachefiles_add_cache(struct cachefiles_cache *cache);
 extern int cachefiles_has_space(struct cachefiles_cache *cache,
 				unsigned fnr, unsigned bnr);
+extern void cachefiles_withdraw_cache(struct cachefiles_cache *cache);
 
 /*
  * daemon.c
@@ -125,6 +129,11 @@ static inline int cachefiles_inject_remove_error(void)
 	return cachefiles_error_injection_state & 2 ? -EIO : 0;
 }
 
+/*
+ * interface.c
+ */
+extern const struct fscache_cache_ops cachefiles_cache_ops;
+
 /*
  * namei.c
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
