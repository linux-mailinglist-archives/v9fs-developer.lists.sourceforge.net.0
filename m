Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F20C3ADD
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Oct 2019 18:41:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iFLDg-0003tN-Kj; Tue, 01 Oct 2019 16:41:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1iFLDe-0003t0-UL
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Oct 2019 16:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+SnqkqyKyEfns998eP7V1cTteWxWu3224xPLEAzlL9w=; b=ClOl+lqPv8TlvZfGkExg9wJE6x
 YfTG4pyRVxXF9FrXmET+kpem7d9wPANCS8NQq1UHr6qsUMTKoyqCx0OCtkqErN/lwg8QyO/O2mSDd
 s8xpg1BdNATCrjWkFQRb4tELPcF2PNuluzKR4JR8WBWtsFkCrS7i126j6RxJZ9p6Nhr0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+SnqkqyKyEfns998eP7V1cTteWxWu3224xPLEAzlL9w=; b=VOWn/wtqfPZrln2f+jO75mX8pj
 ZUMdaFCxlcUfx/DchdxbgJkMij8njbyAL/Mwp0Lpe7T+nj0JvVaUzfyciX10FzeoSetXIVEML008U
 9vAAUg/K5p03a08CFMW/Ud9ECQztSNCkJo6x6KaNYtSQehyc/oOwIY/e/buyRb48jxf8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iFLDa-00Cw4B-90
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Oct 2019 16:41:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1128205C9;
 Tue,  1 Oct 2019 16:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569948096;
 bh=Kk6XxuN59+qbkbLJtVxcjtqKExqw2JI0CVGdOUTiFQw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wfdW+E1kKJRny/4jpb6czE242Y8H8zCM3fCs6Uu4n1Cd55qI6Ha1fiBADWXbai81s
 zV7e+W8XL7EP4hnW8EkV5dZXQ2TLeC07RNOjQQw1ERiF+pFS5s2tk+mD6Yw8vQd6lf
 AFJZudSlIkh+wNZXUrAghhTyBo21DwCCYF5DxHZQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  1 Oct 2019 12:40:30 -0400
Message-Id: <20191001164125.15398-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001164125.15398-1-sashal@kernel.org>
References: <20191001164125.15398-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iFLDa-00Cw4B-90
Subject: [V9fs-developer] [PATCH AUTOSEL 5.2 08/63] 9p/cache.c: Fix memory
 leak in v9fs_cache_session_get_cookie
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
Cc: Bharath Vedartham <linux.bhar@gmail.com>,
 Dominique Martinet <dominique.martinet@cea.fr>,
 v9fs-developer@lists.sourceforge.net,
 syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com,
 Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Bharath Vedartham <linux.bhar@gmail.com>

[ Upstream commit 962a991c5de18452d6c429d99f3039387cf5cbb0 ]

v9fs_cache_session_get_cookie assigns a random cachetag to v9ses->cachetag,
if the cachetag is not assigned previously.

v9fs_random_cachetag allocates memory to v9ses->cachetag with kmalloc and uses
scnprintf to fill it up with a cachetag.

But if scnprintf fails, v9ses->cachetag is not freed in the current
code causing a memory leak.

Fix this by freeing v9ses->cachetag it v9fs_random_cachetag fails.

This was reported by syzbot, the link to the report is below:
https://syzkaller.appspot.com/bug?id=f012bdf297a7a4c860c38a88b44fbee43fd9bbf3

Link: http://lkml.kernel.org/r/20190522194519.GA5313@bharath12345-Inspiron-5559
Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com
Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
Signed-off-by: Dominique Martinet <dominique.martinet@cea.fr>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/9p/cache.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/9p/cache.c b/fs/9p/cache.c
index 995e332eee5c0..eb2151fb60494 100644
--- a/fs/9p/cache.c
+++ b/fs/9p/cache.c
@@ -51,6 +51,8 @@ void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
 	if (!v9ses->cachetag) {
 		if (v9fs_random_cachetag(v9ses) < 0) {
 			v9ses->fscache = NULL;
+			kfree(v9ses->cachetag);
+			v9ses->cachetag = NULL;
 			return;
 		}
 	}
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
