Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF01F492A82
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 17:10:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9r4O-0007g4-To; Tue, 18 Jan 2022 16:10:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1n9r4N-0007fy-RF
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 16:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mY1vJ6Jt16R/ApJgIlarTQz39jfF5TEjEguHfdRW5Ng=; b=JpaoVtNRtmB2OWVTT5N0tehR6/
 P+npBS/s0jFP8CBSWTqbtIvVw49bS3L+fThGsfH2+af7wCsmuNBJ8ktsAZPZ5wvG2n8Xj60fkw3MN
 ANPZnrpLeXZAuY5wUe+3CUrQemrUgsaTW42PeRJ2sT3mu+I5Om4oh8ZNYykWXGGGWV5s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mY1vJ6Jt16R/ApJgIlarTQz39jfF5TEjEguHfdRW5Ng=; b=jNUXZfYCaXEW2LXdNrLIWGPj96
 v8Jkqop0iA67qrMP0FUMJMjZX63swBPmkk2ytc5fRfxrLuug4/UmQIDO3dGncxK3dgL5j422X7myn
 dnMeI2AHtHXAeMirDZHtx0brGaKD0H9k5V//xBzPUTU+ndoYMjsm9L44ajCPdcmmGK7I=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9r4F-002Eqw-JJ
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 16:10:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 698CB612BE;
 Tue, 18 Jan 2022 16:10:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45822C00446;
 Tue, 18 Jan 2022 16:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1642522236;
 bh=7wTSqMpig/m2wbRTD66ZE5he1DEHG5kW/Yw/muIsqh0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2KbIaiYvv/QR1F8eGb3qsB2a0znU0DY6lA8z4Hm2vqq27REF5iUi4xZGp7q/ROEOy
 +nHr2FwPhtXMD+h+BSPCPPh2yEuBfuDu018tm+pLnTuM3LUo81LXi6jw88iFexEa52
 3mPZNsgBnsBxSy1kq0E7RtF50yn3wZ5dd2Ye1jnU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Tue, 18 Jan 2022 17:06:08 +0100
Message-Id: <20220118160452.842976342@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220118160452.384322748@linuxfoundation.org>
References: <20220118160452.384322748@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Christian Brauner <christian.brauner@ubuntu.com> commit
 3cb6ee991496b67ee284c6895a0ba007e2d7bac3 upstream. The 9P2000.L setattr method
 v9fs_vfs_setattr_dotl() copies struct iattr values without checking whether
 they are valid causing unitialized values to be copied. The 9P2000 setattr
 method v9fs_vfs_setat [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1n9r4F-002Eqw-JJ
Subject: [V9fs-developer] [PATCH 5.16 13/28] 9p: only copy valid iattrs in
 9P2000.L setattr implementation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

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




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
