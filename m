Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 096BC288307
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 08:54:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQmIS-00077t-A6; Fri, 09 Oct 2020 06:54:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yebin10@huawei.com>) id 1kQmIQ-00077l-GP
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 06:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XT1AfQR0ZHG/Xu9BYSg+9vYp8mXDneJCHAInp37uopo=; b=k4gOqg/P60r6Ep1jWFaczTjB2g
 tL5eMRb9hGVy/a5PqIk7gsE/tklTSdEgJE4vbh0M+WzRpk0A0rI1cAPcx9M87R3VuJByt+lEnwyEw
 aONtwmBdNlt2l6/SGJAy8fU039JCJvu06xuFfhAVldqHaSj7WYQxeQwVuZndJuC2amiY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XT1AfQR0ZHG/Xu9BYSg+9vYp8mXDneJCHAInp37uopo=; b=S
 l1yslnnwJ2dewe+3aStoAKlV55d5w7vnBX4B4UvJa6cpUheenjEzUNfet7WFribw+Sl08UtjVI/6o
 Ncahmw/23tDTmCE8ccD+XAO8yQ2NICwoLtsA+T5pnhZAN2efDO3P8hcRgYVgc0+QLvwkgFzoge50t
 Ab+awQ1p/GN8TQ6w=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQmIH-0086gY-MT
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 06:54:30 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C848690BEA8988BAE40B;
 Fri,  9 Oct 2020 14:54:09 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Fri, 9 Oct 2020
 14:54:01 +0800
From: Ye Bin <yebin10@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <v9fs-developer@lists.sourceforge.net>
Date: Fri, 9 Oct 2020 15:04:48 +0800
Message-ID: <20201009070448.63901-1-yebin10@huawei.com>
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
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kQmIH-0086gY-MT
Subject: [V9fs-developer] [PATCH] 9p/xen: Fix inconsistent of format with
 argument type in trans_xen.c
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
