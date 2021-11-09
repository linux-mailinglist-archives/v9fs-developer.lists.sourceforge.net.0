Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B115E44B33D
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Nov 2021 20:31:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkWqZ-0005QT-2E; Tue, 09 Nov 2021 19:31:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mkWqX-0005QI-DL
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 19:31:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Z7Ti9bOpv2zyFWkCCgbmrCkGiRmPHzOrA/DEzlERyc=; b=OkgjoJtbSh15IPnYTaP9ZGEC44
 hjm63ARlVK/rRF3qGCrFn8M2LEftAlhBMSjZcSRvnMZMVUDSiYDtGe39AOOlE+TKGcZZ8EkqdxUis
 h4axQ+GY93nzpUkITeqz3tJ0YrSqR6hCtNw/M2lBDXa+59mOAHQk4IMqVZGy4kMwnTTw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5Z7Ti9bOpv2zyFWkCCgbmrCkGiRmPHzOrA/DEzlERyc=; b=FRsOx07iJh3hLIdQWdMsTr4ygI
 ohdulWCrPx78j6Xic+3F8bDFC8cdR++bWzXSPBG/ag6Az+nTeEY4oYFtDLqtCFF1hOKLdsQbW8JUQ
 O7SBOnjRk+HRuDciaYhOTrBf3EFO3Yg4+vJXer1afXr117U/SRRs5BLzYBDrNTamCQCk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkWqV-007d4l-JN
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 19:31:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 53B7A61360;
 Tue,  9 Nov 2021 19:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636486301;
 bh=dnXj0CKluQKLZKn9owkzkWpD13pbNKDaQ6RrQPX2muk=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=l01Q5ggXuA6OHCib8jNzhVl8XvtrMO/pxp36PqhEAYPam3NCov2uOrE1b6JynjupB
 H/o/DaDVOHhZk3pJ13AjD/y14juoR/MqeF2kdZ9aNOdjnAjQVxXDdDJLgZK3XyEhaJ
 JJB9TgetLdny5Tr7d9iuNIIQFzCxRHgrb/MG/CNYBP7+gDtrbSBLcL5lqJoi3QL4fg
 WTF3r68QYBNUq6DcCajFrFlCyxpOHAbNq6qte5q2O8g/QYIGi/lyPXnwjbvC8pLBSh
 mfRbUSz9ABJI10Ew+xABRZZAGF5T2Ue/vRUq5FwAsQz646jYNuT1dA+eimrDTCz0o+
 38x0oAKGhcpcQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 4D34C60985;
 Tue,  9 Nov 2021 19:31:41 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YYkuBxbTYS2ANFnK@codewreck.org>
References: <YYkuBxbTYS2ANFnK@codewreck.org>
X-PR-Tracked-List-Id: <netdev.vger.kernel.org>
X-PR-Tracked-Message-Id: <YYkuBxbTYS2ANFnK@codewreck.org>
X-PR-Tracked-Remote: git://github.com/martinetd/linux tags/9p-for-5.16-rc1
X-PR-Tracked-Commit-Id: 6e195b0f7c8e50927fa31946369c22a0534ec7e2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f89ce84bc33330607a782e47a8b19406ed109b15
Message-Id: <163648630130.13393.17965204101604959929.pr-tracker-bot@kernel.org>
Date: Tue, 09 Nov 2021 19:31:41 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 8 Nov 2021 23:02:47 +0900:
 > git://github.com/martinetd/linux tags/9p-for-5.16-rc1 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/f89ce84bc33330607a782e47a8b19406ed109b15
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mkWqV-007d4l-JN
Subject: Re: [V9fs-developer] [GIT PULL] 9p for 5.16-rc1
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

The pull request you sent on Mon, 8 Nov 2021 23:02:47 +0900:

> git://github.com/martinetd/linux tags/9p-for-5.16-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f89ce84bc33330607a782e47a8b19406ed109b15

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
