Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C3F275993
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Sep 2020 16:12:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kL5Vm-0004kT-6n; Wed, 23 Sep 2020 14:12:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1kL5Vi-0004kE-2X
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0aQrKGQzagRn0DFPuIp7yubUDqaPYa0+w7gr26nc4Ec=; b=YOufYBxTL70+KeeCaTbDqmvndm
 qhis/OQAJMMQi7bLs6cP77VC/DlfZWffpW5mvnVER2Yj5PeQaCHLiU4L5EbgS0S+6etmgoyJDfLPg
 9tBDYA1myj2jGOothNjJa2zZxToafZ6iyVJiOhK+gBid7e7/QfZMajnM7crIDi7HCsrY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0aQrKGQzagRn0DFPuIp7yubUDqaPYa0+w7gr26nc4Ec=; b=g3tSLGHenyJOE6R8k1VVuI4ONZ
 XxwSLg8Hy4Za6mmWfLSUWS2RqKSXKvyrYdCoOuqeMshCOqHYOAL+I291uhrm2CvrNQ1QeX//GNsQ1
 mBwmSm5MtLqaU0C+gI9LzHYEBNRze/1XiU3x+WiPBrxjpSOA629n7sn0kDiu9Y2FOYxk=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kL5VS-002dag-MK
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:12:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 379BB13D5;
 Wed, 23 Sep 2020 07:12:14 -0700 (PDT)
Received: from entos-thunderx2-desktop.shanghai.arm.com
 (entos-thunderx2-desktop.shanghai.arm.com [10.169.212.215])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 05A3A3F73B;
 Wed, 23 Sep 2020 07:12:10 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 qemu_oss@crudebyte.com
Date: Wed, 23 Sep 2020 22:11:46 +0800
Message-Id: <20200923141146.90046-5-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200923141146.90046-1-jianyong.wu@arm.com>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kL5VS-002dag-MK
Subject: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
 contention.
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
Cc: v9fs-developer@lists.sourceforge.net, jianyong.wu@arm.com,
 justin.he@arm.com, groug@kaod.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric's and Greg's patch offer a mechanism to fix open-unlink-f*syscall
bug in 9p. But there is race issue in fid comtention.
As Greg's patch stores all of fids from opened files into according inode,
so all the lookup fid ops can retrieve fid from inode preferentially. But
there is no mechanism to handle the fid comtention issue. For example,
there are two threads get the same fid in the same time and one of them
clunk the fid before the other thread ready to discard the fid. In this
scenario, it will lead to some fatal problems, even kernel core dump.

I introduce a mechanism to fix this race issue. A counter field introduced
into p9_fid struct to store the reference counter to the fid. When a fid
is allocated from the inode or dentry, the counter will increase, and
will decrease at the end of its occupation. It is guaranteed that the
fid won't be clunked before the reference counter go down to 0, then
we can avoid the clunked fid to be used.

tests:
race issue test from the old test case:
for file in {01..50}; do touch f.${file}; done
seq 1 1000 | xargs -n 1 -P 50 -I{} cat f.* > /dev/null

open-unlink-f*syscall test:
I have tested for f*syscall include: ftruncate fstat fchown fchmod faccessat.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/9p/fid.c             | 22 ++++++++++++++++++----
 fs/9p/fid.h             | 10 +++++++++-
 fs/9p/vfs_dentry.c      |  2 ++
 fs/9p/vfs_dir.c         |  9 +++++----
 fs/9p/vfs_inode.c       | 37 +++++++++++++++++++++++++++++--------
 fs/9p/vfs_inode_dotl.c  | 34 ++++++++++++++++++++++++++++------
 fs/9p/vfs_super.c       |  1 +
 fs/9p/xattr.c           | 16 +++++++++++++---
 include/net/9p/client.h |  6 ++++++
 net/9p/client.c         |  9 +++++----
 10 files changed, 116 insertions(+), 30 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 0b23b0fe6c51..89643dabcdae 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -28,6 +28,7 @@
 
 static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)
 {
+	atomic_set(&fid->count, 1);
 	hlist_add_head(&fid->dlist, (struct hlist_head *)&dentry->d_fsdata);
 }
 
@@ -60,6 +61,8 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 			break;
 		}
 	}
+	if (ret && !IS_ERR(ret))
+		atomic_inc(&ret->count);
 	spin_unlock(&inode->i_lock);
 	return ret;
 }
@@ -74,6 +77,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 void v9fs_open_fid_add(struct inode *inode, struct p9_fid *fid)
 {
 	spin_lock(&inode->i_lock);
+	atomic_set(&fid->count, 1);
 	hlist_add_head(&fid->ilist, (struct hlist_head *)&inode->i_private);
 	spin_unlock(&inode->i_lock);
 }
@@ -106,6 +110,7 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 		hlist_for_each_entry(fid, h, dlist) {
 			if (any || uid_eq(fid->uid, uid)) {
 				ret = fid;
+				atomic_inc(&ret->count);
 				break;
 			}
 		}
@@ -167,7 +172,10 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	fid = v9fs_fid_find(ds, uid, any);
 	if (fid) {
 		/* Found the parent fid do a lookup with that */
-		fid = p9_client_walk(fid, 1, &dentry->d_name.name, 1);
+		struct p9_fid *ofid = fid;
+
+		fid = p9_client_walk(ofid, 1, &dentry->d_name.name, 1);
+		p9_client_clunk(ofid);
 		goto fid_out;
 	}
 	up_read(&v9ses->rename_sem);
@@ -192,8 +200,10 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		v9fs_fid_add(dentry->d_sb->s_root, fid);
 	}
 	/* If we are root ourself just return that */
-	if (dentry->d_sb->s_root == dentry)
+	if (dentry->d_sb->s_root == dentry) {
+		atomic_inc(&fid->count);
 		return fid;
+	}
 	/*
 	 * Do a multipath walk with attached root.
 	 * When walking parent we need to make sure we
@@ -240,6 +250,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 			fid = ERR_PTR(-ENOENT);
 		} else {
 			__add_fid(dentry, fid);
+			atomic_inc(&fid->count);
 			spin_unlock(&dentry->d_lock);
 		}
 	}
@@ -290,11 +301,14 @@ struct p9_fid *v9fs_fid_lookup(struct dentry *dentry)
 struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
 {
 	int err;
-	struct p9_fid *fid;
+	struct p9_fid *fid, *ofid;
 
-	fid = clone_fid(v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0));
+	ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
+	if (ofid && !IS_ERR(ofid))
+		fid = clone_fid(ofid);
 	if (IS_ERR(fid))
 		goto error_out;
+	p9_client_clunk(ofid);
 	/*
 	 * writeback fid will only be used to write back the
 	 * dirty pages. We always request for the open fid in read-write
diff --git a/fs/9p/fid.h b/fs/9p/fid.h
index dfa11df02818..1fed96546728 100644
--- a/fs/9p/fid.h
+++ b/fs/9p/fid.h
@@ -22,6 +22,14 @@ static inline struct p9_fid *clone_fid(struct p9_fid *fid)
 }
 static inline struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
 {
-	return clone_fid(v9fs_fid_lookup(dentry));
+	struct p9_fid *fid, *nfid;
+
+	fid = v9fs_fid_lookup(dentry);
+	if (!fid || IS_ERR(fid))
+		return fid;
+
+	nfid = p9_client_walk(fid, 0, NULL, 1);
+	p9_client_clunk(fid);
+	return nfid;
 }
 #endif
diff --git a/fs/9p/vfs_dentry.c b/fs/9p/vfs_dentry.c
index 7d6f69aefd45..4b4292123b3d 100644
--- a/fs/9p/vfs_dentry.c
+++ b/fs/9p/vfs_dentry.c
@@ -85,6 +85,8 @@ static int v9fs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 			retval = v9fs_refresh_inode_dotl(fid, inode);
 		else
 			retval = v9fs_refresh_inode(fid, inode);
+		p9_client_clunk(fid);
+
 		if (retval == -ENOENT)
 			return 0;
 		if (retval < 0)
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index d82d8a346f86..b6a5a0be444d 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -210,11 +210,12 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	fid = filp->private_data;
 	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
 		 inode, filp, fid ? fid->fid : -1);
-	spin_lock(&inode->i_lock);
-	hlist_del(&fid->ilist);
-	spin_unlock(&inode->i_lock);
-	if (fid)
+	if (fid) {
+		spin_lock(&inode->i_lock);
+		hlist_del(&fid->ilist);
+		spin_unlock(&inode->i_lock);
 		p9_client_clunk(fid);
+	}
 	return 0;
 }
 
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 6b243ffcbcf0..4a937fac1acb 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -551,6 +551,7 @@ static int v9fs_remove(struct inode *dir, struct dentry *dentry, int flags)
 	if (v9fs_proto_dotl(v9ses))
 		retval = p9_client_unlinkat(dfid, dentry->d_name.name,
 					    v9fs_at_to_dotl_flags(flags));
+	p9_client_clunk(dfid);
 	if (retval == -EOPNOTSUPP) {
 		/* Try the one based on path */
 		v9fid = v9fs_fid_clone(dentry);
@@ -595,14 +596,12 @@ v9fs_create(struct v9fs_session_info *v9ses, struct inode *dir,
 {
 	int err;
 	const unsigned char *name;
-	struct p9_fid *dfid, *ofid, *fid;
+	struct p9_fid *dfid, *ofid = NULL, *fid = NULL;
 	struct inode *inode;
 
 	p9_debug(P9_DEBUG_VFS, "name %pd\n", dentry);
 
 	err = 0;
-	ofid = NULL;
-	fid = NULL;
 	name = dentry->d_name.name;
 	dfid = v9fs_parent_fid(dentry);
 	if (IS_ERR(dfid)) {
@@ -616,12 +615,14 @@ v9fs_create(struct v9fs_session_info *v9ses, struct inode *dir,
 	if (IS_ERR(ofid)) {
 		err = PTR_ERR(ofid);
 		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
+		p9_client_clunk(dfid);
 		return ERR_PTR(err);
 	}
 
 	err = p9_client_fcreate(ofid, name, perm, mode, extension);
 	if (err < 0) {
 		p9_debug(P9_DEBUG_VFS, "p9_client_fcreate failed %d\n", err);
+		p9_client_clunk(dfid);
 		goto error;
 	}
 
@@ -633,6 +634,7 @@ v9fs_create(struct v9fs_session_info *v9ses, struct inode *dir,
 			p9_debug(P9_DEBUG_VFS,
 				   "p9_client_walk failed %d\n", err);
 			fid = NULL;
+			p9_client_clunk(dfid);
 			goto error;
 		}
 		/*
@@ -643,11 +645,13 @@ v9fs_create(struct v9fs_session_info *v9ses, struct inode *dir,
 			err = PTR_ERR(inode);
 			p9_debug(P9_DEBUG_VFS,
 				   "inode creation failed %d\n", err);
+			p9_client_clunk(dfid);
 			goto error;
 		}
 		v9fs_fid_add(dentry, fid);
 		d_instantiate(dentry, inode);
 	}
+	p9_client_clunk(dfid);
 	return ofid;
 error:
 	if (ofid)
@@ -760,6 +764,7 @@ struct dentry *v9fs_vfs_lookup(struct inode *dir, struct dentry *dentry,
 	 */
 	name = dentry->d_name.name;
 	fid = p9_client_walk(dfid, 1, &name, 1);
+	p9_client_clunk(dfid);
 	if (fid == ERR_PTR(-ENOENT))
 		inode = NULL;
 	else if (IS_ERR(fid))
@@ -910,7 +915,7 @@ v9fs_vfs_rename(struct inode *old_dir, struct dentry *old_dentry,
 	struct inode *old_inode;
 	struct inode *new_inode;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *oldfid;
+	struct p9_fid *oldfid, *dfid;
 	struct p9_fid *olddirfid;
 	struct p9_fid *newdirfid;
 	struct p9_wstat wstat;
@@ -927,13 +932,20 @@ v9fs_vfs_rename(struct inode *old_dir, struct dentry *old_dentry,
 	if (IS_ERR(oldfid))
 		return PTR_ERR(oldfid);
 
-	olddirfid = clone_fid(v9fs_parent_fid(old_dentry));
+	dfid = v9fs_parent_fid(old_dentry);
+	olddirfid = clone_fid(dfid);
+	if (dfid && !IS_ERR(dfid))
+		p9_client_clunk(dfid);
+
 	if (IS_ERR(olddirfid)) {
 		retval = PTR_ERR(olddirfid);
 		goto done;
 	}
 
-	newdirfid = clone_fid(v9fs_parent_fid(new_dentry));
+	dfid = v9fs_parent_fid(new_dentry);
+	newdirfid = clone_fid(dfid);
+	p9_client_clunk(dfid);
+
 	if (IS_ERR(newdirfid)) {
 		retval = PTR_ERR(newdirfid);
 		goto clunk_olddir;
@@ -990,6 +1002,7 @@ v9fs_vfs_rename(struct inode *old_dir, struct dentry *old_dentry,
 	p9_client_clunk(olddirfid);
 
 done:
+	p9_client_clunk(oldfid);
 	return retval;
 }
 
@@ -1022,6 +1035,7 @@ v9fs_vfs_getattr(const struct path *path, struct kstat *stat,
 		return PTR_ERR(fid);
 
 	st = p9_client_stat(fid);
+	p9_client_clunk(fid);
 	if (IS_ERR(st))
 		return PTR_ERR(st);
 
@@ -1042,7 +1056,7 @@ v9fs_vfs_getattr(const struct path *path, struct kstat *stat,
 
 static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 {
-	int retval;
+	int retval, use_dentry = 0;
 	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid = NULL;
 	struct p9_wstat wstat;
@@ -1058,8 +1072,10 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 		fid = iattr->ia_file->private_data;
 		WARN_ON(!fid);
 	}
-	if (!fid)
+	if (!fid) {
 		fid = v9fs_fid_lookup(dentry);
+		use_dentry = 1;
+	}
 	if(IS_ERR(fid))
 		return PTR_ERR(fid);
 
@@ -1089,6 +1105,10 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 		filemap_write_and_wait(d_inode(dentry)->i_mapping);
 
 	retval = p9_client_wstat(fid, &wstat);
+
+	if (use_dentry)
+		p9_client_clunk(fid);
+
 	if (retval < 0)
 		return retval;
 
@@ -1213,6 +1233,7 @@ static const char *v9fs_vfs_get_link(struct dentry *dentry,
 		return ERR_PTR(-EBADF);
 
 	st = p9_client_stat(fid);
+	p9_client_clunk(fid);
 	if (IS_ERR(st))
 		return ERR_CAST(st);
 
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 08f2e089fb0e..823c2eb5f1bf 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -296,6 +296,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 
 	/* instantiate inode and assign the unopened fid to the dentry */
 	fid = p9_client_walk(dfid, 1, &name, 1);
+	p9_client_clunk(dfid);
 	if (IS_ERR(fid)) {
 		err = PTR_ERR(fid);
 		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
@@ -408,7 +409,6 @@ static int v9fs_vfs_mkdir_dotl(struct inode *dir,
 	err = p9_client_mkdir_dotl(dfid, name, mode, gid, &qid);
 	if (err < 0)
 		goto error;
-
 	fid = p9_client_walk(dfid, 1, &name, 1);
 	if (IS_ERR(fid)) {
 		err = PTR_ERR(fid);
@@ -452,6 +452,7 @@ static int v9fs_vfs_mkdir_dotl(struct inode *dir,
 	if (fid)
 		p9_client_clunk(fid);
 	v9fs_put_acl(dacl, pacl);
+	p9_client_clunk(dfid);
 	return err;
 }
 
@@ -479,6 +480,7 @@ v9fs_vfs_getattr_dotl(const struct path *path, struct kstat *stat,
 	 */
 
 	st = p9_client_getattr_dotl(fid, P9_STATS_ALL);
+	p9_client_clunk(fid);
 	if (IS_ERR(st))
 		return PTR_ERR(st);
 
@@ -540,7 +542,7 @@ static int v9fs_mapped_iattr_valid(int iattr_valid)
 
 int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 {
-	int retval;
+	int retval, use_dentry = 0;
 	struct p9_fid *fid = NULL;
 	struct p9_iattr_dotl p9attr;
 	struct inode *inode = d_inode(dentry);
@@ -565,8 +567,10 @@ int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 		fid = iattr->ia_file->private_data;
 		WARN_ON(!fid);
 	}
-	if (!fid)
+	if (!fid) {
 		fid = v9fs_fid_lookup(dentry);
+		use_dentry = 1;
+	}
 	if (IS_ERR(fid))
 		return PTR_ERR(fid);
 
@@ -575,8 +579,11 @@ int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 		filemap_write_and_wait(inode->i_mapping);
 
 	retval = p9_client_setattr(fid, &p9attr);
-	if (retval < 0)
+	if (retval < 0) {
+		if (use_dentry)
+			p9_client_clunk(fid);
 		return retval;
+	}
 
 	if ((iattr->ia_valid & ATTR_SIZE) &&
 	    iattr->ia_size != i_size_read(inode))
@@ -588,9 +595,15 @@ int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 	if (iattr->ia_valid & ATTR_MODE) {
 		/* We also want to update ACL when we update mode bits */
 		retval = v9fs_acl_chmod(inode, fid);
-		if (retval < 0)
+		if (retval < 0) {
+			if (use_dentry)
+				p9_client_clunk(fid);
 			return retval;
+		}
 	}
+	if (use_dentry)
+		p9_client_clunk(fid);
+
 	return 0;
 }
 
@@ -742,6 +755,7 @@ v9fs_vfs_symlink_dotl(struct inode *dir, struct dentry *dentry,
 	if (fid)
 		p9_client_clunk(fid);
 
+	p9_client_clunk(dfid);
 	return err;
 }
 
@@ -770,11 +784,15 @@ v9fs_vfs_link_dotl(struct dentry *old_dentry, struct inode *dir,
 		return PTR_ERR(dfid);
 
 	oldfid = v9fs_fid_lookup(old_dentry);
-	if (IS_ERR(oldfid))
+	if (IS_ERR(oldfid)) {
+		p9_client_clunk(dfid);
 		return PTR_ERR(oldfid);
+	}
 
 	err = p9_client_link(dfid, oldfid, dentry->d_name.name);
 
+	p9_client_clunk(dfid);
+	p9_client_clunk(oldfid);
 	if (err < 0) {
 		p9_debug(P9_DEBUG_VFS, "p9_client_link failed %d\n", err);
 		return err;
@@ -789,6 +807,7 @@ v9fs_vfs_link_dotl(struct dentry *old_dentry, struct inode *dir,
 			return PTR_ERR(fid);
 
 		v9fs_refresh_inode_dotl(fid, d_inode(old_dentry));
+		p9_client_clunk(fid);
 	}
 	ihold(d_inode(old_dentry));
 	d_instantiate(dentry, d_inode(old_dentry));
@@ -887,6 +906,8 @@ v9fs_vfs_mknod_dotl(struct inode *dir, struct dentry *dentry, umode_t omode,
 	if (fid)
 		p9_client_clunk(fid);
 	v9fs_put_acl(dacl, pacl);
+	p9_client_clunk(dfid);
+
 	return err;
 }
 
@@ -915,6 +936,7 @@ v9fs_vfs_get_link_dotl(struct dentry *dentry,
 	if (IS_ERR(fid))
 		return ERR_CAST(fid);
 	retval = p9_client_readlink(fid, &target);
+	p9_client_clunk(fid);
 	if (retval)
 		return ERR_PTR(retval);
 	set_delayed_call(done, kfree_link, target);
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 74df32be4c6a..d54ddcfb69ed 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -267,6 +267,7 @@ static int v9fs_statfs(struct dentry *dentry, struct kstatfs *buf)
 	}
 	res = simple_statfs(dentry, buf);
 done:
+	p9_client_clunk(fid);
 	return res;
 }
 
diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index ac8ff8ca4c11..87217dd0433e 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -71,14 +71,17 @@ ssize_t v9fs_xattr_get(struct dentry *dentry, const char *name,
 		       void *buffer, size_t buffer_size)
 {
 	struct p9_fid *fid;
+	int ret;
 
 	p9_debug(P9_DEBUG_VFS, "name = %s value_len = %zu\n",
 		 name, buffer_size);
 	fid = v9fs_fid_lookup(dentry);
 	if (IS_ERR(fid))
 		return PTR_ERR(fid);
+	ret = v9fs_fid_xattr_get(fid, name, buffer, buffer_size);
+	p9_client_clunk(fid);
 
-	return v9fs_fid_xattr_get(fid, name, buffer, buffer_size);
+	return ret;
 }
 
 /*
@@ -96,8 +99,15 @@ ssize_t v9fs_xattr_get(struct dentry *dentry, const char *name,
 int v9fs_xattr_set(struct dentry *dentry, const char *name,
 		   const void *value, size_t value_len, int flags)
 {
-	struct p9_fid *fid = v9fs_fid_lookup(dentry);
-	return v9fs_fid_xattr_set(fid, name, value, value_len, flags);
+	int ret;
+	struct p9_fid *fid;
+
+	fid  = v9fs_fid_lookup(dentry);
+	if (IS_ERR(fid))
+		return PTR_ERR(fid);
+	ret = v9fs_fid_xattr_set(fid, name, value, value_len, flags);
+	p9_client_clunk(fid);
+	return ret;
 }
 
 int v9fs_fid_xattr_set(struct p9_fid *fid, const char *name,
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index ce7882da8e86..58ed9bd306bd 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -140,10 +140,16 @@ struct p9_client {
  *
  * TODO: This needs lots of explanation.
  */
+enum fid_source {
+	FID_FROM_OTHER,
+	FID_FROM_INODE,
+	FID_FROM_DENTRY,
+};
 
 struct p9_fid {
 	struct p9_client *clnt;
 	u32 fid;
+	atomic_t count;
 	int mode;
 	struct p9_qid qid;
 	u32 iounit;
diff --git a/net/9p/client.c b/net/9p/client.c
index 1a3f72bf45fc..a6c8a915e0d8 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -901,6 +901,7 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 	fid->clnt = clnt;
 	fid->rdir = NULL;
 	fid->fid = 0;
+	atomic_set(&fid->count, 1);
 
 	idr_preload(GFP_KERNEL);
 	spin_lock_irq(&clnt->lock);
@@ -908,7 +909,6 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 			    GFP_NOWAIT);
 	spin_unlock_irq(&clnt->lock);
 	idr_preload_end();
-
 	if (!ret)
 		return fid;
 
@@ -1187,7 +1187,6 @@ struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
 
 	p9_debug(P9_DEBUG_9P, ">>> TWALK fids %d,%d nwname %ud wname[0] %s\n",
 		 oldfid->fid, fid->fid, nwname, wnames ? wnames[0] : NULL);
-
 	req = p9_client_rpc(clnt, P9_TWALK, "ddT", oldfid->fid, fid->fid,
 								nwname, wnames);
 	if (IS_ERR(req)) {
@@ -1461,12 +1460,14 @@ int p9_client_clunk(struct p9_fid *fid)
 	struct p9_req_t *req;
 	int retries = 0;
 
-	if (!fid) {
-		pr_warn("%s (%d): Trying to clunk with NULL fid\n",
+	if (!fid || IS_ERR(fid)) {
+		pr_warn("%s (%d): Trying to clunk with invalid fid\n",
 			__func__, task_pid_nr(current));
 		dump_stack();
 		return 0;
 	}
+	if (!atomic_dec_and_test(&fid->count))
+		return 0;
 
 again:
 	p9_debug(P9_DEBUG_9P, ">>> TCLUNK fid %d (try %d)\n", fid->fid,
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
