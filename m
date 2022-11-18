Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CD762F6A1
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 14:56:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ow1rE-0000rr-AS;
	Fri, 18 Nov 2022 13:56:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ow1rA-0000qD-RE
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 13:56:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CQZUY2pFucgWJB1sP94KlRMevw8XHM75WorqTLQ5yWo=; b=eWh+hGMJlKDY8Zn0cPWHUXQcDr
 y6P50H5wHJA5/+6yGgHx0xAQ6ZSfyy4cp9fyhzSEyliVFvJGTCilTaDoXvatjfJFVQpO8XDOkng8Z
 yYlg9mz/h+vySFAYxLLA/LIWkUg+m/StTKx3k5gPThoV3tZjyjMvIRhcObxExHqAtcCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CQZUY2pFucgWJB1sP94KlRMevw8XHM75WorqTLQ5yWo=; b=l
 WLlHuBlDO0zmmvb/dYOvObdFgqq0OYLki8h3OO3eYYzn90g8lLgzU20dn/ZZ0+mIakdBH79k9MxE2
 RYvwxMkXJrDctJGa5zSIHB77GuN9bEWLXlQryYWoApQ5TXspxj6TWhln6Y22norWwcomhco7i3Xw+
 8UkgbIbNNokfq480=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ow1qm-00CZzp-PC for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 13:56:18 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D333DC01C; Fri, 18 Nov 2022 14:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668779769; bh=CQZUY2pFucgWJB1sP94KlRMevw8XHM75WorqTLQ5yWo=;
 h=From:To:Cc:Subject:Date:From;
 b=uSvAaMZ0OpQj5Glb1zO0fX4Vtf2UxJ5sbZfbsKWIfztAOXVUTsOHzFmFyc0pmE+t5
 GQrWZvuuh3a4liNcgeOQwvCoEHFs6y2K7+Yt/77E3yJDKEzFtZGiT3WjkeWt0H/iwl
 82ZX0SajJI92Rqi3iomzgjTv9stjt2NyPtAGTpBmygKeGXdJgg8r0vstY/LgzWvsFK
 tyAHuR1PD6EHY3hz5GWH16hYAsYjBEYo9IM3arp7YcJD4h/hdUtX38LCkhCSNOORBg
 gWmorINpw+gHsHqP1SOebXgTBaNQYE0ydZ5qQRSt1lzWsAO422MKQjywksSUlOO7wg
 gFS1rQN5O+GGw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6A553C009;
 Fri, 18 Nov 2022 14:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668779760; bh=CQZUY2pFucgWJB1sP94KlRMevw8XHM75WorqTLQ5yWo=;
 h=From:To:Cc:Subject:Date:From;
 b=XiMNoADAAyrOPpLTaJNzk8a4IsyZYtJ+O7/RXIn5s83g068QaP45+jsLpxBpwDnfo
 C5+OMLcLzxe40UuXlB7wiAwffKkXW9YveqbrK5IVaa9RH/AuJ8whqMXlyFG0G1UziS
 lGWwTs0s8GmziCje641LY3z6twFh3tHcype78ggsA7Hu92Lp+GfQkzjlrmOoK+p19f
 X9prWTCp8OX5ByauPLfYvkIsBpzcL4TsnSaOuOqmhi9sac1b6FjPcyKq1PDoBPbiZA
 jHzQxFgLOlkWJ36wmqfexu+Y9wAqpdP3vdSONWV9ImJSC9UtKlNy/YWd7WPY3okRFb
 62TjSrtWPcbGA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 286f58e1;
 Fri, 18 Nov 2022 13:55:49 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Date: Fri, 18 Nov 2022 22:55:41 +0900
Message-Id: <20221118135542.63400-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: trans_xen did not check the data fits into the buffer before
 copying from the xen ring, but we probably should. Add a check that just
 skips the request and return an error to userspace if it did not f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ow1qm-00CZzp-PC
Subject: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for buffer
 size
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
Cc: v9fs-developer@lists.sourceforge.net, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

trans_xen did not check the data fits into the buffer before copying
from the xen ring, but we probably should.
Add a check that just skips the request and return an error to
userspace if it did not fit

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---

This comes more or less as a follow up of a fix for trans_fd:
https://lkml.kernel.org/r/20221117091159.31533-1-guozihua@huawei.com
Where msize should be replaced by capacity check, except trans_xen
did not actually use to check the size fits at all.

While we normally trust the hypervisor (they can probably do whatever
they want with our memory), a bug in the 9p server is always possible so
sanity checks never hurt, especially now buffers got drastically smaller
with a recent patch.

My setup for xen is unfortunately long dead so I cannot test this:
Stefano, you've tested v9fs xen patches in the past, would you mind
verifying this works as well?

 net/9p/trans_xen.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index b15c64128c3e..66ceb3b3ae30 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -208,6 +208,14 @@ static void p9_xen_response(struct work_struct *work)
 			continue;
 		}
 
+		if (h.size > req->rc.capacity) {
+			dev_warn(&priv->dev->dev,
+				 "requested packet size too big: %d for tag %d with capacity %zd\n",
+		                 h.size, h.tag, rreq->rc.capacity);
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
2.38.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
