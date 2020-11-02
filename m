Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 585A82A3516
	for <lists+v9fs-developer@lfdr.de>; Mon,  2 Nov 2020 21:27:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kZgQO-0000Bv-Od; Mon, 02 Nov 2020 20:27:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kuba@kernel.org>) id 1kZgQN-0000Bo-8V
 for v9fs-developer@lists.sourceforge.net; Mon, 02 Nov 2020 20:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Hz8rG5w0XW/FarkKnhU1krW6i3s14nV/qhkMdj14Io=; b=QFYEWM5tY/mJLJOZ9QMa1MUfZE
 8/dmPBvMigzBRAB/Uvp0EALvFNsWtMOfLYOpmiYiUg1b6HF1b1y7oiwYP1Cj2stP8oAjvum3S9LPm
 lGr8vtciCfamgaE1xkJOFba0xELi8ziGrdj9ytz9o1Gp+YYT40FTBkyLJSYcBY4XekQg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Hz8rG5w0XW/FarkKnhU1krW6i3s14nV/qhkMdj14Io=; b=Sffsc0p30Of3SxYnbbxQSGRMp7
 pLt9gKIfffgCoKzKHQ81/PDtmfMjMs9n0QX1dELklaErzTVJaKFZfITRBQ5gLV/xggAusA/PNmcYK
 c4VdNQ/vy9CD0P1gyg0JoaRZepJu+Sg31tNHZUbmMc7map+Fp4Pr9TSE4J8MSlEmOAvs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kZgQK-00Ghg6-2M
 for v9fs-developer@lists.sourceforge.net; Mon, 02 Nov 2020 20:27:31 +0000
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A4D5206DC;
 Mon,  2 Nov 2020 20:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604348842;
 bh=7WV55XWF9jj/QZHr3cgnFSnvS0wVConZgFUkIt0wncU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uIOlam4H3d1Jmrgx+4Yt3J51Ybm8q7SUNn0cYpEppNGoD6eKBB8uHWpqAIT0SqkJD
 +Dcpwsr8Vu2usAKqEY9QxMneMLYO27LLRBumvOt/A+bVDruiBU57bq5CF8zEJPIlu/
 8gUHDZYA0AUBjulM3AGHiLmMUCKXgswiyoxOKuGs=
Date: Mon, 2 Nov 2020 12:27:21 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20201102122721.00f449a5@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201101160825.GB5153@nautica>
References: <20201031182655.1082065-1-andrew@lunn.ch>
 <20201031205813.GA624@nautica> <20201101155405.GA1109407@lunn.ch>
 <20201101160825.GB5153@nautica>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kZgQK-00Ghg6-2M
Subject: Re: [V9fs-developer] [PATCH net-next] net: 9p: Fix kerneldoc
 warnings of missing parameters etc
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 v9fs-developer@lists.sourceforge.net, Latchesar Ionkov <lucho@ionkov.net>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, 1 Nov 2020 17:08:25 +0100 Dominique Martinet wrote:
> Andrew Lunn wrote on Sun, Nov 01, 2020:
> > > > Signed-off-by: Andrew Lunn <andrew@lunn.ch>  
> 
> Acked-by: Dominique Martinet <asmadeus@codewreck.org>
> 
> > > 
> > > Thanks, LGTM I'll take this for next cycle unless someone is grabbing
> > > these  
> > 
> > I hope to turn on W=1 by default soon in most of /net. That patch is
> > likely to go to net-next.  
> 
> That would be nice!
> 
> > What route do your patches normally take to Linus? Do you send a pull
> > request to net-next? Or straight to Linus?  
> 
> I normally send pull requests straight to Linus (because I also have
> fs/9p which isn't part of net/) ; but since it's really low volume I
> don't like bugging him everytime for such churn and am not really sure
> what to do -- that's why I asked :)
> 
> > If this patch is not in net-next, i cannot enable it for 9p. So
> > either:
> > [...]
> > 4) Jakub takes this patch into net-next, and i can then enable W=1 in
> >    9p along with all the other sub-directories. We will get to know
> >    about new warnings in net-next, and next, but not in your tree.  
> 
> Developers should use next for development anyway; I think that's the
> easiest way forward if you want to enable W=1 ASAP.
> 
> I mean, if I take the patch the fixes will get in next in the next few
> days sure but it'll make enabling W=1 difficult for the net-next tree
> without it.
> I've added Jakub to direct recipients, could you take this one?

Sure - to net-next it goes, thanks!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
