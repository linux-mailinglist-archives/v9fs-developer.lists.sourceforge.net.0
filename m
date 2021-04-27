Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E4C36CC6F
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Apr 2021 22:37:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lbUSh-00014d-R3; Tue, 27 Apr 2021 20:37:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1lbUSV-00014F-7k
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Apr 2021 20:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vwc4yEDYhNUi6j+x1OF3Bwzfu4y0tzvOBSkKOf48ek8=; b=JpWF20hRK27Dxlrxb8Z9iEusGx
 YxA5bpEjynvMwLX1CcGtzXir9iQRwuseHYd3JNWZgirs+79s+//X92bfvM7K69L8gdtawUtuKfhGT
 kWwFKGgHo/dgqZEv+hDyeyHte/fCV8elWhNrXBmyJ830m3uIteGalFLre7+VV8KvPp1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vwc4yEDYhNUi6j+x1OF3Bwzfu4y0tzvOBSkKOf48ek8=; b=QyRG5W6QlmEGdpPI0B/7hX1xpj
 Ec6gVwgpDVw+7Y+8WarojKdZri+mSFJ5reE2KHPDtmSByhZRAvoSyfsRuBnRbwygg2DUzJ8sdbAFD
 to4yB2OVnKb3OQcp3kEZgojCyLU84XeZkgnQjF0j39nc4ffOhZ/mHOVnKEdsIdWOmsVg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lbUSS-0002gZ-51
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Apr 2021 20:37:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3E6C1613BC;
 Tue, 27 Apr 2021 20:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619555839;
 bh=PvEYDkf7uAo28ftXRBj2pXOtz9uNQzYF1I8uwdixnt0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=GHcfP7kbs+Kz9nbvjJMvQk2ic9L5nhPtAucbDATH0s/Pa5LFtWSnMHygPJw3unIFP
 HuCN0DUe3rO3d5/dCafGjXgioRxq/Jqo8gaOLurzRVcjbv6wi4qrWGscfbK6/mVd8/
 n2kSK0zZWCEJAF5K1atT2+XU0e+w5Woy3+3bl2FLpKjkHSxSfaRjdtMBdyqJr5K1Sl
 0if70CdW8moppFrgah1TJDXcYqIC+9NCYr5BBJ1Iwns0j7pFBRKuY8if431YOH6nfL
 YwRijOKdpH83Xbrejq1HeYTpeTsXyaE2489xbF7topRpyVLvc+H9X6yskK45jjgtLx
 ElyEtDXLQPanQ==
Message-ID: <5035dded7d076718e2e3e6703c688f992e5f93de.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: pr-tracker-bot@kernel.org, David Howells <dhowells@redhat.com>
Date: Tue, 27 Apr 2021 16:37:16 -0400
In-Reply-To: <161955556055.29692.16460754787055823751.pr-tracker-bot@kernel.org>
References: <3779937.1619478404@warthog.procyon.org.uk>
 <161955556055.29692.16460754787055823751.pr-tracker-bot@kernel.org>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
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
X-Headers-End: 1lbUSS-0002gZ-51
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
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs@vger.kernel.org, linux-mm@kvack.org, linux-afs@lists.infradead.org,
 linux-cifs@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-04-27 at 20:32 +0000, pr-tracker-bot@kernel.org wrote:
> The pull request you sent on Tue, 27 Apr 2021 00:06:44 +0100:
> 
> > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-lib-20210426
> 
> has been merged into torvalds/linux.git:
> https://git.kernel.org/torvalds/c/820c4bae40cb56466cfed6409e00d0f5165a990c
> 
> Thank you!
> 

Hi Ilya,

With this, we should be clear to send a PR to Linus for what's in
master. The patches that Viro was carrying are also in mainline now too.

Cheers,
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
