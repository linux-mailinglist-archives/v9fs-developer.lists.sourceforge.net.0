Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F81633107
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 00:56:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxGeB-00071Z-Pl;
	Mon, 21 Nov 2022 23:56:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fffb512c532bf1290f0f2b1df6068b2ff6cd14c0@lizzy.crudebyte.com>)
 id 1oxGe9-00071T-Si for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O2ndXwHNWzZYBOJ5a+JRMM+u+i9Ll5yf5vhTnt2nMGM=; b=GVV/d8op6Gws+xywRE2u5WRwDz
 zswPPUa2Z0GBfgGBaB/UeY7KqPg1G6UizUdzCzfH5mvTS+f49iahyvOjyJj/wDu4Qt5hbYRl+w/bZ
 dQOT3lMEcCWwO4JuxEqQdlseJpfStFMihrPDUJ02KMiDDNxMIs9HRZNsktSztNkKLj8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O2ndXwHNWzZYBOJ5a+JRMM+u+i9Ll5yf5vhTnt2nMGM=; b=aRvxawv3e3v8ctIlCNdD/f91bz
 ghiqiToZr13lK+EnFlKSE1LRE/Agvof92gGfuBbQMWRVPsjqq+zmT9717tmqY2fsOyYIb2Ek+F44y
 WIpfgnLbCl7bB09Bd0VJeb832dxvIcJkvShHXpUwj+R/1sVP2snek2Vyj6b25FyG11DU=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxGe6-009dzb-4v for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=O2ndXwHNWzZYBOJ5a+JRMM+u+i9Ll5yf5vhTnt2nMGM=; b=gT6vu
 VeAinBNNo5tAdvTdyXmXVqultC8L6ZWB61YAijycnbdUll4k4hes2GpTHIE3N0hNDcvGBMfDe9mk2
 e2Ohw/x1pTqMthoa8v8E419LXUURYCYeAmVY6G+40DqMF5iylQPVCVPZR/Z/YG7ZI1aNutvNgK4TR
 RQQNdhfCGtvZ5dsrfP5rVwKC6Tigt+JAiqKEdpPuzAqflbG0wb2/soqw3s4V4jHduGNfB9tfCNZtd
 ErWcoo1UxodYFLhzMkIVPvQ2j/yEbSL2VNmd4atPIDIgS8nB3NcAB3SNf1+B5x834VmcuVbrNwfDO
 q5TMmYHeqy+azhGiqnIUSXu7/0ANw==;
Message-Id: <fffb512c532bf1290f0f2b1df6068b2ff6cd14c0.1669072186.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1669072186.git.linux_oss@crudebyte.com>
References: <cover.1669072186.git.linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 00:04:08 +0100
To: Dominique Martinet <asmadeus@codewreck.org>,
 Stefano Stabellini <sstabellini@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Since 60ece0833b6c (net/9p: allocate appropriate reduced
 message
 buffers) it is no longer appropriate to check server's response size against
 msize. Check against the previously allocated buffer capac [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oxGe6-009dzb-4v
Subject: [V9fs-developer] [PATCH 2/2] net/9p: fix response size check in
 p9_check_errors()
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Since 60ece0833b6c (net/9p: allocate appropriate reduced message buffers)
it is no longer appropriate to check server's response size against
msize. Check against the previously allocated buffer capacity instead.

 - Omit this size check entirely for zero-copy messages, as those always
   allocate 4k (P9_ZC_HDR_SZ) linear buffers which are not used for actual
   payload and can be much bigger than 4k.

 - Replace p9_debug() by pr_err() to make sure this message is always
   printed in case this error is triggered.

 - Add 9p message type to error message to ease investigation.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 30dd82f49b28..63f13dd1ecff 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -514,10 +514,10 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
 	int ecode;
 
 	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
-	if (req->rc.size >= c->msize) {
-		p9_debug(P9_DEBUG_ERROR,
-			 "requested packet size too big: %d\n",
-			 req->rc.size);
+	if (req->rc.size > req->rc.capacity && !req->rc.zc) {
+		pr_err(
+			 "requested packet size too big: %d does not fit %ld (type=%d)\n",
+			 req->rc.size, req->rc.capacity, req->rc.id);
 		return -EIO;
 	}
 	/* dump the response from server
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
