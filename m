Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCE269B6E7
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 01:34:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTBBS-00055G-CC;
	Sat, 18 Feb 2023 00:34:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pTBBH-00054X-J5
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ca/fSLz84+8zt25NEHBciinMYKl2LpEMEovBvxwZ9Y=; b=cAArTFaFS7E4OJ1v3HBZj6xprz
 b/sU8tvZUXO/oQh0tO2fD+/WiBMD/xjhzbOlqZ/bqsDuwXtHIkMrJA23RQvDie6XMeho6ya/ayzY+
 B7biR4WjBRl0UTHNxO2GNKGMQAL1SbDFFlZJ4Gm07034PRBGojh2Z3V7bfI4XRBwscZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4ca/fSLz84+8zt25NEHBciinMYKl2LpEMEovBvxwZ9Y=; b=OlXzU4XRfJGcN0nGx80dnBExai
 D9pqmV4vz2dTQc2SkWAY2QQfmJK1Ehd7/jJT1VUqBLKAKu7HbogmBxaHUZJTlwo8txI2JPlhImZKN
 Fw1M9VsC7ncad1Wuliuc9r7eKQjYyVGOP9wYQTpkaQ56a2GD34qxxiPv3ADCc5wf304w=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTBB4-0004Kp-6n for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9191F620A8;
 Sat, 18 Feb 2023 00:34:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 938A9C433D2;
 Sat, 18 Feb 2023 00:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676680445;
 bh=fE7TnKGk+7sECniXW1Co7rrNpfck1npdV3aCIbmWvVY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AnkqWYzFMTcdBZm4UR/n3WPvCPfwOaEkymB8fMNPzSu0yOxGLVyau2YonIEyaQqoL
 H1m4s4pnyONyULyAczlSbveBWREsET+3AZnQvVr4sFVPoAraoRstlRDW6lPMP7r6sW
 JRybBRGFFujDXu1tXKRT4axSewCYNlRcsbjD9pw8XxGl0dOkA0kU/UXUkV2npA5J44
 HpQr5oj/1qWUKUfbEVz5eb1EIRclPNLvl5RzZiDwy9Mp76CoaCttX1bgibxDb5KiUB
 d+3vnLsbMfPviaSfeaSy2zMxKTpYZxc5BKlfl7BtGImwSvyHie7kCN9dknVu4ClUGO
 IzO9GwMrSJcdw==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 18 Feb 2023 00:33:23 +0000
Message-Id: <20230218003323.2322580-12-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230218003323.2322580-1-ericvh@kernel.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Unclear if this case ever happens, but if no inode in dentry,
 then the dentry is definitely invalid. Seemed to be the opposite in the
 existing
 code. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org> ---
 fs/9p/vfs_dentry.c
 | 3 +-- 1 file changed, 1 insertion(+), 2 deletions(-) 
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
X-Headers-End: 1pTBB4-0004Kp-6n
Subject: [V9fs-developer] [PATCH v4 11/11] fs/9p: Fix revalidate
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

Unclear if this case ever happens, but if no inode in dentry, then
the dentry is definitely invalid.  Seemed to be the opposite in the
existing code.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 fs/9p/vfs_dentry.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/vfs_dentry.c b/fs/9p/vfs_dentry.c
index 65fa2df5e49b..b0c3f8e8ea00 100644
--- a/fs/9p/vfs_dentry.c
+++ b/fs/9p/vfs_dentry.c
@@ -68,7 +68,7 @@ static int v9fs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 
 	inode = d_inode(dentry);
 	if (!inode)
-		goto out_valid;
+		return 0;
 
 	v9inode = V9FS_I(inode);
 	if (v9inode->cache_validity & V9FS_INO_INVALID_ATTR) {
@@ -91,7 +91,6 @@ static int v9fs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 		if (retval < 0)
 			return retval;
 	}
-out_valid:
 	return 1;
 }
 
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
