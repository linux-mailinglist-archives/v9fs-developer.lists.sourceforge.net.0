Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B2362D63A
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 10:15:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovazl-0000Fk-Mm;
	Thu, 17 Nov 2022 09:15:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovazV-0000FM-My
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gzJrTn6iTGB8tTYaFLXnLNsiP5iOe8UIp/mIWj11RGU=; b=JIMTQW30DGP6Zr0x55I9b6vO0u
 ubh+/squeQRj87h2qQHgFk/cVYIxmHCDD/zKXnB8IWJHQ3sAvUQzQEWQqq8H2Gd0AZBuZzMnHoj30
 S/rd9n5NbBedRqT2zv+h5PqMGqFRaojIZoNatd/e6V3POeoCys2otu5F6WFGCbokurOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gzJrTn6iTGB8tTYaFLXnLNsiP5iOe8UIp/mIWj11RGU=; b=ZLB6uxurZdP3zpLB+MCFmyN76W
 arXwsQvnu9que4QgrodEzuHC/u5eIPTuM9Ns/bpsvt4HXSx4TNKFGgaR1GgnpB+s5LiTxva3myhtK
 o6fmIx3PLS8ndUW6psNnJulJVj6VeR5uLNiqv3Sg0cHYYY+cQTbBsVkma8YaZf/cydmE=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovazS-0004EJ-J5 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:25 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NCZ1K6nGxzJnpm;
 Thu, 17 Nov 2022 17:12:05 +0800 (CST)
Received: from huawei.com (10.67.175.31) by dggpemm500024.china.huawei.com
 (7.185.36.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 17 Nov
 2022 17:15:15 +0800
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>
Date: Thu, 17 Nov 2022 17:11:58 +0800
Message-ID: <20221117091159.31533-3-guozihua@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221117091159.31533-1-guozihua@huawei.com>
References: <20221117091159.31533-1-guozihua@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: As the msize is non-consistant with the capacity of the tag
 and as we are now checking message size against capacity directly, there
 is no point checking message size against msize. So remove it. Fixes:
 3da2e34b64cd
 ("9p: Fix write overflow in p9_read_work") Signed-off-by: GUO Zihua
 <guozihua@huawei.com>
 --- net/9p/trans_fd.c | 8 -------- 1 file changed, 8 deletions(-) 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ovazS-0004EJ-J5
Subject: [V9fs-developer] [PATCH 2/3 v2] 9p: Remove redundent checks for
 message size against msize.
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
From: GUO Zihua via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: GUO Zihua <guozihua@huawei.com>
Cc: netdev@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

As the msize is non-consistant with the capacity of the tag and as we
are now checking message size against capacity directly, there is no
point checking message size against msize. So remove it.

Fixes: 3da2e34b64cd ("9p: Fix write overflow in p9_read_work")
Signed-off-by: GUO Zihua <guozihua@huawei.com>
---
 net/9p/trans_fd.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 30f37bf7c598..4ba602438550 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -322,14 +322,6 @@ static void p9_read_work(struct work_struct *work)
 			goto error;
 		}
 
-		if (m->rc.size >= m->client->msize) {
-			p9_debug(P9_DEBUG_ERROR,
-				 "requested packet size too big: %d\n",
-				 m->rc.size);
-			err = -EIO;
-			goto error;
-		}
-
 		p9_debug(P9_DEBUG_TRANS,
 			 "mux %p pkt: size: %d bytes tag: %d\n",
 			 m, m->rc.size, m->rc.tag);
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
