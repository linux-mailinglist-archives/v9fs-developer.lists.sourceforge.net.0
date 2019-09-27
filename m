Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F96C0E39
	for <lists+v9fs-developer@lfdr.de>; Sat, 28 Sep 2019 01:00:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iDzE5-0003TH-1r; Fri, 27 Sep 2019 23:00:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1iDzE0-0003T2-OX
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Sep 2019 23:00:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LMiM6xuRlGmT0FZ/91HPhX/kTfMT6LHs6CMoPLn4unI=; b=YfXHAy44ulRCcJ3hn6xP1Xj2dw
 ktyuovfbCHBvqCeXa80mDTeGzh9zKA6OGga+3ZoAaj6AIuCwiN9Q1BBPL8aXryho/8J6GukI4H7ti
 S2PdGgpYtCPv6jsLUeE0V//T4ai0kBkwAxnd74K7bYtxBfu2Lrkkq0nhUNvmGQ7vikec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LMiM6xuRlGmT0FZ/91HPhX/kTfMT6LHs6CMoPLn4unI=; b=M70OmVbRuge8EY98AYvJo++sso
 WVQckwV0R9Wej/sX4V4ybU02ro/9F4+7FlcsalXY1NkkBL2/6jwH+pwld5V9CF9DPQIfVp7yuDS9T
 zcbO640vCsRlT1p6AISvmeJreE7rQAmPCsIHDJQG9s/SCaiidpOZljB8B6P7o3RYVPMk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iDzDy-00CA5S-Oh
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Sep 2019 23:00:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569625225;
 bh=sOmkUwDptShoBIASuX4SCcnaHcEbbpoN1nJZcqTmius=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=mQ7UH8+piZka+ufHrTF665+on+mZzFyvkeIXB5NsYUxwVhCF1+7xgSVMY8YbAk58N
 ohVkaeklk+avIiYnQ/t5VCdKOMityE7hHDbw0LssTa0bXOBisvLAmTMC5FB7j2ceKz
 h1U1Cf9f9061Low6y8uMVts0Ahfh5unpiZBRd94M=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190927142725.GA8169@nautica>
References: <20190927142725.GA8169@nautica>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190927142725.GA8169@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.4
X-PR-Tracked-Commit-Id: aafee43b72863f1f70aeaf1332d049916e8df239
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9977b1a71488742606376c09e19e0074e4403cdf
Message-Id: <156962522511.10299.7199492339418267253.pr-tracker-bot@kernel.org>
Date: Fri, 27 Sep 2019 23:00:25 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.5 (/)
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iDzDy-00CA5S-Oh
Subject: Re: [V9fs-developer] [GIT PULL] 9p updates for 5.4
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
Cc: v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Fri, 27 Sep 2019 16:27:26 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9977b1a71488742606376c09e19e0074e4403cdf

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
