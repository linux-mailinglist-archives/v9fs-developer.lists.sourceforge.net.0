Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1344FBBB
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Apr 2019 16:41:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hLTx8-0004we-3u; Tue, 30 Apr 2019 14:41:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1hLTx6-0004wV-4f
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 14:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U5D4pUstJ6PxCeW5ah+XAzKGWxpGDZeXyD9NyBvW0dw=; b=VNkhrzaqiRAiaJHAvdOLDHHjgW
 nPdjrEfK2PfxgdJh75F5KLt+eXgFjy2fp4CmCmgygTMfOaT5666r7xL4+K3NBYb4KfsL5FkiXpKdA
 KYMt28p8fKciwXlIOBZDOpEaYMx8XsPef2pB3eqrOCcgfWjrll7frpCBkbyD8g2Iu/hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U5D4pUstJ6PxCeW5ah+XAzKGWxpGDZeXyD9NyBvW0dw=; b=V
 AuP24OB3fR2dT6wHHxcAQw8pUTtaIP2Z20uR3ByBcU75kngxDWjoTUKEh3SW0pvrXKUAeR7KELrTY
 aklRJSXYRKVQv1X1V58ghe/Tjdrbg6pMn4sd4Ndrdabox9XcRdoVZVppJo65xKbz48YDHBxGmmPtQ
 9U2QaFQl+4IGdJiM=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLTx2-002nLn-AN
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 14:41:48 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B43494593EFE64FF1F6E;
 Tue, 30 Apr 2019 22:41:36 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 22:41:29 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <ericvh@gmail.com>, <lucho@ionkov.net>,
 <asmadeus@codewreck.org>
Date: Tue, 30 Apr 2019 22:39:33 +0800
Message-ID: <20190430143933.19368-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hLTx2-002nLn-AN
Subject: [V9fs-developer] [PATCH -next] 9p/xen: Add cleanup path in
 p9_trans_xen_init
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If xenbus_register_frontend() fails in p9_trans_xen_init,
we should call v9fs_unregister_trans() to do cleanup.

Fixes: 868eb122739a ("xen/9pfs: introduce Xen 9pfs transport driver")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/9p/trans_xen.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 29420eb..3963eb1 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -530,13 +530,19 @@ static struct xenbus_driver xen_9pfs_front_driver = {
 
 static int p9_trans_xen_init(void)
 {
+	int rc;
+
 	if (!xen_domain())
 		return -ENODEV;
 
 	pr_info("Initialising Xen transport for 9pfs\n");
 
 	v9fs_register_trans(&p9_xen_trans);
-	return xenbus_register_frontend(&xen_9pfs_front_driver);
+	rc = xenbus_register_frontend(&xen_9pfs_front_driver);
+	if (rc)
+		v9fs_unregister_trans(&p9_xen_trans);
+
+	return rc;
 }
 module_init(p9_trans_xen_init);
 
-- 
2.7.0




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
