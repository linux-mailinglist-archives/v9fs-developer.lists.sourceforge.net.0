Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF344F503
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Nov 2021 20:44:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mlywt-0004JC-6h; Sat, 13 Nov 2021 19:44:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mlywr-0004J5-Lw
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Nov 2021 19:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jfHGuaKiQ5hcjhVMgvoDIkLo3j49J0czeMRGKqG9SsQ=; b=CBDDGPPac6YuqaK2+MiF/o9gaD
 kVV7DNqccmS2KxNv347aT0r7P63N5AX7UjOwdHYG113Wo9BSn+SBdSrnbrvfGUyi+PyNSfYeD6Rys
 VtEMMVmHH8WbTxLm4KAyveFBGzstnOt2sBvWy7o3wcR0P8rlm2/Nd0iFyVscE6/9RKI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jfHGuaKiQ5hcjhVMgvoDIkLo3j49J0czeMRGKqG9SsQ=; b=IRNe7ybRq/3SwCwu4vmRM/nzWz
 75cvAi5OukxylKRi7wl+0MPH5Aj+7H8cz04fFSxaaVLOGiuAJ0slKdQc2K/I/Lb8WEp+XotBPfzz1
 s0YmVFhCUdySXX41WaYLBhjEaUGzGuIdP2LXng+yLtLKFF9xREutYittJ5Ott13reN5I=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlywr-0006gs-5K
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Nov 2021 19:44:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id B66F760EB4;
 Sat, 13 Nov 2021 19:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636832654;
 bh=EGUOMj5xc5vntvFCMogfm6YhCFkW3/nioe88e+Sf3Lg=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=HNvHEV+3TpQjdLRtANHMHAbpN9MwhyLoqb6iskMnnJuSCutayMYsXaBuc22n6n3YH
 8Wd9vv1nlYWZEFFkjGpTSMuY5S7ICPUcBtoPGD52KKonENhRIqZrpEUhdrby4D/b16
 2Zn45uI2242w6O6IX+/5EZqNSWGeP2gbUs+4eqaG97148Ywp0vNMgS/F0l8V86kjN9
 QOKH8or52nYGsiFgkOsKgcNkM9h4VUICsBR9y9CUmiJb4tYCoFg1OZtoTt1T6lCPq+
 gR8TosRnoxxJmHAGyNVovfZMNHXJdenDaMndNAolntiGw9MC/j3/ehqLKdJFdkLmFy
 OYpRYuy3G3u4Q==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 9F4F660721;
 Sat, 13 Nov 2021 19:44:14 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <1134871.1636647952@warthog.procyon.org.uk>
References: <1134871.1636647952@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-nfs.vger.kernel.org>
X-PR-Tracked-Message-Id: <1134871.1636647952@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/netfs-folio-20211111
X-PR-Tracked-Commit-Id: 255ed63638da190e2485d32c0f696cd04d34fbc0
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0f7ddea6225b9b001966bc9665924f1f8b9ac535
Message-Id: <163683265459.24678.13171467044016264147.pr-tracker-bot@kernel.org>
Date: Sat, 13 Nov 2021 19:44:14 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 11 Nov 2021 16:25:52 +0000:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/netfs-folio-20211111
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/0f7ddea6225b9b001966bc9665924f1f8b9ac535
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
X-Headers-End: 1mlywr-0006gs-5K
Subject: Re: [V9fs-developer] [GIT PULL] netfs, 9p, afs, ceph: Use folios
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
 Jeffrey E Altman <jaltman@auristor.com>, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 torvalds@linux-foundation.org, linux-afs@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Thu, 11 Nov 2021 16:25:52 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-folio-20211111

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0f7ddea6225b9b001966bc9665924f1f8b9ac535

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
