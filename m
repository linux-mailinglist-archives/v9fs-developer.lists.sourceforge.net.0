Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AA52B9749
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Nov 2020 17:07:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfmTE-0006mc-2C; Thu, 19 Nov 2020 16:07:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kfmT3-0006mB-Hd
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Nov 2020 16:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FgwVOGrQRgSaXC/c3SASSffjnbPG4AmXzCDcQORhByg=; b=fnbeSurhWogv6WoCgOM1fKPzoj
 hYh0kCoGwajXYt/T3zvN/GEAZg26r6pe8UXLojjdn4nUz3zDxPfDGJiMM2U+I13R/mGwf6SOgmXZF
 Q7KQWpCHj391JNzPzTbgcBdMyDN2iYDG2dEEpfxbGkfmJCTkKBRJrGOaFkup/AKJA2XI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FgwVOGrQRgSaXC/c3SASSffjnbPG4AmXzCDcQORhByg=; b=lCp563M9uQiGnBYRsyTkG0GG/A
 s28AJhxipX6XfBCfUAflnHki9YqeSWtCKOMytL+nDsV9pvYiaoVYdcRdSAaeo0q56h2a2gltlsoMG
 m5Hs5xV6DNZ/8gr2mgNnK4AKpuVn7WuCswp1u1xwavGdh9KaHcopAZRWZlafIjf0qPjo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfmSy-007jZi-SE
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Nov 2020 16:07:29 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 1EAA0C01A; Thu, 19 Nov 2020 17:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1605802038; bh=FgwVOGrQRgSaXC/c3SASSffjnbPG4AmXzCDcQORhByg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0lf2G7K2lKoVaavnFtQbb1FO4UFaw1BEp0YxrN2XOn3AZ5fyAEVIgdytk1JxZEVGm
 GUtMrTyYebQdVaU6k50motBOb38Fs7eQCE4opHi+UoekJsvpPZLSzTbdkzw0Z/2TeI
 y2+YDcuWBsibkVM+nTTIuIxFHF0mpSmJYvvdQlATVf3Uva0t2hOp3wYXAPh+L62we5
 2DxbyUH6b3S6eWfS3C/053zpmfxTO+6glIBsUZv4X0xc+GxS0oognuVvMynVh6EOlu
 eZSxiTJzysr9mNkiGKhAP8iz6kFnsYl7N6Q5+jcQr5gVUx0VIEm1Sk5i4PsWOeT9HB
 bsz4V0Jvp0hmQ==
From: Dominique Martinet <asmadeus@codewreck.org>
To: 
Date: Thu, 19 Nov 2020 17:06:51 +0100
Message-Id: <1605802012-31133-2-git-send-email-asmadeus@codewreck.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1605802012-31133-1-git-send-email-asmadeus@codewreck.org>
References: <20201103104116.GA19587@nautica>
 <1605802012-31133-1-git-send-email-asmadeus@codewreck.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kfmSy-007jZi-SE
Subject: [V9fs-developer] [PATCH 1/2] 9p: apply review requests for fid
 refcounting
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, qemu_oss@crudebyte.com, groug@kaod.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix style issues in parent commit ("apply review requests for fid
refcounting"), no functional change.

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/fid.c             | 10 ++++------
 fs/9p/fid.h             |  2 +-
 include/net/9p/client.h |  2 +-
 net/9p/client.c         |  4 ++--
 4 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 89643dabcdae..50118ec72a92 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -28,7 +28,6 @@
 
 static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)
 {
-	atomic_set(&fid->count, 1);
 	hlist_add_head(&fid->dlist, (struct hlist_head *)&dentry->d_fsdata);
 }
 
@@ -62,7 +61,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 		}
 	}
 	if (ret && !IS_ERR(ret))
-		atomic_inc(&ret->count);
+		refcount_inc(&ret->count);
 	spin_unlock(&inode->i_lock);
 	return ret;
 }
@@ -77,7 +76,6 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 void v9fs_open_fid_add(struct inode *inode, struct p9_fid *fid)
 {
 	spin_lock(&inode->i_lock);
-	atomic_set(&fid->count, 1);
 	hlist_add_head(&fid->ilist, (struct hlist_head *)&inode->i_private);
 	spin_unlock(&inode->i_lock);
 }
@@ -110,7 +108,7 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 		hlist_for_each_entry(fid, h, dlist) {
 			if (any || uid_eq(fid->uid, uid)) {
 				ret = fid;
-				atomic_inc(&ret->count);
+				refcount_inc(&ret->count);
 				break;
 			}
 		}
@@ -201,7 +199,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	}
 	/* If we are root ourself just return that */
 	if (dentry->d_sb->s_root == dentry) {
-		atomic_inc(&fid->count);
+		refcount_inc(&fid->count);
 		return fid;
 	}
 	/*
@@ -250,7 +248,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 			fid = ERR_PTR(-ENOENT);
 		} else {
 			__add_fid(dentry, fid);
-			atomic_inc(&fid->count);
+			refcount_inc(&fid->count);
 			spin_unlock(&dentry->d_lock);
 		}
 	}
diff --git a/fs/9p/fid.h b/fs/9p/fid.h
index 1fed96546728..f7f33509e169 100644
--- a/fs/9p/fid.h
+++ b/fs/9p/fid.h
@@ -28,7 +28,7 @@ static inline struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
 	if (!fid || IS_ERR(fid))
 		return fid;
 
-	nfid = p9_client_walk(fid, 0, NULL, 1);
+	nfid = clone_fid(fid);
 	p9_client_clunk(fid);
 	return nfid;
 }
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index 58ed9bd306bd..e1c308d8d288 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -149,7 +149,7 @@ enum fid_source {
 struct p9_fid {
 	struct p9_client *clnt;
 	u32 fid;
-	atomic_t count;
+	refcount_t count;
 	int mode;
 	struct p9_qid qid;
 	u32 iounit;
diff --git a/net/9p/client.c b/net/9p/client.c
index a6c8a915e0d8..ba4910138c5b 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -901,7 +901,7 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 	fid->clnt = clnt;
 	fid->rdir = NULL;
 	fid->fid = 0;
-	atomic_set(&fid->count, 1);
+	refcount_set(&fid->count, 1);
 
 	idr_preload(GFP_KERNEL);
 	spin_lock_irq(&clnt->lock);
@@ -1466,7 +1466,7 @@ int p9_client_clunk(struct p9_fid *fid)
 		dump_stack();
 		return 0;
 	}
-	if (!atomic_dec_and_test(&fid->count))
+	if (!refcount_dec_and_test(&fid->count))
 		return 0;
 
 again:
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
