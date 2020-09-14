Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D0926832F
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 05:38:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHfK0-00049G-2L; Mon, 14 Sep 2020 03:38:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1kHfJz-000490-7Y
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 03:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+Ycdim3KP9r5C/GGLv79mwkHcmy7wG/lgHUdaveh5E8=; b=CyAfNTiO8hjUqj5US7OgJNiAXB
 UkrQ+5ByPUp1o6JWHrZt3GKb7/cY+kbHqOxJkjCG8F6+oVIeRUuXm9vME3uR3W43/SvUv9jrZig/9
 SdQEJf440YAtlchj2O6HhxKkwJeT1hbyzqlarxnLAoeBVE3Yh8wRyUkNplFx3h3L6/3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+Ycdim3KP9r5C/GGLv79mwkHcmy7wG/lgHUdaveh5E8=; b=dihccAyVhCXpP8uYMYhKC/1hyu
 NuH0Wu1oNqDgV4fRjXI4bYka1d9cwUy1YkJvQWjiU7s7i4iFEcjgFZmNx3rx0EmLYIZp4dAHSJdw2
 pFkRBuk+Cn0Aq2N0JJkbUY/tiodAARn4B6BNY91/0e4NRy6NQiC63Ld1CJk6430Qpe8A=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kHfJs-008YPj-UR
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 03:38:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71E06113E;
 Sun, 13 Sep 2020 20:38:15 -0700 (PDT)
Received: from entos-thunderx2-desktop.shanghai.arm.com
 (entos-thunderx2-desktop.shanghai.arm.com [10.169.212.215])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D554A3F718;
 Sun, 13 Sep 2020 20:38:12 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Mon, 14 Sep 2020 11:37:51 +0800
Message-Id: <20200914033754.29188-2-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914033754.29188-1-jianyong.wu@arm.com>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHfJs-008YPj-UR
Subject: [V9fs-developer] [PATCH RFC 1/4] fs/9p: fix create-unlink-getattr
 idiom
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
Cc: jianyong.wu@arm.com, justin.he@arm.com, linux-kernel@vger.kernel.org,
 Greg Kurz <gkurz@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Eric Van Hensbergen <ericvh@gmail.com>

Fixes several outstanding bug reports of not being able to getattr from an
open file after an unlink.  This patch cleans up transient fids on an unlink
and will search open fids on a client if it detects a dentry that appears to
have been unlinked.  This search is necessary because fstat does not pass fd
information through the VFS API to the filesystem, only the dentry which for
9p has an imperfect match to fids.

Inherent in this patch is also a fix for the qid handling on create/open
which apparently wasn't being set correctly and was necessary for the search
to succeed.

A possible optimization over this fix is to include accounting of open fids
with the inode in the private data (in a similar fashion to the way we track
transient fids with dentries).  This would allow a much quicker search for
a matching open fid.

Signed-off-by: Eric Van Hensbergen <ericvh@gmail.com>
(changed v9fs_fid_find_global to v9fs_fid_find_inode in comment)
Signed-off-by: Greg Kurz <gkurz@linux.vnet.ibm.com>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>

Change-Id: Ifd5c8cdca8b40216e3e7d021eb6d0afd750096e7
---
 fs/9p/fid.c       | 30 ++++++++++++++++++++++++++++++
 fs/9p/vfs_inode.c |  4 ++++
 net/9p/client.c   |  5 ++++-
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 3d681a2c2731..3304984c0fad 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -38,6 +38,33 @@ void v9fs_fid_add(struct dentry *dentry, struct p9_fid *fid)
 	spin_unlock(&dentry->d_lock);
 }
 
+/**
+ * v9fs_fid_find_inode - search for a fid off of the client list
+ * @inode: return a fid pointing to a specific inode
+ * @uid: return a fid belonging to the specified user
+ *
+ */
+
+static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
+{
+	struct p9_client *clnt = v9fs_inode2v9ses(inode)->clnt;
+	struct p9_fid *fid, *fidptr, *ret = NULL;
+	unsigned long flags;
+
+	p9_debug(P9_DEBUG_VFS, " inode: %p\n", inode);
+
+	spin_lock_irqsave(&clnt->lock, flags);
+	list_for_each_entry_safe(fid, fidptr, &clnt->fidlist, flist) {
+		if (uid_eq(fid->uid, uid) &&
+		   (inode->i_ino == v9fs_qid2ino(&fid->qid))) {
+			ret = fid;
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&clnt->lock, flags);
+	return ret;
+}
+
 /**
  * v9fs_fid_find - retrieve a fid that belongs to the specified uid
  * @dentry: dentry to look for fid in
@@ -65,6 +92,9 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 			}
 		}
 		spin_unlock(&dentry->d_lock);
+	} else {
+		if (dentry->d_inode)
+			ret = v9fs_fid_find_inode(dentry->d_inode, uid);
 	}
 
 	return ret;
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index ae0c38ad1fcb..31c2fddabb82 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -570,6 +570,10 @@ static int v9fs_remove(struct inode *dir, struct dentry *dentry, int flags)
 
 		v9fs_invalidate_inode_attr(inode);
 		v9fs_invalidate_inode_attr(dir);
+
+		/* invalidate all fids associated with dentry */
+		/* NOTE: This will not include open fids */
+		dentry->d_op->d_release(dentry);
 	}
 	return retval;
 }
diff --git a/net/9p/client.c b/net/9p/client.c
index 09f1ec589b80..1a3f72bf45fc 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1219,7 +1219,7 @@ struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
 	if (nwname)
 		memmove(&fid->qid, &wqids[nwqids - 1], sizeof(struct p9_qid));
 	else
-		fid->qid = oldfid->qid;
+		memmove(&fid->qid, &oldfid->qid, sizeof(struct p9_qid));
 
 	kfree(wqids);
 	return fid;
@@ -1272,6 +1272,7 @@ int p9_client_open(struct p9_fid *fid, int mode)
 		p9_is_proto_dotl(clnt) ? "RLOPEN" : "ROPEN",  qid.type,
 		(unsigned long long)qid.path, qid.version, iounit);
 
+	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
 	fid->mode = mode;
 	fid->iounit = iounit;
 
@@ -1317,6 +1318,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags, u32
 			(unsigned long long)qid->path,
 			qid->version, iounit);
 
+	memmove(&ofid->qid, qid, sizeof(struct p9_qid));
 	ofid->mode = mode;
 	ofid->iounit = iounit;
 
@@ -1362,6 +1364,7 @@ int p9_client_fcreate(struct p9_fid *fid, const char *name, u32 perm, int mode,
 				(unsigned long long)qid.path,
 				qid.version, iounit);
 
+	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
 	fid->mode = mode;
 	fid->iounit = iounit;
 
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
