Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A162519FAB5
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 18:45:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLUs5-0005ti-Tv; Mon, 06 Apr 2020 16:45:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jLUs4-0005tZ-OG
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kVKiZM5zEGo+4D0Lyvs03qTzo0FoPYqsMbNUEMwuBT8=; b=h7BdFYFXhYnaF0cdYgw9YWGSf7
 ZIAmxFd/P3Eg8zLMcV9noqST+NGjdlFD1N0KlJkj3CH0eGBft16spakHShE6fXgeLgodAGQC5+fsf
 xXaBLXaZIguIS9EBHuf8FmS6iaSVDJYqvBhdqU7/R+Y39wA97g+WTFzAGiLwNNAzGQn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kVKiZM5zEGo+4D0Lyvs03qTzo0FoPYqsMbNUEMwuBT8=; b=Raa0RCt6tkXKDZtgi+kGNkWjyu
 i8xDZY6k4hPxycc5gA6EFrvLDPP1YHOWZj3+BP9ruazST4i4uCbnoaf+JhGP5IcSVZtPlumizCQDo
 05Gf0Drnycw/poutNPvuOCO1/UzO34KBb1gYHxYaYMrfiWeHWvvY1MUCdICqGMeN25oY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLUs0-004dDO-96
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586191502;
 bh=EIuPoQNSYix7s4sCq4hwH7DS5tLlNWpflv/Y9RVVZWE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=aqfPjYzLGsBzB/biToNIvc8QOI3jRoPNZwMP9F9oISr8aE4wcX7mXARnXs/98MX/n
 Gbh1qIY1qAVvzwWx2AWB1/q21YaMxk5irBS+bS/+MwLVZ3f6N4wf4g0X6GTnw+u9Kv
 quRkGA/0y+MEmuc9RqjbEx7RwIHM4w3D6FuVZ1qU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200406110702.GA13469@nautica>
References: <20200406110702.GA13469@nautica>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200406110702.GA13469@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.7
X-PR-Tracked-Commit-Id: 43657496e46672fe63bccc1fcfb5b68de6e1e2f4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e14679b62d84b8ab9136189fc069d389da43fe71
Message-Id: <158619150269.17891.13555483701597490537.pr-tracker-bot@kernel.org>
Date: Mon, 06 Apr 2020 16:45:02 +0000
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLUs0-004dDO-96
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Mon, 6 Apr 2020 13:07:02 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e14679b62d84b8ab9136189fc069d389da43fe71

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
