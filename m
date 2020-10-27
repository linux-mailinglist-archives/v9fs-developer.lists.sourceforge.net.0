Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ACA299DDE
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Oct 2020 01:10:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kXCZg-00057t-HD; Tue, 27 Oct 2020 00:10:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1kXCZb-00057V-0S
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Oct 2020 00:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vKklWYSxRFY8/Rt3G8VpnmXIfiu+2r/rGUw7aPyJEjc=; b=Mmhlp5purbdILjBe9gSWJD9Tfr
 9daNXZs1GwOoJSkU609oVKXLzrBMq+avA/68vybfckk0CnsCPACeRBIFhvFj8spLTcbqalxJn88dN
 mRY+DyBvCVl6Cr67IXhX75mTVuVEugMf0cbqz53Uc2RsEuZvrZ99+k7ykeJM0I2JxFHI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vKklWYSxRFY8/Rt3G8VpnmXIfiu+2r/rGUw7aPyJEjc=; b=a0z/9NyEPK7Qn/FUto07wzI57C
 CQSMa+Xffn/YTGlDZEqKwjXfP+cN3iL33U1sGdgMvNiDg/2tHSwa8s/Tc0LBbMt1BkLKtbQf7Wcuz
 3kjKnJVJkXUoFE3fZtpk614bh3KXBPMuNpSJI8UXrxkcDB9il32o3DGznts46rdIoQ/o=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXCZV-00EvFs-V2
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Oct 2020 00:10:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E28821741;
 Tue, 27 Oct 2020 00:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603757428;
 bh=EyO/SshQRHbmPmx0YqXRwILlS+U77AA2cW9uBk571XI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wpn96LWb4EmaTJrVPdq0lU/RwXd29aKgUUoge533uIW9whF2PWQC2i2N/5GtNnsfQ
 J8AOGGRmvQnUzQuawYqWe+RjnGIGvO98AbbZJ5LoxNaYujoLROiUeZj9gU19Yi5go0
 CDQ0LmZ38ybSMQKx6MC/ghkqihHGH7bDDd5RUcLY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 26 Oct 2020 20:09:34 -0400
Message-Id: <20201027000946.1026923-35-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027000946.1026923-1-sashal@kernel.org>
References: <20201027000946.1026923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kXCZV-00EvFs-V2
Subject: [V9fs-developer] [PATCH AUTOSEL 4.14 35/46] net: 9p: initialize
 sun_server.sun_path to have addr's value only when addr is valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Anant Thazhemadam <anant.thazhemadam@gmail.com>,
 syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com, netdev@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Anant Thazhemadam <anant.thazhemadam@gmail.com>

[ Upstream commit 7ca1db21ef8e0e6725b4d25deed1ca196f7efb28 ]

In p9_fd_create_unix, checking is performed to see if the addr (passed
as an argument) is NULL or not.
However, no check is performed to see if addr is a valid address, i.e.,
it doesn't entirely consist of only 0's.
The initialization of sun_server.sun_path to be equal to this faulty
addr value leads to an uninitialized variable, as detected by KMSAN.
Checking for this (faulty addr) and returning a negative error number
appropriately, resolves this issue.

Link: http://lkml.kernel.org/r/20201012042404.2508-1-anant.thazhemadam@gmail.com
Reported-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
Tested-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/trans_fd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 9f020559c1928..1b56b22c5c5d7 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -1029,7 +1029,7 @@ p9_fd_create_unix(struct p9_client *client, const char *addr, char *args)
 
 	csocket = NULL;
 
-	if (addr == NULL)
+	if (!addr || !strlen(addr))
 		return -EINVAL;
 
 	if (strlen(addr) >= UNIX_PATH_MAX) {
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
