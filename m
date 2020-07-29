Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 305E023271B
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 23:45:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0ttR-0000zR-So; Wed, 29 Jul 2020 21:45:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1k0tt0-0000xp-Ht
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 21:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QCQvNSQu+t/Nxug6/NlSs08MP8FibZyw8lfnv2xaBhw=; b=PTE1hVVUB6isCg63qbC3WwAocs
 2NlAcqFmfuiv8N+js19vLpU4E1SATFkagpgf7zbAsqHVSEVSMP5q+rBrujWEeHae2BTqxpra/dYdz
 9hlc2DBXS81Pqv7xKHOXUcPb18Q4JwgdE2pg4QfHiyJPXd09NG8yedilxqES/7JcwAEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QCQvNSQu+t/Nxug6/NlSs08MP8FibZyw8lfnv2xaBhw=; b=kuvI6J8uD7qzsqLG0WsKS1hP6J
 uSImlre1kmwIUM8ttL0uKRcmdvsTVK9Ae6D10ytzuwLFORi4OA6yBV0M26zOldWu2XugM0ZRYd3t1
 /nVSIYUhcDst3E2XGCLffaUe8lLCt2Y+Tv61I2ZsqrXJgmFawwG3BwxZt4qQBcQW0DEg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0tsz-00Dt1p-Bt
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 21:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596059104;
 bh=RGxKV2Xu1zD1MH8dO1gS8pqPCLQU9ZwmSd2xHqLoN+s=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=VQJ/gvKycDWO9M9qk/2BrzD3jYVw8orSP3PDqpWXU/a0UBkDkPt7nrwC8lenvGCeY
 kSRnHs65SSyRBe2sSZMf7ViIp88xYYlQJV5nyPrE9HnpiIUofzT0XXvhVHdMKSQG5L
 y71YRJOS8YFm67g3Ip4Qel20LY+z7m/eFhsunu3k=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200729063306.GA19549@nautica>
References: <20200729063306.GA19549@nautica>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200729063306.GA19549@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.8-2
X-PR-Tracked-Commit-Id: 74d6a5d5662975aed7f25952f62efbb6f6dadd29
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 21391520cbb597823050ac1bc343a0df3222ac90
Message-Id: <159605910487.4880.6597657243870316422.pr-tracker-bot@kernel.org>
Date: Wed, 29 Jul 2020 21:45:04 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0tsz-00Dt1p-Bt
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.8
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
Cc: netdev@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 29 Jul 2020 08:33:06 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.8-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/21391520cbb597823050ac1bc343a0df3222ac90

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
