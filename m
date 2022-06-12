Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDCD547952
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 10:54:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0JMT-0007Vl-60; Sun, 12 Jun 2022 08:54:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0JMR-0007VY-96
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diOrVOPA1DrszPTKQ6G1Sn5TRoaAaysLytyk8w/ytPM=; b=Msq99yi1H+dOxGdhN8NKmKG4jj
 SuQf8onhy0F5OybGJoP4g3HUAi3zKIm209/IMvOn2Ha9JEhtXbMqcIYmp8NHg0aBTUxr3RbWCB+X6
 qYzLrb25qDVRGNrwR1OWNawrM/N3akkHeK2dhi2PsOax/rMQOv4lEoBw5ukqbYsrxNbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=diOrVOPA1DrszPTKQ6G1Sn5TRoaAaysLytyk8w/ytPM=; b=TC6kKiotHYIdST5ZsM7Jxm4Mpb
 bLRLFpiLzZZdXYSPs3zUuTBb3tHauinuYTelCyZKsT8AA6fZlF2a/7dGNpwg0GnDLvT8MCnxVJdYv
 S/TNpyoEKGNNXZjpVpt4wy7UsA8REbOOW/siScLj0lMxMHWnNWRM5bLFug6GqiSZyybU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0JMP-00Fx6M-JR
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:54:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5C0D4C01A; Sun, 12 Jun 2022 10:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024051; bh=diOrVOPA1DrszPTKQ6G1Sn5TRoaAaysLytyk8w/ytPM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cEqxsZOpI5UY8L6k/Hyl9zKBUgUhWi3iBUg6SAtx1bW4XJDs8x37Ed3znXtHO5bLH
 vV6l5qcd9yXSzShsEWowXq9AH5LAPrVIlUypkHj2bA8llA/uKgx2+T9WXfkky8H8HD
 uy268qCy2OERouN5ewO8UqD8/Rx+LIYYiP1EuxgmSB1QltwB83G3vu8ytmf51YG+t8
 pZ0uvws+TWP6bHSlVqTrE9hQg0QmOjy3hbY3n5lcA4nGIggARi2K61OpGQmpJw6hWo
 laXoHOoWufPuyu2RmHMM5U6/mQcD/Mqzj/eqWW/bxiupIwCZoZyoKdJQLYEtcUE2P+
 cxYQ/hTqc+TYA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0F523C009;
 Sun, 12 Jun 2022 10:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024050; bh=diOrVOPA1DrszPTKQ6G1Sn5TRoaAaysLytyk8w/ytPM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z7+Fyk0YaikTR8PDuzHujHv0wrzZ6pAYvxQ6nilzdjvHQtMbQTqvQF7m7cT5D2lm1
 3ZUqWJdzV3yzlq6ob156CtpbKHCood01UscjCfoOh6AfHaMmqoSUqV0s/wH08Bdcf1
 RvrBmeKPof54b1OKaWGJKhXuzFJwOGetEVpc86KIMKBMzLyStIU4JurOL08seMZhEd
 e55j+UTc1NmESduVJLC8FXzlY9JDauq/rZ8AegrtuOoGP8YocXqyG1QhZjSKI8Zrif
 e/ivgLARLT6UBuSBFgeAEco2IlCNQh6Hw3L7K7naIYVvAioRtSgJYBUfMTP4XnBfag
 UQICS8ngDN5UQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0605f16d;
 Sun, 12 Jun 2022 08:54:05 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Tyler Hicks <tyhicks@linux.microsoft.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Jianyong Wu <jianyong.wu@arm.com>
Date: Sun, 12 Jun 2022 17:53:24 +0900
Message-Id: <20220612085330.1451496-2-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220612085330.1451496-1-asmadeus@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We need to release directory fid if we fail halfway through
 open This fixes fid leaking with xfstests generic 531 Fixes: 6636b6dcc3db
 ("9p: add refcount to p9_fid struct") Cc: stable@vger.kernel.org Reported-by:
 Tyler Hicks <tyhicks@linux.microsoft.com> Signed-off-by: Dominique Martinet
 <asmadeus@codewreck.org> - [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0JMP-00Fx6M-JR
Subject: [V9fs-developer] [PATCH 01/06] 9p: fix fid refcount leak in
 v9fs_vfs_atomic_open_dotl
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We need to release directory fid if we fail halfway through open

This fixes fid leaking with xfstests generic 531

Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
Cc: stable@vger.kernel.org
Reported-by: Tyler Hicks <tyhicks@linux.microsoft.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/vfs_inode_dotl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index d17502a738a9..b6eb1160296c 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -274,6 +274,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	if (IS_ERR(ofid)) {
 		err = PTR_ERR(ofid);
 		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
+		p9_client_clunk(dfid);
 		goto out;
 	}
 
@@ -285,6 +286,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	if (err) {
 		p9_debug(P9_DEBUG_VFS, "Failed to get acl values in creat %d\n",
 			 err);
+		p9_client_clunk(dfid);
 		goto error;
 	}
 	err = p9_client_create_dotl(ofid, name, v9fs_open_to_dotl_flags(flags),
@@ -292,6 +294,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	if (err < 0) {
 		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",
 			 err);
+		p9_client_clunk(dfid);
 		goto error;
 	}
 	v9fs_invalidate_inode_attr(dir);
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
