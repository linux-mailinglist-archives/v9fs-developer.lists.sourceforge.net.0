Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB4563AF2E
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 18:39:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozi6X-0000JI-8r;
	Mon, 28 Nov 2022 17:39:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ozi6W-0000JC-3g
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1bAFepfsV+mup60YGW7Hm13tuo2aA9CAdiFdY5rNL9M=; b=L9WkICbPYl7iqNg9Iu/MCK4Dkm
 2CLID9/EpwiHDfc+SSOo07LuffDPggUm4MxgPgxvhcik2jpMr/g4l+GMyjGYfz5HeiCLLM5Vl27SV
 yrAY1fVaFxetsBPHroAd8ykXwt/qnh8Kgpuug8fMr4cHMf3qZH/kmpO+AdYZXUCiy9pg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1bAFepfsV+mup60YGW7Hm13tuo2aA9CAdiFdY5rNL9M=; b=DIh+o2zvG/z2PTAykNZtOwN7IR
 slv9q2B32Evzl1mH8mfa/RmJWjzXPH4YaiGcjGdDbOvbDKBxNyQQW68cgxiFANsfD4BmafGy+fbtU
 +WuLFuDVdmZicqVm11dbYXo2UZJEOnlrzF8eEhD07b6YjOb6b0FvQnEwsKlvxEn2P1uM=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozi6U-0006cz-UQ for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:39:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D040EB80E9D;
 Mon, 28 Nov 2022 17:39:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 480B8C433D6;
 Mon, 28 Nov 2022 17:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669657170;
 bh=y0onyTytyGueODo0bQ1AhuLo99a7hvNCbNOB8XaCVK8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W2EUkKKr40XEDBth5uobpeKDvTRMhF8jP9ld30LRXt9TVPuD2jNhlWn7ocmOCJcf9
 M2BO7ONvSuQbQKFTvpDTi20Rf29H/IgMnuGzOgVbRWw26kNX+5ukvkAlFwRjVnlesF
 uMSFewFqLpodKciGOW5o4KlFFGxVBmY157/WuWAmYSV6Hh48Pukjqm3/7Fk9MslrN1
 kP0RbXdkttf3KpzCRsTUaGtTnbc4m6gHk0SVV9cZ5BpzgVq+YspAyO9DuE6K4T8L2s
 j9wmib41MTE7W0xnDQ+7LTW48uBtByMyA43xqLxRxzkO4DryYuIB4IMBjOCMsDaamj
 JPcps6mCOuq5g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 28 Nov 2022 12:36:14 -0500
Message-Id: <20221128173642.1441232-34-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dominique Martinet <asmadeus@codewreck.org> [ Upstream
 commit 391c18cf776eb4569ecda1f7794f360fe0a45a26 ] trans_xen did not check
 the data fits into the buffer before copying from the xen ring, but we probably
 should. Add a check that just skips the request and return an error to
 userspace if it did not f [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozi6U-0006cz-UQ
Subject: [V9fs-developer] [PATCH AUTOSEL 6.0 34/39] 9p/xen: check logical
 size for buffer size
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
Cc: Sasha Levin <sashal@kernel.org>, lucho@ionkov.net,
 Stefano Stabellini <sstabellini@kernel.org>, ericvh@gmail.com,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

[ Upstream commit 391c18cf776eb4569ecda1f7794f360fe0a45a26 ]

trans_xen did not check the data fits into the buffer before copying
from the xen ring, but we probably should.
Add a check that just skips the request and return an error to
userspace if it did not fit

Tested-by: Stefano Stabellini <sstabellini@kernel.org>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Link: https://lkml.kernel.org/r/20221118135542.63400-1-asmadeus@codewreck.org
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/trans_xen.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 227f89cc7237..0f862d5a5960 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -208,6 +208,14 @@ static void p9_xen_response(struct work_struct *work)
 			continue;
 		}
 
+		if (h.size > req->rc.capacity) {
+			dev_warn(&priv->dev->dev,
+				 "requested packet size too big: %d for tag %d with capacity %zd\n",
+				 h.size, h.tag, req->rc.capacity);
+			req->status = REQ_STATUS_ERROR;
+			goto recv_error;
+		}
+
 		memcpy(&req->rc, &h, sizeof(h));
 		req->rc.offset = 0;
 
@@ -217,6 +225,7 @@ static void p9_xen_response(struct work_struct *work)
 				     masked_prod, &masked_cons,
 				     XEN_9PFS_RING_SIZE(ring));
 
+recv_error:
 		virt_mb();
 		cons += h.size;
 		ring->intf->in_cons = cons;
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
