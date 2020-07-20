Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8697F225591
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jul 2020 03:46:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxKtN-0005xb-C9; Mon, 20 Jul 2020 01:46:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jxKtM-0005xO-3i
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z+pjDMkVsr1GSxEmSht1t62uZ1Ls+LDRfVe39NOHfdI=; b=UZikgdmnOEE308SUCwFg1r0shy
 iuOKrRu9EGT9PDhijO6OcUU6BVGXO+cWBfF7NlJfdDpc7XE3V2sniQ8qouQi9L5xtC0fHQstHVdUM
 F6yOxJxIxfDHm3MHeGELlHVlgj3aXbSFbXAEbu8vhtRX0Nu2s5j5lCQIOGc1ONmqykXk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z+pjDMkVsr1GSxEmSht1t62uZ1Ls+LDRfVe39NOHfdI=; b=Oq+eUIMxvDoB/lak6Pe/6XC1tj
 03rVLsbytV9A1iqkTNozbMa7857d9qR5Gra7W9unFioU5gv/qlIeKmd4v27VVbtWzXEL0Tn+HCA5D
 AxnVV42ydQMuG79K3btikPzFxnCA2t1mhwRs3MuFO/UaZnZxSe/g3uzakkrM+HuZzzZ4=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jxKtK-00CHMn-9C
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:46:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BADAE143B;
 Sun, 19 Jul 2020 18:46:41 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.212.212])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6307A3F66E;
 Sun, 19 Jul 2020 18:46:38 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, hch@lst.de, dhowells@redhat.com, lucho@ionkov.net,
 asmadeus@codewreck.org
Date: Mon, 20 Jul 2020 09:46:22 +0800
Message-Id: <20200720014622.37364-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200720014622.37364-1-jianyong.wu@arm.com>
References: <20200720014622.37364-1-jianyong.wu@arm.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxKtK-00CHMn-9C
Subject: [V9fs-developer] [RFC PATCH 2/2] 9p: retrieve fid from file if it
 exists when getattr.
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
Cc: justin.he@arm.com, wei.chen@arm.com, jianyong.wu@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

fid should be retrieved from file when it is not NULL in getattr.
it denotes that getattr is called by fdstat from userspace when
file is exist, which means we should get info from file context
not dentry to avoid the failure when the dentry has gone.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/9p/vfs_inode.c      | 9 +++++++--
 fs/9p/vfs_inode_dotl.c | 9 +++++++--
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index c9255d399917..f562f5710eae 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -1054,7 +1054,7 @@ v9fs_vfs_getattr(const struct path *path, struct kstat *stat,
 {
 	struct dentry *dentry = path->dentry;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid;
+	struct p9_fid *fid = NULL;
 	struct p9_wstat *st;
 
 	p9_debug(P9_DEBUG_VFS, "dentry: %p\n", dentry);
@@ -1063,7 +1063,12 @@ v9fs_vfs_getattr(const struct path *path, struct kstat *stat,
 		generic_fillattr(d_inode(dentry), stat);
 		return 0;
 	}
-	fid = v9fs_fid_lookup(dentry);
+	if (stat->filp) {
+		fid = stat->filp->private_data;
+		WARN_ON(!fid);
+	}
+	if (!fid)
+		fid = v9fs_fid_lookup(dentry);
 	if (IS_ERR(fid))
 		return PTR_ERR(fid);
 
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 60328b21c5fb..6b7cbe74b0bb 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -460,7 +460,7 @@ v9fs_vfs_getattr_dotl(const struct path *path, struct kstat *stat,
 {
 	struct dentry *dentry = path->dentry;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid;
+	struct p9_fid *fid = NULL;
 	struct p9_stat_dotl *st;
 
 	p9_debug(P9_DEBUG_VFS, "dentry: %p\n", dentry);
@@ -469,7 +469,12 @@ v9fs_vfs_getattr_dotl(const struct path *path, struct kstat *stat,
 		generic_fillattr(d_inode(dentry), stat);
 		return 0;
 	}
-	fid = v9fs_fid_lookup(dentry);
+	if (stat->filp) {
+		fid = stat->filp->private_data;
+		WARN_ON(!fid);
+	}
+	if (!fid)
+		fid = v9fs_fid_lookup(dentry);
 	if (IS_ERR(fid))
 		return PTR_ERR(fid);
 
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
