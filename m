Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A26D562F6A0
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 14:56:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ow1rA-0001Ep-Fn;
	Fri, 18 Nov 2022 13:56:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ow1qm-0001ES-4R
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 13:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2zvNrnwZIdlntvmhBz/DN7S4Glsc0P6Qb340ojUDEN4=; b=j8/7AIKp0cCe+LNgGTo9gElbXH
 Rc9qNUOw7j3luyuPRBo+q9R+WLowu9UGR1zi3SRjIu799xXHWSK3JIC9ozTJhcFTRFky335c6cKfK
 MtPDt0f3BUvSWwxuHIqg7B9NWZDy1JrJct75wYJm9Hm5tg2lSom+GX2gjA2h3pUrx/Hg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2zvNrnwZIdlntvmhBz/DN7S4Glsc0P6Qb340ojUDEN4=; b=WeXhB8ckHe+OmlSV371wI7D6Qj
 L84Sh485bW3CXVuPRoCEAgdOVOGv3Li4Cpv6Z3j0vCZEGfc2R5B7F27tsYTBn01bNkEdXuEc2vwwD
 O+RbzY+3K5aTm+nVPbVYwzo+8xxqZtCjWo9ls/h6UNHsez1/Fnw1HJlOL0/Z0JU75RoE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ow1qg-0003Xn-MB for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 13:56:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id BF697C01F; Fri, 18 Nov 2022 14:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668779765; bh=2zvNrnwZIdlntvmhBz/DN7S4Glsc0P6Qb340ojUDEN4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PeAPOtRVbJ7Wva3/UzmTuuf7pmbZUYr64c0FxzoXadMWRdyZtMCZNm5J3k8BCIeQw
 i0bAV78KpveYWd8UC7vHHmsE2Lf71ObZCIIMmGc2GPrYoOWzeJ0qt+CoeqzbzO7bil
 5NC7290ME3DmigoT1BzBuEzeux9Ape6cGp8tZnmQEOyeZsDI1ZRBmpd5pdrxBRM7Ky
 PY96OSDWxN71Cq0biGnxl5ktsa8DSZkabg6MVdfHwqbL2PnI5JSKnLdp3WN1mE6lbY
 zg2rnnArrZao8DjmAbrjfTaTDzoXSm5t0n8CEd2VigSfiRGD/VAgEKNF9sT6VOHT09
 hW8B4Jcv1/B6Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E9FDEC01B;
 Fri, 18 Nov 2022 14:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668779764; bh=2zvNrnwZIdlntvmhBz/DN7S4Glsc0P6Qb340ojUDEN4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M9LB1/hKMOS7DeTEEQ1/0eAXlpmjuJsOBW/Ir2WRkCVKs7K+eleFNnn5X5DwNO0qk
 QAWeOYLys+gqtNHBvt5w+EBeF6GBYNb2rhZf/qj+GM4UlPmci7lZiBFhTJSWaVThTY
 a58N+X6CJoeOQjCAfFWoK6V3gaDRBdy0Hgstqm1rwGnm5S0XqgSPZRZnEe2hzxCxQ3
 jT6oHNQITzzlYsuDi8YobMdqtP2cpPxbw7Psr0Wphh23A5U+xZLpC2yVQox05Dge1w
 +FhfTOP+8P+/jiFuTfUl196RscW3+Gf1X13NTlCtmgRPqr56rqMu1DeSrUTtlDWtd8
 lbHRDzRlH2+NQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e762b5e8;
 Fri, 18 Nov 2022 13:55:50 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Date: Fri, 18 Nov 2022 22:55:42 +0900
Message-Id: <20221118135542.63400-2-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221118135542.63400-1-asmadeus@codewreck.org>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  all buffers used to be msize big, but the size can now vary
 based on message type and arguments. Adjut p9_check_error() to check the
 logical size (request payload) fits within the allocated size (capacity)
 rather than msize 
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
X-Headers-End: 1ow1qg-0003Xn-MB
Subject: [V9fs-developer] [PATCH 2/2] 9p: ensure logical size fits allocated
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

all buffers used to be msize big, but the size can now vary based on
message type and arguments.

Adjut p9_check_error() to check the logical size (request payload) fits
within the allocated size (capacity) rather than msize

Transports normally all check this when the packet is being read, but
might as well stay coherent.

Fixes: 60ece0833b6c ("net/9p: allocate appropriate reduced message buffers")
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---

I think with the previous patch this is purely redundant, but better
safe than sorry...
The main problem is that if we didn't find this before we already
overflowed a buffer, so this is quite late!

 net/9p/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..45dcc9e5d091 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -514,7 +514,7 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
 	int ecode;
 
 	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
-	if (req->rc.size >= c->msize) {
+	if (req->rc.size >= req->rc.capacity) {
 		p9_debug(P9_DEBUG_ERROR,
 			 "requested packet size too big: %d\n",
 			 req->rc.size);
-- 
2.38.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
