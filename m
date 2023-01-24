Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A739C678E5A
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9Db-0004uR-8C;
	Tue, 24 Jan 2023 02:39:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9Da-0004uE-BS
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zT9nZJtxsSGPA6mnzH8BveEcwqkVk9oV65w77lNRJzs=; b=HFdMS9BSJzlt3nEbcbliQM/f11
 ellCzFkodJ/MTxf6mO+oFtifH69j5itS95VqVaKlOrM8BsHVg2adF+9Dlx39TcvdUwgHkBnmQyObB
 x8F41tjhwGb7oSnB/jDM9ndOY2JqabqzO2LOpgIJwa4hxucyqNrLNqhwD3MIQL/ahbKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zT9nZJtxsSGPA6mnzH8BveEcwqkVk9oV65w77lNRJzs=; b=LNdwPYiK66Tj+aQiGEVN/2K1i4
 Dv1AMvaMynYA0IWB43fjGgxd5iedvUSo6Vj5eKu1r6Yrp0mBiHUjA2lnYhV2MVSW7/Fv2jOqj2c3M
 Am4bbkKCeqnaKIt8ab6MQOwietccyHSee/gPj9h2ygU2TvUQ2TtuR2/RG9z64a1w/dRo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DY-0004Z4-US for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6706A61177;
 Tue, 24 Jan 2023 02:39:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B34EC433D2;
 Tue, 24 Jan 2023 02:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527957;
 bh=R35j7a+A+ua085wQYKH/cW9sDjYEKNr2+kfZb69JhNI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KjuSU3LLv3roUT4HD9fauR5bsdtCKyfG+axelFxmkk0jDaF0HQ4pmtlJw8rSD74No
 iMEUaZq8iUc4aTdDjrDuloUmHBsRa6P1JL2hFSjqs0JuxiL6omywGX21yM0Lj/X13q
 AcmwBVePcIYTNTWDiCkKpN67hdUfhpmEHRCoo1VAoTYQdtN4GrND6AvnExd7qJX87n
 osdbPjVC2z282cSYLx6pHziImBeqKDwt07VwLtguvFa6R/HRlIDUB9d52pPh28nzlt
 ncrbxibS4n8C5E1O3kanhwWQuVGEyTRTpa+/ojg/g32ILEVLLCojOkjr9ad24NWkYh
 b9fcpNiWFXAvA==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:32 +0000
Message-Id: <20230124023834.106339-10-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Checking the p9_fid_put value allows us to pass back errors
 involved if we end up clunking the fid as part of dir_release. This can help
 with more graceful response to errors in writeback among other things. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pK9DY-0004Z4-US
Subject: [V9fs-developer] [PATCH v3 09/11] fix error reporting in
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
index ec831c27a58e..1fc07bb86e6f 100644
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
@@ -226,7 +227,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 		spin_lock(&inode->i_lock);
 		hlist_del(&fid->ilist);
 		spin_unlock(&inode->i_lock);
-		p9_fid_put(fid);
+		retval = p9_fid_put(fid);
 	}
 
 	if ((filp->f_mode & FMODE_WRITE)) {
@@ -237,7 +238,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
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
