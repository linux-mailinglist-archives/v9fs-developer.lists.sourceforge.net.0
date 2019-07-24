Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C121D72C76
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 12:40:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqEgl-0008E5-Hx; Wed, 24 Jul 2019 10:40:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1hqEgk-0008Dv-H0
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 10:40:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wO4O/Gvif+MADZGPdW4dqB529LtcQYyXiVt50YTB8sQ=; b=Wz1+2sqPSMLGZvhQXB3PQk5wNw
 Fqee5HP/iJN5tfnO6KjlTiVLDvRE0ByP0iZiVJybo90NpyMtKiIa6KyjAxoTcGyDh6zeHok3qUZTi
 avsNfd3NPuTAkx9mUzHPzdAYVkkmwh+yTWf0Hyi3hhY/lcnEj4357kDN1N2XJDWQMfZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wO4O/Gvif+MADZGPdW4dqB529LtcQYyXiVt50YTB8sQ=; b=AC8IAIWwCeXHahhkmw6ObI7xcJ
 kh/hs4A1JbpwEpQAkw84K9C77/QNS4lXPLJxntAr3jClnhTHoy8Td41s5HFgMu7I3+Zmts3dEcBA6
 3sMxpv3ZXp1uCyyHkCreMTX36RZQaihQIbo6Cll+qb9KbNhnJhcI3aGgKog0B10XCKzA=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqEgj-00E080-4d
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 10:40:02 +0000
Received: by mail-pg1-f193.google.com with SMTP id l21so21024144pgm.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 03:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wO4O/Gvif+MADZGPdW4dqB529LtcQYyXiVt50YTB8sQ=;
 b=L4Cn/0ZMJQOyjLGxVaYXm152UsTOpbzYiYWqFq9i917amlQjuDqAGIDml7mnGbbS18
 hr2goSQqpjPH+wib0GQ1sPE4/MmxAPeSOzHpdZYyxwWeORTnnZtFuHpqArXYlnhHuB0/
 AU3Nr3KjBpWkKtCMlJBtl6PXylB84eX4sKomMC0Q9hXUa2/UWO3gGU5WPtpwKvnC2V5t
 pVXYu7f3G3tabd0agHqv02mcBr2ywbWKxqDIlnQQDricK/1cnQIMKCRjmpxJHxkmrDtV
 m3/5YUtHLMA8fuCdjIphE7TmX/xOXeZMiE/ukZmvmKj6fmdN3Byo7VO/vWb+k2JHHmgw
 gEBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wO4O/Gvif+MADZGPdW4dqB529LtcQYyXiVt50YTB8sQ=;
 b=D/mGAxGpSjDe7+Hj4w74ZSzXLZyJaNICSNYSROiNFv3JkbnQb0hR7GBfPI9sfciE94
 KwlGBzP2ClG3oh5IndxBrUhJOFzvxNFkDbcTuV7PoSbqKAJSOCV2PCBwhHc1bImnP80D
 A75/XH1mgsKKdh0auCYTJPX+YBdMNV1sEhpelJPTdbflmMLyMJoGPh9ENDqZJjCK/lmY
 YCbrMBMc7nJzubPWkQ+z7YfJ4dsAER/JWvn6ToYnJBgLzLkFYj5SUO7f1Yt1r6GF3x/T
 SZT8vBCkqWbWIlMDsbLNtmGhr2yzW/GddWTj+SrQI6Kmf4TufqlSNvvvqFxTUAwmudB9
 i/Jw==
X-Gm-Message-State: APjAAAX0P/NTIVq7z+OPYlmlZN562MaGfyBZCptrh0C64z3g2VHVOow4
 yrXK7FyZn8gAbZkBQhKaeM4=
X-Google-Smtp-Source: APXvYqyB5tVuEHxgF/eAqyCET+wGzXScctFnZx1o/V16PJa1fLsTcB4Ztr+LWCuALB5012je06dYuA==
X-Received: by 2002:a62:1515:: with SMTP id 21mr10953193pfv.100.1563964795549; 
 Wed, 24 Jul 2019 03:39:55 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id i7sm36393739pjk.24.2019.07.24.03.39.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 03:39:55 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net
Date: Wed, 24 Jul 2019 18:39:48 +0800
Message-Id: <20190724103948.5834-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hqEgj-00E080-4d
Subject: [V9fs-developer] [PATCH] net: 9p: Fix possible null-pointer
 dereferences in p9_cm_event_handler()
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
Cc: v9fs-developer@lists.sourceforge.net, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In p9_cm_event_handler(), there is an if statement on 260 to check
whether rdma is NULL, which indicates that rdma can be NULL.
If so, using rdma->xxx may cause a possible null-pointer dereference.

To fix these bugs, rdma is checked before being used.

These bugs are found by a static analysis tool STCheck written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 net/9p/trans_rdma.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index bac8dad5dd69..eba3c5fc2731 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -242,18 +242,24 @@ p9_cm_event_handler(struct rdma_cm_id *id, struct rdma_cm_event *event)
 	struct p9_trans_rdma *rdma = c->trans;
 	switch (event->event) {
 	case RDMA_CM_EVENT_ADDR_RESOLVED:
-		BUG_ON(rdma->state != P9_RDMA_INIT);
-		rdma->state = P9_RDMA_ADDR_RESOLVED;
+		if (rdma) {
+			BUG_ON(rdma->state != P9_RDMA_INIT);
+			rdma->state = P9_RDMA_ADDR_RESOLVED;
+		}
 		break;
 
 	case RDMA_CM_EVENT_ROUTE_RESOLVED:
-		BUG_ON(rdma->state != P9_RDMA_ADDR_RESOLVED);
-		rdma->state = P9_RDMA_ROUTE_RESOLVED;
+		if (rdma) {
+			BUG_ON(rdma->state != P9_RDMA_ADDR_RESOLVED);
+			rdma->state = P9_RDMA_ROUTE_RESOLVED;
+		}
 		break;
 
 	case RDMA_CM_EVENT_ESTABLISHED:
-		BUG_ON(rdma->state != P9_RDMA_ROUTE_RESOLVED);
-		rdma->state = P9_RDMA_CONNECTED;
+		if (rdma) {
+			BUG_ON(rdma->state != P9_RDMA_ROUTE_RESOLVED);
+			rdma->state = P9_RDMA_CONNECTED;
+		}
 		break;
 
 	case RDMA_CM_EVENT_DISCONNECTED:
@@ -277,12 +283,14 @@ p9_cm_event_handler(struct rdma_cm_id *id, struct rdma_cm_event *event)
 	case RDMA_CM_EVENT_ADDR_ERROR:
 	case RDMA_CM_EVENT_UNREACHABLE:
 		c->status = Disconnected;
-		rdma_disconnect(rdma->cm_id);
+		if (rdma)
+			rdma_disconnect(rdma->cm_id);
 		break;
 	default:
 		BUG();
 	}
-	complete(&rdma->cm_done);
+	if (rdma)
+		complete(&rdma->cm_done);
 	return 0;
 }
 
-- 
2.17.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
