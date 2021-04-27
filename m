Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A09AF36CC5A
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Apr 2021 22:32:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lbUO6-0005US-Bf; Tue, 27 Apr 2021 20:32:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lbUO0-0005Th-8L
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Apr 2021 20:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BZbfefkN/VFBxU+3njANH4VeoKxn67z2U1Oh51gva14=; b=WhHgVECW7Tgx3yVlNMKNJscYph
 kp0skWS8wNrIw5QQQU5msxljOQk+nR5fIKeJLgDKTMwlzJWxZ82YiU4nxlX24ewq5r/RFcDsvpRO4
 xMnbRGKQflNEGFznl13F1Gcq2C46+hnwirNbYbYLFWN8RYtUNw+UxYUfTsVQ06ASsr6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BZbfefkN/VFBxU+3njANH4VeoKxn67z2U1Oh51gva14=; b=WAqkC66GkmcAte5P4adBWFBcS7
 ju15GXuVf4cncgiWkNTYdyqkwOEK2BKO0MPBnlYn3U1porvghMBnIPnT8x22aIYJAXcKHiJjE1uLY
 nMPrvlf6K8Jt3PrPe1aFSNLe7kZ5unz0zHb+X8VpR41qp/X2I/+cIQoLpS7qd6t97zeY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lbUNy-0002Wy-80
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Apr 2021 20:32:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id F1A5C613E7;
 Tue, 27 Apr 2021 20:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619555561;
 bh=JmoPGjEYi3HBTGoAQwT0Pp8lTIax0AdDaUZ2F8FIxBQ=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=fvAFIcZ9BA9sqBi1qzqRjRgYcQL8W/k3vhgo+/jBB0KOGjevF2Xx9QeXN9WGs6/xr
 CMsQ+ndZ80+xnJ5aq72s0YHjJTazY/4WA3UBUIu7SQG5VAtv/bbgFD58i1yF3Epmwd
 CplKtHGhp2PNvd2xVnyjWHuIqMSSGKjOoomS0JYf//AUThj8F8xTvKao5UlBV0MCS+
 Lmn2Ix6UGrMIWyKrwu0rQlpmxmR06t3coTMBwhETf2NTRUgKmKSB/b/HFunNCgLabG
 KVjr9SjPn6VRjDoI85qlfiK2S4V0t0zBF3cSQdBp/yRNoY6NCnZaSMo6TYbqd2sZrN
 wDybeqa2pk7rA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id EA624609CC;
 Tue, 27 Apr 2021 20:32:40 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <3785063.1619482429@warthog.procyon.org.uk>
References: <3779937.1619478404@warthog.procyon.org.uk>
 <3785063.1619482429@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <3785063.1619482429@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/afs-netfs-lib-20210426
X-PR-Tracked-Commit-Id: 3003bbd0697b659944237f3459489cb596ba196c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fafe1e39ed213221c0bce6b0b31669334368dc97
Message-Id: <161955556095.29692.2509137907732531548.pr-tracker-bot@kernel.org>
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
X-Headers-End: 1lbUNy-0002Wy-80
Subject: Re: [V9fs-developer] [GIT PULL] afs: Preparation for fscache
 overhaul
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

The pull request you sent on Tue, 27 Apr 2021 01:13:49 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/afs-netfs-lib-20210426

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fafe1e39ed213221c0bce6b0b31669334368dc97

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
