Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D73C024555D
	for <lists+v9fs-developer@lfdr.de>; Sun, 16 Aug 2020 03:55:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k77tT-0000Sl-Uq; Sun, 16 Aug 2020 01:55:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1k77tS-0000SX-Jq
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Aug 2020 01:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KJFi6LLGzNqBG5B2u805+KHSAS1Sw5aZLZyAMJiZe34=; b=GpepTNz9G/IIQQ49uBuySXg06c
 BGdmLMHee2eTrw87/wKsJundlzZIvR/PMAqKEbXXVFlILFmJcFY5f9lkYbFbiIGCZtxjJ1HLqYLC+
 8i+iVRzekC669jo5/4J5ixDQI4LJN3GLZA46lxNk9BwRZ/0mpu9xj3krdxPJxeUY1yJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KJFi6LLGzNqBG5B2u805+KHSAS1Sw5aZLZyAMJiZe34=; b=duayun312UTgdMjxIZF0Ga2V3p
 eqa/UFPXiFQysGTxEG4MtOvLGTE2lDsp+Tu2HKgQTcOGmBkyY2oF487F7iXhyW151LYR7x+xYQ61H
 Arg7BUvu58fE+esQ8sRAAJODW3UUDdoY+vWA8jWdV2sKVh1XUx24xXyAHnocWKwnMHXM=;
Received: from [198.145.29.99] (helo=mail.kernel.org)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k77tQ-00CuUE-Jk
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Aug 2020 01:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597542910;
 bh=N/bkrF+0fXTLqLT/Y//NJuCDndDV9m/xvtSF6AUgh9w=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ShzdSZgCnl4sIbw3X2HQWkZ4z+bg+n7PXRyxUzLlV5SFCXlR2T9ef2WgoIbxODBDf
 eEbQ+3R5cU4vjGjYz97Gggc+3FhMf97MYhdIohN+Kgh1bNGqMAXC5hU1nfKAiPxJl4
 GAHmV81HyWZF3QxpbluUX2Pqqcw7THHHJcdABZkM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200815055219.GA20922@nautica>
References: <20200815055219.GA20922@nautica>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200815055219.GA20922@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.9-rc1
X-PR-Tracked-Commit-Id: 2ed0b7578170c3bab10cde09d4440897b305e40c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 410520d07f5c66a6c1f3eb7ef2063d9bdd3d440b
Message-Id: <159754291013.18953.882050995366233563.pr-tracker-bot@kernel.org>
Date: Sun, 16 Aug 2020 01:55:10 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k77tQ-00CuUE-Jk
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.9-rc1
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

The pull request you sent on Sat, 15 Aug 2020 07:52:19 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.9-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/410520d07f5c66a6c1f3eb7ef2063d9bdd3d440b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
