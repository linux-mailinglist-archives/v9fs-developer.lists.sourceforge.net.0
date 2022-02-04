Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F194A980B
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Feb 2022 11:53:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nFwDe-0005x6-LR; Fri, 04 Feb 2022 10:53:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nFwDd-0005ww-5H
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Feb 2022 10:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GHWhopYqLTCZQXXV/5Ol3vo+4X8al9AySDc6QwaVjF4=; b=bWJ5n1SH7Q9goyLtsDb98RJ4pk
 47GXDFyl2vgllMrMEGIUZqtwMnhALOygAM3NzR8v5tITYiXFUWx6bx3fgiUOIMEG/Rmdk5tScNCbo
 1FuvsFNn26efNtCVsUb3SDjsuZmYaoA5oYXERLDy2ekp8JAKoksVnEJDMHO0E74v36iI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GHWhopYqLTCZQXXV/5Ol3vo+4X8al9AySDc6QwaVjF4=; b=j9OiCgWoTapxSa2oLsXprbkaQM
 k93kH3or6KjQBdtYI3twEBBgvqCYkTaghKhwy/HQzKQpW3LBN5xnZlc/4rTG0LQPCdRN+JvM9STe0
 xufGVcbJcs1usMoQ/5UZLYcnXqMYNgd9li2IVeaLYOdnz4DaCzWLnCov6GXvoTmqjgz4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFwDV-0000m4-Qz
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Feb 2022 10:53:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E1E82C01C; Fri,  4 Feb 2022 11:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643971996; bh=GHWhopYqLTCZQXXV/5Ol3vo+4X8al9AySDc6QwaVjF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H0OsMjZSeYrNBoWbN88t0j60kAHyT33lGlqyeq6uUocBHpKTPRXdfS+BMjfP7oMis
 iDoTJdjxMYQZv8St1/kgfHcgLsrVpJP7K3kQuRIlfl5V4QkMVCSOEXP6Qjn8QesuSI
 VAlToeGXOVyu9ocVBgsoIPow1Q9OFlfJFVw0HFPzWfkoh7BNWMtQrMz0F8No1zMCyF
 4B/3VgNP+4Fs9thLYS8gqnzLubLhF0/7KEzM9EzmLpR352oyzi51lXCwWA5RIz9iR6
 0fQKTE/lesaNYRyH2oPx1A4YrMhWK2cTW9NCsuhk+GGMTN2SMCnRFM1TnOPciScpXZ
 JfxOaS5u7Qpqg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id DD53FC009;
 Fri,  4 Feb 2022 11:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643971996; bh=GHWhopYqLTCZQXXV/5Ol3vo+4X8al9AySDc6QwaVjF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H0OsMjZSeYrNBoWbN88t0j60kAHyT33lGlqyeq6uUocBHpKTPRXdfS+BMjfP7oMis
 iDoTJdjxMYQZv8St1/kgfHcgLsrVpJP7K3kQuRIlfl5V4QkMVCSOEXP6Qjn8QesuSI
 VAlToeGXOVyu9ocVBgsoIPow1Q9OFlfJFVw0HFPzWfkoh7BNWMtQrMz0F8No1zMCyF
 4B/3VgNP+4Fs9thLYS8gqnzLubLhF0/7KEzM9EzmLpR352oyzi51lXCwWA5RIz9iR6
 0fQKTE/lesaNYRyH2oPx1A4YrMhWK2cTW9NCsuhk+GGMTN2SMCnRFM1TnOPciScpXZ
 JfxOaS5u7Qpqg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0db4f520;
 Fri, 4 Feb 2022 10:53:10 +0000 (UTC)
Date: Fri, 4 Feb 2022 19:52:55 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Yf0Fh7xIgJuoxuSB@codewreck.org>
References: <20220130130651.712293-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220130130651.712293-1-asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, I rarely send fixes out small things before rc1,
 for single patches do you have a preference between a pull request or just
 resending the patch again with you added to recipients after reviews? 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nFwDV-0000m4-Qz
Subject: [V9fs-developer] [GIT PULL] 9p for 5.17-rc3
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

I rarely send fixes out small things before rc1, for single patches do
you have a preference between a pull request or just resending the patch
again with you added to recipients after reviews?



The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://github.com/martinetd/linux tags/9p-for-5.17-rc3

for you to fetch changes up to 22e424feb6658c5d6789e45121830357809c59cb:

  Revert "fs/9p: search open fids first" (2022-01-30 22:13:37 +0900)

----------------------------------------------------------------
9p-for-5.17-rc3: fix cannot walk open fid rule

the 9p 'walk' operation requires fid arguments to not originate from
an open or create call and we've missed that for a while as the
servers regularly running tests with don't enforce the check and
no active reviewer knew about the rule.

Both reporters confirmed reverting this patch fixes things for them
and looking at it further wasn't actually required...
Will take more time for follow up and enforcing the rule more
thoroughly later.

----------------------------------------------------------------
Dominique Martinet (1):
      Revert "fs/9p: search open fids first"

 fs/9p/fid.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
