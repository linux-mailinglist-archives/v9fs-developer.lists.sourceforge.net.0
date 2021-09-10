Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D86A3406A6C
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Sep 2021 12:54:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mOeBG-00087t-Ik; Fri, 10 Sep 2021 10:54:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mOeBF-00087n-TP
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Sep 2021 10:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rp5Lxa5h9ZVQAdx0fPblnQhNdn9SeHUlbTUr8Itj62s=; b=mvCOKh2WuwwnwONcMC6QHrqWho
 EQxgXh/wiA/FWsnT3+jUhan8Xdi35qZOK3TZh6zpqObi6pbn0oFbNp23piL00+AZhk8/9sSCeGyYO
 9LJfM0nsVDSRFLfXTQy/6y7gsYllYxWCqYVQdzDfRlrHr9uKc7V2a60f0N2IcNRl93kA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rp5Lxa5h9ZVQAdx0fPblnQhNdn9SeHUlbTUr8Itj62s=; b=EDr6A8SDAyVBKk7u//QOPfzCn3
 17Y9rCewhivbI92hBo0Ii3zvF3wfkkubEmJqSAES7jmT7qoVQaABy7VQEthhrmlTQy/w3DUB2og9l
 o46b/betJ4c9FFbTr/hhfSzGiOzPoWNUuT2IJ6g382Op2ZRVMW42/yHufBkP//Wx9qGk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOeBE-000627-M0
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Sep 2021 10:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631271282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Rp5Lxa5h9ZVQAdx0fPblnQhNdn9SeHUlbTUr8Itj62s=;
 b=XroW+o+3Ivz1YqsxeRmvlUGd0P1UOs9wnOR1dfLhTmh59KQnc0W4me+Xe6JeubXh6CZajo
 TND0lNoxgVvbRn4jolEjlnW8KCYEwURfkB1z9aOHHalkYYxQYAamZS2uRM4BntfulvRs+b
 yLkisO9GFcrzMW2oDHV1vTKfGV+JzkI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-549-MXUVxTCSMU-xK9Kf36QZDA-1; Fri, 10 Sep 2021 06:54:41 -0400
X-MC-Unique: MXUVxTCSMU-xK9Kf36QZDA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 834931006AA0;
 Fri, 10 Sep 2021 10:54:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2348B10016FE;
 Fri, 10 Sep 2021 10:54:36 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <826634.1631271276.1@warthog.procyon.org.uk>
Date: Fri, 10 Sep 2021 11:54:36 +0100
Message-ID: <826635.1631271276@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  read(), write() and ftruncate() all have the file available
 from which they can extract the information needed to perform authenticated
 operations to a network filesystem server for that filesystem, b [...] 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mOeBE-000627-M0
Subject: [V9fs-developer] [RFC][PATCH] vfs,
 afs: Pass the file from fstat()/statx() to the fs for auth purposes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-unionfs@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, torvalds@linux-foundation.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

    
read(), write() and ftruncate() all have the file available from which they
can extract the information needed to perform authenticated operations to a
network filesystem server for that filesystem, but fstat() and statx() do
not.

This could lead to the situation where a read(), say, on a file descriptor
will work, but fstat() will fail because the calling process doesn't
intrinsically have the right to do that.

Change this by passing the file, if we have it, in struct kstat from which
the filesystem can pick it up and use it, similar to the way ftruncate()
passes the information in struct iattr.

Make use of this in the afs filesystem to pass to validation in case we
need to refetch the inode attributes from the server.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Alexander Viro <viro@zeniv.linux.org.uk>
cc: linux-fsdevel@vger.kernel.org
cc: linux-afs@lists.infradead.org
---
 fs/afs/inode.c       |   10 ++++++++-
 fs/exportfs/expfs.c  |    2 -
 fs/stat.c            |   56 ++++++++++++++++++++++++++++++++++++++-------------
 include/linux/fs.h   |    3 +-
 include/linux/stat.h |    1 
 5 files changed, 55 insertions(+), 17 deletions(-)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 8fcffea2daf5..7d732a38c739 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -670,6 +670,9 @@ int afs_validate(struct afs_vnode *vnode, struct key *key)
 	       vnode->fid.vid, vnode->fid.vnode, vnode->flags,
 	       key_serial(key));
 
+	if (!vnode->volume)
+		goto valid; /* Dynroot */
+
 	if (unlikely(test_bit(AFS_VNODE_DELETED, &vnode->flags))) {
 		if (vnode->vfs_inode.i_nlink)
 			clear_nlink(&vnode->vfs_inode);
@@ -728,10 +731,15 @@ int afs_getattr(struct user_namespace *mnt_userns, const struct path *path,
 {
 	struct inode *inode = d_inode(path->dentry);
 	struct afs_vnode *vnode = AFS_FS_I(inode);
-	int seq = 0;
+	struct afs_file *af = stat->file ? stat->file->private_data : NULL;
+	int ret, seq = 0;
 
 	_enter("{ ino=%lu v=%u }", inode->i_ino, inode->i_generation);
 
+	ret = afs_validate(vnode, af ? af->key : NULL);
+	if (ret < 0)
+		return ret;
+
 	do {
 		read_seqbegin_or_lock(&vnode->cb_lock, &seq);
 		generic_fillattr(&init_user_ns, inode, stat);
diff --git a/fs/exportfs/expfs.c b/fs/exportfs/expfs.c
index 0106eba46d5a..d3fba1aea432 100644
--- a/fs/exportfs/expfs.c
+++ b/fs/exportfs/expfs.c
@@ -303,7 +303,7 @@ static int get_name(const struct path *path, char *name, struct dentry *child)
 	 * actually call ->getattr, not just read i_ino:
 	 */
 	error = vfs_getattr_nosec(&child_path, &stat,
-				  STATX_INO, AT_STATX_SYNC_AS_STAT);
+				  STATX_INO, AT_STATX_SYNC_AS_STAT, NULL);
 	if (error)
 		return error;
 	buffer.ino = stat.ino;
diff --git a/fs/stat.c b/fs/stat.c
index 1fa38bdec1a6..c3410e809b4d 100644
--- a/fs/stat.c
+++ b/fs/stat.c
@@ -65,6 +65,7 @@ EXPORT_SYMBOL(generic_fillattr);
  * @stat: structure to return attributes in
  * @request_mask: STATX_xxx flags indicating what the caller wants
  * @query_flags: Query mode (AT_STATX_SYNC_TYPE)
+ * @file: File with credential info or NULL
  *
  * Get attributes without calling security_inode_getattr.
  *
@@ -73,12 +74,14 @@ EXPORT_SYMBOL(generic_fillattr);
  * attributes to any user.  Any other code probably wants vfs_getattr.
  */
 int vfs_getattr_nosec(const struct path *path, struct kstat *stat,
-		      u32 request_mask, unsigned int query_flags)
+		      u32 request_mask, unsigned int query_flags,
+		      struct file *file)
 {
 	struct user_namespace *mnt_userns;
 	struct inode *inode = d_backing_inode(path->dentry);
 
 	memset(stat, 0, sizeof(*stat));
+	stat->file = file;
 	stat->result_mask |= STATX_BASIC_STATS;
 	query_flags &= AT_STATX_SYNC_TYPE;
 
@@ -139,7 +142,7 @@ int vfs_getattr(const struct path *path, struct kstat *stat,
 	retval = security_inode_getattr(path);
 	if (retval)
 		return retval;
-	return vfs_getattr_nosec(path, stat, request_mask, query_flags);
+	return vfs_getattr_nosec(path, stat, request_mask, query_flags, NULL);
 }
 EXPORT_SYMBOL(vfs_getattr);
 
@@ -161,7 +164,11 @@ int vfs_fstat(int fd, struct kstat *stat)
 	f = fdget_raw(fd);
 	if (!f.file)
 		return -EBADF;
-	error = vfs_getattr(&f.file->f_path, stat, STATX_BASIC_STATS, 0);
+
+	error = security_inode_getattr(&f.file->f_path);
+	if (!error)
+		error = vfs_getattr_nosec(&f.file->f_path, stat,
+					  STATX_BASIC_STATS, 0, f.file);
 	fdput(f);
 	return error;
 }
@@ -185,7 +192,9 @@ static int vfs_statx(int dfd, const char __user *filename, int flags,
 	      struct kstat *stat, u32 request_mask)
 {
 	struct path path;
+	struct fd f;
 	unsigned lookup_flags = 0;
+	bool put_fd = false;
 	int error;
 
 	if (flags & ~(AT_SYMLINK_NOFOLLOW | AT_NO_AUTOMOUNT | AT_EMPTY_PATH |
@@ -200,17 +209,36 @@ static int vfs_statx(int dfd, const char __user *filename, int flags,
 		lookup_flags |= LOOKUP_EMPTY;
 
 retry:
-	error = user_path_at(dfd, filename, lookup_flags, &path);
-	if (error)
-		goto out;
-
-	error = vfs_getattr(&path, stat, request_mask, flags);
-	stat->mnt_id = real_mount(path.mnt)->mnt_id;
-	stat->result_mask |= STATX_MNT_ID;
-	if (path.mnt->mnt_root == path.dentry)
-		stat->attributes |= STATX_ATTR_MOUNT_ROOT;
-	stat->attributes_mask |= STATX_ATTR_MOUNT_ROOT;
-	path_put(&path);
+	if ((lookup_flags & LOOKUP_EMPTY) &&
+	    dfd >= 0 &&
+	    filename &&
+	    strnlen_user(filename, 2) == 0) {
+		/* Should we use ESTALE retry for direct-fd? */
+		f = fdget_raw(dfd);
+		if (!f.file)
+			return -EBADF;
+		path = f.file->f_path;
+		put_fd = true;
+	} else {
+		f.file = NULL;
+		error = user_path_at(dfd, filename, lookup_flags, &path);
+		if (error)
+			goto out;
+	}
+
+	error = security_inode_getattr(&path);
+	if (!error) {
+		error = vfs_getattr_nosec(&path, stat, request_mask, flags, f.file);
+		stat->mnt_id = real_mount(path.mnt)->mnt_id;
+		stat->result_mask |= STATX_MNT_ID;
+		if (path.mnt->mnt_root == path.dentry)
+			stat->attributes |= STATX_ATTR_MOUNT_ROOT;
+		stat->attributes_mask |= STATX_ATTR_MOUNT_ROOT;
+	}
+	if (put_fd)
+		fdput(f);
+	else
+		path_put(&path);
 	if (retry_estale(error, lookup_flags)) {
 		lookup_flags |= LOOKUP_REVAL;
 		goto retry;
diff --git a/include/linux/fs.h b/include/linux/fs.h
index c58c2611a195..3f31f739f9a6 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3312,7 +3312,8 @@ extern int page_symlink(struct inode *inode, const char *symname, int len);
 extern const struct inode_operations page_symlink_inode_operations;
 extern void kfree_link(void *);
 void generic_fillattr(struct user_namespace *, struct inode *, struct kstat *);
-extern int vfs_getattr_nosec(const struct path *, struct kstat *, u32, unsigned int);
+extern int vfs_getattr_nosec(const struct path *, struct kstat *, u32, unsigned int,
+			     struct file *);
 extern int vfs_getattr(const struct path *, struct kstat *, u32, unsigned int);
 void __inode_add_bytes(struct inode *inode, loff_t bytes);
 void inode_add_bytes(struct inode *inode, loff_t bytes);
diff --git a/include/linux/stat.h b/include/linux/stat.h
index fff27e603814..b9986688cc59 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -20,6 +20,7 @@
 #include <linux/uidgid.h>
 
 struct kstat {
+	struct file	*file;		/* File if called from fstat() equivalent or NULL */
 	u32		result_mask;	/* What fields the user got */
 	umode_t		mode;
 	unsigned int	nlink;



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
