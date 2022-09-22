Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C35A5E66B1
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 17:18:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obNxu-00043M-TH;
	Thu, 22 Sep 2022 15:18:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1obNxt-000437-Sg
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 15:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6RI/gpVlA82bgLbEir55fSD8ZsyO9O6tMutk82d3A5w=; b=FPPB91nNI3WLiUMjyFFr5w7wcs
 IIAtewty9YxP99VfRrMfEZpy51N/sASdb6mG8xoXgP9f5Vfoemr1G3TJEZy3mI1OmW++bsTbP77OY
 3B9ALqkgxuMmAkrN7+oXFb/a4W8R0zSQ9kNSbSFFI1YIpgHFkZRjuNrYtwa/GlRhUNjQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6RI/gpVlA82bgLbEir55fSD8ZsyO9O6tMutk82d3A5w=; b=Cvy5dZBLuO19ag8VlPwpWXGzGj
 iXaZeeBkwReBFeI9fuughMbsdg7oLsXVrLUyd86ovvhhPIwI00gLng1oYhg7QxqxdaoCqXdXFGb2B
 9QNdirueYntAJQ3P1+SJRde8cbDjRSO9cU9q4FrlF+JbSXD08VNOoBd4zbUWynNR3EcA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obNxt-00GfMS-2V for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 15:18:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B09366360C;
 Thu, 22 Sep 2022 15:18:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF882C433D6;
 Thu, 22 Sep 2022 15:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663859882;
 bh=DBFXKEGvpKcV+yq63MQJfjJYsa2v1TlZC4IZsUNCpVo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dKQttyeH9XbKSS3Q7+9XV+CMxnXeK2W/sVNdazG4K5b7z7lIRw7dXrnEXXxRDg8pC
 /sCZoBK8fhnJpM5VmkT0CFN6gF8w+I1Q/7o2K9PnP3+evpFTY8MyA6EZuibcjmvl6f
 tqRRwkYujAY7/i0Tx1ht0LrrPBEb0N8CDq9S+GGMM1X9lxtvIm+c8Ch9T+hVPi/In9
 WaWP/DtmSSoh0NziITC5WviQqY+7dgPXA0WZRNYDppZCxXYUeehV2yFbj5VIYtjMWs
 N3wX6/n2oUVhUcD/yc88rdOOdh4x6+Uf62aU85ko+Iyvht/d0sBKTNjVvtiLdf58za
 eLVJOP1gT0qZA==
From: Christian Brauner <brauner@kernel.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 22 Sep 2022 17:17:04 +0200
Message-Id: <20220922151728.1557914-7-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922151728.1557914-1-brauner@kernel.org>
References: <20220922151728.1557914-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8114; i=brauner@kernel.org;
 h=from:subject; bh=DBFXKEGvpKcV+yq63MQJfjJYsa2v1TlZC4IZsUNCpVo=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTr1FSs0aoWrWP43V7/d/qk0g1THh4/5bVzo+tCN3X+24za
 r0J4OkpZGMS4GGTFFFkc2k3C5ZbzVGw2ytSAmcPKBDKEgYtTACZysZ2RYSrHnMf5FTK9qot0Sm9dDJ
 2jabNL2rtuy0/uKTOvJP6fJ87wT73szK2lkVfuCPy9xiN2p57/hfPPD/PeWgvK7pkmrWX8gQMA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The current way of setting and getting posix acls through
 the generic xattr interface is error prone and type unsafe. The vfs needs
 to interpret and fixup posix acls before storing or reporting it to [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1obNxt-00GfMS-2V
Subject: [V9fs-developer] [PATCH 06/29] 9p: implement get acl method
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Seth Forshee <sforshee@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The current way of setting and getting posix acls through the generic
xattr interface is error prone and type unsafe. The vfs needs to
interpret and fixup posix acls before storing or reporting it to
userspace. Various hacks exist to make this work. The code is hard to
understand and difficult to maintain in it's current form. Instead of
making this work by hacking posix acls through xattr handlers we are
building a dedicated posix acl api around the get and set inode
operations. This removes a lot of hackiness and makes the codepaths
easier to maintain. A lot of background can be found in [1].

In order to build a type safe posix api around get and set acl we need
all filesystem to implement get and set acl.

So far 9p implemented a ->get_inode_acl() operation that didn't require
access to the dentry in order to allow (limited) permission checking via
posix acls in the vfs. Now that we have get and set acl inode operations
that take a dentry argument we can give 9p get and set acl inode
operations.

This is mostly a light refactoring of the codepaths currently used in 9p
posix acl xattr handler. After we have fully implemented the posix acl
api and switched the vfs over to it, the 9p specific posix acl xattr
handler and associated code will be removed.

Note, until the vfs has been switched to the new posix acl api this
patch is a non-functional change.

Link: https://lore.kernel.org/all/20220801145520.1532837-1-brauner@kernel.org [1]
Signed-off-by: Christian Brauner (Microsoft) <brauner@kernel.org>
---
 fs/9p/acl.c                     | 97 +++++++++++++++++++++++++++------
 fs/9p/acl.h                     | 11 +++-
 fs/9p/vfs_inode_dotl.c          |  6 +-
 include/linux/posix_acl_xattr.h | 11 ++++
 4 files changed, 104 insertions(+), 21 deletions(-)

diff --git a/fs/9p/acl.c b/fs/9p/acl.c
index 4dac4a0dc5f4..0ef3386cf61a 100644
--- a/fs/9p/acl.c
+++ b/fs/9p/acl.c
@@ -17,34 +17,77 @@
 #include "v9fs_vfs.h"
 #include "fid.h"
 
-static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, char *name)
+static int v9fs_fid_get_acl(struct p9_fid *fid, const char *name,
+			    struct posix_acl **kacl)
 {
 	ssize_t size;
 	void *value = NULL;
 	struct posix_acl *acl = NULL;
 
 	size = v9fs_fid_xattr_get(fid, name, NULL, 0);
-	if (size > 0) {
-		value = kzalloc(size, GFP_NOFS);
-		if (!value)
-			return ERR_PTR(-ENOMEM);
-		size = v9fs_fid_xattr_get(fid, name, value, size);
-		if (size > 0) {
-			acl = posix_acl_from_xattr(&init_user_ns, value, size);
-			if (IS_ERR(acl))
-				goto err_out;
-		}
-	} else if (size == -ENODATA || size == 0 ||
-		   size == -ENOSYS || size == -EOPNOTSUPP) {
-		acl = NULL;
-	} else
-		acl = ERR_PTR(-EIO);
+	if (size <= 0)
+		goto out;
 
-err_out:
+	/* just return the size */
+	if (!kacl)
+		goto out;
+
+	value = kzalloc(size, GFP_NOFS);
+	if (!value) {
+		size = -ENOMEM;
+		goto out;
+	}
+
+	size = v9fs_fid_xattr_get(fid, name, value, size);
+	if (size <= 0)
+		goto out;
+
+	acl = posix_acl_from_xattr(&init_user_ns, value, size);
+	if (IS_ERR(acl)) {
+		size = PTR_ERR(acl);
+		goto out;
+	}
+	*kacl = acl;
+
+out:
 	kfree(value);
+	return size;
+}
+
+static struct posix_acl *v9fs_acl_get(struct dentry *dentry, const char *name)
+{
+	ssize_t size;
+	struct p9_fid *fid;
+	struct posix_acl *acl = NULL;
+
+	fid = v9fs_fid_lookup(dentry);
+	if (IS_ERR(fid))
+		return ERR_CAST(fid);
+
+	size = v9fs_fid_get_acl(fid, name, &acl);
+	p9_fid_put(fid);
+
+	if (size < 0)
+		return ERR_PTR(size);
+
 	return acl;
 }
 
+static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, const char *name)
+{
+	ssize_t size;
+	struct posix_acl *acl = NULL;
+
+	size = v9fs_fid_get_acl(fid, name, &acl);
+	if (size > 0)
+		return acl;
+	else if (size == -ENODATA || size == 0 || size == -ENOSYS ||
+		 size == -EOPNOTSUPP)
+		return NULL;
+
+	return ERR_PTR(-EIO);
+}
+
 int v9fs_get_acl(struct inode *inode, struct p9_fid *fid)
 {
 	int retval = 0;
@@ -89,7 +132,7 @@ static struct posix_acl *v9fs_get_cached_acl(struct inode *inode, int type)
 	return acl;
 }
 
-struct posix_acl *v9fs_iop_get_acl(struct inode *inode, int type, bool rcu)
+struct posix_acl *v9fs_iop_get_inode_acl(struct inode *inode, int type, bool rcu)
 {
 	struct v9fs_session_info *v9ses;
 
@@ -109,6 +152,24 @@ struct posix_acl *v9fs_iop_get_acl(struct inode *inode, int type, bool rcu)
 
 }
 
+struct posix_acl *v9fs_iop_get_acl(struct user_namespace *mnt_userns,
+					  struct dentry *dentry, int type)
+{
+	struct v9fs_session_info *v9ses;
+	struct posix_acl *acl = NULL;
+
+	v9ses = v9fs_dentry2v9ses(dentry);
+	/* We allow set/get/list of acl when access=client is not specified. */
+	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
+		acl = v9fs_acl_get(dentry, posix_acl_xattr_name(type));
+	else
+		acl = v9fs_get_cached_acl(d_inode(dentry), type);
+	if (IS_ERR(acl))
+		return acl;
+
+	return acl;
+}
+
 static int v9fs_set_acl(struct p9_fid *fid, int type, struct posix_acl *acl)
 {
 	int retval;
diff --git a/fs/9p/acl.h b/fs/9p/acl.h
index ce5175d463dd..11d3f8ea4ce4 100644
--- a/fs/9p/acl.h
+++ b/fs/9p/acl.h
@@ -8,8 +8,10 @@
 
 #ifdef CONFIG_9P_FS_POSIX_ACL
 int v9fs_get_acl(struct inode *inode, struct p9_fid *fid);
-struct posix_acl *v9fs_iop_get_acl(struct inode *inode, int type,
+struct posix_acl *v9fs_iop_get_inode_acl(struct inode *inode, int type,
 				   bool rcu);
+struct posix_acl *v9fs_iop_get_acl(struct user_namespace *mnt_userns,
+					  struct dentry *dentry, int type);
 int v9fs_acl_chmod(struct inode *inode, struct p9_fid *fid);
 int v9fs_set_create_acl(struct inode *inode, struct p9_fid *fid,
 			struct posix_acl *dacl, struct posix_acl *acl);
@@ -17,11 +19,18 @@ int v9fs_acl_mode(struct inode *dir, umode_t *modep,
 		  struct posix_acl **dpacl, struct posix_acl **pacl);
 void v9fs_put_acl(struct posix_acl *dacl, struct posix_acl *acl);
 #else
+#define v9fs_iop_get_inode_acl	NULL
 #define v9fs_iop_get_acl NULL
 static inline int v9fs_get_acl(struct inode *inode, struct p9_fid *fid)
 {
 	return 0;
 }
+static inline struct posix_acl *
+v9fs_iop_get_acl(struct user_namespace *mnt_userns,
+			struct dentry *dentry, int type)
+{
+	return NULL;
+}
 static inline int v9fs_acl_chmod(struct inode *inode, struct p9_fid *fid)
 {
 	return 0;
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 0d1a7f2c579d..a4211fcb9168 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -983,14 +983,16 @@ const struct inode_operations v9fs_dir_inode_operations_dotl = {
 	.getattr = v9fs_vfs_getattr_dotl,
 	.setattr = v9fs_vfs_setattr_dotl,
 	.listxattr = v9fs_listxattr,
-	.get_inode_acl = v9fs_iop_get_acl,
+	.get_inode_acl = v9fs_iop_get_inode_acl,
+	.get_acl = v9fs_iop_get_acl,
 };
 
 const struct inode_operations v9fs_file_inode_operations_dotl = {
 	.getattr = v9fs_vfs_getattr_dotl,
 	.setattr = v9fs_vfs_setattr_dotl,
 	.listxattr = v9fs_listxattr,
-	.get_inode_acl = v9fs_iop_get_acl,
+	.get_inode_acl = v9fs_iop_get_inode_acl,
+	.get_acl = v9fs_iop_get_acl,
 };
 
 const struct inode_operations v9fs_symlink_inode_operations_dotl = {
diff --git a/include/linux/posix_acl_xattr.h b/include/linux/posix_acl_xattr.h
index 8163dd48c430..ebfa11ac7046 100644
--- a/include/linux/posix_acl_xattr.h
+++ b/include/linux/posix_acl_xattr.h
@@ -60,6 +60,17 @@ int posix_acl_to_xattr(struct user_namespace *user_ns,
 struct posix_acl *vfs_set_acl_prepare(struct user_namespace *mnt_userns,
 				      struct user_namespace *fs_userns,
 				      const void *value, size_t size);
+static inline const char *posix_acl_xattr_name(int type)
+{
+	switch (type) {
+	case ACL_TYPE_ACCESS:
+		return XATTR_NAME_POSIX_ACL_ACCESS;
+	case ACL_TYPE_DEFAULT:
+		return XATTR_NAME_POSIX_ACL_DEFAULT;
+	}
+
+	return "";
+}
 
 extern const struct xattr_handler posix_acl_access_xattr_handler;
 extern const struct xattr_handler posix_acl_default_xattr_handler;
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
