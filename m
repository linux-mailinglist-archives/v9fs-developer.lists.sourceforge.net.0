Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BB45EF241
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 11:38:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odq02-0004en-2O;
	Thu, 29 Sep 2022 09:38:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odpze-0004eS-S1
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VEiQf4eAWzlKYj2xwSJgoElatfCU+/f6WVrHthcJDg0=; b=j9VkxH15dX2x5t5AmY56qzH1H6
 B/spN+dMYLF962P039vxze0z4tOYIUxRDhPPuTahIHchqCZfCMKG/eQKQNbFyVUiADhQ2l2NtENu6
 3wzJZXa3niDsc2GbhpDWItFX7mrTwLsEF7rdpgl3Y6KqUywRy7iqA9wFos1wl1M6KX7k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VEiQf4eAWzlKYj2xwSJgoElatfCU+/f6WVrHthcJDg0=; b=kbem9x/btwYWPTOCj+3jcbtTxA
 jphZlgtTx0W+X+XUq/If1lqNtIK43hjl/KkN80oI/1wwK1TfvqBtz8NofDhjST8xeOJzzEHFyFnBr
 6PhmUbIdSwFa+I891NLijK48jbgZ41Ew6JM+ZEX1h4auagY+ksSfBg8YsAfv2+8vKPOU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odpzo-0004Ey-0i for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:38:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0875E60C3A;
 Thu, 29 Sep 2022 09:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD135C433D6;
 Thu, 29 Sep 2022 09:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664444288;
 bh=QDrBceZLFCpWcKESUJre+lgPFQsOo9h2zyNFxdUY+cA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mbplxQUOC7Q/7W7g5WwfPoKkc32IUdmzsyoeILMSCAN2PDxSZnIx5Thy5qwd9JkBr
 cIYAMOwsFiUb12Q1/CfhAgVJ7YXHlASdLJvXciLIrVBGvtWvbcc7iq0e4gk5BgYA3a
 JuxLm4+dc3Fe72qOYrjk2rVVx8/iXm69yB6g0buDolIBhX9fXN3CEY6Ky4tN3HQXWS
 jJZYoKd7aPPD0DLFNopz9wTjEoq+25Pf1WSsfwIHqob5Rqk8Fzn6bJLwWzFlanJG7X
 kHusGKcUEOghKhK3se8dsWm/WaZd/aMuW2W8yQABZav9BFWXJWVB2YWDcKfqkQc4OP
 lErSJHgI5YfKw==
From: Leon Romanovsky <leon@kernel.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 12:37:56 +0300
Message-Id: <743fc62b2e8d15c84e234744e3f3f136c467752d.1664442592.git.leonro@nvidia.com>
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
 Content preview:  Make sure that all variables are initialized and released
 in correct order. Reported-by:
 syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
 Signed-off-by: Leon Romanovsky <leon@kernel.org> --- net/9p/client.c | 37
 ++++++++++++ 1 file changed, 12 in [...] 
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
X-Headers-End: 1odpzo-0004Ey-0i
Subject: [V9fs-developer] [PATCH 2/2] 9p: destroy client in symmetric order
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
Cc: lucho@ionkov.net, syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make sure that all variables are initialized and released in correct
order.

Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
Signed-off-by: Leon Romanovsky <leon@kernel.org>
---
 net/9p/client.c | 37 ++++++++++++-------------------------
 1 file changed, 12 insertions(+), 25 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..8277e33506e7 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -179,7 +179,6 @@ static int parse_opts(char *opts, struct p9_client *clnt)
 				goto free_and_return;
 			}
 
-			v9fs_put_trans(clnt->trans_mod);
 			clnt->trans_mod = v9fs_get_trans_by_name(s);
 			if (!clnt->trans_mod) {
 				pr_info("Could not find request transport: %s\n",
@@ -187,7 +186,7 @@ static int parse_opts(char *opts, struct p9_client *clnt)
 				ret = -EINVAL;
 			}
 			kfree(s);
-			break;
+			goto free_and_return;
 		case Opt_legacy:
 			clnt->proto_version = p9_proto_legacy;
 			break;
@@ -211,9 +210,14 @@ static int parse_opts(char *opts, struct p9_client *clnt)
 		}
 	}
 
+	clnt->trans_mod = v9fs_get_default_trans();
+	if (!clnt->trans_mod) {
+		ret = -EPROTONOSUPPORT;
+		p9_debug(P9_DEBUG_ERROR,
+			 "No transport defined or default transport\n");
+	}
+
 free_and_return:
-	if (ret)
-		v9fs_put_trans(clnt->trans_mod);
 	kfree(tmp_options);
 	return ret;
 }
@@ -956,19 +960,14 @@ static int p9_client_version(struct p9_client *c)
 
 struct p9_client *p9_client_create(const char *dev_name, char *options)
 {
-	int err;
 	struct p9_client *clnt;
 	char *client_id;
+	int err = 0;
 
-	err = 0;
-	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
+	clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
 	if (!clnt)
 		return ERR_PTR(-ENOMEM);
 
-	clnt->trans_mod = NULL;
-	clnt->trans = NULL;
-	clnt->fcall_cache = NULL;
-
 	client_id = utsname()->nodename;
 	memcpy(clnt->name, client_id, strlen(client_id) + 1);
 
@@ -980,16 +979,6 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err < 0)
 		goto free_client;
 
-	if (!clnt->trans_mod)
-		clnt->trans_mod = v9fs_get_default_trans();
-
-	if (!clnt->trans_mod) {
-		err = -EPROTONOSUPPORT;
-		p9_debug(P9_DEBUG_ERROR,
-			 "No transport defined or default transport\n");
-		goto free_client;
-	}
-
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
 		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
 
@@ -1044,9 +1033,8 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
 
-	if (clnt->trans_mod)
-		clnt->trans_mod->close(clnt);
-
+	kmem_cache_destroy(clnt->fcall_cache);
+	clnt->trans_mod->close(clnt);
 	v9fs_put_trans(clnt->trans_mod);
 
 	idr_for_each_entry(&clnt->fids, fid, id) {
@@ -1056,7 +1044,6 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	p9_tag_cleanup(clnt);
 
-	kmem_cache_destroy(clnt->fcall_cache);
 	kfree(clnt);
 }
 EXPORT_SYMBOL(p9_client_destroy);
-- 
2.37.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
