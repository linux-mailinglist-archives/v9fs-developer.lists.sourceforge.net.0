Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BB46EF877
	for <lists+v9fs-developer@lfdr.de>; Wed, 26 Apr 2023 18:31:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pri3E-0008Ro-Qo;
	Wed, 26 Apr 2023 16:31:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pri3D-0008Ri-Fd
 for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 16:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GOjjDAB57a2v0s8EnXQFA3Jz6SPIRb5Ck4iT1j7mYQI=; b=Iwk2ub2o5OFyWvIZALPrx/p6FH
 oXZrluf41Uyy6SZpt82KLE+C19D/ISTM/RI0qoazo7mwxjdRmSMDX7p14V+sy2HWoSW2M2/jQXHG5
 9r4Ya0PZbRTjPVXjoyHahr3CwU5O7V97G9PFxCvptGOWslQk+CFM4QIy/AJJZIWdJcQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GOjjDAB57a2v0s8EnXQFA3Jz6SPIRb5Ck4iT1j7mYQI=; b=O
 7R5F3c3U3aLyADAc32GKwByAlcHKr5EBV21+EzS07ZykLr7qIZxSNf/d+KSm8uKrkiTs1cNKbOPWu
 nOWk05o5TW/wQJjBAL7YmrtyKf7HSA6C8O1KxPBeImAGZTPkvpI0svpN+voehVRP865KTmI07zGZL
 vND39wVAv4Asn+3w=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pri3C-0008J7-00 for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 16:31:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9553D60C52;
 Wed, 26 Apr 2023 16:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 603BEC433EF;
 Wed, 26 Apr 2023 16:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1682526680;
 bh=LsQFJnxGfjStsxu61/64S4NIq//Zy3OsmBBferjPxOk=;
 h=From:Date:Subject:To:Cc:From;
 b=tgPB9KRzc+dlkWvvv4GpVng/VuOueuOe3eiOktEzHMBWZ64LNKyEILKnI0wcsCBDD
 v22T7aspz8jReXiYx0T+Vht65vG6DlZuvCMRV5mkyoK2ivS5qj4VTmUUA5/9DoAL9Q
 n84IC7dhv4DXERvPvT1SBCFVcf5nqrooJlRjpob8wFyR1sy7Wsw6wrHkpy4VoDXMOO
 67+IGngac/+oVj1RP/dIUFiArRwKVRrHKtcvB+ZMwlkpQdPMe2MCXRemFAckJsw5b3
 e8ZthkHahmbisvS2/LCGNCle5tprATuQ/+dcgbzzCP40+FeCswZUzk20spu5OjRVPf
 EiRBGt2XtIKsQ==
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Wed, 26 Apr 2023 16:30:35 +0000
MIME-Version: 1.0
Message-Id: <20230426-fix-bitops-v1-1-ab11e8f4f23a@kernel.org>
X-B4-Tracking: v=1; b=H4sIAKpRSWQC/x2NQQqDMBBFryKz7tB0WiT2KsVFEsdmNonMiAji3
 Ru7fPDf+wcYq7DBuztAeROTWho8bh2kHMqXUabGQI6e7kU9zrJjlLUuhsn35IYh+Yk8NCEGY4w
 aSsqX0sJpy/e5Khbe12uxKDf/f/cZz/MHqlA10H4AAAA=
To: Eric Van Hensbergen <ericvh@gmail.com>, 
 Latchesar Ionkov <lucho@ionkov.net>, 
 Dominique Martinet <asmadeus@codewreck.org>, 
 Christian Schoenebeck <linux_oss@crudebyte.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1777; i=ericvh@kernel.org;
 h=from:subject:message-id; bh=LsQFJnxGfjStsxu61/64S4NIq//Zy3OsmBBferjPxOk=;
 b=owEBbQKS/ZANAwAKAYj/1ftKX/+YAcsmYgBkSVHWHtYyqX4pP4R4aeyw6Pv1ElRXf5x9d/rTj
 j5xcPM9kFiJAjMEAAEKAB0WIQSWlvDRlqWQmKTK0VGI/9X7Sl//mAUCZElR1gAKCRCI/9X7Sl//
 mEHMD/9os90TNiC7CpEujU063unUwCPBB0wMrn1OB8TlFZ9NrB2QeTq9Ki+UCmUgb5fd0MEeLaJ
 Z5InGevGQhazA5TltCFuWUPT1YtkeY8Z82flW64zSXfYBmJBf80wwAncQUnFX8IxVChRfEVXWlC
 yudnoqgzGM+k26XrJ2/R0n91f7+sgE1IGMti+SIhww25qh7fergMhIXMos9XKG2t86hyU8F6F1X
 p6vl+EnZlRyGpNT9otBQaud9sLopTHKAdPu/3dP1lQgUlcbRmGKXOWIdnGDbIOmomYqafjYEp69
 xRnHm0LU9NDwlxpDY3bP5S/TWlFEE8pUyicVhhMy0JGql3RAiHsOBPTP0nzDLrb0Uqc9ZH17R08
 YGq7Ix0KGME0f1lbnQV0WhOu7ZcdmVbz7m81RJ/VX2Q0QPrXbrKSXwKCW8isEeeBBgPINafcWwd
 hsvz8SjoC6xj3cVNDfdPtoXINRyOAeO7MozW/nrNCOUExFUG6CuOKowrsUnswOtMKzfW1jLtZ45
 dgNbISfl8jK0DSpX2xQ5LcMRaDRBM4qUrDo7Bomws+6CND+cFZRToBvl0cSbIkKm7cFo+tfzmCP
 jtaKihrCkhzXUBJL9B7+Remq8s7HU9i54alHaMexFwNOl4wVznzSGNM57VmIlACj3bbe4e5hPWH
 rkown5fAySn5bxQ==
X-Developer-Key: i=ericvh@kernel.org; a=openpgp;
 fpr=9696F0D196A59098A4CAD15188FFD5FB4A5FFF98
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This re-introduces a fix that somehow got dropped during
 rebase
 of the current series in for-next. When writeback is enabled, opens are forced
 to support both read and write operations but with the lo [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pri3C-0008J7-00
Subject: [V9fs-developer] [PATCH] fs/9p: Fix bit operation logic error
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: v9fs-developer@lists.sourceforge.net, v9fs@lists.linux.dev,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This re-introduces a fix that somehow got dropped during rebase of the
current series in for-next.  When writeback is enabled, opens
are forced to support both read and write operations but with the
logic error other flags may be dropped unintentionaly.

Reported-by: Christophe Jaillet <christophe.jaillet@wanadoo.fr>
Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 fs/9p/vfs_inode.c      | 2 +-
 fs/9p/vfs_inode_dotl.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 54dfe4f10f43..3791f642c502 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -823,7 +823,7 @@ v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
 	p9_omode = v9fs_uflags2omode(flags, v9fs_proto_dotu(v9ses));
 
 	if ((v9ses->cache & CACHE_WRITEBACK) && (p9_omode & P9_OWRITE)) {
-		p9_omode = (p9_omode & !P9_OWRITE) | P9_ORDWR;
+		p9_omode = (p9_omode & ~P9_OWRITE) | P9_ORDWR;
 		p9_debug(P9_DEBUG_CACHE,
 			"write-only file with writeback enabled, creating w/ O_RDWR\n");
 	}
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index f9371b5b70ea..3acf2bcb69cc 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -288,7 +288,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 	}
 
 	if ((v9ses->cache & CACHE_WRITEBACK) && (p9_omode & P9_OWRITE)) {
-		p9_omode = (p9_omode & !P9_OWRITE) | P9_ORDWR;
+		p9_omode = (p9_omode & ~P9_OWRITE) | P9_ORDWR;
 		p9_debug(P9_DEBUG_CACHE,
 			"write-only file with writeback enabled, creating w/ O_RDWR\n");
 	}

---
base-commit: 4eb3117888a923f6b9b1ad2dd093641c49a63ae5
change-id: 20230426-fix-bitops-c862099c8d28

Best regards,
-- 
Eric Van Hensbergen <ericvh@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
