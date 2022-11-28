Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D8163AF82
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 18:42:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozi9h-0000NT-HT;
	Mon, 28 Nov 2022 17:42:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ozi9g-0000NK-82
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yZCnB9Jpo/0MrH2C8laHjvG+4NkmgsWYnQtOCru0PLw=; b=EXU1QgP90ECb0t5u6vtI/XMWo+
 UfVAkBOJNhzpk06f7r6hixbvRUGwMtwVzPpxdP4ezJfYfsg3lRalwUXhHaLIZM7MtsJl9i/EqfDlh
 maQvAPFMArAxhixpQX1VOJqn6FtnMURu+OssCyL3QvzwZlNE+WbeQnjwE5knQCpeqxqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yZCnB9Jpo/0MrH2C8laHjvG+4NkmgsWYnQtOCru0PLw=; b=hhxNnd26fJoyoAkXI/vwIjJxlg
 m9J1wB1BND1VxYSP1lcE5coHVX1k8aefnVF5qqUeMQ8FLHse9XXJQcLGUYnrT2F+aNtvzaLJB8M5v
 kWNW8U/bnnijrUew7gWWCMHWJCklZ/iuoKa6ELZ4cIEEcCj15Poz1ExbKgHMDxzFqygY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozi9f-00H09T-It for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 17:42:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 33970612ED;
 Mon, 28 Nov 2022 17:42:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC3C7C4347C;
 Mon, 28 Nov 2022 17:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669657370;
 bh=gri86OR9ATsXe3TfzHcfa345PcVbomYmI6akjvxvMp8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=erWrRND+yjZiNylGrRD3mM/tZNhc6nAzmi4IxcGixt17nUWfuwGN5IfH+OCYyWGvC
 D35v/Jo9cGND42baF0ruR9eNOZLgPs3+Mzy0d/U3tg6rSkWU5xFXOhLkoO524PMBDt
 LlDbMwxp3gMSNdmxg441au7k/yTkVrg2wwESJQ5TG3cd2a++0DAxgASFZ7f2rcF5jH
 NwCm73J9M+9oEt52oMNRHkQvH2uSgUXgHQN7QoeYWRZB3QP0mA8pCU0GA1inBsGPZh
 7qSUYKEVFOOSH7l8i5JPrn7DFavwgO4wtO7IOgap3TPaPNHUUAVa+7p8A5D+4eZkh/
 Bj9Drj1hoWdRQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 28 Nov 2022 12:42:29 -0500
Message-Id: <20221128174235.1442841-6-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174235.1442841-1-sashal@kernel.org>
References: <20221128174235.1442841-1-sashal@kernel.org>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozi9f-00H09T-It
Subject: [V9fs-developer] [PATCH AUTOSEL 4.19 06/12] 9p/fd: Use P9_HDRSZ for
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
index 7194ffa58d3e..689117c78deb 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -133,7 +133,7 @@ struct p9_conn {
 	struct list_head unsent_req_list;
 	struct p9_req_t *rreq;
 	struct p9_req_t *wreq;
-	char tmp_buf[7];
+	char tmp_buf[P9_HDRSZ];
 	struct p9_fcall rc;
 	int wpos;
 	int wsize;
@@ -304,7 +304,7 @@ static void p9_read_work(struct work_struct *work)
 	if (!m->rc.sdata) {
 		m->rc.sdata = m->tmp_buf;
 		m->rc.offset = 0;
-		m->rc.capacity = 7; /* start by reading header */
+		m->rc.capacity = P9_HDRSZ; /* start by reading header */
 	}
 
 	clear_bit(Rpending, &m->wsched);
@@ -327,7 +327,7 @@ static void p9_read_work(struct work_struct *work)
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
