Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCB6422F79
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Oct 2021 19:56:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXofm-0003eH-Is; Tue, 05 Oct 2021 17:56:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mXofl-0003e4-Ds
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 17:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wF4osLEWMotFU7jop2x1kEuVWSbO4N2VrbYeIPEb/po=; b=AxDjVBVCKN5csLNwnVF3tApb4n
 BHswWbqSK5ORp8wXZwnSqImHH7Ucc9J5ub5qlw5OrBfoBeXAYTK3n1oj9kpVk/mwaoT8+SU6Vtv8k
 2fqtg/0n/gkQN56T2l8vplhfRdCgaBJ9mQz87C9HpXsldUtQR8SPrhkgEai0iylQJwAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wF4osLEWMotFU7jop2x1kEuVWSbO4N2VrbYeIPEb/po=; b=AMCRztCl4y/GEiD8Z6gbFGo+/S
 gQtAc/zxDWJtrv99wGv/EhePhr/GhN+rW1KwdZTUvt+mRjmYZ/KT8nHI9Q3YQ5D7uMOne/G4TWjc9
 7L81ElFSOoU4v5hve9r9ETiSECSVZgvKDLthOpmt1vj3Kz2s3yg4G/tGK5S2ZfDCKLZ0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXofk-0076Hv-SI
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 17:56:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 9610C61251;
 Tue,  5 Oct 2021 17:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633456562;
 bh=cfUXIRWvM1njK3vXSxZq4gUhIJdbDuAy1roOz0OCtn0=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=uiYQLoXUL4UlaUtH8uyBgzP2o02xs46Yv6pVx2RbYPnCBAvIqyxvU4CbD077Rn7bi
 BxiNC356sZNgYi+1Bwk4opy5PUvM8l3+dGZa/rEQrspUjGRTg9goimR+cDB7ExJzti
 tkE2em7nATFD1iOEm4EBODKNFDg6wZ+v5H7nhIxIpjE/thGYY19J6szi6FLHEU0ILi
 RMhNe8ZZLiwd1X8vJse+CWE8rIb4EBNs/ktRORhgTiqx6ij/aQg9y7vuLwj63MVwca
 Hezpa10NzAxVMZqpNNv67tGQe7rJrKMTV51v5zwKdVpbxTivSSgDgEWbIv46menkEQ
 EVPVEKIm119FQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 88C6460971;
 Tue,  5 Oct 2021 17:56:02 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <1082805.1633440879@warthog.procyon.org.uk>
References: <1082805.1633440879@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-nfs.vger.kernel.org>
X-PR-Tracked-Message-Id: <1082805.1633440879@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/warning-fixes-20211005
X-PR-Tracked-Commit-Id: ef31499a87cf842bdf6719f44473d93e99d09fe2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 60a9483534ed0d99090a2ee1d4bb0b8179195f51
Message-Id: <163345656254.17694.3656534862663952653.pr-tracker-bot@kernel.org>
Date: Tue, 05 Oct 2021 17:56:02 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 05 Oct 2021 14:34:39 +0100:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/warning-fixes-20211005
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/60a9483534ed0d99090a2ee1d4bb0b8179195f51
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
X-Headers-End: 1mXofk-0076Hv-SI
Subject: Re: [V9fs-developer] [GIT PULL] fscache, 9p, afs,
 nfs: Fix kerneldoc warnings and one unused variable
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
Cc: linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, torvalds@linux-foundation.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Tue, 05 Oct 2021 14:34:39 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/warning-fixes-20211005

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/60a9483534ed0d99090a2ee1d4bb0b8179195f51

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
