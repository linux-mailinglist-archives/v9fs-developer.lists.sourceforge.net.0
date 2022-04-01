Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1913D4EE902
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Apr 2022 09:21:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naBSy-0002oW-8X; Fri, 01 Apr 2022 07:21:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <yuzhe@nfschina.com>) id 1naBSl-0002oE-Lb
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 07:21:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v19oPs6JBhUKDpCbICTrbRmlfQiuJBGM7z5EsrtEWPo=; b=DvzPbyJYBKoqBaFLkLrYsYpFm8
 DjCvbf1IdP5bh/Fa4L3zCow+JkMxHERIk/bYLpFtJUKNEq1qdHGkfio6rz5OIkt95+qo8cykPRVUk
 2FEMxYe5oUpCX1BobJWHo0MZ5/+smpq9AIvfO28xYkK/4+vfZjZAtDL5dpVzggUcyXDk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v19oPs6JBhUKDpCbICTrbRmlfQiuJBGM7z5EsrtEWPo=; b=e
 YmcGGhNa5Xx4oTEfVeCoXvuIwm9UtleUNL5LXJMrzJ4wIVurRz0/RqbRT7KHZ5EoCeddBd/ni529B
 LvgswDKKF2KprIOaLZ1LihAWgDd55nqn4Btb0t8IUFOJWMN2B6coAovey0iP/z0IvxyJINcGZ3vV4
 5udcyRNaRyRX3leM=;
Received: from mail.nfschina.com ([124.16.136.209] helo=ha.nfschina.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1naBad-001ZyP-MD
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 07:21:03 +0000
Received: from localhost (unknown [127.0.0.1])
 by ha.nfschina.com (Postfix) with ESMTP id EBFCB1E80CC5;
 Fri,  1 Apr 2022 15:05:21 +0800 (CST)
X-Virus-Scanned: amavisd-new at test.com
Received: from ha.nfschina.com ([127.0.0.1])
 by localhost (ha.nfschina.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKzsnrIxJeEi; Fri,  1 Apr 2022 15:05:19 +0800 (CST)
Received: from ubuntu.localdomain (unknown [101.228.248.165])
 (Authenticated sender: yuzhe@nfschina.com)
 by ha.nfschina.com (Postfix) with ESMTPA id ABEB21E80C85;
 Fri,  1 Apr 2022 15:05:18 +0800 (CST)
From: Yu Zhe <yuzhe@nfschina.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com
Date: Fri,  1 Apr 2022 00:05:45 -0700
Message-Id: <20220401070545.50577-1-yuzhe@nfschina.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  remove unnecessary void* type castings. Signed-off-by: Yu
 Zhe <yuzhe@nfschina.com> --- fs/9p/fid.c | 2 +- fs/9p/v9fs.c | 2 +-
 fs/9p/vfs_inode.c
 | 4 ++-- fs/9p/vfs_inode_dotl.c | 4 ++-- 4 files changed, 6 insertions(+),
 6 deletions(-) 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1naBad-001ZyP-MD
Subject: [V9fs-developer] [PATCH] 9p: remove unnecessary type castings
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
Cc: liqiong@nfschina.com, v9fs-developer@lists.sourceforge.net,
 Yu Zhe <yuzhe@nfschina.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

remove unnecessary void* type castings.

Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
---
 fs/9p/fid.c            | 2 +-
 fs/9p/v9fs.c           | 2 +-
 fs/9p/vfs_inode.c      | 4 ++--
 fs/9p/vfs_inode_dotl.c | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 79df61fe0e59..c2b8d7fc9e53 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -53,7 +53,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 	p9_debug(P9_DEBUG_VFS, " inode: %p\n", inode);
 
 	spin_lock(&inode->i_lock);
-	h = (struct hlist_head *)&inode->i_private;
+	h = &inode->i_private;
 	hlist_for_each_entry(fid, h, ilist) {
 		if (uid_eq(fid->uid, uid)) {
 			refcount_inc(&fid->count);
diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index e28ddf763b3b..51ddc58a7029 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -622,7 +622,7 @@ static void v9fs_sysfs_cleanup(void)
 
 static void v9fs_inode_init_once(void *foo)
 {
-	struct v9fs_inode *v9inode = (struct v9fs_inode *)foo;
+	struct v9fs_inode *v9inode = foo;
 
 	memset(&v9inode->qid, 0, sizeof(v9inode->qid));
 	inode_init_once(&v9inode->vfs_inode);
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 55367ecb9442..f415fd7a1eaf 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -409,7 +409,7 @@ static int v9fs_test_inode(struct inode *inode, void *data)
 	int umode;
 	dev_t rdev;
 	struct v9fs_inode *v9inode = V9FS_I(inode);
-	struct p9_wstat *st = (struct p9_wstat *)data;
+	struct p9_wstat *st = data;
 	struct v9fs_session_info *v9ses = v9fs_inode2v9ses(inode);
 
 	umode = p9mode2unixmode(v9ses, st, &rdev);
@@ -438,7 +438,7 @@ static int v9fs_test_new_inode(struct inode *inode, void *data)
 static int v9fs_set_inode(struct inode *inode,  void *data)
 {
 	struct v9fs_inode *v9inode = V9FS_I(inode);
-	struct p9_wstat *st = (struct p9_wstat *)data;
+	struct p9_wstat *st = data;
 
 	memcpy(&v9inode->qid, &st->qid, sizeof(st->qid));
 	return 0;
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index d17502a738a9..b910fee62e25 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -57,7 +57,7 @@ static kgid_t v9fs_get_fsgid_for_create(struct inode *dir_inode)
 static int v9fs_test_inode_dotl(struct inode *inode, void *data)
 {
 	struct v9fs_inode *v9inode = V9FS_I(inode);
-	struct p9_stat_dotl *st = (struct p9_stat_dotl *)data;
+	struct p9_stat_dotl *st = data;
 
 	/* don't match inode of different type */
 	if (inode_wrong_type(inode, st->st_mode))
@@ -88,7 +88,7 @@ static int v9fs_test_new_inode_dotl(struct inode *inode, void *data)
 static int v9fs_set_inode_dotl(struct inode *inode,  void *data)
 {
 	struct v9fs_inode *v9inode = V9FS_I(inode);
-	struct p9_stat_dotl *st = (struct p9_stat_dotl *)data;
+	struct p9_stat_dotl *st = data;
 
 	memcpy(&v9inode->qid, &st->qid, sizeof(st->qid));
 	inode->i_generation = st->st_gen;
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
