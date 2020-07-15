Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88143221428
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 20:20:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvm0m-0006RU-Jg; Wed, 15 Jul 2020 18:20:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1jvm0l-0006RK-7u
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 18:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6R29tk8StEz7i4/DEBl236hOTubleGx7aou7XrLwBA0=; b=C71TKVZy5/3B6OkFGYxj1Fz3ak
 0LW3lO9/NZFfDAlwX+EuL1AsQ8Gj8QqJ6NlivxThc1fhJWRMG2iQfzleQ2DzzpRxC99yPvVz0hOoc
 YVYnPLVkM4fYoGJjhajLrkdS8UoxMaAyL5IzNFJ7aKKLovbFGvfj9iXlTNVE/PrWfpzQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6R29tk8StEz7i4/DEBl236hOTubleGx7aou7XrLwBA0=; b=TNNzppAEBfJljaxzjyb7k1zU2E
 s/vZn+IQvj6ZQeyOH3RXnXhWE1l+KjPsGaiiwt0qXKGAmHlcd5gWa2a44Z/eQRZ8km+rpcsry1igI
 phRcPSMQ9bq/C+tF2LYIOCscRTfv/BWn/203ZPxp34Zusn3EjTarfQSDlg6Koek7KhWs=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvm0i-0095jA-RG
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 18:20:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 254CC68AFE; Wed, 15 Jul 2020 20:19:50 +0200 (CEST)
Date: Wed, 15 Jul 2020 20:19:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200715181949.GA31172@lst.de>
References: <20200710085722.435850-1-hch@lst.de>
 <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
 <20200711104923.GA6584@nautica> <20200715073715.GA22899@lst.de>
 <20200715134756.GB22828@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715134756.GB22828@nautica>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvm0i-0095jA-RG
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
 Doug Nazar <nazard@nazar.ca>, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jul 15, 2020 at 03:47:56PM +0200, Dominique Martinet wrote:
> Christoph Hellwig wrote on Wed, Jul 15, 2020:
> > FYI, this is now generating daily syzbot reports, so I'd love to see
> > the fix going into Linus' tree ASAP..
> 
> Yes, I'm getting some syzbot warnings as well now.
> 
> I had however only planned to get this in linux-next, since that is what
> the syzbot mails were complaining about, but I see this got into -rc5...
> 
> 
> It's honestly just a warn on something that would fail anyway so I'd
> rather let it live in -next first, I don't get why syzbot is so verbose
> about this - it sent a mail when it found a c repro and one more once it
> bisected the commit yesterday but it should not be sending more?

Yes, I agree that this is just a warning on existing behavior.  But then
again these constant syzbot reports are pretty annoying..

> (likewise it should pick up the fix tag even if it only gets in -next,
> or would it keep being noisy unless this gets merged to mainline?)
> 
> 
> FWIW this is along with the 5 other patches I have queued for 5.9
> waiting for my tests as my infra is still down, I've stopped trying to
> make promises, but I could push at least just this one to -next if that
> really helps.
> Sorry for that, things should be smoother once I've taken the time to
> put things back in place.

No need to be sorry, just through it might be worth to ping you.

Thanks for all your help!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
