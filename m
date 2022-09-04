Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 640525AC308
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 08:41:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUjJm-00011J-Lv;
	Sun, 04 Sep 2022 06:41:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUjJD-00010n-2n
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XtdW/Qz1NptQheewRJMzIkzOqpOWHsLcyqkseqXpdnw=; b=IyDcrMGTLAqHh3rnocQdLcfwYv
 to/I2gcrPkxh4ksBjB3CHnSUELBiFkx6DkrTnz8jADdf4iqMrTBs2xa7yHSAOliopzZozNPecihCG
 OO4E1xXV+IuRpGAqv+MXKKrtqCXpHR6EXP6r8KiFO6XbAoUFZJIDLyuK2Gg2s/+4CaWM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XtdW/Qz1NptQheewRJMzIkzOqpOWHsLcyqkseqXpdnw=; b=gKU3YK8m7WVaABax+1CQ5tqmVE
 0DvDzjagiM5OxI+kHCkx3IJ/pMXj9wx3Vm1Q61r/MRc9f0ncglEVc8eZ385+CSCzA6EHz2/d39cuo
 GeNI14SVIwzftvF69fNafgLzD52CmenaZD2tTug+L3GvSTjBUXuzyi8YyTexNBtkWg+k=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUjJC-00DZro-Dq for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:40:43 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A9523C01B; Sun,  4 Sep 2022 08:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273635; bh=XtdW/Qz1NptQheewRJMzIkzOqpOWHsLcyqkseqXpdnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V4floERCrLWDbsWOLLfhtuztBVOTUYN+5eUeuQk/V2wpWbOyNIkvkDAYX/96ZtM4l
 sC+XEEhWolm7RqRDyf8KexFpBuWio23TgwBhscO6k9/zVlF2ulP8YiVH0pyVXaiiK9
 pJuuH2VRLTnLNDIwQCiHvL2OqByHoa4kVe7W6aeHgquAt5uobqBSiE4htvCg7RXR4E
 uYibFEHAgMM7ZEVnglR8XtkZqlKGMygE2mmsvXRWuher2+Y0ho3y1CAPm5gWxNFc6K
 jPj/ENHSjxnLRBmL45W36FAxwZATvbKQ700pDIrrBYQWmy/GGoBPKBTdVqWXNUXVYq
 iyWZCGObfe4vg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 329A2C009;
 Sun,  4 Sep 2022 08:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273635; bh=XtdW/Qz1NptQheewRJMzIkzOqpOWHsLcyqkseqXpdnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V4floERCrLWDbsWOLLfhtuztBVOTUYN+5eUeuQk/V2wpWbOyNIkvkDAYX/96ZtM4l
 sC+XEEhWolm7RqRDyf8KexFpBuWio23TgwBhscO6k9/zVlF2ulP8YiVH0pyVXaiiK9
 pJuuH2VRLTnLNDIwQCiHvL2OqByHoa4kVe7W6aeHgquAt5uobqBSiE4htvCg7RXR4E
 uYibFEHAgMM7ZEVnglR8XtkZqlKGMygE2mmsvXRWuher2+Y0ho3y1CAPm5gWxNFc6K
 jPj/ENHSjxnLRBmL45W36FAxwZATvbKQ700pDIrrBYQWmy/GGoBPKBTdVqWXNUXVYq
 iyWZCGObfe4vg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 23188c3b;
 Sun, 4 Sep 2022 06:40:31 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Sun,  4 Sep 2022 15:40:28 +0900
Message-Id: <20220904064028.1305220-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <000000000000cad57405e5b5dbb7@google.com>
References: <000000000000cad57405e5b5dbb7@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported a double-lock here and we no longer need this
 lock after requests have been moved off to local list: just drop the lock
 earlier. Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
 Signed-off-by: Dominique Martinet <asmadeus@codewreck.org> Tested-by: Schspa
 Shi <schspa@gmail.com> --- net/9p/trans_fd.c | 3 ++- 1 f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oUjJC-00DZro-Dq
Subject: [V9fs-developer] [PATCH 2/2] 9p: trans_fd/p9_conn_cancel: drop
 client lock earlier
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
Cc: Schspa Shi <schspa@gmail.com>, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot reported a double-lock here and we no longer need this
lock after requests have been moved off to local list:
just drop the lock earlier.

Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Tested-by: Schspa Shi <schspa@gmail.com>
---
 net/9p/trans_fd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..60fcc6b30b46 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -205,6 +205,8 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 		list_move(&req->req_list, &cancel_list);
 	}
 
+	spin_unlock(&m->client->lock);
+
 	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
 		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
 		list_del(&req->req_list);
@@ -212,7 +214,6 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 			req->t_err = err;
 		p9_client_cb(m->client, req, REQ_STATUS_ERROR);
 	}
-	spin_unlock(&m->client->lock);
 }
 
 static __poll_t
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
