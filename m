Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4D858B889
	for <lists+v9fs-developer@lfdr.de>; Sun,  7 Aug 2022 00:09:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oKRyd-0001fP-5r; Sat, 06 Aug 2022 22:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1oKRyb-0001fF-66
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Aug 2022 22:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jAgv+8ABd0J90Ns+/IeQuba7GDN4Z7XueoRvbn9Yf60=; b=RzPA4/NzBQm05ONuT3cLLTFCMo
 zXFjY63CY7oOFC0aH/5ATf/uz5cOu3nez95rpQWOCc2fdNaQp0L7AcEqKV7LlzUJcGywTnov6aiVl
 Sg/snhrDexUx0/Yz4ICPtwM3CJLTWRVN8E8KI4gjfb0GH7BHDzx5nsciHQXXD/4GnRR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jAgv+8ABd0J90Ns+/IeQuba7GDN4Z7XueoRvbn9Yf60=; b=Lw1wO2YKo0F32M+F1PVL1e9+h1
 bfD06guxHuFhCttUWDsS2RPSn0WHDaj253IZNYHNBVhXK4H3tp10W3UjGgR4+kB3UAZYvsCzEdVb1
 gElXK8NRDV3u1/KhMfbG3xR+fWpJZ3+BupGM+e25KiKhnQNUOncCKzR54XpQBZdY7aqM=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oKRyV-00042H-1O
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Aug 2022 22:08:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B958FB80B29;
 Sat,  6 Aug 2022 22:08:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFBCC433C1;
 Sat,  6 Aug 2022 22:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659823715;
 bh=AUi9CmohuUxbR7hJFM/LAOBJUvNSiAFjOg1ZEOTVKKQ=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=GC1ox6lqirovi2R51ORdoz7HQ3c58XFMCj8iR5+tP/u3f7zc2YPSMVJeNmL8QbBdU
 6pGKIh7Mjstvir0X0upCSYb+Yd8pwnSvjw22nr/XTLTcgOr3tC+pq/QostXKWE9DGN
 YNswiehgXSOTW6AaIRTF3MXrNyZfUttoJdl+tBziE1OLj4bZJ9yVIUJ6f7gr6DqWMw
 v24BQ6WHxNhulOI6CGLG1eCOoBs9Y7QFAEGHXImG05qha0XWHbTf/Ubwc6M3YDbt1l
 +Si13fzVqKr8P+uvP7tjwp4ZAd2BD+UblFJn2ZNWZj72Y2wus1qMBHU0g3K5Jzxog/
 QR1E4yN0aGyBQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 5BB72C43140; Sat,  6 Aug 2022 22:08:35 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Yu4soPL07+/xDd3D@codewreck.org>
References: <Yu4soPL07+/xDd3D@codewreck.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Yu4soPL07+/xDd3D@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.20
X-PR-Tracked-Commit-Id: aa7aeee169480e98cf41d83c01290a37e569be6d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ea0c39260d0c1d8e11d89c9d42ca48e172d1c868
Message-Id: <165982371537.16627.14380994567532665626.pr-tracker-bot@kernel.org>
Date: Sat, 06 Aug 2022 22:08:35 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Sat, 6 Aug 2022 17:56:00 +0900:
 > https://github.com/martinetd/linux tags/9p-for-5.20 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/ea0c39260d0c1d8e11d89c9d42ca48e172d1c868
 Content analysis details:   (-5.8 points, 6.0 required)
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
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oKRyV-00042H-1O
Subject: Re: [V9fs-developer] [GIT PULL] 9p for 5.20 (or 6.0)
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

The pull request you sent on Sat, 6 Aug 2022 17:56:00 +0900:

> https://github.com/martinetd/linux tags/9p-for-5.20

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ea0c39260d0c1d8e11d89c9d42ca48e172d1c868

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
