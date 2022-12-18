Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5525565058A
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Dec 2022 00:23:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p7300-00059d-3F;
	Sun, 18 Dec 2022 23:23:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p72zy-00059W-61
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=22z3hM7ajo6v6alaXwjTYA9bNfBA2cVdMH1XeN/HN8w=; b=kzAzRy5+OLRgJxMG/F1WoS68kf
 o6G+4+5xGlVwSV2AyDGU7QBGYjqaY7kfPGVUa+cbhy3yvWET3WAcCDAgTdJvil1kp/ZtBesPP5XBf
 oIRyuzOjFw9x/0CFcOw2CcZnpRG5ALZPs8PApVPo6paytKQLQj3VMr0OVXh7t2K71aHE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=22z3hM7ajo6v6alaXwjTYA9bNfBA2cVdMH1XeN/HN8w=; b=J7v+hly3/ECRNSuBGlo6oBYwcG
 1qVpyoFFH1CGUhS+0say2mxp53PK4IMvmIGsatHDbIiA/ZVP1U+0nZ9VZgddTWC4zB8KY/QWCGpEx
 B7ikVEFKJa1yJ2hUZF0ueAW1/1cBIAtSxf/CUb0oj92Zneios2bOC0KdlOSNQuMbxD+8=;
Received: from ms11p00im-qufo17281301.me.com ([17.58.38.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p72zx-0003IE-9s for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671405788;
 bh=22z3hM7ajo6v6alaXwjTYA9bNfBA2cVdMH1XeN/HN8w=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=AhGZ/gRlKJAbhBYe///aGRqU841GDi1pufsqrw6cVmXhXmUPVV+3+uk2I0j6IrHRZ
 fhaedWs2TR66dOh0LovO9dj3XdUFtGNqgIcsjAvM/M/m0GeuCXyTnAcQyjyBcaKYgd
 ZZLfXDFkGoYgigim7B0g4yKjPH62psyHkGM4xipNOP8+ZSADqElhDwEoPhoakPbQfa
 ucttCjquqOMb/DJ7+NnGOQ2pGcQj0lLI8GVvn4H/nyRhAdsvEUOsXYDoxsrLDoggOo
 tJBYeoTFstoFuEGiZQxV3mf3uJzHC47fVkz6WHKijAaJ295vZ2zfPwVm9ihI/wfGr+
 vO5pqYbx2Ao2g==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17281301.me.com (Postfix) with ESMTPSA id 277F4CC0239;
 Sun, 18 Dec 2022 23:23:07 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sun, 18 Dec 2022 23:22:11 +0000
Message-Id: <20221218232217.1713283-3-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221218232217.1713283-1-evanhensbergen@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: OhTYzBw9FLrxmjW8PVOHBYnxPTuVCWbs
X-Proofpoint-GUID: OhTYzBw9FLrxmjW8PVOHBYnxPTuVCWbs
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=838 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180222
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 low trust [17.58.38.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [17.58.38.50 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p72zx-0003IE-9s
Subject: [V9fs-developer] [PATCH v2 02/10] Expand setup of writeback cache
 to all levels
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
