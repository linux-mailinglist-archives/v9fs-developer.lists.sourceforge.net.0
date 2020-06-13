Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 187CA1F8500
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Jun 2020 21:50:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jkCAS-0006H9-DH; Sat, 13 Jun 2020 19:50:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jkCAQ-0006H1-Rx
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Jun 2020 19:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XEwdwziaSHdaCf588VEu0UoZeO07janOQpMlypwBkp8=; b=Got2BY/ROqaI6lt29L0AF1Qw8M
 ZdjlbrboVttiAj9k0Y1S9LJNIclOcYec0VNaWmkR4JEdOcrwayuSgIJaXv7tpE6/+pBTR4YnErdY4
 vfEf6BSZSBu5LKdXffAQZCAmGVzM8ji9H/r5Kn7N7MJqqMwJ+XTw8E8xYnvTVeazj9m8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XEwdwziaSHdaCf588VEu0UoZeO07janOQpMlypwBkp8=; b=dm77YZopROsFKs4TWCNGs2tQgs
 xwkZE0ox1msX0/ALLJMtLhpwLx1CEKwulxTDUcFsTGL9wXC2/dxBAyQaTlhYI/OzywS8d7aaOxUp2
 zduLH62GIDuyYcIRWw7hDvBl1dc0UqdvSFQ6Om3ni+60xErVXAAVrGGOdWHfzwd18G/0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jkCAN-001RVB-FP
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Jun 2020 19:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592077803;
 bh=TLD8xFmWTGGIfcfYoHvl6FbeT6NluqOOwhP2GkGDUIQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=seZb+iCiR5/N2sRCWJ8UAZvHCKPgdvGPhAT1F1wdVlxRQ5HHJO/2cXNaICgIE0+gD
 /sX2QjVwsFE9N6H+iJtxVYBRZhPr3BYAXdU+xmry1rMSvjeJFBojRH0v0J5zgXnf2x
 TE+x75HKX2cZsqAsb2nvCs/KI3kXcKkZbtUQlGN8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200612221748.GA5666@nautica>
References: <20200612221748.GA5666@nautica>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200612221748.GA5666@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.8
X-PR-Tracked-Commit-Id: 36f9967531da27ff8cc6f005d93760b578baffb9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 61f3e825bec7364790cb7d193a9a156c46119cff
Message-Id: <159207780367.22916.12178095841307999537.pr-tracker-bot@kernel.org>
Date: Sat, 13 Jun 2020 19:50:03 +0000
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
X-Headers-End: 1jkCAN-001RVB-FP
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Sat, 13 Jun 2020 00:17:48 +0200:

> https://github.com/martinetd/linux tags/9p-for-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/61f3e825bec7364790cb7d193a9a156c46119cff

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
