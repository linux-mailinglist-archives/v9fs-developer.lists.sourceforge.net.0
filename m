Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DDD63AF7E
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 18:42:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozi9P-0002eQ-Tn;
	Mon, 28 Nov 2022 17:42:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ozi9P-0002eK-7H
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qggukft7e1A7ADltlQuxr9ivwSAll7VYstuCO/pRnaA=; b=m57O2PqhXEn+zP9hV61BDgDGIH
 LhHQJkrCnxadFawFD2T7Ey1f9KHSmyC44ds6r4G7sEsg74hiQsN0Dl5tcRj6oRFM2tM1jh7E88+YN
 aIxfuYt/mXgPbDxTgrRtsEBDnTin+/ly28r7xLa4LA0fTQ0sCsO5wBv234JLHfjdCcCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qggukft7e1A7ADltlQuxr9ivwSAll7VYstuCO/pRnaA=; b=W1m5cyZVn+BRfvTlwwI3bG6akB
 1m/c/YNHPhfLzhlvJDYgULbMf+BfR2X7TDZU+ovbIoKEsIHvjc6SxRyoOIHNBEafFR4i0l39S+/YQ
 eyYSGtyXvy7n/cqGtLjqsG0Xp8Ktdixgt9+DhWj35q3c7mtTzYQAhzooJO9z9g6DxDlo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozi9O-00H07Z-K8 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:42:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3DBD3612C4;
 Mon, 28 Nov 2022 17:42:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B750EC433D7;
 Mon, 28 Nov 2022 17:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669657353;
 bh=0xXbsxiMPlFyZEbS3ZNMvu5qgWqcrJYiqoe5lSqqVj4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DxrgtMSi4rb+UOeyiE53MgCLWKbfUgYatEl+VGkrW+Yatt5IbywkChI0jYuISZM+u
 WlijvNJkkPKUqF+N05euQoDomgeTsinO8aJpC9l2L1uxFsKOBZ5E8YKLo/kwwBhA+6
 UCZZe/9o0YIRGZ4ee62I9Kx93s8WVm+F1j2Zh5AclQqWd9i0eCEMN7nRrtY/Ho0DOb
 PH5toskeh2Y5ND/hdukwzmvJ64Ye7nCVJ57IZG1BMtnE2tbHuCZk+4VfC7l4yI0mSL
 dJjNm8hVUP4Qc9vnqsH/lJvYJw2VgSOtFE0HpsECdgphLxtMHqS9hI1+vu2PnE/H1g
 MXB/AsDOHgn2A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 28 Nov 2022 12:41:58 -0500
Message-Id: <20221128174201.1442499-15-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174201.1442499-1-sashal@kernel.org>
References: <20221128174201.1442499-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dominique Martinet <asmadeus@codewreck.org> [ Upstream
 commit 391c18cf776eb4569ecda1f7794f360fe0a45a26 ] trans_xen did not check
 the data fits into the buffer before copying from the xen ring, but we probably
 should. Add a check that just skips the request and return an error to
 userspace if it did not f [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozi9O-00H07Z-K8
Subject: [V9fs-developer] [PATCH AUTOSEL 5.4 15/16] 9p/xen: check logical
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
index 2779ec1053a0..f043938ae782 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -230,6 +230,14 @@ static void p9_xen_response(struct work_struct *work)
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
 
@@ -239,6 +247,7 @@ static void p9_xen_response(struct work_struct *work)
 				     masked_prod, &masked_cons,
 				     XEN_9PFS_RING_SIZE);
 
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
