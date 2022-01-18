Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 294FB492118
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 09:23:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9jmL-0001Gd-4I; Tue, 18 Jan 2022 08:23:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1n9jmJ-0001Dx-J7
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 08:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:From:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2VRcue/noefHLYaLPwygeOTVHaEerkmALOl26Zj69DQ=; b=aVFgBuaxYhFRkdw8Velg4RFfCg
 D2SKtx4MH756bth/Pv7MH4PdzE4/wzUWfuAloGlRKkhUUa4V4ppOSYOoOy66E/Pf4LiHD7YIBawxo
 aMto5ljsFoj2pyrOre0JRPEYxx0EATbSV/EFVzp1H/zw18LXt4j4APaMqJdz4ZyUONOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:From:
 Cc:To:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2VRcue/noefHLYaLPwygeOTVHaEerkmALOl26Zj69DQ=; b=A
 rxyWBxjWXIhxiQk576ttJTNXE9vvNxGMUHKiWqmpcqg88ZkZJVo5cYy1h1x3YQI1U+YWvXJ5nJfm6
 B5kiXrgwE2OHZswAqSaNuzDfhp5gQCJMYfHfCvSNAtbVzJ55/S30ecTDwTw1TI0oel+5mU034xkYP
 BfZNDHpLl7qy71cc=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9jmG-001ll1-2k
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 08:23:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AC73EB810CE;
 Tue, 18 Jan 2022 08:23:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7B02C00446;
 Tue, 18 Jan 2022 08:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1642494212;
 bh=0wjWww2L/mXpgjtMJeYqKYrVuIWB+CKdAtJp9yMLung=;
 h=Subject:To:Cc:From:Date:From;
 b=AaMQJ4SWHE/8KxA59B86fQx3UxxIgjLYBURDCHCQX9khbKoIiVs2IZwExo7dhg7xk
 vH5A3kiz0+HBL2fgBetd0wGLv0X2q5mXekdGIF1UC4Wc63IFj9BYyog0OLtHNdCrQe
 LmRQHsYuu6JWiEknuTv+/Z1i4M/6aa1ef9S+aW5M=
To: asmadeus@codewreck.org, christian.brauner@ubuntu.com, ericvh@gmail.com,
 gregkh@linuxfoundation.org, lucho@ionkov.net, stable@kernel.org,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net
From: <gregkh@linuxfoundation.org>
Date: Tue, 18 Jan 2022 09:22:43 +0100
Message-ID: <164249416370227@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a note to let you know that I've just added the patch
 titled 9p: only copy valid iattrs in 9P2000.L setattr implementation to the
 5.16-stable tree which can be found at:
 http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;
 a=summary
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9jmG-001ll1-2k
Subject: [V9fs-developer] Patch "9p: only copy valid iattrs in 9P2000.L
 setattr implementation" has been added to the 5.16-stable tree
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


This is a note to let you know that I've just added the patch titled

    9p: only copy valid iattrs in 9P2000.L setattr implementation

to the 5.16-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     9p-only-copy-valid-iattrs-in-9p2000.l-setattr-implementation.patch
and it can be found in the queue-5.16 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 3cb6ee991496b67ee284c6895a0ba007e2d7bac3 Mon Sep 17 00:00:00 2001
From: Christian Brauner <christian.brauner@ubuntu.com>
Date: Mon, 29 Nov 2021 12:44:34 +0100
Subject: 9p: only copy valid iattrs in 9P2000.L setattr implementation

From: Christian Brauner <christian.brauner@ubuntu.com>

commit 3cb6ee991496b67ee284c6895a0ba007e2d7bac3 upstream.

The 9P2000.L setattr method v9fs_vfs_setattr_dotl() copies struct iattr
values without checking whether they are valid causing unitialized
values to be copied. The 9P2000 setattr method v9fs_vfs_setattr() method
gets this right. Check whether struct iattr fields are valid first
before copying in v9fs_vfs_setattr_dotl() too and make sure that all
other fields are set to 0 apart from {g,u}id which should be set to
INVALID_{G,U}ID. This ensure that they can be safely sent over the wire
or printed for debugging later on.

Link: https://lkml.kernel.org/r/20211129114434.3637938-1-brauner@kernel.org
Link: https://lkml.kernel.org/r/000000000000a0d53f05d1c72a4c%40google.com
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
Cc: stable@kernel.org
Cc: v9fs-developer@lists.sourceforge.net
Reported-by: syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
[Dominique: do not set a/mtime with just ATTR_A/MTIME as discussed]
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 fs/9p/vfs_inode_dotl.c |   29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -551,7 +551,10 @@ int v9fs_vfs_setattr_dotl(struct user_na
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
@@ -561,14 +564,22 @@ int v9fs_vfs_setattr_dotl(struct user_na
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
+	if (iattr->ia_valid & ATTR_ATIME_SET) {
+		p9attr.atime_sec = iattr->ia_atime.tv_sec;
+		p9attr.atime_nsec = iattr->ia_atime.tv_nsec;
+	}
+	if (iattr->ia_valid & ATTR_MTIME_SET) {
+		p9attr.mtime_sec = iattr->ia_mtime.tv_sec;
+		p9attr.mtime_nsec = iattr->ia_mtime.tv_nsec;
+	}
 
 	if (iattr->ia_valid & ATTR_FILE) {
 		fid = iattr->ia_file->private_data;


Patches currently in stable-queue which might be from christian.brauner@ubuntu.com are

queue-5.16/devtmpfs-regression-fix-reconfigure-on-each-mount.patch
queue-5.16/9p-only-copy-valid-iattrs-in-9p2000.l-setattr-implementation.patch


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
