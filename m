Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BEB103C6E
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Nov 2019 14:44:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iXQH3-0002X1-Vv; Wed, 20 Nov 2019 13:44:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <krzk@kernel.org>) id 1iXQH2-0002Wg-TA
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Nov 2019 13:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1h7FicA0VrflwUsHz3PLSqqvE0Nxn5ue5GjhO9qUkB8=; b=LpHRykDUjrIiS0syvrs5Dyq/DN
 TpThsw6vZOa84hg+Tp+03cAiYd8pP2aYBGx0ysUXN1ZpZlEqllu4HJqoBfieLpzGHPQjmCN/whabh
 kD10qEoboySqIlygb7HYbCtlzzS6Xam67oi3KnJ78sgjTeU613TCrixfAd87QydaQNNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1h7FicA0VrflwUsHz3PLSqqvE0Nxn5ue5GjhO9qUkB8=; b=A9SWu8fDfoYTFj9Oin8QyKHFw0
 WQ/lVKdnC/O0VCqmNBLY7KzfvGb9ccJ3g9vgSNCHvPlrPGu6Twoy0FaSixDarS+bf82wCKiajPMTR
 KZCc/e3emVCldQkQV5Mc9CdYr1Yb8kz0MTx3ST36dYeqxxs6KbG5JTtU2Pk/R1NpvJpo=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXQH1-007E5k-MY
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Nov 2019 13:44:00 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EC1C22529;
 Wed, 20 Nov 2019 13:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257424;
 bh=xeCJqurX4RkNcjf2QeoKUT0jsty4nV+TvM4lmNA6dsQ=;
 h=From:To:Cc:Subject:Date:From;
 b=mON5RSsTAW1ybEu5VPfT6UvYN5a2pBxmYe/mVEYQgKP0x1IokBg0uh8qwF0+nBtBI
 MGud1QK/F32uNnl6fEjbzxvKD0D2bhRjMFkZOS/tlutQsNONQ/54J5blh2x8AG+vBU
 BACD/+kuDFWIr1mV9cqv4rBy9umIpSLAZMRzELQA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 20 Nov 2019 21:43:40 +0800
Message-Id: <20191120134340.16770-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXQH1-007E5k-MY
Subject: [V9fs-developer] [PATCH] 9p: Fix Kconfig indentation
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 fs/9p/Kconfig | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
index ac2ec4543fe1..09fd4a185fd2 100644
--- a/fs/9p/Kconfig
+++ b/fs/9p/Kconfig
@@ -32,13 +32,13 @@ endif
 
 
 config 9P_FS_SECURITY
-        bool "9P Security Labels"
-        depends on 9P_FS
-        help
-          Security labels support alternative access control models
-          implemented by security modules like SELinux.  This option
-          enables an extended attribute handler for file security
-          labels in the 9P filesystem.
-
-          If you are not using a security module that requires using
-          extended attributes for file security labels, say N.
+	bool "9P Security Labels"
+	depends on 9P_FS
+	help
+	  Security labels support alternative access control models
+	  implemented by security modules like SELinux.  This option
+	  enables an extended attribute handler for file security
+	  labels in the 9P filesystem.
+
+	  If you are not using a security module that requires using
+	  extended attributes for file security labels, say N.
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
