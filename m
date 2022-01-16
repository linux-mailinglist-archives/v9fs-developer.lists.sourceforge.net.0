Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCEE48FB33
	for <lists+v9fs-developer@lfdr.de>; Sun, 16 Jan 2022 07:45:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n8zIP-00045a-Lr; Sun, 16 Jan 2022 06:45:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1n8zIO-00045U-72
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Jan 2022 06:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lxNBmz1kXHVg1qQaixfSnRRVVZF/sN6AzBFrZsFe44k=; b=M0m0/r5zamMJW0FtupB9GCAzpf
 Pbx6BCLKhz+yZca6Inzdfh3GYIvildVGo9os+Ic7nxAJD6M7LA3nN9R7olHiduP8mTy/f7UHJmURR
 D8NBuHXEoZOaII+MpwG/Aj+Q40sfmuYSJZmmH+kLO4cxFu5lO17QPw/rn+qI9O2aM9yI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lxNBmz1kXHVg1qQaixfSnRRVVZF/sN6AzBFrZsFe44k=; b=JVIB6JNV0LfakzDIpiC/vZ24BZ
 nI/xuShGz3ev9TscTcWZVQEHk3KZU5lFEsM6BE3AEYJmJUxw2uhzbbSvR8uA04hz0rKZO8ID+neXt
 SfMZs/57sggO7pkgknGzT3ovx8kqHi1Apk/BB6539yXAfVtMXQiBiT8d5LFSF3KcpRSo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8zIM-0000gk-7s
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Jan 2022 06:45:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D95E260AF4;
 Sun, 16 Jan 2022 06:45:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4F92FC36AE7;
 Sun, 16 Jan 2022 06:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642315536;
 bh=RK6xmWL/Q3Twf8KVJ/yiNzacgiqoDi1oFGuHGnW+dnM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=dMO3ZxTkiqzsLipADrEPV6ajI25VghoeWPQGXv7QIcvl4tYTD1kD8yBfYwNEQRsmG
 Aw82DirJgK99f8rh/NWSvBjKy3rWUwhpgCbXxAGpOdnueI4/wk8+diY250r5HN7cD4
 cEGBL0O2HtdsCQH8ueOsF1TeX3IaO0Q26OKfd2q/N4YShq2xZcZGYgOkKnCEkXu8vG
 Odj/loWIrTq3n/QIygbXd0Xm781cQDi5ARMhA2nKsMjGarOS67awg8y7hpYaNMoijV
 239IrHlAGkpRY41L6vPO/BtmCi5Zq4e4zWFiwbSdD61x86mcXS12+4UueZKoA3P3jS
 pVWgnumTGafeg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 3F2D2F60796; Sun, 16 Jan 2022 06:45:36 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YeC4rCJjQhLOJGlH@codewreck.org>
References: <YeC4rCJjQhLOJGlH@codewreck.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YeC4rCJjQhLOJGlH@codewreck.org>
X-PR-Tracked-Remote: git://github.com/martinetd/linux tags/9p-for-5.17-rc1
X-PR-Tracked-Commit-Id: 19d1c32652bbbf406063025354845fdddbcecd3a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 49ad227d54e842f436ed0122cb7c901d857b86cb
Message-Id: <164231553625.30539.16557626266973677990.pr-tracker-bot@kernel.org>
Date: Sun, 16 Jan 2022 06:45:36 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Fri, 14 Jan 2022 08:41:32 +0900:
 > git://github.com/martinetd/linux tags/9p-for-5.17-rc1 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/49ad227d54e842f436ed0122cb7c901d857b86cb
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n8zIM-0000gk-7s
Subject: Re: [V9fs-developer] [GIT PULL] 9p for 5.17-rc1
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Fri, 14 Jan 2022 08:41:32 +0900:

> git://github.com/martinetd/linux tags/9p-for-5.17-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/49ad227d54e842f436ed0122cb7c901d857b86cb

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
