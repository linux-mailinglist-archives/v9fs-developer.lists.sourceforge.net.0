Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 511D23D4F4E
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Jul 2021 19:51:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m7iHx-0000jL-T5; Sun, 25 Jul 2021 17:51:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <harshvardhan.jha@oracle.com>) id 1m7iHx-0000jB-4B
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Jul 2021 17:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nV21xZup6BtFrcJ1Ko2nw+MYygfJSztbbPpLqwYpt/8=; b=lGKx4TllC3KHUwRoZmwbGny7bI
 sL6GGwhC1nNvvX/Rwu8h04KJatIgiSiIcxKIqiB44v/ZfQ7twB0gSuuR8BThX3pG4WpZvarRRn+lb
 tekqbXq7B5xYc2Qen75nUkoZ+F1YthDPRRjHFNhfoP8ZlHTlPT54ViPYh6MSW033E8fw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nV21xZup6BtFrcJ1Ko2nw+MYygfJSztbbPpLqwYpt/8=; b=N
 EJ1PQ/pnnQmb0EJVpa6ANmwF//Tpj2S/0uQTWdq6IiraVUmhBPQ7Dgwl5Pn/xnfo4nKSBQSkjY4w/
 OkL3gN3eNdFwchhNP0q5bTMry0JA2b0mZrMGlbvKnGtm0QjkC+I8w8n0iNVi4Lj/D7Ii7nkaqHeqn
 9mge8kUkAiWAauxg=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m7iHv-0000s4-Un
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Jul 2021 17:51:45 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16PHpQwn003121; Sun, 25 Jul 2021 17:51:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2021-07-09; bh=nV21xZup6BtFrcJ1Ko2nw+MYygfJSztbbPpLqwYpt/8=;
 b=Tc1yqffAQQ9kV5p+Jo2D3ymJG31bX0K2Ay0m3bhB+R7T59iZKkTjxTVzccbP2alvw/rh
 5SlIsjvWhKC+rSrXdsRQUAd2Gklk9t8EApro+MzgU91Kuy+6rCdN9vFfHNvhC1cVN6BZ
 pZKbTEDGmBFZGE4fN2TXYsWCRLYRT/yJuaLvS5hZ4anPveAPxjZQ96WvmK4eUsReHTv1
 Ef6qdWumETNx/xuuK7wnD8LXvEWhaiaWqKZ3aTU+Y9DMKGxzmTIzapO2JYsbzQi0y4wu
 PMXMls15LDs9zcfTr7okMxU2StKNWY8moUkKaV3AhqJUgAS1hgUdRBO8KzxOalNheKA0 rw== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2020-01-29; bh=nV21xZup6BtFrcJ1Ko2nw+MYygfJSztbbPpLqwYpt/8=;
 b=hltvANxMJhwdY3wMyMMlkiUl6lofzy41ZVi+IuYVIK61T4EoFuLn3IwkRnY4z4p+dWVU
 LAKSMgPoYdQqU6jfKJJITgqCK9Yyl6ZG7sn4IfBvKcOCdeqZb5M7aUP0pDEVZZYB8vI2
 pG+1K1WMwg5H6SkFoHLvPvuvJ0U5ThSIerPyoUM1jw3gyE48XuzKsDc98fSI1T1Phey+
 jhowZA4w1dd820O1gZf3rpCeluZW/yMo4Cjj0OrDtORZJjiPU3Bjmg0l5T7IuVAjlsJQ
 PN0NEnF/hgVJdh5pPmfEZSzVVpZqQHARSaNmWOdnSNLiSrAjZT5/2wrCW62Pp93esSJp BA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3a18nfr5h6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 25 Jul 2021 17:51:26 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16PHodrw178904;
 Sun, 25 Jul 2021 17:51:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3020.oracle.com with ESMTP id 3a0vmrhdau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 25 Jul 2021 17:51:13 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 16PHpDqf185221;
 Sun, 25 Jul 2021 17:51:13 GMT
Received: from manjaro.in.oracle.com (dhcp-10-191-232-135.vpn.oracle.com
 [10.191.232.135]) by userp3020.oracle.com with ESMTP id 3a0vmrhd6m-1;
 Sun, 25 Jul 2021 17:51:13 +0000
From: Harshvardhan Jha <harshvardhan.jha@oracle.com>
To: ericvh@gmail.com
Date: Sun, 25 Jul 2021 23:21:03 +0530
Message-Id: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Proofpoint-GUID: NI4P3Z8C6NtXY8yKBG6bkZ9y6tr52wJg
X-Proofpoint-ORIG-GUID: NI4P3Z8C6NtXY8yKBG6bkZ9y6tr52wJg
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.165.32 listed in bl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1m7iHv-0000s4-Un
Subject: [V9fs-developer] [PATCH] 9p/xen: Fix end of loop tests for
 list_for_each_entry
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
Cc: lucho@ionkov.net, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Harshvardhan Jha <harshvardhan.jha@oracle.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The list_for_each_entry() iterator, "priv" in this code, can never be
NULL so the warning would never be printed.

Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
---
From static analysis.  Not tested.
---
 net/9p/trans_xen.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index f4fea28e05da..3ec1a51a6944 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -138,7 +138,7 @@ static bool p9_xen_write_todo(struct xen_9pfs_dataring *ring, RING_IDX size)
 
 static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
 {
-	struct xen_9pfs_front_priv *priv = NULL;
+	struct xen_9pfs_front_priv *priv;
 	RING_IDX cons, prod, masked_cons, masked_prod;
 	unsigned long flags;
 	u32 size = p9_req->tc.size;
@@ -151,7 +151,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
 			break;
 	}
 	read_unlock(&xen_9pfs_lock);
-	if (!priv || priv->client != client)
+	if (list_entry_is_head(priv, &xen_9pfs_devs, list))
 		return -EINVAL;
 
 	num = p9_req->tc.tag % priv->num_rings;
-- 
2.32.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
