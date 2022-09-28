Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 421725EE8CA
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 23:58:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odf4K-0004Ps-W4;
	Wed, 28 Sep 2022 21:58:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odf4J-0004Pm-7q
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xms6OhcaZEPNuIqUCXLPQE9kG90emaV6twlho5yTI74=; b=ZYPMmev8kwM4TpK7GRd3x53rpz
 cilc4ws2s1vO8sJJ3f8UrqC4enf0zC9ptn2zwGRfSOvwErHz/1M/hbuPjLXHOibd+wCLMJfEFVsQu
 109j113lTm4biIKA5S+J3Uis9BDJUzRqUiH8P9t9sJV4fIILEAW3Z2WEA8hNhNWpPchI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xms6OhcaZEPNuIqUCXLPQE9kG90emaV6twlho5yTI74=; b=Ppn0xKnN3SxdgFcLBk16UdU2+J
 nvla1OeGUbznG27kQDwy3zqqWhkeMBwjTGWS1EC1WcchGYiVmsbeVGC6Acp7Hl5qnANMOavaLWUbM
 XO9Ay3o/HiazLvHzW7/DNh/1+AabL1+fXG/VqPjp13MWNfnx31snBSSZMnSf7cCYMGvI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odf4I-0003rz-8w for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:58:15 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1A30EC01C; Wed, 28 Sep 2022 23:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664402287; bh=Xms6OhcaZEPNuIqUCXLPQE9kG90emaV6twlho5yTI74=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XTY3wRxaUDIhe38PxByPCNAAUQUE6P7HVlJE6U1HEfyUlWlPOTwpj6eCv1diEzL0Y
 e+YojKW38ZnNXsqsaMbr6bma3ullio5lO1yZxMdV5Vp9gqjCqhwOtHEkUwOny5aZzQ
 nAv6bh2y3gbI/nPZOnBziCPokVNeUZ1NH46JgcPjScz1x9JSYhv9HDiU6K9OhoqLO6
 WJEdrOPTiaBAqGYCRVDgnQoPW0XqrVmHL5oMXsviZUrO1WfG6gU4LZtJVkBTBFir6T
 L+VcXGbl0XNBQK6udUzvEsST+jG/KYvLByNip6sMLaBgRTCdkxuiqtjszG5mHqioin
 DjNOuQLO+SIDg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 44333C009;
 Wed, 28 Sep 2022 23:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664402286; bh=Xms6OhcaZEPNuIqUCXLPQE9kG90emaV6twlho5yTI74=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FcNNyH5VJD3MWqo305PALLdeO9RvzGf3OesebRR3BBOb3ZOrYjYg2sVJhWTIXd154
 jZ7p065pdWNCO6/0jWVd8JcaOxhjku3TaO1Fp2xPtgsy8ISp/fiuHNS8Aqx8OgiO6u
 2lQbktiDFTd9Tdn8fq60Vnk/6UM+IzXS0uKRnUn0bKCVOr8L7uftIpPY2OgIe30L7/
 X7TDVZZ8uOC/gmcfE7k8eMlaIR2Tw4XajPC0U0imVaR9A4X1rEzVfyfLGD37BhLDP4
 FCU+YwZocIpZ2HtS7UAvXg9vHjACMm8cvZ8mjTCQuyFUYE/ZPSvdBic9B6RN5m6KMv
 odQ4cgMzlzFlw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 90872eb6;
 Wed, 28 Sep 2022 21:58:02 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 06:58:00 +0900
Message-Id: <20220928215800.1749929-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220928214417.1749609-1-asmadeus@codewreck.org>
References: <20220928214417.1749609-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: destroy code would incorrectly call close() if trans_mod
 exists
 after some hasty code cleanup: we need to make sure we only call close after
 create Link: https://lkml.kernel.org/r/00000000000015ac7905e97ebaed@google.com
 Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
 Reported-by:
 Leon Romanovsky <leon@kernel.org> Fixes: 3ff5129 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1odf4I-0003rz-8w
Subject: [V9fs-developer] [PATCH 1/2 v2] 9p: client_create/destroy: only
 call trans_mod->close after create
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
Cc: Leon Romanovsky <leon@kernel.org>,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

destroy code would incorrectly call close() if trans_mod exists after some
hasty code cleanup: we need to make sure we only call close after create

Link: https://lkml.kernel.org/r/00000000000015ac7905e97ebaed@google.com
Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
Reported-by: Leon Romanovsky <leon@kernel.org>
Fixes: 3ff51294a055 ("9p: p9_client_create: use p9_client_destroy on failure")
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---

As pointed out in later mail, rdma actually does set trans->priv then
fails, so we also need to reset clnt->trans on create errors.

That's getting uglier than I wish it'd be, but the cleanup code I just
trashed away really isn't pretty either so I guess it'll have to do...
At least close() should now really never be called on create failures.

 net/9p/client.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index bfa80f01992e..8cf952f2de68 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -971,6 +971,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	spin_lock_init(&clnt->lock);
 	idr_init(&clnt->fids);
 	idr_init(&clnt->reqs);
+	clnt->trans = ERR_PTR(-EINVAL);
 
 	err = parse_opts(options, clnt);
 	if (err < 0)
@@ -990,8 +991,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
 
 	err = clnt->trans_mod->create(clnt, dev_name, options);
-	if (err)
+	// ensure clnt->trans is initialized to call close() on destroy
+	// if and only if create succeeded
+	if (err < 0) {
+		clnt->trans = PTR_ERR(err);
 		goto out;
+	}
+	if (IS_ERR(clnt->trans))
+		clnt->trans = NULL;
 
 	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
@@ -1036,7 +1043,7 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
 
-	if (clnt->trans_mod)
+	if (clnt->trans_mod && !IS_ERR(client->trans))
 		clnt->trans_mod->close(clnt);
 
 	v9fs_put_trans(clnt->trans_mod);
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
