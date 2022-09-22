Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B705E66B2
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 17:18:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obNxx-0002FP-LA;
	Thu, 22 Sep 2022 15:18:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1obNxv-0002FJ-Nq
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 15:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A2YInUrGmPMbTYgQjhIeEuDNhyGy/65C9A7ZZE/4hUo=; b=HsyE8rL2VNJWuBJ4w/RVPjb47M
 eFHvxGGWoDbuKyyF1hf9tFfE9ojVHZDPuGlBmM7Y8ltgaPiQUUvFcO6mRWAMlqh4bPCx4qekCQ7QT
 vU14u0VZUoVbc5q0s2HX9+U20E9c41uGz71dos78m9LYvaJAHO5I037lG4kfefe4Uxe8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A2YInUrGmPMbTYgQjhIeEuDNhyGy/65C9A7ZZE/4hUo=; b=cdnSA6ZpmZHAlJMDb9meIdO9C2
 MasxpnZhK1axyO2NaQt46ZfDkiNkSXoB0SuXRm6oNhBpf5BX3IYNoVS3T7vPTrHECMcZo8vyT6RbF
 lP7VJACFAqcvOeaLM7bQwFA52e4amGARGBvnntnsnLbWHXOf39MmxWK5h7yEYbGVdBwg=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obNxu-00GfMX-Mi for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 15:18:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0AD3FB83840;
 Thu, 22 Sep 2022 15:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92846C43470;
 Thu, 22 Sep 2022 15:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663859884;
 bh=6N2cynupI9ctSZpigi1pod0QN5Jg6MjmlKjPT6CyvCE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZvQeEOB4qF8kSBlH5HikBKgXKlMnFtJ0BmULpTwzR5f2vpki79SgcMx3yu3Sx0hsa
 t1lEvPAiWvT/J4yuBu99szvRR6fTXjBxGQwQrZbPTTRnuDuBkpDXPye9lSAWln/52d
 bnCsPD4TOZdLQxGL5x17Q8i7Nx3uKNAvd9qMzpUQXxvAotkyHEbnoCO9OZLfA4yAmP
 PIqJh9dr95DRu+k8yiZlpjUw2a7UPGks46mU23UVi064XN+kbY6oJfWBN+5K4vp75Y
 YK2wYZB/FJzqDLjcCcOgnsfj4NeXk6q0fmGtMsK+Fkdfdmm7cncmzs6pCsPXmkFBIY
 zodh0a6dzsPPw==
From: Christian Brauner <brauner@kernel.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 22 Sep 2022 17:17:05 +0200
Message-Id: <20220922151728.1557914-8-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922151728.1557914-1-brauner@kernel.org>
References: <20220922151728.1557914-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6031; i=brauner@kernel.org;
 h=from:subject; bh=6N2cynupI9ctSZpigi1pod0QN5Jg6MjmlKjPT6CyvCE=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTr1FR4BkXZG68+ViC68qHkaf37ZVvf3lzxQ2SCQ79NzBKd
 /KurO0pZGMS4GGTFFFkc2k3C5ZbzVGw2ytSAmcPKBDKEgYtTACbSm8bI8PapXN3ipGLxnUePrZkpGv
 j8onmTatWVygyjjOTeB8G11owMfzZ8d7tr/PR8yh9BZy35E+ZPzzkwTVvz2nG2RkuWfk8PEwA=
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
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1obNxu-00GfMX-Mi
Subject: [V9fs-developer] [PATCH 07/29] 9p: implement set acl method
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
 fs/9p/acl.c            | 89 ++++++++++++++++++++++++++++++++++++++++++
 fs/9p/acl.h            |  8 ++++
 fs/9p/vfs_inode_dotl.c |  2 +
 3 files changed, 99 insertions(+)

diff --git a/fs/9p/acl.c b/fs/9p/acl.c
index 0ef3386cf61a..ad54f8ce0804 100644
--- a/fs/9p/acl.c
+++ b/fs/9p/acl.c
@@ -170,6 +170,95 @@ struct posix_acl *v9fs_iop_get_acl(struct user_namespace *mnt_userns,
 	return acl;
 }
 
+int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct dentry *dentry,
+		     struct posix_acl *acl, int type)
+{
+	int retval;
+	void *value = NULL;
+	size_t size = 0;
+	struct v9fs_session_info *v9ses;
+	struct inode *inode = d_inode(dentry);
+
+	v9ses = v9fs_dentry2v9ses(dentry);
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
+	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) {
+		retval = v9fs_xattr_set(dentry, posix_acl_xattr_name(type),
+					value, size, 0);
+		goto err_out;
+	}
+
+	if (S_ISLNK(inode->i_mode))
+		return -EOPNOTSUPP;
+	if (!inode_owner_or_capable(&init_user_ns, inode))
+		return -EPERM;
+
+	switch (type) {
+	case ACL_TYPE_ACCESS:
+		if (acl) {
+			struct iattr iattr = { 0 };
+			struct posix_acl *old_acl = acl;
+
+			retval = posix_acl_update_mode(&init_user_ns, inode,
+						       &iattr.ia_mode, &acl);
+			if (retval)
+				goto err_out;
+			if (!acl) {
+				/*
+				 * ACL can be represented
+				 * by the mode bits. So don't
+				 * update ACL.
+				 */
+				posix_acl_release(old_acl);
+				value = NULL;
+				size = 0;
+			}
+			iattr.ia_valid = ATTR_MODE;
+			/* FIXME should we update ctime ?
+			 * What is the following setxattr update the
+			 * mode ?
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
+	default:
+		BUG();
+	}
+	retval = v9fs_xattr_set(dentry, posix_acl_xattr_name(type), value, size, 0);
+	if (!retval)
+		set_cached_acl(inode, type, acl);
+err_out:
+	kfree(value);
+	return retval;
+}
+
 static int v9fs_set_acl(struct p9_fid *fid, int type, struct posix_acl *acl)
 {
 	int retval;
diff --git a/fs/9p/acl.h b/fs/9p/acl.h
index 11d3f8ea4ce4..23ef70227d1f 100644
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
@@ -31,6 +33,12 @@ v9fs_iop_get_acl(struct user_namespace *mnt_userns,
 {
 	return NULL;
 }
+static inline int v9fs_iop_set_acl(struct user_namespace *mnt_userns,
+				   struct dentry *dentry, struct posix_acl *acl,
+				   int type)
+{
+	return 0;
+}
 static inline int v9fs_acl_chmod(struct inode *inode, struct p9_fid *fid)
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
