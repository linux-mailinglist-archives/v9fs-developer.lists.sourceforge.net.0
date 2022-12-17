Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6345464FBAD
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Dec 2022 19:53:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6cJ1-0005Lq-6J;
	Sat, 17 Dec 2022 18:53:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6cIz-0005LX-36
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=22z3hM7ajo6v6alaXwjTYA9bNfBA2cVdMH1XeN/HN8w=; b=Ts9Wji8TIvNp6jcv9OkT2OoBjx
 cMon887SqVDA1Jh4I6dCJAEBuoMuva5+gbfojp0tBO8WF4DVwbCmTtSWMzAlVdeMrj4dfFxNKqMZI
 qsVb5ALRrxfQzr8YWVbbASmHUzIgIknSJZBnIN+C/YKdbINF5s1DowQSY3nkucWe9Nqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=22z3hM7ajo6v6alaXwjTYA9bNfBA2cVdMH1XeN/HN8w=; b=WX1Q+P1D/vqTgWx/FXukxkqhnG
 92x2lQLLBLDh62MvPO1qs4zoBo/AmWJPRpcqIMDBXBRIkWMj05xT/kCNw79W13/NoI4l2pcdFsG/j
 4kAXW63hQeX0m4RWpTND1jBrfgy0cqmJZoUu5yux4fXumLGm1k1BcVY452d7GGziBHDE=;
Received: from ms11p00im-qufo17291601.me.com ([17.58.38.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6cIv-002jTL-9U for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671303170;
 bh=22z3hM7ajo6v6alaXwjTYA9bNfBA2cVdMH1XeN/HN8w=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=whJNVewwX+ZV+zhrFC+w5wPh980N9s0bMvMEq8umE/4mCXVJuepLarwSzxtEGu+C9
 LegdMcGRxMw/SyNXG02aLcU7FIwcFHj2XDy/Vv1T/zv5tgUbPlMfWVioLYti5l6jdr
 5EPiXQZda7NExZ7ty/CobDwN3ikZ6k4FQvr1KSZUWvpS1ukTyky3angTJxWt8bDDVH
 mzpmfWgjL+TljsUmm5Z5fdFMtqknft8+k2+2lNv0BGshrGvixYlNO6qWEwrZlMiKq3
 4jM+h/jK2Y+brDZDk9BUa2ZA3rWPx5FHJKsPUnzX0eUpxkstxYhRHJrQpiZgPL1HjF
 9iBG75iMJD94g==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291601.me.com (Postfix) with ESMTPSA id 382383A055B;
 Sat, 17 Dec 2022 18:52:49 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 17 Dec 2022 18:52:07 +0000
Message-Id: <20221217185210.1431478-4-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221217185210.1431478-1-evanhensbergen@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-GUID: u2oRCIgXHV2Q1pL_9oO6FHadONzrOxLk
X-Proofpoint-ORIG-GUID: u2oRCIgXHV2Q1pL_9oO6FHadONzrOxLk
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 adultscore=0
 mlxlogscore=838 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212170174
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If cache is enabled,
 make sure we are putting the right things
 in place (mainly impacts mmap). This also sets us up for more cache levels.
 Signed-off-by: Eric Van Hensbergen --- fs/9p/v9fs.c | 2 +- fs/9p/vfs_addr.c
 | 2 -- fs/9p/vfs_file.c | 7 ++++--- fs/9p/vfs_inode.c | 3 +--
 fs/9p/vfs_inode_dotl.c
 | 7 ++++--- 5 files changed, 10 inser [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p6cIv-002jTL-9U
Subject: [V9fs-developer] [PATCH 3/6] Expand setup of writeback cache to all
 levels
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
From: Eric Van Hensbergen via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If cache is enabled, make sure we are putting the right things
in place (mainly impacts mmap).  This also sets us up for more
cache levels.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
---
 fs/9p/v9fs.c           | 2 +-
 fs/9p/vfs_addr.c       | 2 --
 fs/9p/vfs_file.c       | 7 ++++---
 fs/9p/vfs_inode.c      | 3 +--
 fs/9p/vfs_inode_dotl.c | 7 ++++---
 5 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index 3a9c4517265f..61a51b90600d 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -468,7 +468,7 @@ struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses,
 
 #ifdef CONFIG_9P_FSCACHE
 	/* register the session for caching */
-	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
+	if (v9ses->cache == CACHE_FSCACHE) {
 		rc = v9fs_cache_session_get_cookie(v9ses, dev_name);
 		if (rc < 0)
 			goto err_clnt;
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 93373486ab04..9da47465e568 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -279,8 +279,6 @@ static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
 
 	p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);
 
-	BUG_ON(!v9inode->writeback_fid);
-
 	/* Prefetch area to be written into the cache if we're caching this
 	 * file.  We need to do this before we get a lock on the page in case
 	 * there's more than one writer competing for the same cache block.
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index b740017634ef..3b6458846a0b 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -73,8 +73,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 	}
 
 	mutex_lock(&v9inode->v_mutex);
-	if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
-	    !v9inode->writeback_fid &&
+	if ((v9ses->cache) && !v9inode->writeback_fid &&
 	    ((file->f_flags & O_ACCMODE) != O_RDONLY)) {
 		/*
 		 * clone a fid and add it to writeback_fid
@@ -92,9 +91,11 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 		v9inode->writeback_fid = (void *) writeback_fid;
 	}
 	mutex_unlock(&v9inode->v_mutex);
-	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
+#ifdef CONFIG_9P_FSCACHE
+	if (v9ses->cache == CACHE_FSCACHE)
 		fscache_use_cookie(v9fs_inode_cookie(v9inode),
 				   file->f_mode & FMODE_WRITE);
+#endif
 	v9fs_open_fid_add(inode, &fid);
 	return 0;
 out_error:
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 27a04a226d97..33e521c60e2c 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -843,8 +843,7 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 	inode = d_inode(dentry);
 	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
-	if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
-	    !v9inode->writeback_fid &&
+	if ((v9ses->cache) && !v9inode->writeback_fid &&
 	    ((flags & O_ACCMODE) != O_RDONLY)) {
 		/*
 		 * clone a fid and add it to writeback_fid
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 8696e8899c27..9fde73ffadaa 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -316,8 +316,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 
 	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
-	if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
-	    !v9inode->writeback_fid &&
+	if ((v9ses->cache) && !v9inode->writeback_fid &&
 	    ((flags & O_ACCMODE) != O_RDONLY)) {
 		/*
 		 * clone a fid and add it to writeback_fid
@@ -340,9 +339,11 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	if (err)
 		goto out;
 	file->private_data = ofid;
-	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
+#ifdef CONFIG_9P_FSCACHE
+	if (v9ses->cache == CACHE_FSCACHE)
 		fscache_use_cookie(v9fs_inode_cookie(v9inode),
 				   file->f_mode & FMODE_WRITE);
+#endif
 	v9fs_open_fid_add(inode, &ofid);
 	file->f_mode |= FMODE_CREATED;
 out:
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
