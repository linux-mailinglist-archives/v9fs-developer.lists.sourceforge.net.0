Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D52B4041CF
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Sep 2021 01:32:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mO732-0006kc-G1; Wed, 08 Sep 2021 23:32:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mO731-0006kQ-Aj
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Sep 2021 23:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e0D0/7i4bbr2vSDhyeJssefizdNZxoqnvWKsH85iDKU=; b=jn8VcMkwQdFE4nojYkFn5H2QSM
 OMJJ94bctwTq021Np+7Hg33MaU5NyKPtqRNtj3kqw4lwYdyKXy+m5lPBWFbNaUU2yauNKW0yDeI8L
 t7lQNbJjbh08I5beLoBfhqGuifqDgZc/xUBtCL5M7v1qM4ZcZGtanwOhVSe3sZxv2KGw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e0D0/7i4bbr2vSDhyeJssefizdNZxoqnvWKsH85iDKU=; b=Jwl+4bhr/LEox4GAurUHXd+xRY
 LgjHZv9VeuYY8PGEeiRid2DZGClrCbyxuOwlQd9gpNeuDNI+pikrZKIRjadzxL5X+ofWLJIfMuslB
 5ctSkPHDhHwi9sNZOxT/1yascBwoOxJXn0sbtnY1+G24CrccDNYsJgol9583MNbrbhq0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mO72w-0040I1-TX
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Sep 2021 23:32:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 1FF196044F;
 Wed,  8 Sep 2021 23:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631143910;
 bh=6pLIvXijYgvmsA2FfiSgiW8Oq7w90zN/zDTa2RAcvHg=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=XEUExD3ZqfCzIbuHRbeGnTt3UE4yUFcvviBDw43C57yzKyO18l8xvsnjDH60P2TWq
 KHKegyQ8jPVI+NQKemGoWbC8SzVXiky7UMh7PiEihRomMiN3zp9dmLRlkgNrA5wDsk
 G/ncrx6LpZw/e00FtnJ2sxX1SD4c+7O4Wqs3J3/FRApaKsD3XEC3m9bGcrCRc6pPV2
 HjG0YSJtxMg7OH2U8Zwzw4OyxWSANYS5ek1Bf4RRkx+2KnTQonzA1aDRMyMIa4p3bZ
 PvBhth7OZHlQrYJnTWrctdaWXflqy+C/d+KVT1IwTB7wLDkgGQSmn40Pkh0mMn8/wu
 j46dZP54/55qA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 1A0DD60A24;
 Wed,  8 Sep 2021 23:31:50 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YTjFWjkz0nPb+sZe@codewreck.org>
References: <YTjFWjkz0nPb+sZe@codewreck.org>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YTjFWjkz0nPb+sZe@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.15-rc1
X-PR-Tracked-Commit-Id: 9c4d94dc9a64426d2fa0255097a3a84f6ff2eebe
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 34c59da47329ac50b9700035e0c3a829e6c3c183
Message-Id: <163114391009.13056.18287984806603504636.pr-tracker-bot@kernel.org>
Date: Wed, 08 Sep 2021 23:31:50 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 8 Sep 2021 23:14:50 +0900:
 > https://github.com/martinetd/linux tags/9p-for-5.15-rc1 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/34c59da47329ac50b9700035e0c3a829e6c3c183
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mO72w-0040I1-TX
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.15
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
Cc: linux-fsdevel@vger.kernel.org, netdev@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 8 Sep 2021 23:14:50 +0900:

> https://github.com/martinetd/linux tags/9p-for-5.15-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/34c59da47329ac50b9700035e0c3a829e6c3c183

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
