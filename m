Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 589A33907E3
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 May 2021 19:36:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1llayx-00076u-MZ; Tue, 25 May 2021 17:36:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1llayw-00076Y-HA
 for v9fs-developer@lists.sourceforge.net; Tue, 25 May 2021 17:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WaAC99DZRgHhqHJgH00NEs83xp7UR6IuDDmd4hOKrP8=; b=hVSPZFCRoh6Zwxmbtf2fdCyECl
 vx7ZK7rjD68Hx1HMa1t4Rjpixm7FvjziHw43Rr9szFx6jaNLL28aYJQt/cN6xe5n9pA7LWwz4qiON
 zX+t7HXywKaWrMDRPWE6QGhfEFvrLgRORwFGM3aYMEkCqyT2mIP20Z2PGxIuE0Qyo68Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WaAC99DZRgHhqHJgH00NEs83xp7UR6IuDDmd4hOKrP8=; b=c3ASiwoiPbkroPJ/COLvO7aEoL
 aGndgXjKxnoGn8c4s2rCHKBNFxyYRcmfJqrObxpCtrGMhHm355jzXFYIoxko8BS+I68SA3+u4NLpW
 J+QuMFAiKgwu52MoPjvPb+bGVoclbbrG+OsDte+1O+aYGFQE4VRKdwxUBZBdMy7w9pPI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1llayl-005btu-Gn
 for v9fs-developer@lists.sourceforge.net; Tue, 25 May 2021 17:36:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id D808E61157;
 Tue, 25 May 2021 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621964182;
 bh=LskCapKtyB8RvSvFDfob6jRHdNLRDzxTgT9OF4bwRiI=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Ny9MBHfnFRBWDZ5MaAeHH23HUW1HtoA9ZG0uLesxIxrOzDxzq5Gadxv2HQz/Yhqh0
 pusvJG8wsNSJq0TglpUrg1uQbQmSGfZ4dnLomTqhchJRsIYOQF7LMUGyvDx71bWGa5
 PETGfYUjgVBZiAog9xmPRfGhn/0IDwEYA4LEisITlNPo9vN/0Mp/RI/nqE/Ejxzkcm
 oCK0BqSAQr6i5ety5eL3kWRNgq7DGhnSgtra3Sch8HOHDbBeAc31ruhd1S+rOyx9/N
 cX/pi3MeCA4BSGwcfwDcjuUA+DiO9bvQkVYAqCGHHYtkzymrl8QwzqKS7x/rDi+whW
 vGZhk8ikkDIww==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id C8A19608B8;
 Tue, 25 May 2021 17:36:22 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <4007708.1621947662@warthog.procyon.org.uk>
References: <4007708.1621947662@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <ceph-devel.vger.kernel.org>
X-PR-Tracked-Message-Id: <4007708.1621947662@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/netfs-lib-fixes-20200525
X-PR-Tracked-Commit-Id: b71c791254ff5e78a124c8949585dccd9e225e06
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ad9f25d338605d26acedcaf3ba5fab5ca26f1c10
Message-Id: <162196418275.15660.9511112826045891745.pr-tracker-bot@kernel.org>
Date: Tue, 25 May 2021 17:36:22 +0000
To: David Howells <dhowells@redhat.com>
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
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1llayl-005btu-Gn
Subject: Re: [V9fs-developer] [GIT PULL] netfs: Fixes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, willy@infradead.org, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com, geert@linux-m68k.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, torvalds@linux-foundation.org,
 linux-afs@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Tue, 25 May 2021 14:01:02 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-lib-fixes-20200525

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ad9f25d338605d26acedcaf3ba5fab5ca26f1c10

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
