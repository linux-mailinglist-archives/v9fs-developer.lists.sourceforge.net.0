Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E965EF240
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 11:38:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odq0E-0007CZ-5V;
	Thu, 29 Sep 2022 09:38:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odpzs-0007BY-B2
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QgtB353BM3NqVZx+eBWgKv3c64vqGBxW01t21rhP14k=; b=BadyEyc08J6iwC2UVCcjIc09lM
 FNEVjGinjot5DsoMTQMDnmUPVp6JZBKdGsfaHWkvIgUk9uUa39BjEQkF78Xuj/1VojXgubWwf0baU
 o8n8S8rIo9/CRjafwlkN3JvVfsbai6CXeAOYkuHgjlTkueTtXOUoH9NKtm7e2BVX6aZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QgtB353BM3NqVZx+eBWgKv3c64vqGBxW01t21rhP14k=; b=kwQ6TnDIf4wF76dDm3Et1VL5AM
 23OSTyhqnHbudRdqY/i14d6tAXzmVYOjO8PlWHphlXQWGu3m19gx1B2oWGpbs4WNfXQEt6LwLCcqu
 C3opxZvF2xKgnPSFgVggFGLhyEQ7cwY9I3vFBwKB2ThmgoEfs0w3lNU8t4sOjobQ68wg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odpzr-006T1w-Lk for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:38:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 776EE60EA4;
 Thu, 29 Sep 2022 09:38:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C669C433C1;
 Thu, 29 Sep 2022 09:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664444292;
 bh=joLgN+ItAGto0LT0pRnJ9952UZWeCLPyfeuxsOlctg8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hT4d1Ic+mM0ASs1jwCFUNMusqrUNNWETNw25XhksLUV4AJdePTOfRmo0oIl/YdTEu
 a0nweqq1tyuoAb4UbtLbhRqr4Z6XxJaC76w3ORiDim6m/g+oHwNJCBBx/hRtmEaCML
 Mxau8mqtwHZ0XC7FFY15L8q+EhCbad6IUooGbpeWH9mRJODY/ggTlTlJTyig5WkpTl
 6nuXqvSc3Jcy6cKAXQ4WdzgRoAKLLtboFe5crE3AZLfyc+mYze3HWcqewMeVH9xGwp
 +Uu9FaNb2ghxlQGKgleWZpDT+gI1QpFejRkh4dcYNZr9R8fKozOVFa37svai79SOOW
 MVyD1tKFIFqJA==
From: Leon Romanovsky <leon@kernel.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 12:37:55 +0300
Message-Id: <024537aa138893c838d9cacc2e24f311c1e83d25.1664442592.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1664442592.git.leonro@nvidia.com>
References: <cover.1664442592.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Rely on proper unwind order. This reverts commit
 3ff51294a05529d0baf6d4b2517e561d12efb9f9.
 Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
 Signed-off-by:
 Leon Romanovsky <leon@kernel.org> --- net/9p/client.c | 24
 ++++++++++++++++--------
 1 file changed, 16 insertions(+), [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odpzr-006T1w-Lk
Subject: [V9fs-developer] [PATCH 1/2] Revert "9p: p9_client_create: use
 p9_client_destroy on failure"
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Rely on proper unwind order.

This reverts commit 3ff51294a05529d0baf6d4b2517e561d12efb9f9.

Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
Signed-off-by: Leon Romanovsky <leon@kernel.org>
---
 net/9p/client.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index bfa80f01992e..aaa37b07e30a 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -961,10 +961,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	char *client_id;
 
 	err = 0;
-	clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
+	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
 	if (!clnt)
 		return ERR_PTR(-ENOMEM);
 
+	clnt->trans_mod = NULL;
+	clnt->trans = NULL;
+	clnt->fcall_cache = NULL;
+
 	client_id = utsname()->nodename;
 	memcpy(clnt->name, client_id, strlen(client_id) + 1);
 
@@ -974,7 +978,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	err = parse_opts(options, clnt);
 	if (err < 0)
-		goto out;
+		goto free_client;
 
 	if (!clnt->trans_mod)
 		clnt->trans_mod = v9fs_get_default_trans();
@@ -983,7 +987,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		err = -EPROTONOSUPPORT;
 		p9_debug(P9_DEBUG_ERROR,
 			 "No transport defined or default transport\n");
-		goto out;
+		goto free_client;
 	}
 
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
@@ -991,7 +995,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	err = clnt->trans_mod->create(clnt, dev_name, options);
 	if (err)
-		goto out;
+		goto put_trans;
 
 	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
@@ -1005,12 +1009,12 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		p9_debug(P9_DEBUG_ERROR,
 			 "Please specify a msize of at least 4k\n");
 		err = -EINVAL;
-		goto out;
+		goto close_trans;
 	}
 
 	err = p9_client_version(clnt);
 	if (err)
-		goto out;
+		goto close_trans;
 
 	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
 	 * followed by data accessed from userspace by read
@@ -1023,8 +1027,12 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	return clnt;
 
-out:
-	p9_client_destroy(clnt);
+close_trans:
+	clnt->trans_mod->close(clnt);
+put_trans:
+	v9fs_put_trans(clnt->trans_mod);
+free_client:
+	kfree(clnt);
 	return ERR_PTR(err);
 }
 EXPORT_SYMBOL(p9_client_create);
-- 
2.37.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
