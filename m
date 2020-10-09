Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AEB288406
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 09:55:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQnFU-0000gI-MK; Fri, 09 Oct 2020 07:55:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yebin10@huawei.com>) id 1kQnFT-0000gB-K2
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 07:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XT1AfQR0ZHG/Xu9BYSg+9vYp8mXDneJCHAInp37uopo=; b=HlEFXJXRxyCcaxQcoyFS/xP/Ft
 pH4NAsMFPDAGo8pEOFyhZyMwVPec3TvOZaN5R/TOytcW555yT7dP88mHrrWBsaBanH59AwyuMQVCT
 kv4OeXS4nA+QHPHiWiMqPWzv69++FTz2e7rk2brT9VZxrniG/qks88XvA4uGR0w/fVRc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XT1AfQR0ZHG/Xu9BYSg+9vYp8mXDneJCHAInp37uopo=; b=Y
 giUlPacgMF2UNDaWVXA9jJ58KaApWxClcY1/vFsgD9eqZ+Lowsd1ER1LMOTiEreX7wgcmBQahj6zh
 VQnD4Yb1BcAMgTwnjcUfHe4vP0Ggw0Uv4sUd8jUlIi1fzRxwpbOCVaAi+48hw1iB+J3J3v43JCVTr
 bFBwY9fBEkeW0GRs=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQnFN-003yyo-BB
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 07:55:30 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3F743A54B8DDE1C5C05E;
 Fri,  9 Oct 2020 15:55:16 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Fri, 9 Oct 2020
 15:55:05 +0800
From: Ye Bin <yebin10@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <davem@davemloft.net>, <kuba@kernel.org>,
 <v9fs-developer@lists.sourceforge.net>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Date: Fri, 9 Oct 2020 16:05:52 +0800
Message-ID: <20201009080552.89918-1-yebin10@huawei.com>
X-Mailer: git-send-email 2.16.2.dirty
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kQnFN-003yyo-BB
Subject: [V9fs-developer] [PATCH] 9p/xen: Fix format argument warning
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
Cc: Ye Bin <yebin10@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix follow warnings:
[net/9p/trans_xen.c:454]: (warning) %u in format string (no. 1) requires
'unsigned int' but the argument type is 'int'.
[net/9p/trans_xen.c:460]: (warning) %u in format string (no. 1) requires
'unsigned int' but the argument type is 'int'.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Ye Bin <yebin10@huawei.com>
---
 net/9p/trans_xen.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index bc8807d9281f..f4fea28e05da 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -451,13 +451,13 @@ static int xen_9pfs_front_probe(struct xenbus_device *dev,
 		char str[16];
 
 		BUILD_BUG_ON(XEN_9PFS_NUM_RINGS > 9);
-		sprintf(str, "ring-ref%u", i);
+		sprintf(str, "ring-ref%d", i);
 		ret = xenbus_printf(xbt, dev->nodename, str, "%d",
 				    priv->rings[i].ref);
 		if (ret)
 			goto error_xenbus;
 
-		sprintf(str, "event-channel-%u", i);
+		sprintf(str, "event-channel-%d", i);
 		ret = xenbus_printf(xbt, dev->nodename, str, "%u",
 				    priv->rings[i].evtchn);
 		if (ret)
-- 
2.16.2.dirty



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
