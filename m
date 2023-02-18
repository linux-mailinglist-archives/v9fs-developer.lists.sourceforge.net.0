Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1726269B6E8
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 01:34:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTBBS-00055Q-Ln;
	Sat, 18 Feb 2023 00:34:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pTBBH-00054Y-J5
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TeYIToiVg2O35jlhMJSdfLvBxlgQfLrWWPqRGWfBvuM=; b=izlyPmPFOuMC+yqdTgMgZiIrsP
 bCY2cKHmM8dYYp7n5AcN67pTCHD7cvU4UpRxpt/2dra9VqUr+ame2DJD9rao7J3n5TDiVW0eCljUX
 IP0/YEHDj+Wj89AVHS4zFJGrlW1K8PiRjopq8Ju//G/Mhr0tmENBKlnkkZzsAwJWThZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TeYIToiVg2O35jlhMJSdfLvBxlgQfLrWWPqRGWfBvuM=; b=Qy7wKIerrODXdoKmpRsj9sLObE
 OFsW9ZxZrnfxQ98rgS8MANcWXk8hzImLvOSRQ/QKG8j+IEKMdAReWLu4PfIHWG3o9ooCLsU+Ab6bQ
 eIUp2TW4BIW8doZpaw4NkLnR+7nnS4KO60BoA9YA67s4XbN1c6+2bZO0ve49nodtRCyE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTBB2-0004Km-De for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C8F57620A3;
 Sat, 18 Feb 2023 00:34:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F8D0C433A0;
 Sat, 18 Feb 2023 00:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676680443;
 bh=nMiGIejp8egMtRxiDVnE9HTGeqlIR/0m0XbHmw05N0o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JyAPiwayh+ahtkxPDlCeK7rK+JUasC7BwIhvdjEuJhjHIYVnxqfM2wATkuMr0ZAIZ
 YSNB8lijKrih19gWPp32j8lOYicYvyUbLGyYi8b5XoijJiA3+Vin2rtaO1tJdV5OQb
 YJAr3fDCRLKsT360UgqC7Gxy+zlVuThPw2uLjCAzP9S3RzY6zJ/v9QwsB7hYN8yj4U
 JTXQPgvYlhcjzVWOzYXDKQ+zef2mRPa13qwrhZM8GlOUN9GrET9ZUTaRSszMOMO+Qq
 xMnjHtPnfV3kyzh0iF8/k/YiezbHtJlLwOPN2HfvZtXY1/CwMLsvzwKT0lmglvUSKN
 fdvTZXscyjCzg==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 18 Feb 2023 00:33:21 +0000
Message-Id: <20230218003323.2322580-10-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230218003323.2322580-1-ericvh@kernel.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Checking the p9_fid_put value allows us to pass back errors
 involved if we end up clunking the fid as part of dir_release. This can help
 with more graceful response to errors in writeback among other things. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pTBB2-0004Km-De
Subject: [V9fs-developer] [PATCH v4 09/11] fs/9p: fix error reporting in
 v9fs_dir_release
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Checking the p9_fid_put value allows us to pass back errors
involved if we end up clunking the fid as part of dir_release.

This can help with more graceful response to errors in writeback
among other things.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 fs/9p/vfs_dir.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index bd31593437f3..44918c60357f 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -197,7 +197,7 @@ static int v9fs_dir_readdir_dotl(struct file *file, struct dir_context *ctx)
 
 
 /**
- * v9fs_dir_release - close a directory
+ * v9fs_dir_release - called on a close of a file or directory
  * @inode: inode of the directory
  * @filp: file pointer to a directory
  *
@@ -209,6 +209,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	struct p9_fid *fid;
 	__le32 version;
 	loff_t i_size;
+	int retval = 0;
 
 	fid = filp->private_data;
 	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
@@ -220,7 +221,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 		spin_lock(&inode->i_lock);
 		hlist_del(&fid->ilist);
 		spin_unlock(&inode->i_lock);
-		p9_fid_put(fid);
+		retval = p9_fid_put(fid);
 	}
 
 	if ((filp->f_mode & FMODE_WRITE)) {
@@ -231,7 +232,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	} else {
 		fscache_unuse_cookie(v9fs_inode_cookie(v9inode), NULL, NULL);
 	}
-	return 0;
+	return retval;
 }
 
 const struct file_operations v9fs_dir_operations = {
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
