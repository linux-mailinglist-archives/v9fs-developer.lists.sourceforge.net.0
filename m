Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C846B9448
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Mar 2023 13:44:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pc40c-0001XI-0l;
	Tue, 14 Mar 2023 12:44:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1pc40a-0001XC-Dk
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 12:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+14bHH0J5YYmCuvf4vWVcFDgRMO6SjXPgA/zmnRN5eU=; b=FiwhbVgy2gumt7HW7W+SdsbQbM
 OftTFjidHYR+nERZ0V6jTWkbS08fJe3BhuBYPSxpKdobNBTt0a7P2rgv+beh5ovlVtS9QwJ7CDSHJ
 stna4TV+F5gE8TEBcylk6mlkc6SPqoYEElDdAgGGUB+YfokP6/m6blrtMEBmsyOMMybY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+14bHH0J5YYmCuvf4vWVcFDgRMO6SjXPgA/zmnRN5eU=; b=cb/XguLx3QT0sayzCQjqkHg6vy
 o0BxibqMbVkXtZ9TO2mxMY8QAwoJYa6/Yxf6PljSyBlLTTmf7mib5YGphJmE8/viqRICN6h3XOVxr
 Qh1pHEI2famR8kUhC9iBL0PcjVsPtmuaXkSMqfjsnnIyTvUZefE7sG/3pUbUkvJp+fCA=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pc40a-008OF6-Hv for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 12:44:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 40DDEB8191A;
 Tue, 14 Mar 2023 12:43:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAA4EC433D2;
 Tue, 14 Mar 2023 12:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678797837;
 bh=u62PHWIrN6HTCJZD7dyHy2je/j/PdhGkuo2ogWvA/hw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FoYosMUUOcZrDv3Yr1r8YIhEbDmFKgxdvFJM2ziYnBIDE7IGcvu3ofA/yCCSZnVsp
 vXL/ZzDRGN2UWrKVDLUbeRCm8mf3PSM96Z27RAECN95+oR4yocQOYkClCyxiiDkwTX
 q3XTrSfNlZo6c148JKgx6/zMVS05/jTrV4BHqg8LLO1wLidE8EYTgNWc6g3fRovys9
 wj2flqG50fJiG/Mp0ubjiABJEJgBRrekv+8X5rJySTRQrN2rgKH1DXjIq1UgJDR7Ju
 qHZCsalDa3/QoSWpI7t7lLHkxv+yBsrGXXzkgDEkr3bDCt1U9/gSMcEzgbPUfKF7fn
 GBgZr7TXJ/v5A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 14 Mar 2023 08:43:42 -0400
Message-Id: <20230314124344.471127-8-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314124344.471127-1-sashal@kernel.org>
References: <20230314124344.471127-1-sashal@kernel.org>
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
 Content preview: From: Eric Van Hensbergen <ericvh@kernel.org> [ Upstream
 commit
 3866584a1c56a2bbc8c0981deb4476d0b801969e ] We are supposed to set fid->mode
 to reflect the flags that were used to open the file. We were actually setting
 it to the creation mode which is the default perms of the file not the flags
 the file wa [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pc40a-008OF6-Hv
Subject: [V9fs-developer] [PATCH AUTOSEL 5.15 08/10] net/9p: fix bug in
 client create for .L
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
 netdev@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 rminnich@sandia.gov, Eric Van Hensbergen <ericvh@kernel.org>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Eric Van Hensbergen <ericvh@kernel.org>

[ Upstream commit 3866584a1c56a2bbc8c0981deb4476d0b801969e ]

We are supposed to set fid->mode to reflect the flags
that were used to open the file.  We were actually setting
it to the creation mode which is the default perms of the
file not the flags the file was opened with.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 08e0c9990af06..c4c1e44cd7ca3 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1315,7 +1315,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
 		 qid->type, qid->path, qid->version, iounit);
 
 	memmove(&ofid->qid, qid, sizeof(struct p9_qid));
-	ofid->mode = mode;
+	ofid->mode = flags;
 	ofid->iounit = iounit;
 
 free_and_error:
-- 
2.39.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
