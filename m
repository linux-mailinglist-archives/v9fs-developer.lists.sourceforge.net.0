Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE1D6DCCBC
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Apr 2023 23:21:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1plyx3-0006PJ-0u;
	Mon, 10 Apr 2023 21:21:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1plywz-0006PC-2m
 for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Apr 2023 21:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=akq2RtqVVPjmJRCVeukJsy/LIUBcPU8lKpGDIdt6By4=; b=JCHh3Uvo2hJ5ujKIDHIhD5yoUe
 8WTzDIsgEe3ZzQec9U7rogJJz4bmLYM7D0jX4QBYw0Jftk5btKwHiIrgzARGnCwZsig/1Nq9fddRt
 3qn+/zKpW3RjcXY3En2/NubPfS88Eue2vv5tsra9cuqbJ3mHDxCKbvA8Sd8WGmFLKbsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=akq2RtqVVPjmJRCVeukJsy/LIUBcPU8lKpGDIdt6By4=; b=QeZwaqxlfOemD1ooIJUuzps5KN
 nk5zlxoc7b7sc2lG5hRBJpen5SSflUoY9JiegRnjdIH2RE0TevXV1iVMlirodomHK9V95dBGKmtm7
 3snNMqrBtL3Ss+mCXINkYtlb3wISjAyuuVqQsOb8MC3qZ9aQdInVhhbjw2tBGQMjVblo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1plywz-0007Cj-Cf for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Apr 2023 21:21:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 049E661458;
 Mon, 10 Apr 2023 21:21:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5FC03C4339B;
 Mon, 10 Apr 2023 21:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1681161675;
 bh=s3PzlJPZmrchd9ttp90LKIJ9fi79LAf3Smf5a7Ie4no=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=fiK7+g/rJWELGlqmPOzbL3Q5lO0vaouVQtUeYh6cXQPu3omP2TdC2QHMu3u6AcooX
 9IL3/v/+sQT/X9HFJKi6Gn3pY374Bn1aIYZF+OrJhYtSOk1Av+oTk08fnX5E5VzZVS
 FMcOl380n2KmPPucyspM/mKyJlJ1IK8BkkdSdylFU9Q6goeiEiHAHXQvP9Mir1AswC
 XizIBbwJgw4c79ouKrllFVNfh2K1+Iw2U6L+p1VPCH/npXebwA0tjV2rX+18G5OCBB
 JxOqyjK7RpjuLi6jBkxVNxCkX2ZNAAOHisE0Uh35noeF/THNq9W9WC1yZagkdja1Zj
 J+0c1gZstuYrA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 4320BF8321B; Mon, 10 Apr 2023 21:21:15 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZDM/4C0PlbbzV/0R@7e9e31583646>
References: <ZDM/4C0PlbbzV/0R@7e9e31583646>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZDM/4C0PlbbzV/0R@7e9e31583646>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 tags/9p-6.3-fixes-rc7
X-PR-Tracked-Commit-Id: 347dca97f75d461ac2ac256b68e495dfc6f14d61
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c118b59e71d2a910ee300f8be40fa864a91bb6ca
Message-Id: <168116167527.31176.17427545781211200295.pr-tracker-bot@kernel.org>
Date: Mon, 10 Apr 2023 21:21:15 +0000
To: Eric Van Hensbergen <ericvh@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Sun, 9 Apr 2023 22:44:48 +0000:
 > git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 tags/9p-6.3-fixes-rc7 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/c118b59e71d2a910ee300f8be40fa864a91bb6ca
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1plywz-0007Cj-Cf
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 6.3-rc7
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

The pull request you sent on Sun, 9 Apr 2023 22:44:48 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git tags/9p-6.3-fixes-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c118b59e71d2a910ee300f8be40fa864a91bb6ca

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
