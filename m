Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8818639ABA
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Nov 2022 13:59:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozHG3-0000Z6-Vv;
	Sun, 27 Nov 2022 12:59:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1ozHG3-0000Yv-Dy
 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 12:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nGXo7Z/mxI7nB+XDclFs+EZ5NfTGxjzBuU05r1QJMrY=; b=lw1GN3DNTs8sH34x+pT1jS1yr1
 9P4qtOA74ROpcI58mW6w6LziFxRhRUPN6o1o2GOAkWu+9Wb8KAil2nHAhi+gzz/0awJhv4p8G52Gs
 7mqKuxT6K4DXvmoNMht4daGEd2gsG9GheYCJ0JEGV2kTkIyTkwVKuUJv7jYxpxt6Gvb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nGXo7Z/mxI7nB+XDclFs+EZ5NfTGxjzBuU05r1QJMrY=; b=N
 PnZvju0xdoyh7Gyi7+TXczVoBrJysWkx731yTbsvI4RJvp3T+Vfbp2zWIqlVhV1sfWapdLwSF831T
 VaK5P4U2jWDKfhGzzgwS3eJlfxzOYjckoNQVxmtv8nGpDSonazcOi0iCU63P4vhp5tf1YpNdSUAfm
 T1zsW97glWbJsLM4=;
Received: from smtp-26.smtpout.orange.fr ([80.12.242.26]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ozHFy-00089s-UB for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 12:59:43 +0000
Received: from pop-os.home ([86.243.100.34]) by smtp.orange.fr with ESMTPA
 id zHFnoti5vMQZVzHFno01E7; Sun, 27 Nov 2022 13:59:29 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 27 Nov 2022 13:59:29 +0100
X-ME-IP: 86.243.100.34
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sun, 27 Nov 2022 13:59:25 +0100
Message-Id: <3d1e0ed9714eaee7e18d9f5b0b4bfa49b00b286d.1669553950.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 9p fs does not use IDR or IDA functionalities. So there
 is no point in including <linux/idr.h>. Remove it. Signed-off-by: Christophe
 JAILLET <christophe.jaillet@wanadoo.fr> --- fs/9p/fid.c | 1 - fs/9p/v9fs.c
 | 1 - fs/9p/vfs_addr.c | 1 - fs/9p/vfs_dentry.c | 1 - fs/9p/vfs_dir.c | 1
 - fs/9p/vfs_file.c | 1 - [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [80.12.242.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ozHFy-00089s-UB
Subject: [V9fs-developer] [PATCH] 9p: Remove some unneeded #include
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The 9p fs does not use IDR or IDA functionalities. So there is no point in
including <linux/idr.h>.
Remove it.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 fs/9p/fid.c            | 1 -
 fs/9p/v9fs.c           | 1 -
 fs/9p/vfs_addr.c       | 1 -
 fs/9p/vfs_dentry.c     | 1 -
 fs/9p/vfs_dir.c        | 1 -
 fs/9p/vfs_file.c       | 1 -
 fs/9p/vfs_inode.c      | 1 -
 fs/9p/vfs_inode_dotl.c | 1 -
 fs/9p/vfs_super.c      | 1 -
 9 files changed, 9 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 23cf9b2fbfe4..805151114e96 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -11,7 +11,6 @@
 #include <linux/fs.h>
 #include <linux/slab.h>
 #include <linux/sched.h>
-#include <linux/idr.h>
 #include <net/9p/9p.h>
 #include <net/9p/client.h>
 
diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index 0129de2ea31a..3a9c4517265f 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -14,7 +14,6 @@
 #include <linux/sched.h>
 #include <linux/cred.h>
 #include <linux/parser.h>
-#include <linux/idr.h>
 #include <linux/slab.h>
 #include <linux/seq_file.h>
 #include <net/9p/9p.h>
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 47b9a1122f34..93373486ab04 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -14,7 +14,6 @@
 #include <linux/string.h>
 #include <linux/inet.h>
 #include <linux/pagemap.h>
-#include <linux/idr.h>
 #include <linux/sched.h>
 #include <linux/swap.h>
 #include <linux/uio.h>
diff --git a/fs/9p/vfs_dentry.c b/fs/9p/vfs_dentry.c
index f89f01734587..65fa2df5e49b 100644
--- a/fs/9p/vfs_dentry.c
+++ b/fs/9p/vfs_dentry.c
@@ -15,7 +15,6 @@
 #include <linux/string.h>
 #include <linux/inet.h>
 #include <linux/namei.h>
-#include <linux/idr.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <net/9p/9p.h>
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 000fbaae9b18..1675a196c2ba 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -14,7 +14,6 @@
 #include <linux/string.h>
 #include <linux/sched.h>
 #include <linux/inet.h>
-#include <linux/idr.h>
 #include <linux/slab.h>
 #include <linux/uio.h>
 #include <linux/fscache.h>
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index aec43ba83799..b740017634ef 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -18,7 +18,6 @@
 #include <linux/pagemap.h>
 #include <linux/utsname.h>
 #include <linux/uaccess.h>
-#include <linux/idr.h>
 #include <linux/uio.h>
 #include <linux/slab.h>
 #include <net/9p/9p.h>
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 4d1a4a8d9277..27a04a226d97 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -17,7 +17,6 @@
 #include <linux/string.h>
 #include <linux/inet.h>
 #include <linux/namei.h>
-#include <linux/idr.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/xattr.h>
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 03c1743c4aff..f806b3f11649 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -15,7 +15,6 @@
 #include <linux/string.h>
 #include <linux/inet.h>
 #include <linux/namei.h>
-#include <linux/idr.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/xattr.h>
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 2d9ee073d12c..266c4693e20c 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -15,7 +15,6 @@
 #include <linux/inet.h>
 #include <linux/pagemap.h>
 #include <linux/mount.h>
-#include <linux/idr.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/statfs.h>
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
