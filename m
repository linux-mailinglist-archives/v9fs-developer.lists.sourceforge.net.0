Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EF246140A
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 12:45:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrf5l-0000SX-U0; Mon, 29 Nov 2021 11:45:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <brauner@kernel.org>) id 1mrf5k-0000SP-Su
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 11:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xAgqaFkxMH9mFoetKCRT4+M5R4FU7jlEoEOvwEqWCWY=; b=cuA1j2xVVLDl5bqwB8vnFO9ozo
 mZ3gWVb9gBRCQoSrqmq8GWqhmH2nRYrtXORjIaUXbHnrZgYiuqaSq4tM8GD3+KHas0E5XmTD9STGf
 fj1q1mLao99Y2dPxRKJqLBECY2SpmNZQqUWGTb/WdUrqPXH1GSlsaqRP7nVfFWuZ0SDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xAgqaFkxMH9mFoetKCRT4+M5R4FU7jlEoEOvwEqWCWY=; b=m8HMcYKALv/fhLZ78GcgO9or3b
 nFFTFFuVpMGyFO2WVgga91ykKKLg96pHux4AOPydSgrLUY1BAJCbCJYsqFR1P3j4K0sy8jug3FSuY
 9W5F8hM0J2AugNiLNvhfjSRuTlxOCIf1z8YZ4EOLNmnMklWfmRDlHmiuDmn06JJnDagk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrf5i-00Dwvx-TO
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 11:45:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 97B8061305;
 Mon, 29 Nov 2021 11:44:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7212BC53FCE;
 Mon, 29 Nov 2021 11:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638186292;
 bh=a7pr97q1g++NPejXdtLio/ezPGV2a8KcSuthYX6wc+o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rgfXteY7tAI2+rM+BZYoEMj3cDMiWyQ3AM7i6bs8OVWDOJv+HsMrEAXcKKhhoGTDN
 6ENAjBbdRu8qDLyP+nkgGppm//wCBc9PURW7VkJQerACxV8zbHu+5ur4YV1bS8F8jQ
 LRd0cS62DbOvqosf/4zZZTeSgnyIscqSHlVfBfbXlt0GcxHDghbYRQpPV5rhTuwIJF
 WZtBMM1Wi4G4fX6SKZ+LDKUcLBUchwmVECfc7l/+Ja2VwC6+Xf5RtrFTyx5RLvdj28
 Sez9GRxWzVEJVCW62UGn+nzhkZFn1mmVyColhdRK3gd7Ci2PKmClM5ekhy8I5YzLLE
 9koVNpyQ9EjGA==
From: Christian Brauner <brauner@kernel.org>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 v9fs-developer@lists.sourceforge.net
Date: Mon, 29 Nov 2021 12:44:34 +0100
Message-Id: <20211129114434.3637938-1-brauner@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <000000000000a0d53f05d1c72a4c%40google.com>
References: <000000000000a0d53f05d1c72a4c%40google.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2793; h=from:subject;
 bh=hp5Se6v77gZHz7JqdOkQybOQS9+OMw9PDo9BAeWcdkQ=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSQu2SsY23fg/ITFYmx/jaWaTnD7TeBccChlZfO5Ry9Y7Gb6
 zI2Y0VHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjARNg5GhrVdErk5Pw+7/zkQbrlYJG
 1Vwu8NF6w0Re2nb78z0UtqszYjw+v14lOqvjJ/uz6BcX/BztkJ0taWwU/+ihSEPJ4fcVPtHSsA
X-Developer-Key: i=christian.brauner@ubuntu.com; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Christian Brauner <christian.brauner@ubuntu.com> The
 9P2000.L setattr method v9fs_vfs_setattr_dotl() copies struct iattr values
 without checking whether they are valid causing unitialized values to be
 copied. The 9P2000 setattr method v9fs_vfs_setat [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrf5i-00Dwvx-TO
Subject: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Christian Brauner <christian.brauner@ubuntu.com>

The 9P2000.L setattr method v9fs_vfs_setattr_dotl() copies struct iattr
values without checking whether they are valid causing unitialized
values to be copied. The 9P2000 setattr method v9fs_vfs_setattr() method
gets this right. Check whether struct iattr fields are valid first
before copying in v9fs_vfs_setattr_dotl() too and make sure that all
other fields are set to 0 apart from {g,u}id which should be set to
INVALID_{G,U}ID. This ensure that they can be safely sent over the wire
or printed for debugging later on.

Link: https://lore.kernel.org/r/000000000000a0d53f05d1c72a4c%40google.com
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
Cc: stable@kernel.org
Cc: v9fs-developer@lists.sourceforge.net
Reported-by: syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 fs/9p/vfs_inode_dotl.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 7dee89ba32e7..bbed366ae901 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -551,7 +551,10 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
 {
 	int retval, use_dentry = 0;
 	struct p9_fid *fid = NULL;
-	struct p9_iattr_dotl p9attr;
+	struct p9_iattr_dotl p9attr = {
+		.uid = INVALID_UID,
+		.gid = INVALID_GID,
+	};
 	struct inode *inode = d_inode(dentry);
 
 	p9_debug(P9_DEBUG_VFS, "\n");
@@ -561,14 +564,22 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
 		return retval;
 
 	p9attr.valid = v9fs_mapped_iattr_valid(iattr->ia_valid);
-	p9attr.mode = iattr->ia_mode;
-	p9attr.uid = iattr->ia_uid;
-	p9attr.gid = iattr->ia_gid;
-	p9attr.size = iattr->ia_size;
-	p9attr.atime_sec = iattr->ia_atime.tv_sec;
-	p9attr.atime_nsec = iattr->ia_atime.tv_nsec;
-	p9attr.mtime_sec = iattr->ia_mtime.tv_sec;
-	p9attr.mtime_nsec = iattr->ia_mtime.tv_nsec;
+	if (iattr->ia_valid & ATTR_MODE)
+		p9attr.mode = iattr->ia_mode;
+	if (iattr->ia_valid & ATTR_UID)
+		p9attr.uid = iattr->ia_uid;
+	if (iattr->ia_valid & ATTR_GID)
+		p9attr.gid = iattr->ia_gid;
+	if (iattr->ia_valid & ATTR_SIZE)
+		p9attr.size = iattr->ia_size;
+	if (iattr->ia_valid & (ATTR_ATIME | ATTR_ATIME_SET)) {
+		p9attr.atime_sec = iattr->ia_atime.tv_sec;
+		p9attr.atime_nsec = iattr->ia_atime.tv_nsec;
+	}
+	if (iattr->ia_valid & (ATTR_MTIME | ATTR_MTIME_SET)) {
+		p9attr.mtime_sec = iattr->ia_mtime.tv_sec;
+		p9attr.mtime_nsec = iattr->ia_mtime.tv_nsec;
+	}
 
 	if (iattr->ia_valid & ATTR_FILE) {
 		fid = iattr->ia_file->private_data;

base-commit: d58071a8a76d779eedab38033ae4c821c30295a5
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
