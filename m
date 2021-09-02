Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6591A3FF272
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Sep 2021 19:37:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mLqeV-0006Ae-UX; Thu, 02 Sep 2021 17:37:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mLqeU-0006AX-Js
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Sep 2021 17:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yAT+z74aLTA7RqRAsQCylaEcE3wMihUvVlChaIO9HaI=; b=B76SvWru03dKxKRbp6f4LhvDXK
 dspptXBBIcRereJ1KfAzj0APKCorZMW3TvyPpVCdI55Cl3KcFVBbdwjiJfWr3UUp0G4NyuFMKgAwe
 0jUzKKkPc1qW0EUH96mhgSMvL/Ug1Vy4fBdc0f5yb7LhIZf4+BumqAHF9jHU82ZFiTS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yAT+z74aLTA7RqRAsQCylaEcE3wMihUvVlChaIO9HaI=; b=YY7plN4H30/mkOdy8MkN5+C8hd
 wCAMCvqK5YK6OBAh8Qy+Z4zTgtrsm+WwpXDIj4YLY8KpquLNas7UdK0I12ibAZtI6E9cGyVUZldbG
 jfCL8GY0KdAi98O1hxHP3EoH7d5DAie2bBlINHnqMYoBNsHezFtrjBs4bBvTozG43a8s=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mLqeS-00C0yu-Rg
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Sep 2021 17:37:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 5EA3561100;
 Thu,  2 Sep 2021 17:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630604239;
 bh=lOIInIIOXQJqRUQVg1Ez+aC9lKjwRaOyr1jAQeMM5WQ=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=YsYA+cSNC/ZERZVf2i2FRMl0akHHGlc+fft71j7/32qayPivKtRsTpxeaJGrVxJBr
 muSjRmQJbUlaCMyAVsQkcAmzt7JYpymqO0D46g6lJ0LLvew4GxGEzBumPYJIhZgtM0
 LbpG8D+sNoJJ0UwH1NXobviAJoH/ybSwgBNpMg6XS0XQZMgt5p+vsq4/NcsjAcgRSG
 PQoyw0vr3b7RK7hOI4OxHTiW7RsztKsVPj17WTtedrefNjoXJzF7rPBTpdjdMZXooa
 6kSUlin8En5bEu807xyQHQu9mBLussq4b/Ibh/xLexZ25lkNt/JHZYRubX86+tmYFJ
 IKoIaTGqUyCwQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 552BE60982;
 Thu,  2 Sep 2021 17:37:19 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <3282508.1630445914@warthog.procyon.org.uk>
References: <3282508.1630445914@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <3282508.1630445914@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/fscache-next-20210829
X-PR-Tracked-Commit-Id: 20ec197bfa13c5b799fc9527790ea7b5374fc8f2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 89594c746b00d3755e0792a2407f0b557a30ef37
Message-Id: <163060423934.29568.15954193420309840599.pr-tracker-bot@kernel.org>
Date: Thu, 02 Sep 2021 17:37:19 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 31 Aug 2021 22:38:34 +0100:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/fscache-next-20210829
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/89594c746b00d3755e0792a2407f0b557a30ef37
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mLqeS-00C0yu-Rg
Subject: Re: [V9fs-developer] [GIT PULL] fscache: Fixes and rewrite
 preparation
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, torvalds@linux-foundation.org,
 Anna Schumaker <anna.schumaker@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Tue, 31 Aug 2021 22:38:34 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-next-20210829

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/89594c746b00d3755e0792a2407f0b557a30ef37

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
