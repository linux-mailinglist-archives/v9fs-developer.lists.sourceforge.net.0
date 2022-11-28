Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDF063AF6A
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 18:41:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozi8d-0000Lw-6U;
	Mon, 28 Nov 2022 17:41:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ozi8b-0000Li-Nk
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HA8T3pznwlcifoUgrxAtDITaoKKN0S1xLHX+oz9clq0=; b=PtXhMppc+8T20a5MVpblxTVbrW
 c3+sBPfsrgK7icCzj9NOYiMyvvJr+2HmHltg3FxZvQQ/HvgfXgHz24715rwwsB3nN9pROKjZqE5sb
 wqV/6xZcxSSjjINQQNbPbiA7SYE+vRuK0959vFW78Y3bR0RMsc2+sVOW0feQ7bITT5rs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HA8T3pznwlcifoUgrxAtDITaoKKN0S1xLHX+oz9clq0=; b=UuwxlWAn7at8Cy4COBc/vindNr
 TcxDHM9zkLgx8JbE8kZnMooDEVera8SthFGTuG8fZeqA5sYbEc6jn2qXq7epaIyQJcJGS0Xmp5DyG
 2RLLGOXfjUU8Q4LM00GBIA6jsvJYYcdoF5JtVrrmhifU39zH8zIJZN3bRugLw/v6URH8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozi8a-00H00C-Kp for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:41:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 423D3612FB;
 Mon, 28 Nov 2022 17:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B73F7C433D7;
 Mon, 28 Nov 2022 17:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669657303;
 bh=incXVb5OeDnPjf8v58URtG3XXnk0WJCxSIRPnAveTqQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ffkTQpM4l7cVRuA+1gwr9mj4hYz+5pLtLiMaIVHWigoAJcadnGH6jNmPp2g1ou8wI
 fTntwdZEnzp4FG89jNrs75SCXtBzDhadbRqvHh+0ad2e1ls6Cgn6qcQQir6QPVQTqJ
 l+UgZaZMc9dysw8KZjms3tF8WYXIA9FKwuX72aLqSg+3pYLxtp94I9G9UrITSbqyUg
 CtZW1bd5XN/AoAJ281ij29VaT7+ty0yQVCLjcuXYa0eWRv6UJFRGJ20rKNdAQvOjVV
 jxZfrFlEdrn/OqB2uk6mW11aAY53B6Z8QE49Io0HEpQazNEPZRg8vpbdAMuIql0eIH
 Jlg3H5eyq00zw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 28 Nov 2022 12:41:10 -0500
Message-Id: <20221128174120.1442235-10-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174120.1442235-1-sashal@kernel.org>
References: <20221128174120.1442235-1-sashal@kernel.org>
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
 Content preview: From: GUO Zihua <guozihua@huawei.com> [ Upstream commit
 6854fadbeee10891ed74246bdc05031906b6c8cf
 ] Cleanup hardcoded header sizes to use P9_HDRSZ instead of '7' 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1ozi8a-00H00C-Kp
Subject: [V9fs-developer] [PATCH AUTOSEL 5.10 10/19] 9p/fd: Use P9_HDRSZ for
 header size
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
Cc: Sasha Levin <sashal@kernel.org>, lucho@ionkov.net, ericvh@gmail.com,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 GUO Zihua <guozihua@huawei.com>, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: GUO Zihua <guozihua@huawei.com>

[ Upstream commit 6854fadbeee10891ed74246bdc05031906b6c8cf ]

Cleanup hardcoded header sizes to use P9_HDRSZ instead of '7'

Link: https://lkml.kernel.org/r/20221117091159.31533-4-guozihua@huawei.com
Signed-off-by: GUO Zihua <guozihua@huawei.com>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
[Dominique: commit message adjusted to make sense after offset size
adjustment got removed]
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/trans_fd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index fec6c800c898..4fccefb50a7d 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -118,7 +118,7 @@ struct p9_conn {
 	struct list_head unsent_req_list;
 	struct p9_req_t *rreq;
 	struct p9_req_t *wreq;
-	char tmp_buf[7];
+	char tmp_buf[P9_HDRSZ];
 	struct p9_fcall rc;
 	int wpos;
 	int wsize;
@@ -289,7 +289,7 @@ static void p9_read_work(struct work_struct *work)
 	if (!m->rc.sdata) {
 		m->rc.sdata = m->tmp_buf;
 		m->rc.offset = 0;
-		m->rc.capacity = 7; /* start by reading header */
+		m->rc.capacity = P9_HDRSZ; /* start by reading header */
 	}
 
 	clear_bit(Rpending, &m->wsched);
@@ -312,7 +312,7 @@ static void p9_read_work(struct work_struct *work)
 		p9_debug(P9_DEBUG_TRANS, "got new header\n");
 
 		/* Header size */
-		m->rc.size = 7;
+		m->rc.size = P9_HDRSZ;
 		err = p9_parse_header(&m->rc, &m->rc.size, NULL, NULL, 0);
 		if (err) {
 			p9_debug(P9_DEBUG_ERROR,
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
