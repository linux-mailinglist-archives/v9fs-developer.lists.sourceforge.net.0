Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EDB6CF7E5
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 02:02:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phfk4-0006we-0D;
	Thu, 30 Mar 2023 00:02:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1phfk1-0006wX-BI
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZBeWh6eBLnTq+uqWFR1SFT/NnNq9YFxwbNZMNLL2PEg=; b=E9LNqSGtQpu3/8oITPDzfoGsYY
 2FYspY0pQNqjNHCn2dD79kbnclghB2jkhewrHwCZ5gnmUTrksACYlMxp1eKKaNhFn7aCZwaZIbAOP
 om6OK4bQBNTqwBvS03NSr2XA8zg1OTFZFZ5+0V5L4Z+o7RRdlmD1WZVva4jtL1FlAet0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZBeWh6eBLnTq+uqWFR1SFT/NnNq9YFxwbNZMNLL2PEg=; b=R
 lQNiYEhNw8QQsicjVwMca3/jTOryY+amNBUT7lB+yqVmsFNDQbFEj98WLO/zN3KaYsWk9f1Rg1L8d
 oI+62YRUj/f8zmqD8FzL7aOhHqF5ulGzgQr9KptDMtsboC+zBbyThvVIwQOe4MxFC352uhs24kkp6
 7ugoXD/8T4nP57KY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfjy-0002Rs-Qk for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:02:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 893DA61E99;
 Thu, 30 Mar 2023 00:02:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BC91C433D2;
 Thu, 30 Mar 2023 00:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680134519;
 bh=/4Z8iYR3ET9buAJLsHeHOlGIDcGGRUrK0BoXNN6Y7Hw=;
 h=From:To:Cc:Subject:Date:From;
 b=uiuHEXeGS3bXjl3p/WXPNDLzSP1LBAyLLzZ82n+eK2wtJIyjqm0QNuP8lgS2zOCb7
 hz0RLKvQdcSDQ4em5/avyyJE/SsjQZrL3NPd4yzue42qVPYDxB3MBRqtv0K3XSwSMY
 iPEzVz02buC845IWDESBy0yfpszejocDN3kKFgZW8QaefWKjIA8acAjbjLrqBq6Slu
 aZG+PZT+932r+MIXdvJwrxXlrmLpbS1BYPAPAVs+cBZ/YdrKIuLjVE9V+kojFIvjmT
 t9pXE09JEbSeC1ydbZopgIcGdUx3PIzPxVN4nJAHAG2by6SuGYuWPS/bOtiVWZpkjI
 QAlcv2DuTAB8Q==
From: Jeff Layton <jlayton@kernel.org>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Joel Becker <jlbec@evilplan.org>, Christoph Hellwig <hch@lst.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>
Date: Wed, 29 Mar 2023 20:01:55 -0400
Message-Id: <20230330000157.297698-1-jlayton@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There are 4 functions named dt_type() in the kernel. There
 is also the S_DT macro in fs_types.h. Replace the S_DT macro with a static
 inline named dt_type, and have all of the existing copies call that instead.
 The v9fs helper is renamed to distinguish it from the others. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phfjy-0002Rs-Qk
Subject: [V9fs-developer] [PATCH v2] fs: consolidate dt_type() helper
 definitions
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Chuck Lever <chuck.lever@oracle.com>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

There are 4 functions named dt_type() in the kernel. There is also the
S_DT macro in fs_types.h.

Replace the S_DT macro with a static inline named dt_type, and have all
of the existing copies call that instead. The v9fs helper is renamed to
distinguish it from the others.

Cc: Chuck Lever <chuck.lever@oracle.com>
Cc: Phillip Potter <phil@philpotter.co.uk>
Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/9p/vfs_dir.c          | 6 +++---
 fs/configfs/dir.c        | 8 +-------
 fs/fs_types.c            | 2 +-
 fs/kernfs/dir.c          | 8 +-------
 fs/libfs.c               | 9 ++-------
 include/linux/fs_types.h | 7 ++++++-
 6 files changed, 14 insertions(+), 26 deletions(-)

What about this one instead? This consolidates another copy and we use
Phillip's version that uses named constants instead of magic numbers.

There are some scary warnings in fs_types.h about not changing the
definitions, but hopefully the rename from S_DT() to dt_type() is OK.

diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 3d74b04fe0de..80b331f7f446 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -41,12 +41,12 @@ struct p9_rdir {
 };
 
 /**
- * dt_type - return file type
+ * v9fs_dt_type - return file type
  * @mistat: mistat structure
  *
  */
 
-static inline int dt_type(struct p9_wstat *mistat)
+static inline int v9fs_dt_type(struct p9_wstat *mistat)
 {
 	unsigned long perm = mistat->mode;
 	int rettype = DT_REG;
@@ -128,7 +128,7 @@ static int v9fs_dir_readdir(struct file *file, struct dir_context *ctx)
 			}
 
 			over = !dir_emit(ctx, st.name, strlen(st.name),
-					 v9fs_qid2ino(&st.qid), dt_type(&st));
+					 v9fs_qid2ino(&st.qid), v9fs_dt_type(&st));
 			p9stat_free(&st);
 			if (over)
 				return 0;
diff --git a/fs/configfs/dir.c b/fs/configfs/dir.c
index 4afcbbe63e68..43863a1696eb 100644
--- a/fs/configfs/dir.c
+++ b/fs/configfs/dir.c
@@ -1599,12 +1599,6 @@ static int configfs_dir_close(struct inode *inode, struct file *file)
 	return 0;
 }
 
-/* Relationship between s_mode and the DT_xxx types */
-static inline unsigned char dt_type(struct configfs_dirent *sd)
-{
-	return (sd->s_mode >> 12) & 15;
-}
-
 static int configfs_readdir(struct file *file, struct dir_context *ctx)
 {
 	struct dentry *dentry = file->f_path.dentry;
@@ -1654,7 +1648,7 @@ static int configfs_readdir(struct file *file, struct dir_context *ctx)
 		name = configfs_get_name(next);
 		len = strlen(name);
 
-		if (!dir_emit(ctx, name, len, ino, dt_type(next)))
+		if (!dir_emit(ctx, name, len, ino, dt_type(next->s_mode)))
 			return 0;
 
 		spin_lock(&configfs_dirent_lock);
diff --git a/fs/fs_types.c b/fs/fs_types.c
index 78365e5dc08c..7dd5c0fb74fb 100644
--- a/fs/fs_types.c
+++ b/fs/fs_types.c
@@ -76,7 +76,7 @@ static const unsigned char fs_ftype_by_dtype[DT_MAX] = {
  */
 unsigned char fs_umode_to_ftype(umode_t mode)
 {
-	return fs_ftype_by_dtype[S_DT(mode)];
+	return fs_ftype_by_dtype[dt_type(mode)];
 }
 EXPORT_SYMBOL_GPL(fs_umode_to_ftype);
 
diff --git a/fs/kernfs/dir.c b/fs/kernfs/dir.c
index ef00b5fe8cee..0b7e9b8ee93e 100644
--- a/fs/kernfs/dir.c
+++ b/fs/kernfs/dir.c
@@ -1748,12 +1748,6 @@ int kernfs_rename_ns(struct kernfs_node *kn, struct kernfs_node *new_parent,
 	return error;
 }
 
-/* Relationship between mode and the DT_xxx types */
-static inline unsigned char dt_type(struct kernfs_node *kn)
-{
-	return (kn->mode >> 12) & 15;
-}
-
 static int kernfs_dir_fop_release(struct inode *inode, struct file *filp)
 {
 	kernfs_put(filp->private_data);
@@ -1831,7 +1825,7 @@ static int kernfs_fop_readdir(struct file *file, struct dir_context *ctx)
 	     pos;
 	     pos = kernfs_dir_next_pos(ns, parent, ctx->pos, pos)) {
 		const char *name = pos->name;
-		unsigned int type = dt_type(pos);
+		unsigned int type = dt_type(pos->mode);
 		int len = strlen(name);
 		ino_t ino = kernfs_ino(pos);
 
diff --git a/fs/libfs.c b/fs/libfs.c
index 4eda519c3002..d0f0cdae9ff7 100644
--- a/fs/libfs.c
+++ b/fs/libfs.c
@@ -174,12 +174,6 @@ loff_t dcache_dir_lseek(struct file *file, loff_t offset, int whence)
 }
 EXPORT_SYMBOL(dcache_dir_lseek);
 
-/* Relationship between i_mode and the DT_xxx types */
-static inline unsigned char dt_type(struct inode *inode)
-{
-	return (inode->i_mode >> 12) & 15;
-}
-
 /*
  * Directory is locked and all positive dentries in it are safe, since
  * for ramfs-type trees they can't go away without unlink() or rmdir(),
@@ -206,7 +200,8 @@ int dcache_readdir(struct file *file, struct dir_context *ctx)
 
 	while ((next = scan_positives(cursor, p, 1, next)) != NULL) {
 		if (!dir_emit(ctx, next->d_name.name, next->d_name.len,
-			      d_inode(next)->i_ino, dt_type(d_inode(next))))
+			      d_inode(next)->i_ino,
+			      dt_type(d_inode(next)->i_mode)))
 			break;
 		ctx->pos++;
 		p = &next->d_child;
diff --git a/include/linux/fs_types.h b/include/linux/fs_types.h
index 54816791196f..1e25a7654a86 100644
--- a/include/linux/fs_types.h
+++ b/include/linux/fs_types.h
@@ -27,9 +27,14 @@
  * (ie "(i_mode >> 12) & 15").
  */
 #define S_DT_SHIFT	12
-#define S_DT(mode)	(((mode) & S_IFMT) >> S_DT_SHIFT)
 #define S_DT_MASK	(S_IFMT >> S_DT_SHIFT)
 
+/* Relationship between i_mode and the DT_xxx types */
+static inline unsigned char dt_type(umode_t mode)
+{
+	return ((mode) & S_IFMT) >> S_DT_SHIFT;
+}
+
 /* these are defined by POSIX and also present in glibc's dirent.h */
 #define DT_UNKNOWN	0
 #define DT_FIFO		1
-- 
2.39.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
