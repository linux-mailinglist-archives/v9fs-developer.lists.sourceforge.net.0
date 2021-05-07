Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD147376A80
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 May 2021 21:08:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lf5pR-0007fU-65; Fri, 07 May 2021 19:08:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lf5pP-0007fA-N7
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 19:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/bifFsFuqmDrnpKFcwwRIwCvt+SVb0SVVyii4DNqL0E=; b=D7rqSek1SQ5I19MGq4ruEzvm2n
 k21l1Lb50rqfh++Qad3VxqiyWhJqxldHJ1xRsP7KjUuvffoRTWZYSvLugalKSIxgG9SLSXZT9jT5R
 3DFphJBpC8tV4YFuP2jOGiB0m1OGjBEX8VrK4LcfyVWR+6ZJHp38uQF/yIslWUeYLp7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/bifFsFuqmDrnpKFcwwRIwCvt+SVb0SVVyii4DNqL0E=; b=HTUnbPYhpTiHFbR61GBVEKn4Jn
 9CKe5yJRD0RkzjE+uybaXL4I9ZgmNionsZrZfST1x+wHAwlmYOIKfwtDIiOkDHPfGI2+ERs3JLsfX
 3BpYWXgGxMF5KT1IxzIs0j6x9brB3JTIYbkBhT/I84asN9Z5/QQI3m1aleWPtRf3a7uM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lf5pH-0002h3-6N
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 19:08:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 66DE46128B;
 Fri,  7 May 2021 19:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620414461;
 bh=+yNJeqTSMLW1B9FHkjFBmUcQC2ERctPY73JKrLUpXP0=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=KYFeRvJK2vnVUqCxJzv6f9vWRIiv+9J1QqXPhSmLN5/lpQ9Yh36J63bux/1eR3yD8
 nwKwSkYTKJCB1c9ejlKWjnKfQmw9pgkKfVQNtdlIZm0qcVedsCs7w1KvLtZyJZw//B
 izI+iUc7MNKNoeHJlYXhovxfvwFxJbqPR4MYiOjIK9QLYbgBCpzJfHBckfOlbaTVvE
 sOGaHnHQr8WJCtii8tITJmCxI8S2Uiu/GEPCY6367uw6xP88hkEcPU8rvvd+3HftkI
 UI40b+dge61ksnAZIiHBR9bVVAbsoAzMNd/mCkMSHlT1B8zkhHJkbycF1Ckf2eKGzi
 6KfT9La5CmkFw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 60F7460A0C;
 Fri,  7 May 2021 19:07:41 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YJUnYXZBd1hpwW6G@codewreck.org>
References: <YJUnYXZBd1hpwW6G@codewreck.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YJUnYXZBd1hpwW6G@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.13-rc1
X-PR-Tracked-Commit-Id: f8b139e2f24112f4e21f1eb02c7fc7600fea4b8d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e22e9832798df81393d09d40fa34b01aea53cf39
Message-Id: <162041446139.12532.7193999623381072586.pr-tracker-bot@kernel.org>
Date: Fri, 07 May 2021 19:07:41 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lf5pH-0002h3-6N
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.13-rc1
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

The pull request you sent on Fri, 7 May 2021 20:41:21 +0900:

> https://github.com/martinetd/linux tags/9p-for-5.13-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e22e9832798df81393d09d40fa34b01aea53cf39

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
