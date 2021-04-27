Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B6D36CC59
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Apr 2021 22:32:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lbUO3-0000tI-0L; Tue, 27 Apr 2021 20:32:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lbUO1-0000t3-21
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Apr 2021 20:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=znYe2XMC3MmLs61m/UI2GnCsrCBdgGtvU8y3sPfa3qI=; b=kK+bV2E2HTsSuzBny/QeBauZP2
 dhKiNRWSlNrWw9Eu35Hg0MHjnfj/p1OB4nwor3vpzgU9E7KkAvTNomI3Rc1fwHfZZ2cA2ZA+tyQL/
 oriie7+XlIVh5z4+Aa83ysUHF2yJs8CUWGYA00qw6NWNt+/1GykX5MdK2ea+Mwl5DmT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=znYe2XMC3MmLs61m/UI2GnCsrCBdgGtvU8y3sPfa3qI=; b=CBBDGtXveGptsqk4ELJ+P0muy/
 q5RkCukjNhBnRE0AarMcqFPAGCRdBIDY5c9y22Qc6gwogKDofrMIOf9F9zeuhoDQ/rosNAjk6MnI8
 DAhzpKHqNrPewa6WT0NpAttZ8ogjWpNW32KTu422A6eO8fQ+8bn2Pd+jkPPKJXUVWtvY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lbUNx-0002Wx-Pc
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Apr 2021 20:32:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id A496A6112F;
 Tue, 27 Apr 2021 20:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619555560;
 bh=4gt03mTcqQmbSZtAfLXQq5ZIUn/1FOWKVpj8VYzvF7g=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=mOxujVs+Fgdau8zdzq2K7vxHteNdW5KCJuRzEsR8YYeriMrhVkzvzDNyU5+/IxFA7
 cdsQbsLF4MDnqVfszzqMfvFb9OYmy/llYn9s9GfwJIhnyJ9Vff+V8Hn0shWQOvJA15
 LjVBtvcXuezv92O3MEdBRbUwCNKFtSjFNL5ZCz4YKcHKAUttZ2d+xhCafVJPOGzEBe
 Yvka5WEvVjUNJ6HUlMy5NBj6H0BayaR0FTNgGckNHWK/43xJXuHwtV35tduX99wWxx
 ZlAnxBys7tfYfUE4hUuOOxg7mqfIqTIGDdN2t4SjVflaCO7l1ycaXYVJdwGE56Bgvv
 Zb2IE2IWrjvZw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 98538609B0;
 Tue, 27 Apr 2021 20:32:40 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <3779937.1619478404@warthog.procyon.org.uk>
References: <3779937.1619478404@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <3779937.1619478404@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/netfs-lib-20210426
X-PR-Tracked-Commit-Id: 53b776c77aca99b663a5512a04abc27670d61058
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 820c4bae40cb56466cfed6409e00d0f5165a990c
Message-Id: <161955556055.29692.16460754787055823751.pr-tracker-bot@kernel.org>
Date: Tue, 27 Apr 2021 20:32:40 +0000
To: David Howells <dhowells@redhat.com>
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lbUNx-0002Wx-Pc
Subject: Re: [V9fs-developer] [GIT PULL] Network fs helper library & fscache
 kiocb API
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
Cc: dhowells@redhat.com, linux-mm@kvack.org,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Tue, 27 Apr 2021 00:06:44 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-lib-20210426

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/820c4bae40cb56466cfed6409e00d0f5165a990c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
