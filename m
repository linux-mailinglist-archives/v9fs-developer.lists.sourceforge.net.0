Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A4C268332
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 05:38:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHfKA-0004AX-MC; Mon, 14 Sep 2020 03:38:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1kHfK8-0004AO-By
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 03:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UEct2QcEnBv4ml8pqItn/k82p9rWMpzpTh/ENY3sgkk=; b=h5ZkU+VeSU/EMrICuunZbBUTsh
 F9fDBOheHIVLFnng+ZCypf1N3FPHr1QzONlRAz7Iy8gZaGkRc1mWdsUQMRES2nEwObCXhiu2Hv7pO
 lD9ejqOdFTKFBIt2XRdO2e1ufHLOwuVY28r6W4GyyDpyEPPKfuPMP/GD6WzYUzbNAkpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UEct2QcEnBv4ml8pqItn/k82p9rWMpzpTh/ENY3sgkk=; b=TLbK2iSkaeYyJMtPC9n+pRaqti
 kIAuj+qhQvqx7ErWFo1P7oyUaXt2LYQ7gi0OKBUtlqn160NHdoaWxFRjcQVbFSFVJAKT3A9bQqxpQ
 Yv2p0vHDs3F176CCA3zQenoZsEDrQ8llrq0GvRhgiY9z9Krhx3DGnkxaPgV74BSR28AE=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kHfK6-007rkI-1h
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 03:38:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A31C411D4;
 Sun, 13 Sep 2020 20:38:21 -0700 (PDT)
Received: from entos-thunderx2-desktop.shanghai.arm.com
 (entos-thunderx2-desktop.shanghai.arm.com [10.169.212.215])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 114703F718;
 Sun, 13 Sep 2020 20:38:18 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Mon, 14 Sep 2020 11:37:53 +0800
Message-Id: <20200914033754.29188-4-jianyong.wu@arm.com>
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
X-Headers-End: 1kHfK6-007rkI-1h
Subject: [V9fs-developer] [PATCH RFC 3/4] fs/9p: search open fids first
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
 Greg Kurz <groug@kaod.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Greg Kurz <groug@kaod.org>

A previous patch fixed the "create-unlink-getattr" idiom: if getattr is
called on an unlinked file, we try to find an open fid attached to the
corresponding inode.

We have a similar issue with file permissions and setattr:

open("./test.txt", O_RDWR|O_CREAT, 0666) = 4
chmod("./test.txt", 0)                  = 0
truncate("./test.txt", 0)               = -1 EACCES (Permission denied)
ftruncate(4, 0)                         = -1 EACCES (Permission denied)

The failure is expected with truncate() but not with ftruncate().

This happens because the lookup code does find a matching fid in the
dentry list. Unfortunately, this is not an open fid and the server
will be forced to rely on the path name, rather than on an open file
descriptor. This is the case in QEMU: the setattr operation will use
truncate() and fail because of bad write permissions.

This patch changes the logic in the lookup code, so that we consider
open fids first. It gives a chance to the server to match this open
fid to an open file descriptor and use ftruncate() instead of truncate().
This does not change the current behaviour for truncate() and other
path name based syscalls, since file permissions are checked earlier
in the VFS layer.

With this patch, we get:

open("./test.txt", O_RDWR|O_CREAT, 0666) = 4
chmod("./test.txt", 0)                  = 0
truncate("./test.txt", 0)               = -1 EACCES (Permission denied)
ftruncate(4, 0)                         = 0

Change-Id: Icb657359493fc9c06956881551e83c7e1af4f024
Signed-off-by: Greg Kurz <groug@kaod.org>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/9p/fid.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index d11dd430590d..0b23b0fe6c51 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -95,8 +95,12 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 		 dentry, dentry, from_kuid(&init_user_ns, uid),
 		 any);
 	ret = NULL;
+
+	if (d_inode(dentry))
+		ret = v9fs_fid_find_inode(d_inode(dentry), uid);
+
 	/* we'll recheck under lock if there's anything to look in */
-	if (dentry->d_fsdata) {
+	if (!ret && dentry->d_fsdata) {
 		struct hlist_head *h = (struct hlist_head *)&dentry->d_fsdata;
 		spin_lock(&dentry->d_lock);
 		hlist_for_each_entry(fid, h, dlist) {
@@ -106,9 +110,6 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 			}
 		}
 		spin_unlock(&dentry->d_lock);
-	} else {
-		if (dentry->d_inode)
-			ret = v9fs_fid_find_inode(dentry->d_inode, uid);
 	}
 
 	return ret;
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
