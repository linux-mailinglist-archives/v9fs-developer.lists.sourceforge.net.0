Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F44425AB9
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Oct 2021 20:26:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mYY67-0000TH-G0; Thu, 07 Oct 2021 18:26:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mYY65-0000Sv-GM
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 18:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QrEoW1n4G5IHI9niXYMjCAakMG3YJSRuNHlb2wTGzCM=; b=m8OlqnJddLkVUd9M3/BUL2dYC6
 inPLx5broPMxhU2+N47uWlG43DofbdoBQOioOG9rcemm3ULz8Ge8/YZDCfEbWf5iak0TyQ3kGYDM8
 npetN/iMjyAEeBCFeE/rUlAxmAr2fUDiseuauh7bkXwf0/NzmM/9eEugB8ZVWyTtk1lc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QrEoW1n4G5IHI9niXYMjCAakMG3YJSRuNHlb2wTGzCM=; b=Ysy+PeeDhwounZjnFjbxpTMpvI
 /5xbhVWDKmXCRVRiqUSpN4BXABwwSs/roq6DrjMRP3BlBHVjsDdwsmuWShBe/hZLXzRHleJfo6xL6
 P6WXIGbYVnGb4A+Ilf0Ms3D6x2Q/kk+GWkzJ0boBSiRKPc84xw5NP4Vi0pxX1LGDYxDo=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mYY65-00016B-08
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 18:26:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 51B0E60F4C;
 Thu,  7 Oct 2021 18:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633631179;
 bh=MpEug++mWGWLlEBYAtKQLQwrCkI0Qw0K1mH2W1igvEk=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=QIrX/iUlhGhm3L+YdDjUVzbblGHfZGzh54QgHB2sDCGELLSFbwYyiivwJAXrYw/tS
 9b5MbhPofsrfBh9Fy9KTJLTkaDFvmkmXWUHUbNCMiFCfsoC3r5+epgbwVvxKpH6Cri
 F4l6vYDk61jzradWGoanD5rXiPpIAfnwBKHwwEom9/2cMIh/0nfP+QhiVP+ZawG3/1
 G7lYnu/OtpP3UWS9EU4qdgYKZa33AG3VC1IIqVcxIBLkMGf/1c92GKVTFXaqkNwvA3
 KJKrkngQtJP0Sf5OSDxs8XY5KahJwEcRSdzloE4ibTUt6vq4ZjRoVrHUQEWo3uIeoV
 gPGO5dFmt0s3Q==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 3FB7E60A23;
 Thu,  7 Oct 2021 18:26:19 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <1961632.1633621984@warthog.procyon.org.uk>
References: <1961632.1633621984@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-mm.kvack.org>
X-PR-Tracked-Message-Id: <1961632.1633621984@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/misc-fixes-20211007
X-PR-Tracked-Commit-Id: 5c0522484eb54b90f2e46a5db8d7a4ff3ff86e5d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7041503d3a5c869e4b4934df57112ef90ce7e307
Message-Id: <163363117920.25708.8076103177394410914.pr-tracker-bot@kernel.org>
Date: Thu, 07 Oct 2021 18:26:19 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 07 Oct 2021 16:53:04 +0100:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/misc-fixes-20211007
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/7041503d3a5c869e4b4934df57112ef90ce7e307
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mYY65-00016B-08
Subject: Re: [V9fs-developer] [GIT PULL] netfs, cachefiles,
 afs: Collected fixes
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
 Jeffrey Altman <jaltman@auristor.com>, linux-mm@kvack.org,
 linux-kernel@kvack.org, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, torvalds@linux-foundation.org,
 linux-afs@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Thu, 07 Oct 2021 16:53:04 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/misc-fixes-20211007

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7041503d3a5c869e4b4934df57112ef90ce7e307

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
