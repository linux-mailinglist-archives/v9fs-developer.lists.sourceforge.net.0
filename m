Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B489E65541F
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Dec 2022 21:08:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8oLe-0003wZ-IL;
	Fri, 23 Dec 2022 20:08:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1p8oLU-0003wP-Sv
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 20:08:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RS20y4ZJUK0wOPgb4UVqK2rWwan/rckNrhgLuvvPcS8=; b=LUjS7acynR2fUgXwKAvswmoMy5
 tIKWpUOrAlGZKcoW6dKtns2YqH4+V0gwxfop3XD6nCqwZLfN+QTsstZlRpQ/3pvDbxl/TUBy+x94O
 IqlAri4nebHeZXmUPHl6EC8S+cOJaq2JmjPrksx8/3NVGdEb8nwHsVn4BZvrRiqkWF7Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RS20y4ZJUK0wOPgb4UVqK2rWwan/rckNrhgLuvvPcS8=; b=V6ISypTx+I7OSzuOo0z9cB1v8+
 qrCa4VJJZkaUEqhwVXBB98lcu33jElVUI6wfYT+zOLsZrOOf1dXJzfUEOSa0Ipc3TeFXHw/8ZBZDQ
 a2oQR4ikKVDJu/+bmc4dXkNbdkvsmLpxJbLLGkjCE7H+0XIG4ZNEwD5CTFglgHaeFoxI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p8oLQ-0003Eq-41 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 20:08:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E2E7961EA5;
 Fri, 23 Dec 2022 20:08:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 42027C433EF;
 Fri, 23 Dec 2022 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671826113;
 bh=xPTOnB2Q3hBfI+si9FmT6bNHaXCqqzT8BSb+rFgeoUg=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=rs45jhVhCgXa2Zomf6baJf76XsWic/Jz1LJ5ZCDrjotKD4srgXUuo+b6k6dhH/4IG
 osGliT3M5RD3DEp/C6eWyZTTP4ejhMpSisLQQMzw6D4ct2lFlChTaNlHDzFz9cVcwk
 1hOVMwSkeyG51lyf/LoB40DWRtMj3RaQHBdaMeYjuPFxZhgCB8x3OTiL6wTLAYoCyT
 FrXfG2LSUq9kQiBh1na90MJuGu9Jw38ktFtJDj79woNrfRLKeNNvH9TqEBDQlcb4AE
 8Y5VqvbWU5++CWP9DIyXKFDZGrF3+hPqEnDsFHdylEV/fOYMGtG0DvbdnbP4QyhruH
 1e5GpN1QJuWcA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 2FEB6C00448; Fri, 23 Dec 2022 20:08:33 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y6WNt21HKZmWTG3/@codewreck.org>
References: <Y6WNt21HKZmWTG3/@codewreck.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y6WNt21HKZmWTG3/@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-6.2-rc1
X-PR-Tracked-Commit-Id: 1a4f69ef15ec29b213e2b086b2502644e8ef76ee
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e3b862ed893bf030ebdd78ead99647374a2cfd47
Message-Id: <167182611318.4135.10312690702165039666.pr-tracker-bot@kernel.org>
Date: Fri, 23 Dec 2022 20:08:33 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Fri, 23 Dec 2022 20:15:03 +0900:
 > https://github.com/martinetd/linux tags/9p-for-6.2-rc1 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/e3b862ed893bf030ebdd78ead99647374a2cfd47
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p8oLQ-0003Eq-41
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 6.2-rc1
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
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Fri, 23 Dec 2022 20:15:03 +0900:

> https://github.com/martinetd/linux tags/9p-for-6.2-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e3b862ed893bf030ebdd78ead99647374a2cfd47

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
