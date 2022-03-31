Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6FB4EE4A4
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Apr 2022 01:23:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1na487-0007pe-Py; Thu, 31 Mar 2022 23:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1na487-0007pK-5h
 for v9fs-developer@lists.sourceforge.net; Thu, 31 Mar 2022 23:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ZzKPMuGNhA8Fa24NlMVSZOvT5xyjjX1/t4sM9KyyqI=; b=auwNapGcgkoNJcPLzVDZzX8HbT
 EzMOrl5+qRM62wlq20VPavx3+Wv36Ee55Q2uqwctBSGdQibawtGAGFSSMPm+lRfpj5kiRDdbq4UY/
 SZisWSJa8ZVwRkPxFuLomZCGoVGqVXuGgGV8skKEe1Z5SSThaJPR/w7lqSZBI9rBvUms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7ZzKPMuGNhA8Fa24NlMVSZOvT5xyjjX1/t4sM9KyyqI=; b=mCY03nxjyn7/GEdevQkUS0oMs6
 nNXUlyAnpVn4CozrJvPBc3PiFlv29wA2zgvThBMDN/7krlqFIFPh8PFs3uc+sV+yjNmLZrX8NP8NZ
 vErdZsAe3q3Q0wjLg2/4VqvpQf3L8JBsh0r1p9KtEk6gxNQCEc4sJgRCos+4AEVMmUac=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1na481-001843-Qb
 for v9fs-developer@lists.sourceforge.net; Thu, 31 Mar 2022 23:23:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 585F6B82293;
 Thu, 31 Mar 2022 23:22:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDC5BC340ED;
 Thu, 31 Mar 2022 23:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648768967;
 bh=cFAMfnRYRwexlQ80k5xK4/bktdJv0fyhc/nvasOcLSo=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=pTcM+bxBZsVhEHBrY6ebu5Cmk1+aCXLsOgWp/mU2iRlmn57LuxoT7dzpXi9j5fAvD
 CIaUqPpOMCUXBffm2HoFE6HC46X9o2R40nzA4yU6Af5l56QBJUKWRl1RciX8DFAg2Z
 xlTV0sOIhiHR05VPVfdbgYMf6ugOdwJZOkdk3qiA2P6NG2wcTRpYK+PhBa8XupZ7am
 MNlnvupN2x8gNOeAF5RuVUoRIoETnY4RuO28YZMkfpQEPP9CGF1hXZRkWOUoRP1Wd1
 lJr8tCu8ivfq6ga8dP5t2DEJkMILo0M4DDaAFHvhFcwtNHIYtZrHNi9Z23HKk0oHnn
 bXEQbw+m+CCkg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 D7C76E7BB0B; Thu, 31 Mar 2022 23:22:46 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <2639515.1648483225@warthog.procyon.org.uk>
References: <2639515.1648483225@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-cifs.vger.kernel.org>
X-PR-Tracked-Message-Id: <2639515.1648483225@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/netfs-prep-20220318
X-PR-Tracked-Commit-Id: ab487a4cdfca3d1ef12795a49eafe1144967e617
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f008b1d6e1e06bb61e9402aa8a1cfa681510e375
Message-Id: <164876896687.28012.3947884678367341659.pr-tracker-bot@kernel.org>
Date: Thu, 31 Mar 2022 23:22:46 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 28 Mar 2022 17:00:25 +0100:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/netfs-prep-20220318
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/f008b1d6e1e06bb61e9402aa8a1cfa681510e375
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1na481-001843-Qb
Subject: Re: [V9fs-developer] [GIT PULL] netfs: Prep for write helpers
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
Cc: dhowells@redhat.com, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 David Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 Jeffle Xu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Mon, 28 Mar 2022 17:00:25 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-prep-20220318

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f008b1d6e1e06bb61e9402aa8a1cfa681510e375

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
