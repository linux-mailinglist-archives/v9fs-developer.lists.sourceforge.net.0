Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 345CA221DBE
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jul 2020 09:58:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvymz-0001e3-7l; Thu, 16 Jul 2020 07:58:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jvymx-0001dv-S2
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jul 2020 07:58:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r4F4RFZ5NPadklOeUEkbo3RtLyodgeXju4z2xExC/ME=; b=d+Huf3I2kWfPhg36NSK2nep4sX
 7Sx4mx/veI6wVNZhUwAIkqVvnOGtxjTDHUHMi7izUWmI9RTUWSAcEObIqhfLE+ea3M3JHQyvh11LA
 +UFQguTmVMIcDA5D3q6M+knu3X0rK2JnrkGP/lnVnehRxvVVpqzh4b9iRVeBzkSPT3/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r4F4RFZ5NPadklOeUEkbo3RtLyodgeXju4z2xExC/ME=; b=L40ScY8PvHLJI/KeuFDr/iXD4H
 BLdFKPCRPqvFj4vi1/TLa/ZMCApMo/TRc7o3z3trr1E78T7+oaYn2XXLK/3W2Vgte8GCxqlElTfGT
 nusf9k7UcI5J9KOnJXwvRS/Cecczmv/2uFZwmMNJM2I4D9Sk8AdfJPHCPrr4Cwpoyf7A=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvymv-005S92-Nw
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jul 2020 07:58:43 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 637A9C01B; Thu, 16 Jul 2020 09:58:35 +0200 (CEST)
Date: Thu, 16 Jul 2020 09:58:20 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Miller <davem@davemloft.net>
Message-ID: <20200716075820.GA3720@nautica>
References: <20200711104923.GA6584@nautica> <20200715073715.GA22899@lst.de>
 <20200715134756.GB22828@nautica>
 <20200715.142459.1215411672362681844.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715.142459.1215411672362681844.davem@davemloft.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvymv-005S92-Nw
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: lucho@ionkov.net, syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 nazard@nazar.ca, v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Miller wrote on Wed, Jul 15, 2020:
> From: Dominique Martinet <asmadeus@codewreck.org>
> Date: Wed, 15 Jul 2020 15:47:56 +0200
> > It's honestly just a warn on something that would fail anyway so I'd
> > rather let it live in -next first, I don't get why syzbot is so verbose
> > about this - it sent a mail when it found a c repro and one more once it
> > bisected the commit yesterday but it should not be sending more?
> 
> I honestly find it hard to understand the resistence to fixing the
> warning in mainline.
> 
> I merge such fixes aggressively.

Well, if it was something a user could ever see with normal (even
exotic) 9p workloads, sure; I would want that in mainline asap and do
what's required in a hurry.

But this warning only happens when passing fd that are invalid, so the
mount would fail with EIO anyway, and it's not a dos either -- I don't
see the harm really.
Someone who'd get errors anyway will just get slightly more verbose
errors (and for people like me with kernel.panic_on_warn set it'll even
crash their machines sure), and "normal" users won't ever see it -- I
see no reason to rush this.


It's not about the "extra work" of sending things to linus in a single
patch PR (it's honestly a wonder 9p gets maintainers at all, the volume
of patches doesn't really mandate it), but I need to fix tests first
anyway as said previously.
I've spent a couple of hours on it yesterday, and should be able to get
things running again soonish -- meanwhile I'm not comfortable sending
any patch anywhere anyway.

Yes given the patch content it's probably fine but syzbot doesn't test
that a 9p mount with a fd argument works, just that there's no warning /
crash, so for all I know we could just be returning -EIO early and
calling it a fix.
I don't see any reason this would fail, but the point of tests is to...
test things work the things we think they do?



Anyways, if you care about this feel free to take the patch and send it
along with your process earlier. I'm just stubborn in not wanting to
send things I could test untested and it came at a bad time / don't
think this is critical enough to manually test. Then again I probably
just spent more time arguing about it than it would have taken to
test...
(if you do please fix the goto as pointed out in a review)

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
