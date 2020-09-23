Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ACE275994
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Sep 2020 16:12:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kL5Vo-0004dx-Ij; Wed, 23 Sep 2020 14:12:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1kL5Vm-0004dY-Ru
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lp2zf4M8WWzFLTFgy/1Co9z+XEmLjCYEeMivXYFFvHM=; b=aXAf+Xi/hQhovjnDbvN6HIbFgQ
 GmZTUwaJoRONI8am8VhA0kAEfSwiB1cjXXoUC8eJPBtTEAj0x3T5SZdeRhvkclPQcQntyj4ES/P3Q
 m6YWwGvu2bfO9t5sZhc79f+gMICoTNQCt1sMQKicLgAz2r/Cx5Pd5mYMQNEP9VNCkx10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lp2zf4M8WWzFLTFgy/1Co9z+XEmLjCYEeMivXYFFvHM=; b=Jijv9J9Q8hAfualAkbUtYI+0L9
 BVMCJgMhHYglXHeFjUZZExzRRsx8vcS75ZGR5fHKhlSEw5EwJjb8kbch30GMRcAQ8hb6O7eePE3v/
 w7xFepwGEzzO/PSKUwUyCmPL/fOfgOaPVr47md/+6Cf4bmQ5nDm8nyGEKGBOsdKqKYsk=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kL5VL-004fBP-Go
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:12:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0907912FC;
 Wed, 23 Sep 2020 07:12:07 -0700 (PDT)
Received: from entos-thunderx2-desktop.shanghai.arm.com
 (entos-thunderx2-desktop.shanghai.arm.com [10.169.212.215])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CAFBB3F73B;
 Wed, 23 Sep 2020 07:12:03 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 qemu_oss@crudebyte.com
Date: Wed, 23 Sep 2020 22:11:44 +0800
Message-Id: <20200923141146.90046-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200923141146.90046-1-jianyong.wu@arm.com>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kL5VL-004fBP-Go
Subject: [V9fs-developer] [PATCH v2 2/4] fs/9p: track open fids
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
Cc: justin.he@arm.com, jianyong.wu@arm.com, groug@kaod.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Greg Kurz <gkurz@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Greg Kurz <gkurz@linux.vnet.ibm.com>

This patch adds accounting of open fids in a list hanging off the i_private
field of the corresponding inode. This allows faster lookups compared to
searching the full 9p client list.

The lookup code is modified accordingly.

Signed-off-by: Greg Kurz <gkurz@linux.vnet.ibm.com>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/9p/fid.c             | 32 +++++++++++++++++++++++---------
 fs/9p/fid.h             |  1 +
 fs/9p/vfs_dir.c         |  3 +++
 fs/9p/vfs_file.c        |  1 +
 fs/9p/vfs_inode.c       |  6 +++++-
 fs/9p/vfs_inode_dotl.c  |  1 +
 include/net/9p/client.h |  1 +
 7 files changed, 35 insertions(+), 10 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 3304984c0fad..d11dd430590d 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -39,7 +39,7 @@ void v9fs_fid_add(struct dentry *dentry, struct p9_fid *fid)
 }
 
 /**
- * v9fs_fid_find_inode - search for a fid off of the client list
+ * v9fs_fid_find_inode - search for an open fid off of the inode list
  * @inode: return a fid pointing to a specific inode
  * @uid: return a fid belonging to the specified user
  *
@@ -47,24 +47,38 @@ void v9fs_fid_add(struct dentry *dentry, struct p9_fid *fid)
 
 static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 {
-	struct p9_client *clnt = v9fs_inode2v9ses(inode)->clnt;
-	struct p9_fid *fid, *fidptr, *ret = NULL;
-	unsigned long flags;
+	struct hlist_head *h;
+	struct p9_fid *fid, *ret = NULL;
 
 	p9_debug(P9_DEBUG_VFS, " inode: %p\n", inode);
 
-	spin_lock_irqsave(&clnt->lock, flags);
-	list_for_each_entry_safe(fid, fidptr, &clnt->fidlist, flist) {
-		if (uid_eq(fid->uid, uid) &&
-		   (inode->i_ino == v9fs_qid2ino(&fid->qid))) {
+	spin_lock(&inode->i_lock);
+	h = (struct hlist_head *)&inode->i_private;
+	hlist_for_each_entry(fid, h, ilist) {
+		if (uid_eq(fid->uid, uid)) {
 			ret = fid;
 			break;
 		}
 	}
-	spin_unlock_irqrestore(&clnt->lock, flags);
+	spin_unlock(&inode->i_lock);
 	return ret;
 }
 
+/**
+ * v9fs_open_fid_add - add an open fid to an inode
+ * @dentry: inode that the fid is being added to
+ * @fid: fid to add
+ *
+ */
+
+void v9fs_open_fid_add(struct inode *inode, struct p9_fid *fid)
+{
+	spin_lock(&inode->i_lock);
+	hlist_add_head(&fid->ilist, (struct hlist_head *)&inode->i_private);
+	spin_unlock(&inode->i_lock);
+}
+
+
 /**
  * v9fs_fid_find - retrieve a fid that belongs to the specified uid
  * @dentry: dentry to look for fid in
diff --git a/fs/9p/fid.h b/fs/9p/fid.h
index 928b1093f511..dfa11df02818 100644
--- a/fs/9p/fid.h
+++ b/fs/9p/fid.h
@@ -15,6 +15,7 @@ static inline struct p9_fid *v9fs_parent_fid(struct dentry *dentry)
 }
 void v9fs_fid_add(struct dentry *dentry, struct p9_fid *fid);
 struct p9_fid *v9fs_writeback_fid(struct dentry *dentry);
+void v9fs_open_fid_add(struct inode *inode, struct p9_fid *fid);
 static inline struct p9_fid *clone_fid(struct p9_fid *fid)
 {
 	return IS_ERR(fid) ? fid :  p9_client_walk(fid, 0, NULL, 1);
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 674d22bf4f6f..d82d8a346f86 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -210,6 +210,9 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	fid = filp->private_data;
 	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
 		 inode, filp, fid ? fid->fid : -1);
+	spin_lock(&inode->i_lock);
+	hlist_del(&fid->ilist);
+	spin_unlock(&inode->i_lock);
 	if (fid)
 		p9_client_clunk(fid);
 	return 0;
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 92cd1d80218d..b42cc1752cd1 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -96,6 +96,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 	mutex_unlock(&v9inode->v_mutex);
 	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
 		v9fs_cache_inode_set_cookie(inode, file);
+	v9fs_open_fid_add(inode, fid);
 	return 0;
 out_error:
 	p9_client_clunk(file->private_data);
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 31c2fddabb82..6b243ffcbcf0 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -256,6 +256,7 @@ int v9fs_init_inode(struct v9fs_session_info *v9ses,
 	inode->i_rdev = rdev;
 	inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 	inode->i_mapping->a_ops = &v9fs_addr_operations;
+	inode->i_private = NULL;
 
 	switch (mode & S_IFMT) {
 	case S_IFIFO:
@@ -796,6 +797,7 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid, *inode_fid;
 	struct dentry *res = NULL;
+	struct inode *inode;
 
 	if (d_in_lookup(dentry)) {
 		res = v9fs_vfs_lookup(dir, dentry, 0);
@@ -824,7 +826,8 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 	}
 
 	v9fs_invalidate_inode_attr(dir);
-	v9inode = V9FS_I(d_inode(dentry));
+	inode = d_inode(dentry);
+	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
 	if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
 	    !v9inode->writeback_fid &&
@@ -852,6 +855,7 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 	file->private_data = fid;
 	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
 		v9fs_cache_inode_set_cookie(d_inode(dentry), file);
+	v9fs_open_fid_add(inode, fid);
 
 	file->f_mode |= FMODE_CREATED;
 out:
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 0028eccb665a..08f2e089fb0e 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -342,6 +342,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	file->private_data = ofid;
 	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
 		v9fs_cache_inode_set_cookie(inode, file);
+	v9fs_open_fid_add(inode, ofid);
 	file->f_mode |= FMODE_CREATED;
 out:
 	v9fs_put_acl(dacl, pacl);
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index dd5b5bd781a4..ce7882da8e86 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -152,6 +152,7 @@ struct p9_fid {
 	void *rdir;
 
 	struct hlist_node dlist;	/* list of all fids attached to a dentry */
+	struct hlist_node ilist;
 };
 
 /**
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
