Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E94F6601E99
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Oct 2022 02:11:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1okaD2-0005DX-Nw;
	Tue, 18 Oct 2022 00:11:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1okaD2-0005DQ-82
 for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 00:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FVGLQkr8i9j1DmAzfv8btWODl+cjzDZpSsK0YIpE9Is=; b=NpZU68MchRLIqgC7R3NuPEJQJa
 Z21MSVbYOI2Tlxo+s0DU5ok/J0CFU8wYjCYCri+Uj6xGYPmM1NniTYjfSlUyoNo8isVqlx3osXUaz
 Nx3ZsXcNNA8WwYNlnYyatsJuJA2HZBVef1Lu13oYNuiupHYYcFfiZXoSaoVZjl2tctQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FVGLQkr8i9j1DmAzfv8btWODl+cjzDZpSsK0YIpE9Is=; b=L8VG1634Ne+NRERKtxe8UuO/fa
 LPQGi+jixVr9+QpesSG9Jb0qwLNUMu1+OcnwZEnRxkxB6RxGV++3pEIkLuqn5/mPSi8RBthZwuNUn
 Bs2TSVBmMCbjFxUSPRcza7q0dRSwK5gMigH6CXvcpu6K1AOGH5uotqTJ9XAP3/hbT/zY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1okaD0-0002NB-TG for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 00:11:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3E94DB81BF5;
 Tue, 18 Oct 2022 00:11:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B61C8C4347C;
 Tue, 18 Oct 2022 00:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666051904;
 bh=xx+LcD2VTLj4E8qqfW3wKAhIQGRDj3nzKhfA4ljiib0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YxPEXGJ7eMV9Jm0R4dsLcg3AFA9ZJZIVUTMJr2QER04tpeygQLRRuCXgFAufTK5xN
 nftTK5+DtEVbvyMGagkCNkXzHOZxGVo25qbCFsyv6GrJ1ckq+YWXCA1GCCZHorvFGE
 tMv7arFO2tJwFtm3pVgaByrQTe8E687qOjG5goRgyPIAWHF+FP0Cxhsos6p16/GC7j
 4fDoKu48b5pmgdhxI3j8U064nGIGjJz0B2wpgUjVE+cpSQBKP3qPkuBug4fXrXhEcM
 45wzc1tm9qVxzT5m9WIeEVqlPN7p/tRxNyMrtidAltl2sz/zK1QMwZWB/NQNksoksU
 8Uc2yLbTAcX3Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 17 Oct 2022 20:11:26 -0400
Message-Id: <20221018001128.2732162-8-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221018001128.2732162-1-sashal@kernel.org>
References: <20221018001128.2732162-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dominique Martinet <asmadeus@codewreck.org> [ Upstream
 commit 52f1c45dde9136f964d63a77d19826c8a74e2c7f ] syzbot reported a
 double-lock
 here and we no longer need this lock after requests have been moved off to
 local list: just drop the lock earlier. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1okaD0-0002NB-TG
Subject: [V9fs-developer] [PATCH AUTOSEL 4.19 08/10] 9p:
 trans_fd/p9_conn_cancel: drop client lock earlier
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
Cc: Sasha Levin <sashal@kernel.org>, lucho@ionkov.net,
 Schspa Shi <schspa@gmail.com>, ericvh@gmail.com, netdev@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

[ Upstream commit 52f1c45dde9136f964d63a77d19826c8a74e2c7f ]

syzbot reported a double-lock here and we no longer need this
lock after requests have been moved off to local list:
just drop the lock earlier.

Link: https://lkml.kernel.org/r/20220904064028.1305220-1-asmadeus@codewreck.org
Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Tested-by: Schspa Shi <schspa@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/trans_fd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 9268f808afc0..7d68b4a63997 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -220,6 +220,8 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 		list_move(&req->req_list, &cancel_list);
 	}
 
+	spin_unlock(&m->client->lock);
+
 	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
 		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
 		list_del(&req->req_list);
@@ -227,7 +229,6 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
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
