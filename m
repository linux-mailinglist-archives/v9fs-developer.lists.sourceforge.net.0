Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABD45EA800
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Sep 2022 16:09:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oconc-0003Dx-QR;
	Mon, 26 Sep 2022 14:09:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1ocona-0003Df-JK
 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 14:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jF5sDThndoXLOrtgmZEcRHGwt/eZf99ZRkfBUM+X7yk=; b=UzDjp/iZI9Kb0WFmCyBmJD35ti
 CkrGUcugwj6Z0xlF6ekbVY8QQ1JIBUzsH7fxDlesuCJfkdKUKPTkC+SXDMsYhmzaG+kuYA8UCEXWP
 EmdjBW2yHxxSrHJLP9RA7RvQy0MfgQyb3sP7eQGryzsJtK/Q+lxCj+8XDpvXsGgq1icE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jF5sDThndoXLOrtgmZEcRHGwt/eZf99ZRkfBUM+X7yk=; b=E/y2r+PNfAjHmOPNDcIrD5Mak8
 dq3cLEL2vlmawYOunnz/SgoqyJ6YeD1T14FKLbfSEyGvxVWl6jq/1BiNigdwfmpVmy4DiaHvTq2S+
 WP7ExbU3tdTJylk17D9h7RLs2Yas4RGu41hTdm01j5K70gNF4ubGRIJyUoLBtSRIxy8w=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oconJ-0002xr-1w for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 14:09:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 999A9B80ABA;
 Mon, 26 Sep 2022 14:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01DCC43470;
 Mon, 26 Sep 2022 14:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664201345;
 bh=V5NynB7uLiMyYPrBbg9hv+d+TqdcdC39H+5TuS9MIc0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k1d2fSSDkih5HNqRhTnUNXXRlHXyYMYpJZCS0rpZo2wKY+n/4EDcEh2/T3VJKflqw
 SPjDuktnY/wMcCAyy06FcPkEOmfRGU8ubYBOQ+zld0z8B3b3WFmg0NauH9dnaAd3K9
 7E+YLGfbD64HFmf9CBxBkqvttspkzzGCbUTLn5ZSvA1iQj4c6qgTRfdESPRNmQ1PtL
 HDmqc4Lk1YAUSA8wrhfhgrICXhQ8z2PrF6wMLjWuudb67jeUfysrXdwqSbPoWE1cDz
 OFagYbS5Uh29cjO7ZkfpsqQt2Fyt8MU6uSqBv2IfXEqYzko5tTiJZlrOAk8EIfqZi2
 5q9RnFnsF+z1A==
From: Christian Brauner <brauner@kernel.org>
To: linux-fsdevel@vger.kernel.org
Date: Mon, 26 Sep 2022 16:08:05 +0200
Message-Id: <20220926140827.142806-9-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220926140827.142806-1-brauner@kernel.org>
References: <20220926140827.142806-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6365; i=brauner@kernel.org;
 h=from:subject; bh=V5NynB7uLiMyYPrBbg9hv+d+TqdcdC39H+5TuS9MIc0=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSQbbrKXZtzLNaHxkNCB7lBx07lWa9JXvGO8Z3SzJdPE0cFM
 SPZWRykLgxgXg6yYIotDu0m43HKeis1GmRowc1iZQIYwcHEKwEQWNTAy9GWou5cGB87f/SS5XPjY38
 x4Mcdb1r9+Ngu8cXMsnyTJxPBPV3LjxOUvxXlvay04FqsXMk1lqX5ygPD0qBy1gzzJZy9yAgA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The current way of setting and getting posix acls through
 the generic xattr interface is error prone and type unsafe. The vfs needs
 to interpret and fixup posix acls before storing or reporting it to [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oconJ-0002xr-1w
Subject: [V9fs-developer] [PATCH v2 08/30] 9p: implement set acl method
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
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 v9fs-developer@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
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

Notes:
    /* v2 */
    Al Viro <viro@zeniv.linux.org.uk>:
    - Fix leak due to early return instead of goto.
    
    Christian Brauner (Microsoft) <brauner@kernel.org>:
    - Fix leak and call kfree() when we skip setting posix acls because acl can be
      represented by mode bits.

 fs/9p/acl.c            | 94 ++++++++++++++++++++++++++++++++++++++++++
 fs/9p/acl.h            |  3 ++
 fs/9p/vfs_inode_dotl.c |  2 +
 3 files changed, 99 insertions(+)

diff --git a/fs/9p/acl.c b/fs/9p/acl.c
index 67f8b57c67e0..135b26cee63a 100644
--- a/fs/9p/acl.c
+++ b/fs/9p/acl.c
@@ -151,6 +151,100 @@ struct posix_acl *v9fs_iop_get_acl(struct user_namespace *mnt_userns,
 	return v9fs_get_cached_acl(d_inode(dentry), type);
 }
 
+int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct dentry *dentry,
+		     struct posix_acl *acl, int type)
+{
+	int retval;
+	size_t size = 0;
+	void *value = NULL;
+	const char *acl_name;
+	struct v9fs_session_info *v9ses;
+	struct inode *inode = d_inode(dentry);
+
+	if (acl) {
+		retval = posix_acl_valid(inode->i_sb->s_user_ns, acl);
+		if (retval)
+			goto err_out;
+
+		size = posix_acl_xattr_size(acl->a_count);
+
+		value = kzalloc(size, GFP_NOFS);
+		if (!value) {
+			retval = -ENOMEM;
+			goto err_out;
+		}
+
+		retval = posix_acl_to_xattr(&init_user_ns, acl, value, size);
+		if (retval < 0)
+			goto err_out;
+	}
+
+	/*
+	 * set the attribute on the remote. Without even looking at the
+	 * xattr value. We leave it to the server to validate
+	 */
+	acl_name = posix_acl_xattr_name(type);
+	v9ses = v9fs_dentry2v9ses(dentry);
+	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) {
+		retval = v9fs_xattr_set(dentry, acl_name, value, size, 0);
+		goto err_out;
+	}
+
+	if (S_ISLNK(inode->i_mode)) {
+		retval = -EOPNOTSUPP;
+		goto err_out;
+	}
+
+	if (!inode_owner_or_capable(&init_user_ns, inode)) {
+		retval = -EPERM;
+		goto err_out;
+	}
+
+	switch (type) {
+	case ACL_TYPE_ACCESS:
+		if (acl) {
+			struct iattr iattr = {};
+			struct posix_acl *acl_mode = acl;
+
+			retval = posix_acl_update_mode(&init_user_ns, inode,
+						       &iattr.ia_mode,
+						       &acl_mode);
+			if (retval)
+				goto err_out;
+			if (!acl_mode) {
+				/*
+				 * ACL can be represented by the mode bits.
+				 * So don't update ACL below.
+				 */
+				kfree(value);
+				value = NULL;
+				size = 0;
+			}
+			iattr.ia_valid = ATTR_MODE;
+			/*
+			 * FIXME should we update ctime ?
+			 * What is the following setxattr update the mode ?
+			 */
+			v9fs_vfs_setattr_dotl(&init_user_ns, dentry, &iattr);
+		}
+		break;
+	case ACL_TYPE_DEFAULT:
+		if (!S_ISDIR(inode->i_mode)) {
+			retval = acl ? -EINVAL : 0;
+			goto err_out;
+		}
+		break;
+	}
+
+	retval = v9fs_xattr_set(dentry, acl_name, value, size, 0);
+	if (!retval)
+		set_cached_acl(inode, type, acl);
+
+err_out:
+	kfree(value);
+	return retval;
+}
+
 static int v9fs_set_acl(struct p9_fid *fid, int type, struct posix_acl *acl)
 {
 	int retval;
diff --git a/fs/9p/acl.h b/fs/9p/acl.h
index 359dab4da900..4c60a2bce5de 100644
--- a/fs/9p/acl.h
+++ b/fs/9p/acl.h
@@ -12,6 +12,8 @@ struct posix_acl *v9fs_iop_get_inode_acl(struct inode *inode, int type,
 				   bool rcu);
 struct posix_acl *v9fs_iop_get_acl(struct user_namespace *mnt_userns,
 					  struct dentry *dentry, int type);
+int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct dentry *dentry,
+		     struct posix_acl *acl, int type);
 int v9fs_acl_chmod(struct inode *inode, struct p9_fid *fid);
 int v9fs_set_create_acl(struct inode *inode, struct p9_fid *fid,
 			struct posix_acl *dacl, struct posix_acl *acl);
@@ -21,6 +23,7 @@ void v9fs_put_acl(struct posix_acl *dacl, struct posix_acl *acl);
 #else
 #define v9fs_iop_get_inode_acl	NULL
 #define v9fs_iop_get_acl NULL
+#define v9fs_iop_set_acl NULL
 static inline int v9fs_get_acl(struct inode *inode, struct p9_fid *fid)
 {
 	return 0;
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index a4211fcb9168..03c1743c4aff 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -985,6 +985,7 @@ const struct inode_operations v9fs_dir_inode_operations_dotl = {
 	.listxattr = v9fs_listxattr,
 	.get_inode_acl = v9fs_iop_get_inode_acl,
 	.get_acl = v9fs_iop_get_acl,
+	.set_acl = v9fs_iop_set_acl,
 };
 
 const struct inode_operations v9fs_file_inode_operations_dotl = {
@@ -993,6 +994,7 @@ const struct inode_operations v9fs_file_inode_operations_dotl = {
 	.listxattr = v9fs_listxattr,
 	.get_inode_acl = v9fs_iop_get_inode_acl,
 	.get_acl = v9fs_iop_get_acl,
+	.set_acl = v9fs_iop_set_acl,
 };
 
 const struct inode_operations v9fs_symlink_inode_operations_dotl = {
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
