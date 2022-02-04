Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAC84A9E73
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Feb 2022 18:58:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nG2r0-0001Aq-5B; Fri, 04 Feb 2022 17:58:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1nG2qz-0001Ak-9m
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Feb 2022 17:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CqUylzLHcJSn7jHc5n2nP3cIKorFI+NND20C41pbjY0=; b=T/yL5PeBzv+V8475kexRCqU9fh
 RWOx7vt4tTUMX7JE6GaTqkttJttvuFi5tc9/LvFwJi6h0SpeSJ7hyG/75/lb8OH58cKtynLg5QAQe
 MHQHW4H/+54nSm8axSqA6rh4+jMreqgYxBy7Or0hbhyY66/pvwAqVkuIyJWfzkvUmx/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CqUylzLHcJSn7jHc5n2nP3cIKorFI+NND20C41pbjY0=; b=dKxSED6ZLLLYsS4pNOLSOQaK5+
 d6mHoXPk/UIL6KiQulXSXNz4KJYgi0dGiC02eoSZ5MojXgpofKhBMwOYW5n7bv27kzBCOZeqklF5m
 n5qk803mCE1nhlJAmqBRNiScMf0j7BnP6MS+5MC/h+a0rhDJA36k/UJfqBsvlQRlIqpw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nG2qx-0009gf-FG
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Feb 2022 17:58:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3A69F61B8F;
 Fri,  4 Feb 2022 17:58:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A287C340FB;
 Fri,  4 Feb 2022 17:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643997505;
 bh=zFYkm4VCUhyoKFnTtqkYM6XxiGZCvCrd3LFuBN4ldLo=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=fPrSZDGIMsZ5Vn7vOTJFNcO9I1qqKNVaf/ZPRLQJA8PULl6ysteDJyHveLXCuVItT
 XGHOd5ifepY/rfqNqQrD2OJgCD7UuyJJFmQ9INtCmtG4Cl1sUeI1fOmpM03Xm2ljZG
 5K0I0hWXjhuBYWrXohH05jc2DcEaq7wicXfCkPCQlxPzZrmJN5aVccFooVhxzckvJ5
 rhGGCKeUt7qW1c3mtB0CzA+g7qqYdQ2eKoO+J5PHc/GzvuBDCQ5zeLoOPlx5fIuVah
 xa6rSjMzPdSQrNfDzQugz1hFYXXntQiuF89ZBRoaPWNU6nKQ6Zfes+WctcyccooLM2
 v8VmdyRgtQ5Bw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 D67FAE6BBD2; Fri,  4 Feb 2022 17:58:24 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Yf0Fh7xIgJuoxuSB@codewreck.org>
References: <20220130130651.712293-1-asmadeus@codewreck.org>
 <Yf0Fh7xIgJuoxuSB@codewreck.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Yf0Fh7xIgJuoxuSB@codewreck.org>
X-PR-Tracked-Remote: git://github.com/martinetd/linux tags/9p-for-5.17-rc3
X-PR-Tracked-Commit-Id: 22e424feb6658c5d6789e45121830357809c59cb
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1eb7de177d4073085e3a1cebf19d5d538d171f10
Message-Id: <164399750487.18890.15053692534783051413.pr-tracker-bot@kernel.org>
Date: Fri, 04 Feb 2022 17:58:24 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Fri, 4 Feb 2022 19:52:55 +0900:
 > git://github.com/martinetd/linux tags/9p-for-5.17-rc3 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/1eb7de177d4073085e3a1cebf19d5d538d171f10
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
X-Headers-End: 1nG2qx-0009gf-FG
Subject: Re: [V9fs-developer] [GIT PULL] 9p for 5.17-rc3
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
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Fri, 4 Feb 2022 19:52:55 +0900:

> git://github.com/martinetd/linux tags/9p-for-5.17-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1eb7de177d4073085e3a1cebf19d5d538d171f10

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
