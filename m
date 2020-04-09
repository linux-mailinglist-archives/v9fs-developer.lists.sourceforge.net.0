Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EF71A2E95
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Apr 2020 06:55:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jMPDl-0007Ba-0z; Thu, 09 Apr 2020 04:55:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jMPDk-0007BO-3w
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Apr 2020 04:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=80pxpMVa5IR593qedTjJcgwsqGuy3M4UYVwQ7SuS/v4=; b=ELNmIPibzmwlE2Q3Hk7E9wkvyS
 Lm4EvcJJTOq2dXtEh1ZNzyOfweWwc7POAF8lqyJ72nZRMOFC9DFAmxHbx+5PJ8gg/rP+293tQlM2K
 c32JhwFR+cLV60ScbyWJiUSoR73WB8xIz2J1flVsM/G6Yh1s8pJ55mbVysxrbcsdNBqw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=80pxpMVa5IR593qedTjJcgwsqGuy3M4UYVwQ7SuS/v4=; b=bN1XDhxtLvDaw+uTG3xc3dXJ+5
 AsCigfVbOpSL52SRdBHdvZcRhhSdbSS5yldLh4CebVTg2LmYv4KSwzM3Zn4RFyLNIWc7bz0pGFpPm
 J2Eid9oHR9uGz4Cj9t35EKKnod0SMV1cGGDFfLD17Whg/EGma3AadxH4etwe0Zy/x5Iw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMPDf-00D17r-Dt
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Apr 2020 04:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586408104;
 bh=hdpZkEo40TxKGxrgo2q/EeO6h/GBJrP5hu6h21WMR0A=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=LM6XI5h5yH8+ErTQDsmCJXtKTUDOo49mr+jsvpqojWB1pgxtjusMZvFRbNwu6OZuJ
 xlNrZdBHmRHs+vhQiajF75tTyc/7rnc0P0u4BDtPrSLmcgSuUhBMTtpVXdVOeDPDyv
 BDI5wQnGCOHyqvR6Gojrntw4Y8fEDc0jeypKHiqo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200408151214.GA30977@nautica>
References: <20200408151214.GA30977@nautica>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200408151214.GA30977@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.7-2
X-PR-Tracked-Commit-Id: c6f141412d24c8d8a9d98ef45303c0235829044b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5d30bcacd91af6874481129797af364a53cd9b46
Message-Id: <158640810475.3202.11767820306106270043.pr-tracker-bot@kernel.org>
Date: Thu, 09 Apr 2020 04:55:04 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.4 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMPDf-00D17r-Dt
Subject: Re: [V9fs-developer] [GIT PULL v2] 9p update for 5.7
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

The pull request you sent on Wed, 8 Apr 2020 17:12:14 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.7-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5d30bcacd91af6874481129797af364a53cd9b46

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
