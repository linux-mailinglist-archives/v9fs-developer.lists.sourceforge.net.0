Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1EB2E0047
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Dec 2020 19:47:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1krQDA-000450-GR; Mon, 21 Dec 2020 18:47:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1krQD8-00044s-3g
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Dec 2020 18:47:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tp3S7Om3n0S4/jiOS/Mk0t7p6WnJqFTfpmPorqo4RLw=; b=UVnpwxTPLugn4V9Bgn6dJXMEKU
 NiaMLEgho/ek7rCVJrup9JiObBHVlz48yW60JyXpkFaNKS2wXDemB3aPz/nErWnYsUBAhYM7cQqp2
 rHEbUNGCAsuqNORmv7znCjujipI3b81DiSXj4sIGc9ynTUsBVHKUAZCSsOcTbqn5rsss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tp3S7Om3n0S4/jiOS/Mk0t7p6WnJqFTfpmPorqo4RLw=; b=gXCLltsKyO2lwd38eUUOg67dFj
 XRuff2MigLriL2wZhr9apJMJ7dzReP/Qa9W5E5bJKSuZOnGgzHdGQj4401WxytSnsc/R0jQmGhen9
 ZMbVhwCp3dCA1F8QnR6NNh36SGQmaTPDb+HBNtzuSt9hNbZuCkev3J9tV7hshM22bn0o=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1krQD1-003y6F-Fa
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Dec 2020 18:47:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608576413;
 bh=GZp12ScXFCCTVwNhVTlEl9e0JeMtP67k7DWE6IGoEak=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Qn8mRZeLPj0mrKPbw2BX+N/6FILbEFj/mrbv0i+jWLtcu2kxQ1feSsXiGjufVsnWw
 gR9J17+eTUenLiotZatdPKyIVXuRuge01I84qkdSBunzOf25lcuPJBiCyV8/j7Uwk3
 e79ilddNQvUY0ah7KUt2zAvnxpmkxuSpnIvYYZ2odgMo0RRQKktLwxMfN3Mj/PsB2y
 vbG217ovQZqO4jWXcUXJgV2XKpKohVfk8kvdYSQTo55g72uIfXuBuKUg+owgh2LOt4
 UodJhpirwXpOMCL3UWxVQILd9KNLvvOOyYuIEs3Vw2rqLasJbfdvwcdXYhrwR8oMrf
 b8T6jJ8M0EasA==
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201221094828.GA6602@nautica>
References: <20201221094828.GA6602@nautica>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201221094828.GA6602@nautica>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.11-rc1
X-PR-Tracked-Commit-Id: cfd1d0f524a87b7d6d14b41a14fa4cbe522cf8cc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 70990afa34fbac03ade78e2ad0ccd418acecfc04
Message-Id: <160857641312.14812.13290415369966565613.pr-tracker-bot@kernel.org>
Date: Mon, 21 Dec 2020 18:46:53 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1krQD1-003y6F-Fa
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.11-rc1
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
Cc: linux-fsdevel@vger.kernel.org, netdev@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Mon, 21 Dec 2020 10:48:28 +0100:

> https://github.com/martinetd/linux tags/9p-for-5.11-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/70990afa34fbac03ade78e2ad0ccd418acecfc04

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
