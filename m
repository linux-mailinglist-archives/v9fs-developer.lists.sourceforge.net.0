Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 295D6296462
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Oct 2020 20:05:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kVexq-0004jw-2o; Thu, 22 Oct 2020 18:05:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1kVexp-0004jo-3h
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Oct 2020 18:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YXxVtl4fnf7vPapuZT30CmyvT9R34nriMVJ1Sql/ug8=; b=QhvOAd/Q2vSgum0YQFFbqmDZsu
 Smjf0shTA1roZZ7H2kuXHfSfZXBZDWM6bA/x5k9un6k9ZX5jKIWyn8ngB4Gd5EX3FZIThjTDRFY2d
 jxvnTrLt6QGoKr3GcTk90sJtsOvCdW1F+wUC4fV4qQgETImGVzhdA3eAJIXFeOXeeGhU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YXxVtl4fnf7vPapuZT30CmyvT9R34nriMVJ1Sql/ug8=; b=J2noeFsaKHnsga2Sfb0X+M5EI5
 bDzhHHBMfxTaV2Dzg45lOjegPqqACJkZ5jJqfjvz+yhQohKhOXkFXQ/W+e9kTi/kCWEaWANkQZlbA
 HITjOGFwzc1IDogxrZTO6/ZaLUEUDS7MDjNaHjmePO4BfZj2GRQmew4anMqlY0Hf3pLU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVexm-0093NJ-Ad
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Oct 2020 18:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603389916;
 bh=YV9UjMDfnXXtBMMESCMmr59GH3lCo7JxOlpEMrth5KU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=l9c9JjMqr8ugzTNGFRtsikEXe/x1XQcl2vmSZJaJbV87hrEiZ3O9TPrk7/9VyJDXr
 vf2URYrEDlhQ8VmArkaJfEpAi0LHBQp0CBl54BwfNRAqkqlJr7pSFgZSQkCTJ/bu4E
 grlhLmvNuy1Mu5L0V4WnCOwVMCyhowhFCk8vcIIs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201022120826.GA28295@nautica>
References: <20201022120826.GA28295@nautica>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201022120826.GA28295@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.10-rc1
X-PR-Tracked-Commit-Id: 7ca1db21ef8e0e6725b4d25deed1ca196f7efb28
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 334d431f65f05d3412c921875717b8c4ec6da71c
Message-Id: <160338991670.20886.10086376511577798904.pr-tracker-bot@kernel.org>
Date: Thu, 22 Oct 2020 18:05:16 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kVexm-0093NJ-Ad
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc1
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

The pull request you sent on Thu, 22 Oct 2020 14:08:26 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.10-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/334d431f65f05d3412c921875717b8c4ec6da71c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
