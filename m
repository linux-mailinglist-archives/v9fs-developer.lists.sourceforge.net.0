Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E320C557
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 04:15:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpMqQ-0004H7-91; Sun, 28 Jun 2020 02:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jpMqO-0004Gr-Qw
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 02:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c8nReI1Wq65+cBl0Is0UTaE8SaNAUDiOZg/O3aQn/qM=; b=Wz5q27YR9nvqyWI/4fZezMdZIk
 Wh7Qz60Y9Z30L0eso8hyq+K5Ol4K1MWqpDMWCfImkxijISgp5reiu9ZHmpfQeK6aJhGrAFtAAuWfY
 Si4aUHkoqqeEBgulaTKpWZ+I22r9n/aQcZ99aXYuZikbejEqfsEr6+ZCzZF4cgx4049o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c8nReI1Wq65+cBl0Is0UTaE8SaNAUDiOZg/O3aQn/qM=; b=BJdviQFd0Aa9bni5UuRn5j8At1
 S4nBiEjM6llQLkKSeire+ocghrfKUvTBZG3+PtdlJSLjV8gqSBJR81TWY1G+xLs50VU+AW/i4sTOZ
 03C6jtaMtWT9nZTOOUEFWu7cieiR868unh/16qOF11CG8vH9BxeONZ68jqHlXjLKP1Ow=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jpMqN-003lkW-7L
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 02:14:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BDC91045;
 Sat, 27 Jun 2020 18:59:11 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3F9933F73C;
 Sat, 27 Jun 2020 18:59:08 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Sun, 28 Jun 2020 09:58:54 +0800
Message-Id: <20200628015854.34674-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200628015854.34674-1-jianyong.wu@arm.com>
References: <20200628015854.34674-1-jianyong.wu@arm.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jpMqN-003lkW-7L
Subject: [V9fs-developer] [RFC PATCH 2/2] 9p: remove unused code in 9p
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
Cc: Kaly.Xin@arm.com, jianyong.wu@arm.com, justin.he@arm.com, wei.chen@arm.com,
 Steve.Capper@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

These code has been commented out since 2007 and lied in kernel
since then. it's time to remove thest no used code.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/9p/vfs_inode.c | 53 -----------------------------------------------
 1 file changed, 53 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 010869389523..23aed9047efe 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -368,59 +368,6 @@ struct inode *v9fs_get_inode(struct super_block *sb, umode_t mode, dev_t rdev)
 	return inode;
 }
 
-/*
-static struct v9fs_fid*
-v9fs_clone_walk(struct v9fs_session_info *v9ses, u32 fid, struct dentry *dentry)
-{
-	int err;
-	int nfid;
-	struct v9fs_fid *ret;
-	struct v9fs_fcall *fcall;
-
-	nfid = v9fs_get_idpool(&v9ses->fidpool);
-	if (nfid < 0) {
-		eprintk(KERN_WARNING, "no free fids available\n");
-		return ERR_PTR(-ENOSPC);
-	}
-
-	err = v9fs_t_walk(v9ses, fid, nfid, (char *) dentry->d_name.name,
-		&fcall);
-
-	if (err < 0) {
-		if (fcall && fcall->id == RWALK)
-			goto clunk_fid;
-
-		PRINT_FCALL_ERROR("walk error", fcall);
-		v9fs_put_idpool(nfid, &v9ses->fidpool);
-		goto error;
-	}
-
-	kfree(fcall);
-	fcall = NULL;
-	ret = v9fs_fid_create(v9ses, nfid);
-	if (!ret) {
-		err = -ENOMEM;
-		goto clunk_fid;
-	}
-
-	err = v9fs_fid_insert(ret, dentry);
-	if (err < 0) {
-		v9fs_fid_destroy(ret);
-		goto clunk_fid;
-	}
-
-	return ret;
-
-clunk_fid:
-	v9fs_t_clunk(v9ses, nfid);
-
-error:
-	kfree(fcall);
-	return ERR_PTR(err);
-}
-*/
-
-
 /**
  * v9fs_clear_inode - release an inode
  * @inode: inode to release
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
