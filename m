Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 639A4692F3B
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 08:51:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQkf7-0004zm-8S;
	Sat, 11 Feb 2023 07:51:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQkf5-0004zf-60
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0dG1T5rTNJj68tFKpAZu+B7hHGU13VEF6aoe1h4gpx0=; b=lgiCvGHqJggR3Ls5WTnQsBWtbe
 Rum2ZV2VorRhhjLn97aIvUsBmNMX4DHKMV/PuGZArm6o3nnIKRSCY/Pp67ZzcOkq7IlV6LwsrK2AE
 yIdOf6g5NSDOV5Az4Iy45wIgr+3yJQrYa0nCOXseAu9dNRk302rqOqXZp2HQalOf1oro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0dG1T5rTNJj68tFKpAZu+B7hHGU13VEF6aoe1h4gpx0=; b=CVDPZcFhq1OlIIH6YlBiC8x0/r
 KKHYGJP9lFGfYT5Vb/Ib1HAcRc+QNWYf71i9qWGbbkZ041ltpgRgiS6y00n1eZMxboNqqKecLjy1l
 2dQFrPXPTOJLPxTwN1ucLYFCmeYP6wf+nj2D+woMNRoXycgmzCtiGmmN9NWp2wRAxtbA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQkf0-0001Bs-SZ for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:04 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E8C8BC024; Sat, 11 Feb 2023 08:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101879; bh=0dG1T5rTNJj68tFKpAZu+B7hHGU13VEF6aoe1h4gpx0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RBn9QulEmLuWlHT2eRLH8T0dFTSaM2Ogzr+ibPEeADMRtJPOP1QifNtSgepbDDiaP
 nXYnhuEVFv65LWu8ynDOvO9KXsaGJMduer8+CFu4Quxb4x3663LVQv4wY08cNoHDPA
 stfbU8l8M4ZefNBlUk8MAIJoHkUijr/OTYe2c34wKKaR1X9051Rb4O8zDGGfruaIhF
 RY6gHvolHQOEudQkknXwJJC3tker2amohpF4n29BtorhUW186EcyrD7PofGeUzKMxB
 xA2VFWHQZZqRWZcsH2xjkHQi1LWJHDf6gu+NmfOvCuCONog9JaLYYN37XAlr3BHOqE
 B3J1riCC0LHDw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2A438C01F;
 Sat, 11 Feb 2023 08:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101879; bh=0dG1T5rTNJj68tFKpAZu+B7hHGU13VEF6aoe1h4gpx0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RBn9QulEmLuWlHT2eRLH8T0dFTSaM2Ogzr+ibPEeADMRtJPOP1QifNtSgepbDDiaP
 nXYnhuEVFv65LWu8ynDOvO9KXsaGJMduer8+CFu4Quxb4x3663LVQv4wY08cNoHDPA
 stfbU8l8M4ZefNBlUk8MAIJoHkUijr/OTYe2c34wKKaR1X9051Rb4O8zDGGfruaIhF
 RY6gHvolHQOEudQkknXwJJC3tker2amohpF4n29BtorhUW186EcyrD7PofGeUzKMxB
 xA2VFWHQZZqRWZcsH2xjkHQi1LWJHDf6gu+NmfOvCuCONog9JaLYYN37XAlr3BHOqE
 B3J1riCC0LHDw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5f99bccc;
 Sat, 11 Feb 2023 07:50:46 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat, 11 Feb 2023 16:50:20 +0900
Message-Id: <20230211075023.137253-3-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230211075023.137253-1-asmadeus@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The async RPC code will also use an automatic size and this
 bit of code can be shared, as p9_tag_alloc still knows what client we alloc
 for. Signed-off-by: Dominique Martinet <asmadeus@codewreck.org> ---
 net/9p/client.c
 | 23 +++++++++++ 1 file changed, 11 insertions(+), 12 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pQkf0-0001Bs-SZ
Subject: [V9fs-developer] [PATCH 2/5] 9p/net: share pooled receive buffers
 size exception in p9_tag_alloc
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Pengfei Xu <pengfei.xu@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The async RPC code will also use an automatic size and this bit of code
can be shared, as p9_tag_alloc still knows what client we alloc for.

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/client.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 53ebd07c36ee..4e5238db4a7a 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -282,8 +282,15 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
 			    t_size ?: p9_msg_buf_size(c, type, fmt, apc));
 	va_end(apc);
 
-	alloc_rsize = min_t(size_t, c->msize,
-			    r_size ?: p9_msg_buf_size(c, type + 1, fmt, ap));
+	/* Currently RDMA transport is excluded from response message size
+	 * optimization, as it cannot cope with it due to its pooled response
+	 * buffers (this has no impact on request size)
+	 */
+	if (r_size == 0 && c->trans_mod->pooled_rbuffers)
+		alloc_rsize = c->msize;
+	else
+		alloc_rsize = min_t(size_t, c->msize,
+				    r_size ?: p9_msg_buf_size(c, type + 1, fmt, ap));
 
 	if (!req)
 		return ERR_PTR(-ENOMEM);
@@ -728,18 +735,10 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	int sigpending, err;
 	unsigned long flags;
 	struct p9_req_t *req;
-	/* Passing zero for tsize/rsize to p9_client_prepare_req() tells it to
-	 * auto determine an appropriate (small) request/response size
-	 * according to actual message data being sent. Currently RDMA
-	 * transport is excluded from this response message size optimization,
-	 * as it would not cope with it, due to its pooled response buffers
-	 * (using an optimized request size for RDMA as well though).
-	 */
-	const uint tsize = 0;
-	const uint rsize = c->trans_mod->pooled_rbuffers ? c->msize : 0;
 
 	va_start(ap, fmt);
-	req = p9_client_prepare_req(c, type, tsize, rsize, fmt, ap);
+	/* auto determine an appropriate request/response size */
+	req = p9_client_prepare_req(c, type, 0, 0, fmt, ap);
 	va_end(ap);
 	if (IS_ERR(req))
 		return req;
-- 
2.39.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
