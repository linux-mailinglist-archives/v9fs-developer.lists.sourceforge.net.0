Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8266A3909
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Feb 2023 03:51:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pWTc5-0005Hx-9i;
	Mon, 27 Feb 2023 02:51:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pWTc4-0005Hr-Da
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 02:51:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c5gDKvjHxidcSyc7jC6hRM2muTQZ6HjOwvIbZ6edxuY=; b=UNcKfnal57GwRH37WMs5WSre3k
 1+nIzGX0rKA0uT5nsyICSKwMike/r5Gh7MsyQCotwOoOl56IytS2Buc3dF1wPO1a9rV875yR/muTO
 FE12svvVtJTvVSRXwXpIg1g6yUwm8k240CsDCdZVcuTQf+u03fa0RBwGuDRFF9ShgyAI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c5gDKvjHxidcSyc7jC6hRM2muTQZ6HjOwvIbZ6edxuY=; b=ijHDeZcKaW1ySXYpjLm4FywJR3
 HfjaI14wKyqEshnpbm1q55qDZKXcLllE0rLLUr+kPDQHpt76M/9Wekt79B00MLd3caLa9bSduqa/7
 hWEmcVy2titXcfim3byIX0YOyCP/yDsM8cTRJYRe1ugoyF9tZgQDe1glcD93W9rqNEgo=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWTc1-0002QF-Kj for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 02:51:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EE3B6B80B1E;
 Mon, 27 Feb 2023 02:51:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3FC8C433D2;
 Mon, 27 Feb 2023 02:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1677466290;
 bh=U1ui6w8PIkWzsfrkm+P3XcVLn9Q3Wbpfqn5Hu03EgfQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OOyvJuhfn8Us0FgqG4bX1fviPxIK71+A/n5AptgiRvnaoN1/U63qtKrm7XAKnzTAC
 rjAca0ZTvN9iHe1+YFWdOAdgWY4FlSdMv2PNG3VqU4q+e6JxURDXfDGO0IsxCcHvw7
 uzq99OJEM8w8tqtrhGGwgyuOzBlIVlQ+WGau4U90qvVoKlDvqeU5n+bal2JK7yHTGU
 QFHkhzTdAZoZ3bar18mbGZbi3iSEgjX5TYDubHJXivQWYh4Tmn185xoPS9WLqm3AeN
 K2+fQjq0PigZcvWie1rhjCGWyHrIO6aSQl5PeQtEr3eOVPliDSbsNR1GifE+CebMqU
 qhHlh4KIPNgzw==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: asmadeus@codewreck.org
Date: Mon, 27 Feb 2023 02:50:57 +0000
Message-Id: <20230227025056.24242-1-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <Y/E2o2/NmfTyfiM5@codewreck.org>
References: <Y/E2o2/NmfTyfiM5@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -3.4 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We had 3 different sets of file operations across 2 different
 protocol variants differentiated by cache which really only changed 3
 functions.
 But the real problem is that certain file modes, mount op [...] 
 Content analysis details:   (-3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pWTc1-0002QF-Kj
Subject: [V9fs-developer] [PATCH v5 3/11] fs/9p: Consolidate file operations
 and add readahead and writeback
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ericvh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We had 3 different sets of file operations across 2 different protocol
variants differentiated by cache which really only changed 3
functions.  But the real problem is that certain file modes, mount
options, and other factors weren't being considered when we
decided whether or not to use caches.

This consolidates all the operations and switches
to conditionals within a common set to decide whether or not
to do different aspects of caching.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/v9fs.c           |  30 ++++------
 fs/9p/v9fs.h           |   2 +
 fs/9p/v9fs_vfs.h       |   4 --
 fs/9p/vfs_dir.c        |  10 +++-
 fs/9p/vfs_file.c       | 131 +++++++----------------------------------
 fs/9p/vfs_inode.c      |  41 +++++++------
 fs/9p/vfs_inode_dotl.c |  28 +++++++--
 7 files changed, 84 insertions(+), 162 deletions(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index 61a51b90600d..a46bf9121f11 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -39,8 +39,6 @@ enum {
 	Opt_uname, Opt_remotename, Opt_cache, Opt_cachetag,
 	/* Options that take no arguments */
 	Opt_nodevmap,
-	/* Cache options */
-	Opt_cache_loose, Opt_fscache, Opt_mmap,
 	/* Access options */
 	Opt_access, Opt_posixacl,
 	/* Lock timeout option */
@@ -58,9 +56,6 @@ static const match_table_t tokens = {
 	{Opt_remotename, "aname=%s"},
 	{Opt_nodevmap, "nodevmap"},
 	{Opt_cache, "cache=%s"},
-	{Opt_cache_loose, "loose"},
-	{Opt_fscache, "fscache"},
-	{Opt_mmap, "mmap"},
 	{Opt_cachetag, "cachetag=%s"},
 	{Opt_access, "access=%s"},
 	{Opt_posixacl, "posixacl"},
@@ -69,10 +64,12 @@ static const match_table_t tokens = {
 };

 static const char *const v9fs_cache_modes[nr__p9_cache_modes] = {
-	[CACHE_NONE]	= "none",
-	[CACHE_MMAP]	= "mmap",
-	[CACHE_LOOSE]	= "loose",
-	[CACHE_FSCACHE]	= "fscache",
+	[CACHE_NONE]		= "none",
+	[CACHE_READAHEAD]	= "readahead",
+	[CACHE_WRITEBACK]	= "writeback",
+	[CACHE_MMAP]		= "mmap",
+	[CACHE_LOOSE]		= "loose",
+	[CACHE_FSCACHE]		= "fscache",
 };

 /* Interpret mount options for cache mode */
@@ -89,6 +86,12 @@ static int get_cache_mode(char *s)
 	} else if (!strcmp(s, "mmap")) {
 		version = CACHE_MMAP;
 		p9_debug(P9_DEBUG_9P, "Cache mode: mmap\n");
+	} else if (!strcmp(s, "writeback")) {
+		version = CACHE_WRITEBACK;
+		p9_debug(P9_DEBUG_9P, "Cache mode: writeback\n");
+	} else if (!strcmp(s, "readahead")) {
+		version = CACHE_READAHEAD;
+		p9_debug(P9_DEBUG_9P, "Cache mode: readahead\n");
 	} else if (!strcmp(s, "none")) {
 		version = CACHE_NONE;
 		p9_debug(P9_DEBUG_9P, "Cache mode: none\n");
@@ -266,15 +269,6 @@ static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
 		case Opt_nodevmap:
 			v9ses->nodev = 1;
 			break;
-		case Opt_cache_loose:
-			v9ses->cache = CACHE_LOOSE;
-			break;
-		case Opt_fscache:
-			v9ses->cache = CACHE_FSCACHE;
-			break;
-		case Opt_mmap:
-			v9ses->cache = CACHE_MMAP;
-			break;
 		case Opt_cachetag:
 #ifdef CONFIG_9P_FSCACHE
 			kfree(v9ses->cachetag);
diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index 6acabc2e7dc9..972cfc681fe0 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -50,6 +50,8 @@ enum p9_session_flags {

 enum p9_cache_modes {
 	CACHE_NONE,
+	CACHE_READAHEAD,
+	CACHE_WRITEBACK,
 	CACHE_MMAP,
 	CACHE_LOOSE,
 	CACHE_FSCACHE,
diff --git a/fs/9p/v9fs_vfs.h b/fs/9p/v9fs_vfs.h
index bc417da7e9c1..cce87c9bdd8b 100644
--- a/fs/9p/v9fs_vfs.h
+++ b/fs/9p/v9fs_vfs.h
@@ -36,10 +36,6 @@ extern const struct file_operations v9fs_dir_operations;
 extern const struct file_operations v9fs_dir_operations_dotl;
 extern const struct dentry_operations v9fs_dentry_operations;
 extern const struct dentry_operations v9fs_cached_dentry_operations;
-extern const struct file_operations v9fs_cached_file_operations;
-extern const struct file_operations v9fs_cached_file_operations_dotl;
-extern const struct file_operations v9fs_mmap_file_operations;
-extern const struct file_operations v9fs_mmap_file_operations_dotl;
 extern struct kmem_cache *v9fs_inode_cache;

 struct inode *v9fs_alloc_inode(struct super_block *sb);
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 3d74b04fe0de..289b58cb896e 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -197,9 +197,9 @@ static int v9fs_dir_readdir_dotl(struct file *file, struct dir_context *ctx)


 /**
- * v9fs_dir_release - called on a close of a file or directory
- * @inode: inode of the directory
- * @filp: file pointer to a directory
+ * v9fs_dir_release - close a directory or a file
+ * @inode: inode of the directory or file
+ * @filp: file pointer to a directory or file
  *
  */

@@ -214,7 +214,11 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	fid = filp->private_data;
 	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
 		 inode, filp, fid ? fid->fid : -1);
+
 	if (fid) {
+		if ((S_ISREG(inode->i_mode)) && (filp->f_mode & FMODE_WRITE))
+			retval = filemap_fdatawrite(inode->i_mapping);
+
 		spin_lock(&inode->i_lock);
 		hlist_del(&fid->ilist);
 		spin_unlock(&inode->i_lock);
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 3b6458846a0b..20e4bd299fc2 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -28,7 +28,6 @@
 #include "fid.h"
 #include "cache.h"

-static const struct vm_operations_struct v9fs_file_vm_ops;
 static const struct vm_operations_struct v9fs_mmap_file_vm_ops;

 /**
@@ -73,7 +72,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 	}
 
 	mutex_lock(&v9inode->v_mutex);
-	if ((v9ses->cache) && !v9inode->writeback_fid &&
+	if ((v9ses->cache >= CACHE_WRITEBACK) && !v9inode->writeback_fid &&
 	    ((file->f_flags & O_ACCMODE) != O_RDONLY)) {
 		/*
 		 * clone a fid and add it to writeback_fid
@@ -367,10 +366,15 @@ v9fs_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
 {
 	struct p9_fid *fid = iocb->ki_filp->private_data;
 	int ret, err = 0;
+	struct inode *inode = file_inode(iocb->ki_filp);
+	struct v9fs_session_info *v9ses = v9fs_inode2v9ses(inode);
 
 	p9_debug(P9_DEBUG_VFS, "count %zu offset %lld\n",
 		 iov_iter_count(to), iocb->ki_pos);

+	if (v9ses->cache > CACHE_MMAP)
+		return generic_file_read_iter(iocb, to);
+
 	if (iocb->ki_filp->f_flags & O_NONBLOCK)
 		ret = p9_client_read_once(fid, iocb->ki_pos, to, &err);
 	else
@@ -395,6 +399,11 @@ v9fs_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
 	ssize_t retval;
 	loff_t origin;
 	int err = 0;
+	struct inode *inode = file_inode(iocb->ki_filp);
+	struct v9fs_session_info *v9ses = v9fs_inode2v9ses(inode);
+
+	if (v9ses->cache >= CACHE_WRITEBACK)
+		return generic_file_write_iter(iocb, from);

 	retval = generic_write_checks(iocb, from);
 	if (retval <= 0)
@@ -477,25 +486,16 @@ static int
 v9fs_file_mmap(struct file *filp, struct vm_area_struct *vma)
 {
 	int retval;
-
-
-	retval = generic_file_mmap(filp, vma);
-	if (!retval)
-		vma->vm_ops = &v9fs_file_vm_ops;
-
-	return retval;
-}
-
-static int
-v9fs_mmap_file_mmap(struct file *filp, struct vm_area_struct *vma)
-{
-	int retval;
-	struct inode *inode;
-	struct v9fs_inode *v9inode;
+	struct inode *inode = file_inode(filp);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+	struct v9fs_session_info *v9ses = v9fs_inode2v9ses(inode);
 	struct p9_fid *fid;

-	inode = file_inode(filp);
-	v9inode = V9FS_I(inode);
+	if (v9ses->cache < CACHE_MMAP) {
+		invalidate_inode_pages2(filp->f_mapping);
+		return generic_file_readonly_mmap(filp, vma);
+	}
+
 	mutex_lock(&v9inode->v_mutex);
 	if (!v9inode->writeback_fid &&
 	    (vma->vm_flags & VM_SHARED) &&
@@ -563,35 +563,6 @@ v9fs_vm_page_mkwrite(struct vm_fault *vmf)
 	return VM_FAULT_NOPAGE;
 }

-/**
- * v9fs_mmap_file_read_iter - read from a file
- * @iocb: The operation parameters
- * @to: The buffer to read into
- *
- */
-static ssize_t
-v9fs_mmap_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
-{
-	/* TODO: Check if there are dirty pages */
-	return v9fs_file_read_iter(iocb, to);
-}
-
-/**
- * v9fs_mmap_file_write_iter - write to a file
- * @iocb: The operation parameters
- * @from: The data to write
- *
- */
-static ssize_t
-v9fs_mmap_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
-{
-	/*
-	 * TODO: invalidate mmaps on filp's inode between
-	 * offset and offset+count
-	 */
-	return v9fs_file_write_iter(iocb, from);
-}
-
 static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
 {
 	struct inode *inode;
@@ -614,13 +585,6 @@ static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
 	filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
 }

-
-static const struct vm_operations_struct v9fs_file_vm_ops = {
-	.fault = filemap_fault,
-	.map_pages = filemap_map_pages,
-	.page_mkwrite = v9fs_vm_page_mkwrite,
-};
-
 static const struct vm_operations_struct v9fs_mmap_file_vm_ops = {
 	.close = v9fs_mmap_vm_close,
 	.fault = filemap_fault,
@@ -628,34 +592,6 @@ static const struct vm_operations_struct v9fs_mmap_file_vm_ops = {
 	.page_mkwrite = v9fs_vm_page_mkwrite,
 };

-
-const struct file_operations v9fs_cached_file_operations = {
-	.llseek = generic_file_llseek,
-	.read_iter = generic_file_read_iter,
-	.write_iter = generic_file_write_iter,
-	.open = v9fs_file_open,
-	.release = v9fs_dir_release,
-	.lock = v9fs_file_lock,
-	.mmap = v9fs_file_mmap,
-	.splice_read = generic_file_splice_read,
-	.splice_write = iter_file_splice_write,
-	.fsync = v9fs_file_fsync,
-};
-
-const struct file_operations v9fs_cached_file_operations_dotl = {
-	.llseek = generic_file_llseek,
-	.read_iter = generic_file_read_iter,
-	.write_iter = generic_file_write_iter,
-	.open = v9fs_file_open,
-	.release = v9fs_dir_release,
-	.lock = v9fs_file_lock_dotl,
-	.flock = v9fs_file_flock_dotl,
-	.mmap = v9fs_file_mmap,
-	.splice_read = generic_file_splice_read,
-	.splice_write = iter_file_splice_write,
-	.fsync = v9fs_file_fsync_dotl,
-};
-
 const struct file_operations v9fs_file_operations = {
 	.llseek = generic_file_llseek,
 	.read_iter = v9fs_file_read_iter,
@@ -677,34 +613,7 @@ const struct file_operations v9fs_file_operations_dotl = {
 	.release = v9fs_dir_release,
 	.lock = v9fs_file_lock_dotl,
 	.flock = v9fs_file_flock_dotl,
-	.mmap = generic_file_readonly_mmap,
-	.splice_read = generic_file_splice_read,
-	.splice_write = iter_file_splice_write,
-	.fsync = v9fs_file_fsync_dotl,
-};
-
-const struct file_operations v9fs_mmap_file_operations = {
-	.llseek = generic_file_llseek,
-	.read_iter = v9fs_mmap_file_read_iter,
-	.write_iter = v9fs_mmap_file_write_iter,
-	.open = v9fs_file_open,
-	.release = v9fs_dir_release,
-	.lock = v9fs_file_lock,
-	.mmap = v9fs_mmap_file_mmap,
-	.splice_read = generic_file_splice_read,
-	.splice_write = iter_file_splice_write,
-	.fsync = v9fs_file_fsync,
-};
-
-const struct file_operations v9fs_mmap_file_operations_dotl = {
-	.llseek = generic_file_llseek,
-	.read_iter = v9fs_mmap_file_read_iter,
-	.write_iter = v9fs_mmap_file_write_iter,
-	.open = v9fs_file_open,
-	.release = v9fs_dir_release,
-	.lock = v9fs_file_lock_dotl,
-	.flock = v9fs_file_flock_dotl,
-	.mmap = v9fs_mmap_file_mmap,
+	.mmap = v9fs_file_mmap,
 	.splice_read = generic_file_splice_read,
 	.splice_write = iter_file_splice_write,
 	.fsync = v9fs_file_fsync_dotl,
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 33e521c60e2c..61da885e4d40 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -287,24 +287,10 @@ int v9fs_init_inode(struct v9fs_session_info *v9ses,
 	case S_IFREG:
 		if (v9fs_proto_dotl(v9ses)) {
 			inode->i_op = &v9fs_file_inode_operations_dotl;
-			if (v9ses->cache == CACHE_LOOSE ||
-			    v9ses->cache == CACHE_FSCACHE)
-				inode->i_fop =
-					&v9fs_cached_file_operations_dotl;
-			else if (v9ses->cache == CACHE_MMAP)
-				inode->i_fop = &v9fs_mmap_file_operations_dotl;
-			else
-				inode->i_fop = &v9fs_file_operations_dotl;
+			inode->i_fop = &v9fs_file_operations_dotl;
 		} else {
 			inode->i_op = &v9fs_file_inode_operations;
-			if (v9ses->cache == CACHE_LOOSE ||
-			    v9ses->cache == CACHE_FSCACHE)
-				inode->i_fop =
-					&v9fs_cached_file_operations;
-			else if (v9ses->cache == CACHE_MMAP)
-				inode->i_fop = &v9fs_mmap_file_operations;
-			else
-				inode->i_fop = &v9fs_file_operations;
+			inode->i_fop = &v9fs_file_operations;
 		}

 		break;
@@ -843,7 +829,7 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 	inode = d_inode(dentry);
 	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
-	if ((v9ses->cache) && !v9inode->writeback_fid &&
+	if ((v9ses->cache >= CACHE_WRITEBACK) && !v9inode->writeback_fid &&
 	    ((flags & O_ACCMODE) != O_RDONLY)) {
 		/*
 		 * clone a fid and add it to writeback_fid
@@ -1030,6 +1016,7 @@ v9fs_vfs_getattr(struct user_namespace *mnt_userns, const struct path *path,
 		 struct kstat *stat, u32 request_mask, unsigned int flags)
 {
 	struct dentry *dentry = path->dentry;
+	struct inode *inode = d_inode(dentry);
 	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid;
 	struct p9_wstat *st;
@@ -1039,6 +1026,12 @@ v9fs_vfs_getattr(struct user_namespace *mnt_userns, const struct path *path,
 	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
 		generic_fillattr(&init_user_ns, d_inode(dentry), stat);
 		return 0;
+	} else if (v9ses->cache >= CACHE_WRITEBACK) {
+		if (S_ISREG(inode->i_mode)) {
+			int retval = filemap_fdatawrite(inode->i_mapping);
+			if (retval)
+				p9_debug(P9_DEBUG_ERROR, "flushing writeback during getattr returned %d\n", retval);
+		}
 	}
 	fid = v9fs_fid_lookup(dentry);
 	if (IS_ERR(fid))
@@ -1115,8 +1108,11 @@ static int v9fs_vfs_setattr(struct user_namespace *mnt_userns,
 	}

 	/* Write all dirty data */
-	if (d_is_reg(dentry))
-		filemap_write_and_wait(inode->i_mapping);
+	if (d_is_reg(dentry)) {
+		retval = filemap_fdatawrite(inode->i_mapping);
+		if (retval)
+			p9_debug(P9_DEBUG_ERROR, "flushing writeback during setattr returned %d\n", retval);
+	}

 	retval = p9_client_wstat(fid, &wstat);

@@ -1127,9 +1123,12 @@ static int v9fs_vfs_setattr(struct user_namespace *mnt_userns,
 		return retval;

 	if ((iattr->ia_valid & ATTR_SIZE) &&
-	    iattr->ia_size != i_size_read(inode)) {
+		 iattr->ia_size != i_size_read(inode)) {
 		truncate_setsize(inode, iattr->ia_size);
-		fscache_resize_cookie(v9fs_inode_cookie(v9inode), iattr->ia_size);
+		if (v9ses->cache == CACHE_FSCACHE)
+			fscache_resize_cookie(v9fs_inode_cookie(v9inode), iattr->ia_size);
+		else
+			invalidate_mapping_pages(&inode->i_data, 0, -1);
 	}

 	v9fs_invalidate_inode_attr(inode);
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index bff37a312e64..84c1619e091d 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -458,6 +458,7 @@ v9fs_vfs_getattr_dotl(struct user_namespace *mnt_userns,
 	struct dentry *dentry = path->dentry;
 	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid;
+	struct inode *inode = d_inode(dentry);
 	struct p9_stat_dotl *st;

 	p9_debug(P9_DEBUG_VFS, "dentry: %p\n", dentry);
@@ -465,6 +466,12 @@ v9fs_vfs_getattr_dotl(struct user_namespace *mnt_userns,
 	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
 		generic_fillattr(&init_user_ns, d_inode(dentry), stat);
 		return 0;
+	} else if (v9ses->cache >= CACHE_WRITEBACK) {
+		if (S_ISREG(inode->i_mode)) {
+			int retval = filemap_fdatawrite(inode->i_mapping);
+			if (retval)
+				p9_debug(P9_DEBUG_ERROR, "flushing writeback during getattr returned %d\n", retval);
+		}
 	}
 	fid = v9fs_fid_lookup(dentry);
 	if (IS_ERR(fid))
@@ -540,12 +547,14 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
 			  struct dentry *dentry, struct iattr *iattr)
 {
 	int retval, use_dentry = 0;
+	struct inode *inode = d_inode(dentry);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid = NULL;
 	struct p9_iattr_dotl p9attr = {
 		.uid = INVALID_UID,
 		.gid = INVALID_GID,
 	};
-	struct inode *inode = d_inode(dentry);

 	p9_debug(P9_DEBUG_VFS, "\n");

@@ -553,6 +562,8 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
 	if (retval)
 		return retval;

+	v9ses = v9fs_dentry2v9ses(dentry);
+
 	p9attr.valid = v9fs_mapped_iattr_valid(iattr->ia_valid);
 	if (iattr->ia_valid & ATTR_MODE)
 		p9attr.mode = iattr->ia_mode;
@@ -583,8 +594,12 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
 		return PTR_ERR(fid);

 	/* Write all dirty data */
-	if (S_ISREG(inode->i_mode))
-		filemap_write_and_wait(inode->i_mapping);
+	if (S_ISREG(inode->i_mode)) {
+		retval = filemap_fdatawrite(inode->i_mapping);
+		if (retval < 0) {
+			p9_debug(P9_DEBUG_ERROR, "Flushing file prior to setattr failed: %d\n", retval);
+		}
+	}

 	retval = p9_client_setattr(fid, &p9attr);
 	if (retval < 0) {
@@ -593,9 +608,12 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
 		return retval;
 	}

-	if ((iattr->ia_valid & ATTR_SIZE) &&
-	    iattr->ia_size != i_size_read(inode))
+	if ((iattr->ia_valid & ATTR_SIZE) && iattr->ia_size !=
+		 i_size_read(inode)) {
 		truncate_setsize(inode, iattr->ia_size);
+		if (v9ses->cache == CACHE_FSCACHE)
+			fscache_resize_cookie(v9fs_inode_cookie(v9inode), iattr->ia_size);
+	}

 	v9fs_invalidate_inode_attr(inode);
 	setattr_copy(&init_user_ns, inode, iattr);
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
