Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 937C739AFDA
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Jun 2021 03:32:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1loyhZ-0004XP-Q8; Fri, 04 Jun 2021 01:32:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengyongjun3@huawei.com>) id 1loyhY-0004XH-KT
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Jun 2021 01:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PcvCuEzUbtyGkCuT+z2GLpJcqtZkSn9tHKBX4mK0m7Q=; b=BXPbiP+y+zXwlMvMTSM2MrmUrD
 PseYgpB5B4yCLM5p1V5GPKTFqjzVToffUzEb2fltTmP1mef6O63GuZxStvOlHv6ez6ee8Nv17oNqy
 E0IlLPENKRcjSF/4lXQgkMBf4jDat64nAWrNqjcvrz9oCoEGtneyF0vxRJMBPzm74rVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PcvCuEzUbtyGkCuT+z2GLpJcqtZkSn9tHKBX4mK0m7Q=; b=K
 OOiZBfcmMt9D2T+EeXl/Gu6Ai2bPJ06widCE/epzkED+NPVN7HyA0yXQSZs3cEiuki7Ib5WHLZHvL
 V70NIL+xGoFT4bj5zjFED7UMT7uXMyaZhlCXBY8xEvCJFGKqwNJgK51j2VsLUb0nW0rOHp7nIO3Ez
 fuUQ8ZyTyxVYJlXY=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1loyhT-009eHy-Ci
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Jun 2021 01:32:47 +0000
Received: from dggeme760-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Fx4tf6fclz6v2N;
 Fri,  4 Jun 2021 09:29:30 +0800 (CST)
Received: from localhost.localdomain (10.175.104.82) by
 dggeme760-chm.china.huawei.com (10.3.19.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Fri, 4 Jun 2021 09:32:29 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <v9fs-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Fri, 4 Jun 2021 09:46:08 +0800
Message-ID: <20210604014608.2086576-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.82]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggeme760-chm.china.huawei.com (10.3.19.106)
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1loyhT-009eHy-Ci
Subject: [V9fs-developer] [PATCH -next] 9p: Fix spelling mistakes
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
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix some spelling mistakes in comments:
functon  ==> function
parallely  ==> parallelly
contians  ==> contains
incase  ==> in case
trasnport  ==> transport
creat  ==> create
assocated  ==> associated

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 fs/9p/v9fs.c           | 2 +-
 fs/9p/vfs_addr.c       | 4 ++--
 fs/9p/vfs_dentry.c     | 2 +-
 fs/9p/vfs_file.c       | 4 ++--
 fs/9p/vfs_inode.c      | 4 ++--
 fs/9p/vfs_inode_dotl.c | 4 ++--
 fs/9p/vfs_super.c      | 2 +-
 7 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index cdb99507ef33..c4a7b78adcb5 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -689,7 +689,7 @@ static int __init init_v9fs(void)
 {
 	int err;
 	pr_info("Installing v9fs 9p2000 file system support\n");
-	/* TODO: Setup list of registered trasnport modules */
+	/* TODO: Setup list of registered transport modules */
 
 	err = v9fs_cache_register();
 	if (err < 0) {
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index cce9ace651a2..c4dd6e8e3a80 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -2,7 +2,7 @@
 /*
  *  linux/fs/9p/vfs_addr.c
  *
- * This file contians vfs address (mmap) ops for 9P2000.
+ * This file contains vfs address (mmap) ops for 9P2000.
  *
  *  Copyright (C) 2005 by Eric Van Hensbergen <ericvh@gmail.com>
  *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
@@ -139,7 +139,7 @@ static void v9fs_invalidate_page(struct page *page, unsigned int offset,
 {
 	/*
 	 * If called with zero offset, we should release
-	 * the private state assocated with the page
+	 * the private state associated with the page
 	 */
 	if (offset == 0 && length == PAGE_SIZE)
 		v9fs_fscache_invalidate_page(page);
diff --git a/fs/9p/vfs_dentry.c b/fs/9p/vfs_dentry.c
index 4b4292123b3d..749238381343 100644
--- a/fs/9p/vfs_dentry.c
+++ b/fs/9p/vfs_dentry.c
@@ -2,7 +2,7 @@
 /*
  *  linux/fs/9p/vfs_dentry.c
  *
- * This file contians vfs dentry ops for the 9P2000 protocol.
+ * This file contains vfs dentry ops for the 9P2000 protocol.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
  *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 59c32c9b799f..51f22f8c6820 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -2,7 +2,7 @@
 /*
  *  linux/fs/9p/vfs_file.c
  *
- * This file contians vfs file ops for 9P2000.
+ * This file contains vfs file ops for 9P2000.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
  *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
@@ -223,7 +223,7 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
 
 out_unlock:
 	/*
-	 * incase server returned error for lock request, revert
+	 * in case server returned error for lock request, revert
 	 * it locally
 	 */
 	if (res < 0 && fl->fl_type != F_UNLCK) {
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 795706520b5e..bbf93906c38f 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -505,7 +505,7 @@ static int v9fs_at_to_dotl_flags(int flags)
 }
 
 /**
- * v9fs_dec_count - helper functon to drop i_nlink.
+ * v9fs_dec_count - helper function to drop i_nlink.
  *
  * If a directory had nlink <= 2 (including . and ..), then we should not drop
  * the link count, which indicates the underlying exported fs doesn't maintain
@@ -778,7 +778,7 @@ struct dentry *v9fs_vfs_lookup(struct inode *dir, struct dentry *dentry,
 	 * If we had a rename on the server and a parallel lookup
 	 * for the new name, then make sure we instantiate with
 	 * the new name. ie look up for a/b, while on server somebody
-	 * moved b under k and client parallely did a lookup for
+	 * moved b under k and client parallelly did a lookup for
 	 * k/b.
 	 */
 	res = d_splice_alias(inode, dentry);
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index e1c0240b51c0..58a491b5f877 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -281,14 +281,14 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	/* Update mode based on ACL value */
 	err = v9fs_acl_mode(dir, &mode, &dacl, &pacl);
 	if (err) {
-		p9_debug(P9_DEBUG_VFS, "Failed to get acl values in creat %d\n",
+		p9_debug(P9_DEBUG_VFS, "Failed to get acl values in create %d\n",
 			 err);
 		goto error;
 	}
 	err = p9_client_create_dotl(ofid, name, v9fs_open_to_dotl_flags(flags),
 				    mode, gid, &qid);
 	if (err < 0) {
-		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",
+		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in create %d\n",
 			 err);
 		goto error;
 	}
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 5fce6e30bc5a..50816e6fb4e2 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -2,7 +2,7 @@
 /*
  *  linux/fs/9p/vfs_super.c
  *
- * This file contians superblock ops for 9P2000. It is intended that
+ * This file contains superblock ops for 9P2000. It is intended that
  * you mount this file system on directories.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
