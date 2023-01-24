Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCCD678E4F
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9DW-0007XI-N4;
	Tue, 24 Jan 2023 02:39:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9DV-0007X1-5K
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X0V/KawfFNJl1zGVWDEhGCN7DsNC3uc1c6XDDWJfx1M=; b=eaqTaINEwUsR4aKi/QlAXruTPK
 WwETDJOgtyNYIOq70rhflv6wI9Twrsyld5pNyGZkXhb4MUgEh+v9f6puyepQ49II/7gg7fWKVUIvt
 MNOnjhx8P4orW4Lzwx5zjZ19GtbkVlVUaSu+uaEFHyw22l8gKUqz/Dx9VnM1ucRoQJLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X0V/KawfFNJl1zGVWDEhGCN7DsNC3uc1c6XDDWJfx1M=; b=hss786cb3zPwz1Awbt1tZhczBs
 ZsTNi6GkNEkMvrCFv07jnU9Ka2Htss+AnvT6904GW/8NOA5Rw27+bxfoIFyd8e82UphNomQm+1T0v
 ackBrIIgv5jsobBairIFUqufhvSsIHg5ywAawgAza7npjWBWNFiPNS7RmkdQNALrGSn4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DP-0004Ym-Ki for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 33D47611AB;
 Tue, 24 Jan 2023 02:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C165BC4339E;
 Tue, 24 Jan 2023 02:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527949;
 bh=SK5Jy+6rCKveBD5nbCJDN3evu772cvxZ/alFpEsNfhc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BnvbFbSFDWDHzE2IeesZJonPoGWslFMIQoVCXUXs/+1zEmkp4WgUtQAPKWSYjeTvD
 L0rwTZFZv9HX/SBML+hOoK8dKr1ynxkNTm+bPY9XTGoAhqw+MaYMQNMcQ2SrAbUcXc
 7UCgNs9YTn+tIgY1xB4jAz1VOM+XyVOjsuAcqEJJD3DysepdMyfCKcTnm1ErbcOf5d
 mhF+FOpsMQavAFFm/laz0MzjwKHS8qnwM9C7rbt38mZ+GpoIiAstQMM8dP2IsOFR2s
 ov5Ar77uiGJYG0nl46Hogc6i19uE6j8ZU4HA63pYLxAcUeRtqWBc4GK8scZqK1/UKd
 Aa8BqWBNtP/wA==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:25 +0000
Message-Id: <20230124023834.106339-3-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If cache is enabled,
 make sure we are putting the right things
 in place (mainly impacts mmap). This also sets us up for more cache levels.
 Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org> --- fs/9p/v9fs.c |
 2 +- fs/9p/vfs_addr.c | 2 -- fs/9p/vfs_file.c | 7 ++++--- fs/9p/vfs_inode.c
 | 3 +-- fs/9p/vfs_inode_dotl.c | 7 ++++--- 5 files [...] 
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
X-Headers-End: 1pK9DP-0004Ym-Ki
Subject: [V9fs-developer] [PATCH v3 02/11] Expand setup of writeback cache
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If cache is enabled, make sure we are putting the right things
in place (mainly impacts mmap).  This also sets us up for more
cache levels.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
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
index 97599edbc300..6f46d7e4c750 100644
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
index f806b3f11649..bff37a312e64 100644
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
