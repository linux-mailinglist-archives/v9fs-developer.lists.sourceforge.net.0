Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5639448CF5C
	for <lists+v9fs-developer@lfdr.de>; Thu, 13 Jan 2022 00:49:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n7nMm-000101-VE; Wed, 12 Jan 2022 23:49:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1n7nMl-0000zv-Pn
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Jan 2022 23:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7zdGJMrLIYKUEyVp1Bno13LOTj+Jj3ovdwuuMh5Kw6k=; b=KscVXvnBcFlZiAfyrQi8mmUG78
 mQtcbS/C+G8FxVa34ahMjetNudEXP90PCqFcsczXhO0L70CO+S0s8CBpCfz8AWtAOY48yj1Un1KZi
 iCI8sE0IpP1StgUWObKtk/ipfS8tP3zOkv2INyXgs8e3srX1PEPhbdfp6FtD3SR3qZNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7zdGJMrLIYKUEyVp1Bno13LOTj+Jj3ovdwuuMh5Kw6k=; b=MfHbA2AqOyvP9t6A9dgmKgpvlF
 kHfSxFq9uQbZT2ANgfrHv2ziiXLgM7wOnzZ2frNXmuryqf4qZepKWfWJgdBT2bU92CZBz+M5FfRkj
 CKsslgG/e5D6nCDROn57C5M3FCC758RASRSEi27i5PubtTNFhAi+jxjYaNwQrcbH+MRk=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7nN3-00Dy5u-2k
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Jan 2022 23:49:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C3A0FB8218D;
 Wed, 12 Jan 2022 23:49:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FD83C36AE9;
 Wed, 12 Jan 2022 23:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642031361;
 bh=Qjw7uIULxio5olTOZmxu6IZozjzdZ862HeZ0UaChgTs=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=UYCZPydkqGg2Q3URUB6YZgIG8Y1yuYWukIzeRx8kkPNkfJa/Ut9/B6XoStJh+WQ22
 KoIQQAaRwNFvfexDI9doe0pd5Gh6011qLhi+TDzi4e5mvByUGknKza9V2jhZrzZSmT
 lkVRuWJAgbPsniqudOk05myl8fK2WCFHJV6SF1zgpGJiDv7jeKaNEV/dnFqiIzFrRd
 lqRmsd1k5QKoGHPuXjX7gfejpl/n2k3rfmMwnChTjV/sxkTkqNL6ok6u3322r+WHbU
 OsBsUiFqP3ykzRfG1vtpJpzsXgOBPlwo+Np0G0hnkXlvxBFM0gLtYfBLGBXntL1lrf
 k2J9lt1fys7DQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 7D798F60795; Wed, 12 Jan 2022 23:49:21 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <510611.1641942444@warthog.procyon.org.uk>
References: <510611.1641942444@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-nfs.vger.kernel.org>
X-PR-Tracked-Message-Id: <510611.1641942444@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/fscache-rewrite-20220111
X-PR-Tracked-Commit-Id: d7bdba1c81f7e7bad12c7c7ce55afa3c7b0821ef
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8834147f9505661859ce44549bf601e2a06bba7c
Message-Id: <164203136150.22460.7562866194670259510.pr-tracker-bot@kernel.org>
Date: Wed, 12 Jan 2022 23:49:21 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 11 Jan 2022 23:07:24 +0000:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/fscache-rewrite-20220111
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/8834147f9505661859ce44549bf601e2a06bba7c
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1n7nN3-00Dy5u-2k
Subject: Re: [V9fs-developer] [GIT PULL] fscache, cachefiles: Rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, dhowells@redhat.com,
 linux-mm@kvack.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Daire Byrne <daire@dneg.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Zhaoyang Huang <zhaoyang.huang@unisoc.com>,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Tue, 11 Jan 2022 23:07:24 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-rewrite-20220111

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8834147f9505661859ce44549bf601e2a06bba7c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
