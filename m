Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 394CE5EE887
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 23:44:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oderH-0004ET-07;
	Wed, 28 Sep 2022 21:44:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oderG-0004EN-7C
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UmhaJMECcRYmREt7/tMqA6aB1TydkXl9QzrOPmc/ArE=; b=FGSuYvBTyRDIFl6q9Efca0XvXa
 OFf23AJXkRJwo+o6DT06aKGDHlj6ZKS4KdmGSx/7G3lW4y4mxtzuAiNBEGb2W5gAxhXKm1rk9WBK7
 rkD2hsvUG/ymLZoBcpwbFUlUqvdhft41jnXRHBhwFsVN6j7A17ykOyRfH6hSOe1FljLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UmhaJMECcRYmREt7/tMqA6aB1TydkXl9QzrOPmc/ArE=; b=JP2tTmR5NGONnRs9thGrg/OtDR
 wqRtJPGgyY58folccubOZo7fagTf3cg5ubZY6p8317A0QJi+trub598OHHg+AYH7uKbQQ36iHpgEi
 iHvZ0cOaWjNg9ezdaTGartOXweQs+lA/2z49m2DXff94Y9CcSQyPPymFCysqILsLQj2c=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oderB-00038Z-SF for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:44:46 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 79723C01E; Wed, 28 Sep 2022 23:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664401474; bh=UmhaJMECcRYmREt7/tMqA6aB1TydkXl9QzrOPmc/ArE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EgiHNJZSmT706nye3erb+e0zf8MszeHX5843yn+BSuaO1TSnEul/h1Pnn0lrPoce1
 WCmXZYSo+k/PFLQtCHFCHLQ+/Uhpks+2WX98PB9CrR/DElNCYvqbFQSd1nUNHQjAQa
 7R0LD9Oz7GavNZ9L7Zjd3c6jQ075mxpGRQcOlsOr1u+e9SM+ljOJcEgf7VQkdd0KGP
 5f9xqtEzABpRxvuSs5ZKp/Fnbt2wJbh1hyRuAS+2mf2uKo+V2LLRnGG+EpHQYG/CPx
 5TSXPKPua+M0R2d0E8FnVO0vb+eYBCIcCugK5wxKE1G6U1NxUD0R9eng8yo4gEwpLr
 4OEmESu6xL5Dg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8622EC009;
 Wed, 28 Sep 2022 23:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664401473; bh=UmhaJMECcRYmREt7/tMqA6aB1TydkXl9QzrOPmc/ArE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yltSH9hCDL97tJShageOdXo1pcVGpvqc7R5PJjb/bkqxP4ZqJhuoOtaLKZLuu7QC9
 DJ0nLnbWKlbK7KUltKxQewcdvOwkC0KpYUoVbOdmbJUeC8StHnZ7Ja//aI3jz7dCoe
 7l6AsIH1cGK8sP07aobThwBARiZmrWmfteJzGnymQUhoTiJRBmZBm88huGBKgSj4Uf
 4XRGy8T5E4x/IytD4nK8oZR3galJZN/n13kWdPVS21e8myCFFRu8V6dULP847x8XRV
 UEFk+C6VBTNPh1rbu5uPxvnu6xgLt0tOe49b0Uc8wTK3Zx4Viij6q1FlcrwWU5CbBy
 nfGWembNZqeuA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8209d52e;
 Wed, 28 Sep 2022 21:44:29 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 06:44:16 +0900
Message-Id: <20220928214417.1749609-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <YzQc2yaDufjp+rHc@unreal>
References: <YzQc2yaDufjp+rHc@unreal>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oderB-00038Z-SF
Subject: [V9fs-developer] [PATCH 1/2] 9p: client_create/destroy: only call
 trans_mod->close after create
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
I tried to make trans->create() return clnt->trans to assign directly
from there, but rdma callbacks need clnt->trans to be set early during
init and the diff was just too big for a simple fix.
This should work for all transports without any change, and ensures we
only call close if create succeeded.

 net/9p/client.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index bfa80f01992e..40b59431a566 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -971,6 +971,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	spin_lock_init(&clnt->lock);
 	idr_init(&clnt->fids);
 	idr_init(&clnt->reqs);
+	clnt->trans = ERR_PTR(-EINVAL);
 
 	err = parse_opts(options, clnt);
 	if (err < 0)
@@ -992,6 +993,9 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	err = clnt->trans_mod->create(clnt, dev_name, options);
 	if (err)
 		goto out;
+	// ensure clnt->trans is initialized to call close() on destroy
+	if (IS_ERR(clnt->trans))
+		clnt->trans = NULL;
 
 	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
@@ -1036,7 +1040,7 @@ void p9_client_destroy(struct p9_client *clnt)
 
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
