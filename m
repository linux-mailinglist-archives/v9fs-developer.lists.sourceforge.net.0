Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 564C05EE178
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 18:14:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odZhA-0001ZT-GE;
	Wed, 28 Sep 2022 16:14:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1odZh8-0001ZJ-6W
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 16:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NDq5EQ2lKpVDQLiXSpT0WO4xI/zgVteYS9koSK8rYb0=; b=dcOxVeaGklZgSh5GH2+PR+05f4
 k+/h695+SjQyO0NPS1uXkMvDmQ8BMnO993+lEy8qbxg1AT09bWp9CdZHlElOJ+BMo19yeiEoz37IS
 uoXFuBYM7Q1huB85WlwnggQYigQ4EVrg79Zvg9tOD90vu2jSbo2SI19WWkZjB/5La32c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NDq5EQ2lKpVDQLiXSpT0WO4xI/zgVteYS9koSK8rYb0=; b=DCAEd5YmteWzCPjV8Of/BBm8wB
 VVXP8I4TLaqK84KZONUHnxTFCv52N8Nl6GyoxPgc34kePA1bcutLCX0N+6Sfk8Bhu+UMZHh4NbpVT
 m9wHayqsIH4/IWEwEo2S+QvfGEfNJSMHwzn1ceBop/z6L4ZL6lPN4RQi080deN6dPvN4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odZhJ-005i9l-RN for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 16:14:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 91126B82152;
 Wed, 28 Sep 2022 16:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E91BEC4347C;
 Wed, 28 Sep 2022 16:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664381642;
 bh=y/cuNsWwDGcIsjmcUpVK1yo/Yt9TGwH70cnzX9kIB9I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q8olap9gV4NfMxe1r6XFjHjhx0MsHT3XBYp3pTfozUt+faaDvlX0TopIAWlOuRBgc
 zSnyhL9o1sCNnAXt+OTfG7/cB+qyQVXiiXiXqdnQeYiZ/mv4qAHmgNBw+o6bEqUuF0
 1tMS/I7FDdk9H296KEcdQkqoCQ3qicpXBZO1yGkbJN31CxRyzbjIK9+lRw56OkNQjN
 FpFv6x5XSu66GDtKdzoY08ishR/hZL1pf0XgDUWCgwcOBjgoV29HWGb1uykG3Vp+nq
 0LVTrCYK8QPatcEq7F+SsMlSO/lYNRX0KkeMnnMVzaK4VgaGCC8CtD39mCRYJ3lbO5
 6XaczKgB2DphA==
From: Christian Brauner <brauner@kernel.org>
To: linux-fsdevel@vger.kernel.org
Date: Wed, 28 Sep 2022 18:08:42 +0200
Message-Id: <20220928160843.382601-29-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220928160843.382601-1-brauner@kernel.org>
References: <20220928160843.382601-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5419; i=brauner@kernel.org;
 h=from:subject; bh=y/cuNsWwDGcIsjmcUpVK1yo/Yt9TGwH70cnzX9kIB9I=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSSbFNZf0r3ZrNRkLpPxYPqMY0Kijr6dSkYSpjk6pX4O27bG
 fLvRUcrCIMbFICumyOLQbhIut5ynYrNRpgbMHFYmkCEMXJwCMJEtPxkZvr4qKSzfaGz5LkuoX83/KJ
 dhNPsUzmquBW3u4jrTRM14Gf5pWh2tV5s9dXJo+a/N5uU1nln9M3b863I+0rA9t/TAspVMAA==
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Now that 9p supports the get and set acl inode operations
 and the vfs has been switched to the new posi api, 9p can simply rely on the
 stub posix acl handlers. The custom xattr handlers and associated [...] 
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
X-Headers-End: 1odZhJ-005i9l-RN
Subject: [V9fs-developer] [PATCH v3 28/29] 9p: use stub posix acl handlers
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

Now that 9p supports the get and set acl inode operations and the vfs
has been switched to the new posi api, 9p can simply rely on the stub
posix acl handlers. The custom xattr handlers and associated unused
helpers can be removed.

Signed-off-by: Christian Brauner (Microsoft) <brauner@kernel.org>
---

Notes:
    /* v2 */
    unchanged
    
    /* v3 */
    unchanged

 fs/9p/acl.c   | 121 --------------------------------------------------
 fs/9p/xattr.c |   7 +--
 fs/9p/xattr.h |   2 -
 3 files changed, 4 insertions(+), 126 deletions(-)

diff --git a/fs/9p/acl.c b/fs/9p/acl.c
index 135b26cee63a..c397c51f80d9 100644
--- a/fs/9p/acl.c
+++ b/fs/9p/acl.c
@@ -343,124 +343,3 @@ int v9fs_acl_mode(struct inode *dir, umode_t *modep,
 	*modep  = mode;
 	return 0;
 }
-
-static int v9fs_xattr_get_acl(const struct xattr_handler *handler,
-			      struct dentry *dentry, struct inode *inode,
-			      const char *name, void *buffer, size_t size)
-{
-	struct v9fs_session_info *v9ses;
-	struct posix_acl *acl;
-	int error;
-
-	v9ses = v9fs_dentry2v9ses(dentry);
-	/*
-	 * We allow set/get/list of acl when access=client is not specified
-	 */
-	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
-		return v9fs_xattr_get(dentry, handler->name, buffer, size);
-
-	acl = v9fs_get_cached_acl(inode, handler->flags);
-	if (IS_ERR(acl))
-		return PTR_ERR(acl);
-	if (acl == NULL)
-		return -ENODATA;
-	error = posix_acl_to_xattr(&init_user_ns, acl, buffer, size);
-	posix_acl_release(acl);
-
-	return error;
-}
-
-static int v9fs_xattr_set_acl(const struct xattr_handler *handler,
-			      struct user_namespace *mnt_userns,
-			      struct dentry *dentry, struct inode *inode,
-			      const char *name, const void *value,
-			      size_t size, int flags)
-{
-	int retval;
-	struct posix_acl *acl;
-	struct v9fs_session_info *v9ses;
-
-	v9ses = v9fs_dentry2v9ses(dentry);
-	/*
-	 * set the attribute on the remote. Without even looking at the
-	 * xattr value. We leave it to the server to validate
-	 */
-	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
-		return v9fs_xattr_set(dentry, handler->name, value, size,
-				      flags);
-
-	if (S_ISLNK(inode->i_mode))
-		return -EOPNOTSUPP;
-	if (!inode_owner_or_capable(&init_user_ns, inode))
-		return -EPERM;
-	if (value) {
-		/* update the cached acl value */
-		acl = posix_acl_from_xattr(&init_user_ns, value, size);
-		if (IS_ERR(acl))
-			return PTR_ERR(acl);
-		else if (acl) {
-			retval = posix_acl_valid(inode->i_sb->s_user_ns, acl);
-			if (retval)
-				goto err_out;
-		}
-	} else
-		acl = NULL;
-
-	switch (handler->flags) {
-	case ACL_TYPE_ACCESS:
-		if (acl) {
-			struct iattr iattr = { 0 };
-			struct posix_acl *old_acl = acl;
-
-			retval = posix_acl_update_mode(&init_user_ns, inode,
-						       &iattr.ia_mode, &acl);
-			if (retval)
-				goto err_out;
-			if (!acl) {
-				/*
-				 * ACL can be represented
-				 * by the mode bits. So don't
-				 * update ACL.
-				 */
-				posix_acl_release(old_acl);
-				value = NULL;
-				size = 0;
-			}
-			iattr.ia_valid = ATTR_MODE;
-			/* FIXME should we update ctime ?
-			 * What is the following setxattr update the
-			 * mode ?
-			 */
-			v9fs_vfs_setattr_dotl(&init_user_ns, dentry, &iattr);
-		}
-		break;
-	case ACL_TYPE_DEFAULT:
-		if (!S_ISDIR(inode->i_mode)) {
-			retval = acl ? -EINVAL : 0;
-			goto err_out;
-		}
-		break;
-	default:
-		BUG();
-	}
-	retval = v9fs_xattr_set(dentry, handler->name, value, size, flags);
-	if (!retval)
-		set_cached_acl(inode, handler->flags, acl);
-err_out:
-	posix_acl_release(acl);
-	return retval;
-}
-
-const struct xattr_handler v9fs_xattr_acl_access_handler = {
-	.name	= XATTR_NAME_POSIX_ACL_ACCESS,
-	.flags	= ACL_TYPE_ACCESS,
-	.get	= v9fs_xattr_get_acl,
-	.set	= v9fs_xattr_set_acl,
-};
-
-const struct xattr_handler v9fs_xattr_acl_default_handler = {
-	.name	= XATTR_NAME_POSIX_ACL_DEFAULT,
-	.flags	= ACL_TYPE_DEFAULT,
-	.get	= v9fs_xattr_get_acl,
-	.set	= v9fs_xattr_set_acl,
-};
diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index 1f9298a4bd42..ae6a93871338 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -8,6 +8,7 @@
 #include <linux/fs.h>
 #include <linux/sched.h>
 #include <linux/uio.h>
+#include <linux/posix_acl_xattr.h>
 #include <net/9p/9p.h>
 #include <net/9p/client.h>
 
@@ -182,9 +183,9 @@ static struct xattr_handler v9fs_xattr_security_handler = {
 const struct xattr_handler *v9fs_xattr_handlers[] = {
 	&v9fs_xattr_user_handler,
 	&v9fs_xattr_trusted_handler,
-#ifdef CONFIG_9P_FS_POSIX_ACL
-	&v9fs_xattr_acl_access_handler,
-	&v9fs_xattr_acl_default_handler,
+#ifdef CONFIG_FS_POSIX_ACL
+	&posix_acl_access_xattr_handler,
+	&posix_acl_default_xattr_handler,
 #endif
 #ifdef CONFIG_9P_FS_SECURITY
 	&v9fs_xattr_security_handler,
diff --git a/fs/9p/xattr.h b/fs/9p/xattr.h
index 3e11fc3331eb..b5636e544c8a 100644
--- a/fs/9p/xattr.h
+++ b/fs/9p/xattr.h
@@ -11,8 +11,6 @@
 #include <net/9p/client.h>
 
 extern const struct xattr_handler *v9fs_xattr_handlers[];
-extern const struct xattr_handler v9fs_xattr_acl_access_handler;
-extern const struct xattr_handler v9fs_xattr_acl_default_handler;
 
 ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
 			   void *buffer, size_t buffer_size);
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
