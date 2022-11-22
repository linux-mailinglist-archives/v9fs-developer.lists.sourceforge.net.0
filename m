Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 589AC633126
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 01:11:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxGsO-0000ig-41;
	Tue, 22 Nov 2022 00:11:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oxGsM-0000ia-9Q
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QzhrOUAQP1dDRAYbRqs4t/e9Y2uqBB20wcovyN9kH70=; b=J9/3iKxQsHCfQ243GlInBjB2m0
 9zV02dECUuR7FK11UUIIGhuOM/LXxdnwrXJX9ETDxZb5RBMCK5IIUoJ8fjvp8DIxFofz2EQr5js51
 EUhxvrSOCzb2rhD2eD1fFdVJmaGI3+MNglbQWtgSJlwr9WQdsJYOD02+fFIdAtFjsypw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QzhrOUAQP1dDRAYbRqs4t/e9Y2uqBB20wcovyN9kH70=; b=j
 Kzrutl0/OlDoD7k9PvQ8l5Pel4IjOcrnY5hrMZo82x3MI+OJ1RZWFcjtWwjE59+PVVp1PzMLyd6lw
 igtvFXOqfZE/hujwX5aSk3XRoeCXCrRK6O7fU7gF0lwnPfLgAZ7ZPtCcg/oZv1kYolPeZbO4a5xOM
 wVGIvBipgwj1vyN8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxGsI-009gzt-6A for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:10:58 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 02F9BC01C; Tue, 22 Nov 2022 01:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669075852; bh=QzhrOUAQP1dDRAYbRqs4t/e9Y2uqBB20wcovyN9kH70=;
 h=From:To:Cc:Subject:Date:From;
 b=ebP10oNt+Dk7e7sKAIMGn+EDo0M4/jy6chix7SjOPRB9L9nDLibOE9dzuF20XwTzE
 e1vAMBPrj3lrkt/hsYcAS72CHY/gxut86NpVay/CrrqdRaR7lWpMDB/7CeEc+cZ8cV
 I+ZuwNizIbymaBIOJs7c9VqALx3PmilWcqsN22XdlH9QTajh2xM2yV9ZAJTvQybM8y
 UPxYNTIYQfIbGSAylgUV3PuAbQcMdEfpEpbJFTwiBfGjmuvI3Dq1Qa7pOmJ0mh0PSq
 jzzpDx/uB+ym1j55KZqI5bNNaWUFGMVXIsJgGnxztTl5Z95ozskh5qC+NEE/OgG01+
 e0l0QmcHxfCaQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AD670C009;
 Tue, 22 Nov 2022 01:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669075851; bh=QzhrOUAQP1dDRAYbRqs4t/e9Y2uqBB20wcovyN9kH70=;
 h=From:To:Cc:Subject:Date:From;
 b=zHlCKufGNvI4Xksi9kl1ZNwMiMPmJsegF7rbq9KZAYBSn3hpeHGnZKQ9BIRnoyXFM
 9lOO9XcrHbJlPZzH7/5vyHrikq2bObB7Iaa/BZvlxNpy/vKIzobjlv0S+aCvZIt9gU
 y5jhnOVbYTJfSAzlbz14q99/YGhBs+v0gA/HloLNr1IW/lAg1zZVHzmFs9mubM+tEO
 QPKfhcUgLip0NL/WZevnmlGlgtnbc74AKp74GlJ8X8RcTSkZEdKZpP52IjVcYWJyAy
 /HNJfOaxycYPHRybzt+OWUofWEMbTpybtExNDSQX/K+9z8+OgsFLl3jXlwhS1ngRAz
 gC07QcDRfpRdA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9b56555b;
 Tue, 22 Nov 2022 00:10:39 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 09:10:25 +0900
Message-Id: <20221122001025.119121-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: while 'h' is packed and can be assumed to match the request
 payload, req->rc is a struct p9_fcall which is not packed and that memcpy
 could be wrong. Fix this by copying each fields individually instead. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oxGsI-009gzt-6A
Subject: [V9fs-developer] [PATCH] 9p/xen: do not memcpy header into req->rc
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

while 'h' is packed and can be assumed to match the request payload,
req->rc is a struct p9_fcall which is not packed and that memcpy
could be wrong.

Fix this by copying each fields individually instead.

Reported-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Suggested-by: Stefano Stabellini <sstabellini@kernel.org>
Link: https://lkml.kernel.org/r/alpine.DEB.2.22.394.2211211454540.1049131@ubuntu-linux-20-04-desktop
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
Follow up from the previous xen patch's review.

This isn't an immediate fix so I don't think this one should be rushed
in with the rest of the overflow fixes -- I'll let this sit a bit in
-next after reviews.

 net/9p/trans_xen.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 4665215bc98b..e8e3f54a837e 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -216,7 +216,9 @@ static void p9_xen_response(struct work_struct *work)
 			goto recv_error;
 		}
 
-		memcpy(&req->rc, &h, sizeof(h));
+		req->rc.size = h.size;
+		req->rc.id = h.id;
+		req->rc.tag = h.tag;
 		req->rc.offset = 0;
 
 		masked_cons = xen_9pfs_mask(cons, XEN_9PFS_RING_SIZE(ring));
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
