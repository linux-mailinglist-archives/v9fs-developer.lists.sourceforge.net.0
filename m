Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E07CC2E76D8
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Dec 2020 08:26:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kuVsi-0004gH-Ll; Wed, 30 Dec 2020 07:26:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <abaci-bugfix@linux.alibaba.com>) id 1kuVsh-0004g2-1A
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Dec 2020 07:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ddUudo+P8Nk4aytmPeHbtdCUqgevxLlZc0WL/jqC24U=; b=MaSe/3CXMjKeiDuxaWk6Gf/Od9
 TRg4NVjURdBychkWXUpUMXW/pWQh5AwVXF4+nVonNNTLcwplMFqCHqdoOrnkKyG/+SWxGfPw+xZZL
 g+EugGohQsHneYrjP5Csp9aUAo4GHOPx2o0YEJ9uFX92Qy718VHi4vzMZdiQfSreroBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ddUudo+P8Nk4aytmPeHbtdCUqgevxLlZc0WL/jqC24U=; b=mc57l0Y3OBLBuGxyF5BB2/Yez2
 qTnx6jUgqk51Qz8t8r5nVK+Mb3cwzALmEYGRJOibr1sDeAUTVGiL3FIeBmbTV4GTxQOmYHb6Iulc2
 tZyAkya77Y1erij8NNyltP+tIRLv2RiFdi1mxUff6hQ32grXoC4fb0teC4XL9xXtRuLU=;
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kuVsT-00By3G-TT
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Dec 2020 07:26:50 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R481e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=9; SR=0;
 TI=SMTPD_---0UKD9.Mt_1609310714; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0UKD9.Mt_1609310714) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 30 Dec 2020 14:45:30 +0800
From: YANG LI <abaci-bugfix@linux.alibaba.com>
To: asmadeus@codewreck.org
Date: Wed, 30 Dec 2020 14:45:13 +0800
Message-Id: <1609310713-84972-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1kuVsT-00By3G-TT
Subject: [V9fs-developer] [PATCH] 9p: fix: Uninitialized variable p.
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, YANG LI <abaci-bugfix@linux.alibaba.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pointer p is being used but it isn't being initialized,
need to assign a NULL to it.

Signed-off-by: YANG LI <abaci-bugfix@linux.alibaba.com>
Reported-by: Abaci <abaci@linux.alibaba.com>
---
 net/9p/trans_virtio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 93f2f86..d4d635f 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -342,7 +342,7 @@ static int p9_get_mapped_pages(struct virtio_chan *chan,
 		/* kernel buffer, no need to pin pages */
 		int index;
 		size_t len;
-		void *p;
+		void *p = NULL;
 
 		/* we'd already checked that it's non-empty */
 		while (1) {
-- 
1.8.3.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
