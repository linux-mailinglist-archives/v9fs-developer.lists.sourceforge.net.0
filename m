Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE46A7280
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 Mar 2023 19:02:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pXQmX-0000CN-UM;
	Wed, 01 Mar 2023 18:02:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1pXQmW-0000CG-28
 for v9fs-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 18:02:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iCAy6Hv3Igb1Ltc1lOIGtkT4dIkvi9sZycfphl8A918=; b=Hjn8qvCSE7IKhv82BchZB8PpLR
 etMnex3MzF6hUlhgP+T8vbQw/c3AnqxtWwEbbpuRHbPrUo+OEDJJcuCeGjeQW9QToPf3/+uQD8Lgx
 T7AZyzyvBKcv4azrxevT39OXNv4jnhKCP4KOMaHGO76nnsQH+hrYAKKKWNSNPoBFJB2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iCAy6Hv3Igb1Ltc1lOIGtkT4dIkvi9sZycfphl8A918=; b=AjuR2BP4mKUQWjA2J1AI5/aPFH
 7SSIxVpyThIfA5y3TDgFq43qIV9OnJGsHTr5nKBWr3zvJ/0gvM1NIQQ6xGxcJ+DnjnnNAk0iQH3n8
 /+BbvLRBwbb2G7Az0q7bD76FFXp0nuRaO/lFsjvkQSqLUr1Rwj8iZLHRGoDMpq/J2ElI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXQmP-0000fX-9S for v9fs-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 18:02:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AA46E61461;
 Wed,  1 Mar 2023 18:02:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B1C6C4339E;
 Wed,  1 Mar 2023 18:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1677693732;
 bh=6w36bUrMChLdaaMgoaOegrSqVnYO+72FGCjWIVC+j8o=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=GE7itJGz6Wkjx0BEcTqlh2V+7YDcazvuKQEmPkY0TvNHGsP3iWDSwU6wSWC/fwsKS
 BVNlCTxDiZHQMM12Zsm4l5BgSJEe2opmbOjYnnRH0MERZYq2UsT55ziv8y3HXTGxtg
 jzAYhh+X+/VJ4eUpFLciQzqIBL3Sy9YhRngU0+Pj86uLdBeDfg1RgM8jC+d/OZ5j6Y
 hERFdGrcmUYgAGYsOSv9q9fNOCuoHrBwCGz4zN/nTHwrtKDxbJRAMi8nE0f/N5seks
 x6uJ0/1++EO+y76/yOtfAgET1Vb/W7CcaweFoaeL6k8ZBW4zs4DV/zbKHKCeFAjPzz
 jdXfUWBHBOcug==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 07C2FC395EC; Wed,  1 Mar 2023 18:02:12 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y/+A/K4/2A8iRj2m@thundercleese.milagro.dyndns.org>
References: <Y/+A/K4/2A8iRj2m@thundercleese.milagro.dyndns.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y/+A/K4/2A8iRj2m@thundercleese.milagro.dyndns.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 tags/9p-6.3-for-linus-part1
X-PR-Tracked-Commit-Id: 89c58cb395ec0fb58df5475dced1093eaf5896ad
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3808330b20ee0b23e1e3c192610c3a2ee65605e9
Message-Id: <167769373202.10213.4551491206983692812.pr-tracker-bot@kernel.org>
Date: Wed, 01 Mar 2023 18:02:12 +0000
To: Eric Van Hensbergen <ericvh@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 1 Mar 2023 16:44:44 +0000:
 > git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 tags/9p-6.3-for-linus-part1
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/3808330b20ee0b23e1e3c192610c3a2ee65605e9
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pXQmP-0000fX-9S
Subject: Re: [V9fs-developer] [GIT PULL] 9p patches for 6.3 merge window
 (part 1)
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
Cc: v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 1 Mar 2023 16:44:44 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git tags/9p-6.3-for-linus-part1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3808330b20ee0b23e1e3c192610c3a2ee65605e9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
