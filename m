Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BD96B943C
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Mar 2023 13:43:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pc40H-0002NB-8i;
	Tue, 14 Mar 2023 12:43:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1pc40G-0002N1-LD
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 12:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FC0mlpaVpJLtQ9zkOhwSxRMd5WmlJMqYTF/nixoH0kc=; b=jUmzoWOk3c3Gj5LlyFw497p5sY
 6zW+UNFBHaDocBj/V0K4r23oTK4OSGlK/7YfEncg57zpxtR1VTaE2tzPNRWb5P72w0DWRHUGUjqVO
 g+o5gvjSPYNOwbkrezEo3Vi58eMWYnDeE1+WEZIkGL3IUnVz9Mp0qtTR6/nilgYymTa0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FC0mlpaVpJLtQ9zkOhwSxRMd5WmlJMqYTF/nixoH0kc=; b=kwhhAvC6Y67WozY6Ady+AQHwYk
 FYVCYUD7OE03ik1cqbDQoJo6pSyfC+KJs6cq5A73jiVZcQjeYnrHcFGfriZbBJHICWofSFD5z1EjY
 dTCQKDmMFjUujLma54YzbIRCQaQH8elTbtT6IuVvoKua+bpNakVprRaFtODmXMwjEIr8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pc40G-008OEk-KD for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 12:43:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3CEC761780;
 Tue, 14 Mar 2023 12:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90AC2C4339B;
 Tue, 14 Mar 2023 12:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678797818;
 bh=+c45SjTlnq+NXIqIkShpUo9G/Gb3Q2yw0iHlcuh/bBw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XvgZnGCmS8AUwxKFAVrPcHYr6G65PvoqWSNNYHYG3dI4mXT36w7qasGDd22FiRUQ+
 PDq/ox3djVePAT8OWHCXdVuIe3J9boHvsWynrq43UM0323vrzHYr2PaRaocmsV1Msm
 bk6wkxV+Vnwx+RBaZkEx4ISRc55qlP/XS/O2l6FrPHlpDP++JX+9f7Cp/T5lgCM9Jz
 Azj8SRvR7KTdXIYt+5495vtPt/k7tXWfKOa4ALphoUT6lUda884gnkLAmhPVnaAiD4
 wleCYG6DVqnKngUPwJPo1o/66kyEZ3iaP2h5feXGeW8KROX0Ql7gQPhg8u6/DTk+SV
 oo7rvGGQKxsaw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 14 Mar 2023 08:43:21 -0400
Message-Id: <20230314124325.470931-9-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314124325.470931-1-sashal@kernel.org>
References: <20230314124325.470931-1-sashal@kernel.org>
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
 Content preview: From: Eric Van Hensbergen <ericvh@kernel.org> [ Upstream
 commit
 3866584a1c56a2bbc8c0981deb4476d0b801969e ] We are supposed to set fid->mode
 to reflect the flags that were used to open the file. We were actually setting
 it to the creation mode which is the default perms of the file not the flags
 the file wa [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
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
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pc40G-008OEk-KD
Subject: [V9fs-developer] [PATCH AUTOSEL 6.1 09/13] net/9p: fix bug in
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
index 554a4b11f4fec..af59c3f2ec2e7 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1284,7 +1284,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
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
