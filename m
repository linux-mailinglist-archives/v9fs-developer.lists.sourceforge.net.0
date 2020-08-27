Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EF3254A8A
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Aug 2020 18:20:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kBKdv-0002oS-BE; Thu, 27 Aug 2020 16:20:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kBKdt-0002o4-DQ
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Aug 2020 16:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zzYWq9uCT0qjXkzJAAg/7u06RdJipteNSyXZMFgmlW4=; b=Pg6grAJVpkOBZ++SbIjNspx1eU
 rCHzAGmQvIchi2waXxJUB1FtQFIWJaoOOVZUexk2o+BOFT6vH/byoW1YmwW5Li5HPMbQUdefCc3Sh
 fD7sToGjX6i2p7Q6jTaixKD1/rmgoaxu5wlhGq18BJ5f/MGclHp+NfYMB82mRBjkvrZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zzYWq9uCT0qjXkzJAAg/7u06RdJipteNSyXZMFgmlW4=; b=Zu1yBciy7Xh1ExsJk9nKRqSqSQ
 /xkiOC905meea15EcowdCJ343/y3yHxJQBSYNWvEYTF7lBTd3s2qg4lzkdfIQyWtfnIvjd5+C//2p
 3VzMbFvGJt/z80wjGZenZegL+K4aAsfSLfKIDO7HiEzH4oE44wYkUddoKAkw0QDLbG7o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kBKdp-002S7Y-Eh
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Aug 2020 16:20:49 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id CB8B4C01B; Thu, 27 Aug 2020 18:20:38 +0200 (CEST)
Date: Thu, 27 Aug 2020 18:20:23 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20200827162023.GD31016@nautica>
References: <000000000000ca0c6805adc56a38@google.com>
 <20200826104919.GE4965@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826104919.GE4965@sirena.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kBKdp-002S7Y-Eh
Subject: Re: [V9fs-developer] INFO: task can't die in p9_fd_close
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
Cc: lucho@ionkov.net, alsa-devel@alsa-project.org,
 syzbot <syzbot+fbe34b643e462f65e542@syzkaller.appspotmail.com>,
 ericvh@gmail.com, netdev@vger.kernel.org, tiwai@suse.com,
 syzkaller-bugs@googlegroups.com, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 rminnich@sandia.gov, kuba@kernel.org, perex@perex.cz, daniel.baluta@nxp.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Mark Brown wrote on Wed, Aug 26, 2020:
> On Wed, Aug 26, 2020 at 03:38:15AM -0700, syzbot wrote:
> 
> > console output: https://syzkaller.appspot.com/x/log.txt?x=10615b36900000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=a61d44f28687f508
> > dashboard link: https://syzkaller.appspot.com/bug?extid=fbe34b643e462f65e542
> > compiler:       gcc (GCC) 10.1.0-syz 20200507
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15920a05900000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13a78539900000
> > 
> > The issue was bisected to:
> > 
> > commit af3acca3e35c01920fe476f730dca7345d0a48df
> > Author: Daniel Baluta <daniel.baluta@nxp.com>
> > Date:   Tue Feb 20 12:53:10 2018 +0000
> > 
> >     ASoC: ak5558: Fix style for SPDX identifier
> 
> This bisection is clearly not accurate, I'm guessing the bug is
> intermittent and it was just luck that landed it on this commit.

It's a bug that's been present since day 1 pretty much.

I have a fix that had been overcooking for a while which I had planned
to take in this cycle -- I'll submit to -next during next week, so
hopefully syzbot will be able to spend its time more usefully after
that.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
