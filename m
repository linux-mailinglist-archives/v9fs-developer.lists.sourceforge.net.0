Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C036F7857
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 May 2023 23:50:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pugql-0008UD-6D;
	Thu, 04 May 2023 21:50:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1pugqj-0008U3-Op
 for v9fs-developer@lists.sourceforge.net;
 Thu, 04 May 2023 21:50:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j12Dqwe6ePoQJXK6Erbb0brLybLxqM4NLQjRWYw25ek=; b=jLXpxP7THebMK1zRwGobleZBnh
 Cm1vgWWvhoFKW6s9GdNcEOA9bAo03Ez4wd93Qben+Adl5WM8UAAHOtuJZ9fJ5oSsUTlf3mriiOQgC
 p6wmWEEWHeJ9/vXWrDQcIl5NdLbMIPb+nNUnjUXbCloUsBR+wYWNFWxppki4eKX4A6S8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j12Dqwe6ePoQJXK6Erbb0brLybLxqM4NLQjRWYw25ek=; b=Z42iJBZQpQ6+2Bs/V5G4Y/dAcD
 7sGo3AJfJb3mxI9YxLhnY2hEfnhU28ukiQMZoyBiF5tcJqprjtPF68huu3pLcPTeNyMhFYjDu7Eek
 D6l9DYSXBd/T8s1Zl0DrVQBkcZu3smtlEfhrmUhFPl/L/HG6em+8uabOK/Vlku/Osd0A=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pugqi-00EPEm-0a for v9fs-developer@lists.sourceforge.net;
 Thu, 04 May 2023 21:50:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 993E460F6A;
 Thu,  4 May 2023 21:50:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0528BC433EF;
 Thu,  4 May 2023 21:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683237046;
 bh=WFw20QfDsL/6GRIEPbeM07zo/huuezcbqE4ZIGNkScM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=W5laT6wzhQdLJudq8X/cBo1EovTGXsa8A/V5NhBYNlfqyAtlmPtd04UqjcpH8K6zw
 bP0EJNipwDs2Ixlc2oHBxFt/ML/NLjdYGiGyHPYNY+7nyb0HRS3EneMEwbuP/lfeA9
 NFk+zUbc+FmoBJNsEcbEubiActZJogU972sL9AJs6Nv7Q4W9XxVZO5EiXP7EPJXrUt
 vcuFRtKgsuPoR3qkhwFeorvBhQxldT4w+zu2N0hTlFhh+PLMEzDLEwbXOmxC1XApQT
 PFvTuxcjuEUKCyf4xN319zoABALisbcavpDhkx4bL0mvL+8pSbMHipRy3gX6eDJGdB
 k4+xuJadDaNuQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 D9D4BE5FFC4; Thu,  4 May 2023 21:50:45 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZFL+Pg3IGWeLsQOo@7e9e31583646>
References: <ZFL+Pg3IGWeLsQOo@7e9e31583646>
X-PR-Tracked-List-Id: <v9fs.lists.linux.dev>
X-PR-Tracked-Message-Id: <ZFL+Pg3IGWeLsQOo@7e9e31583646>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 tags/9p-6.4-for-linus
X-PR-Tracked-Commit-Id: 21e26d5e54ab7cfe6b488fd27d4d70956d07e03b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8e15605be8baeb9e3957c268c7d6f901c327ad5c
Message-Id: <168323704588.23044.5518199268556560774.pr-tracker-bot@kernel.org>
Date: Thu, 04 May 2023 21:50:45 +0000
To: Eric Van Hensbergen <ericvh@kernel.org>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 4 May 2023 00:37:18 +0000:
 > git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 tags/9p-6.4-for-linus has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/8e15605be8baeb9e3957c268c7d6f901c327ad5c
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pugqi-00EPEm-0a
Subject: Re: [V9fs-developer] [GIT PULL] 9p patches for 6.4 merge window
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: v9fs-developer@lists.sourceforge.net, v9fs@lists.linux.dev,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Thu, 4 May 2023 00:37:18 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git tags/9p-6.4-for-linus

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8e15605be8baeb9e3957c268c7d6f901c327ad5c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
