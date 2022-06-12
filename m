Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450B547953
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 10:54:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0JMY-0001Ph-7G; Sun, 12 Jun 2022 08:54:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0JMW-0001PI-5S
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NGrM8aOLW3P+D4Rx7zur1lNPPJiOVKsmRGPxJVvnPDs=; b=ArxSC+pKoDm3fwvl2EqAoWcsgM
 lLjLVCf3sxTmaI8Fxp9Ezb+gseNDqPPL7dmvtM0yqrK7zD+Itdx8NGKuonfK1D2cw6nqbOt0q/Trd
 FeLfiO27HrfFSlLNmpUpJrF4PF3ppdFTnx2iCzdCA+63du74X3JxH44htNgvQJQ3OJGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NGrM8aOLW3P+D4Rx7zur1lNPPJiOVKsmRGPxJVvnPDs=; b=l5rXANZ49ksjP/Rf98QdV/p6m6
 K3CG3yp3hGA92N4wlqY+mGg3HeyoDcTtvLcsmgfwb2LouAOcyLWDy1tsGS4p+LtHP3DYfAKOrSo8+
 j2oGzxpntXH6Gib3hJMOuzDXzN3G2q6auvDhUFF69L2S2MGGY+sPEbKEPdVol/GCS/TE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0JMS-0003eb-A3
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:54:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 123FBC021; Sun, 12 Jun 2022 10:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024055; bh=NGrM8aOLW3P+D4Rx7zur1lNPPJiOVKsmRGPxJVvnPDs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oKvYGL0B9tcmmAYPevuw7CIc9o+pAtZr6haB5YQiuGao/Alip1H1REebw+hGJpFUB
 jMMRfYcP72Fx5gR8FoFC/Zp7BUuxsaELWTG+Tb8mjbxQHxA7V9SQf/UToasJr9LWaX
 EQC91qVZtNkDh8Mr6zNBt/89VcQg2/P+j+VKv38XZ5lvU1CQTlARjFDP7ZMcXv7zrZ
 YVoLifracoufWYgUPjxoyCb+6fwqauLOdLNVpOfM86XK35la4JpbFEeP9nnglEcHGz
 yCfiJ5cL5AkIaRgQiPbF4as24QyRobtOCaceF79fZk/l5Q4ra6+EycUHyWhPUNAQyB
 ey8VNNC2Vji5w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 626F2C01C;
 Sun, 12 Jun 2022 10:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024054; bh=NGrM8aOLW3P+D4Rx7zur1lNPPJiOVKsmRGPxJVvnPDs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I8JxRLMQM5jMQ6KIrOGYGqQ2cTmfPMaiDXcawSxqCTrcOe9i7TXA1CdG6yvXQvFF1
 P+hMvGTH7qo4uK5y4HYLxqlMdIsqhpiL6/IBHfibkpMMVQEnlyz0qKoXVj6UMN1idn
 VnoSI0xhPBkzFp+PzsHljfmsQTzDGpPV5F7ot/rgvom9PbQzNM/BT5Tz6S1fx5t0yz
 6J558nM8AteTMbpWweNCRspQgPB8K/pMWqyEM5c1nS2NaJspr2kppuFK+a7lHIe/+K
 1D2f7tfU2UFzhQVXknU3b/A8P4/4Scq+Y1kbWyPHAAaHBQUevvgOONEyT+nOZFFSGE
 ISxArtJEqAsRA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id afea8486;
 Sun, 12 Jun 2022 08:54:08 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Tyler Hicks <tyhicks@linux.microsoft.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Jianyong Wu <jianyong.wu@arm.com>
Date: Sun, 12 Jun 2022 17:53:25 +0900
Message-Id: <20220612085330.1451496-3-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220612085330.1451496-1-asmadeus@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  we check for protocol version later than required, after a
 fid has been obtained. Just move the version check earlier. Fixes:
 6636b6dcc3db
 ("9p: add refcount to p9_fid struct") Cc: stable@vger.kernel.org
 Signed-off-by:
 Dominique Martinet <asmadeus@codewreck.org> --- fs/9p/vfs_inode.c | 8 ++++----
 1 file changed, 4 ins [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o0JMS-0003eb-A3
Subject: [V9fs-developer] [PATCH 02/06] 9p: fix fid refcount leak in
 v9fs_vfs_get_link
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

we check for protocol version later than required, after a fid has
been obtained. Just move the version check earlier.

Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
Cc: stable@vger.kernel.org
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/vfs_inode.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 55367ecb9442..18c780ffd4b5 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -1250,15 +1250,15 @@ static const char *v9fs_vfs_get_link(struct dentry *dentry,
 		return ERR_PTR(-ECHILD);
 
 	v9ses = v9fs_dentry2v9ses(dentry);
-	fid = v9fs_fid_lookup(dentry);
+	if (!v9fs_proto_dotu(v9ses))
+		return ERR_PTR(-EBADF);
+
 	p9_debug(P9_DEBUG_VFS, "%pd\n", dentry);
+	fid = v9fs_fid_lookup(dentry);
 
 	if (IS_ERR(fid))
 		return ERR_CAST(fid);
 
-	if (!v9fs_proto_dotu(v9ses))
-		return ERR_PTR(-EBADF);
-
 	st = p9_client_stat(fid);
 	p9_client_clunk(fid);
 	if (IS_ERR(st))
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
