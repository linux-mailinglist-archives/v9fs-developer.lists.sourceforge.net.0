Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E2820C6D7
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 09:43:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpRyl-0001TV-Pc; Sun, 28 Jun 2020 07:43:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jpRyl-0001TP-7l
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 07:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ae4xFFGWCPC1GFSgqCSn99RiXuokCY0oCgVwoLbCEeo=; b=mGWckOPeihDtGdX+wzw/ln56UC
 u5WMkJSweOAcgy8mXV8uhYBfXer5Gn2iarmwKqwAh0+1qUG2njdpNEvb9HaB8ewvS9U++cnuWABAG
 fxCT5DjjVRhxOlTLl30pAMO1Eh5GVbvhPSfajJTRkGcppLnf0BWh1EPaawLcj9il/MUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ae4xFFGWCPC1GFSgqCSn99RiXuokCY0oCgVwoLbCEeo=; b=ZwZttnJbIwEvfxjkS4E2s0X3JH
 EDDZqB5RvgjYJBeeDsIdVsVxfsp2GeYPjdhuRzXxBEK6T+hHwEotbQPwItZku1eAnEu/BQAVwWRPb
 glkRdRV2R1uiGVbHOtTD0IEERDBbPdqX64lRA0C9xB+vRExwOpBjQ9uqNEKZ5zSeGEFk=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jpRyj-000Pgm-K9
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 07:43:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E6F9D6E;
 Sun, 28 Jun 2020 00:43:48 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0FC1D3F6CF;
 Sun, 28 Jun 2020 00:43:44 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Sun, 28 Jun 2020 15:43:37 +0800
Message-Id: <20200628074337.45895-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jpRyj-000Pgm-K9
Subject: [V9fs-developer] [PATCH] 9p: remove unused code in 9p
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
Cc: justin.he@arm.com, wei.chen@arm.com, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

These codes have been commented out since 2007 and lay in kernel
since then. So, it's better to remove them.

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
