Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5365B6774B
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Jul 2019 02:40:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hm65O-0001Uu-4R; Sat, 13 Jul 2019 00:40:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1hm65M-0001US-K9
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Jul 2019 00:40:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z+1ySvZKUDxXmQE52IZYBxn+K48Tluo5KjymvgwiAbY=; b=VJpq0e7qXJxjzVC9tzMXjROQA+
 gBN4cHk0hDF7p9wP/wA/cIQpu3rv+ZPq3ESFR1Xs31ZClcbs5zqfwHMfyYPvZP6Ej+SNsOhP9Eu6f
 SBwXJvs01abyk88T/D949hhQ8DswJH+vicWKeb0hbSs0riZmsUc/SpGklyDqYZuR/DMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z+1ySvZKUDxXmQE52IZYBxn+K48Tluo5KjymvgwiAbY=; b=LnBdav7xKkbufKIL2cIwuLanHf
 ukdqfjwnTKNBsH2FHaZ4BjQzVnnGXopVV7XVYH/VKdVQ85LQ8vwhFD4WOF/aNmTPTpcRroYyRpZFt
 LGWUvvwgKTJshXplPh4E+Ib6yqnZmYPw6CXe5TNdw3499Z22Qe8y831iCShzpIjM4Hpc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hm65L-00GrAd-CX
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Jul 2019 00:40:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562978413;
 bh=N1eN8QH+7+JfYNNJ4yh+cOKi0l7F+Trf3hII8g1oIBg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=DEyjTsKroaYPyBZpS5gupT9I0yQTFF2uDYIuKMAkT2Go+oJn4f6oH+lqgo8SqhowS
 YGzL0MJrcPOAfiOf4JeiEqsuvb8H9Djp7DUiSDsuhnDvcLDDOpq9Mzzqw+j6YTl+oD
 /4T3w8QDFtM1DBCbTPn5XdaFUJB4HzTGaLxwqOb0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190712080446.GA19400@nautica>
References: <20190712080446.GA19400@nautica>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190712080446.GA19400@nautica>
X-PR-Tracked-Remote: git://github.com/martinetd/linux tags/9p-for-5.3
X-PR-Tracked-Commit-Id: 80a316ff16276b36d0392a8f8b2f63259857ae98
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 23bbbf5c1fb3ddf104c2ddbda4cc24ebe53a3453
Message-Id: <156297841376.30815.4748359987826787756.pr-tracker-bot@kernel.org>
Date: Sat, 13 Jul 2019 00:40:13 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hm65L-00GrAd-CX
Subject: Re: [V9fs-developer] [GIT PULL] 9p updates for 5.3
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
Cc: v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Fri, 12 Jul 2019 10:04:46 +0200:

> git://github.com/martinetd/linux tags/9p-for-5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/23bbbf5c1fb3ddf104c2ddbda4cc24ebe53a3453

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
