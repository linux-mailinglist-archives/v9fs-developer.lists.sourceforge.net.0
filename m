Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9761C3A7267
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Jun 2021 01:15:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsvnf-00068Q-Jz; Mon, 14 Jun 2021 23:15:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lsvne-00068C-3u
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 23:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YNHbzCcTw605EWb92v6BlUcB7/rLkS8l6j0Q1u4Lez0=; b=Z/7V2vD0f1ZqJetGrpM0cxPsAX
 prVbLWDUcr95CwNVCD7cXomaobVL5lXyhmxGK77L9ptNOjlRsvyzoJhf8eFZVchmIrFB8tNWpIifP
 y+IarkrbzLJi/uST+i69+5NA5R4sxCY2esBUnhoj0dVeD0zwXUsH1OoFCkPHO5tgXaaw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YNHbzCcTw605EWb92v6BlUcB7/rLkS8l6j0Q1u4Lez0=; b=Okqvt1rFOb1ET7zoq6APTtH0Im
 GzyH+JkM+69fzKrtqz1skqEcVr4UcZTTbr7yolrUWfA4tecTsdLwow3JbJy91SaI3fPOku66KgIoP
 QbFWqUwdH+DQe5TdlPf0HIL6KP6JpqfXyyLXg5Ix8kEYczCJE66SyUuc1khgOGQl6b8A=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsvnQ-0001K3-7u
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 23:15:22 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7A209C01F; Tue, 15 Jun 2021 01:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623712500; bh=YNHbzCcTw605EWb92v6BlUcB7/rLkS8l6j0Q1u4Lez0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qB4vMmhW3qrAv6Fks6HEGpbqHF1DtTGAlf40pTNk56BRtTxA0FRdQtqbUixAegtyS
 bDQZUX5NGsvWZ0vHNq+Jpn5rO2FTtgosIOzicn2wT8aCtDloRkdZ+hXk7P0LqVAJWl
 87l0dtnJJsvWNuGs9RtUuWLLfJKP1xXZ5MPCQymva6p3Ru/JQyyiTd882xs/KtkBJR
 OQbvKbp5QbXRT31L2p2ez9KXmPNW+PYCAeuXYNa59jHPm2sEZ8+yeSwKWWAddQ8Fyl
 cD2OHrZPnvEpFGL8ZeGBD4O2HqFg8vSl8OyFiBkr9Vjy/95iKs5B4hXSS9I92E/65H
 C6jnfSF395+Qw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E8A9DC01B;
 Tue, 15 Jun 2021 01:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623712499; bh=YNHbzCcTw605EWb92v6BlUcB7/rLkS8l6j0Q1u4Lez0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FCg9F5JYNQdxDgxtDks08ZMoDOu77ORt5v6I7StqGhTaI/pOhMfqOAv5Nq5fM2ew5
 KtGdBQ5huIKE+Gxqz/tM2AdxUMe+tlmHzVr0OD2efGltKFb8mjukcJou5bI33ek9c7
 wPuHsXO1QdQInvwelLUbRWyCARg7T7Y7aXSEBnxcnXLVqqeU45UCWO3DZAMjUBDcex
 XstotTMxgnPx+0uajNHu3x4sHNJ0E47rN4AM5faTXW6NSV3I6nVphqpTTsZYIrwj8+
 EubW3gjztJZ/zQ+3oMb5OSx9M/fEtp9eq/NxaGzzMZh6abb71DHUIgirNJdPXQs5+j
 oMPtyYrSAYBiQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9b7c43a8;
 Mon, 14 Jun 2021 23:14:52 +0000 (UTC)
Date: Tue, 15 Jun 2021 08:14:37 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vivek Goyal <vgoyal@redhat.com>, viro@zeniv.linux.org.uk
Message-ID: <YMfi3Q50b1wV+lDW@codewreck.org>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
 <20210609154543.GA579806@redhat.com>
 <YMHKZhfT0CUgeLno@stefanha-x1.localdomain>
 <YMHOXn2cpGh1T9vz@codewreck.org> <YMXyW0KXc3HqdUAj@codewreck.org>
 <20210614142804.GA869400@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614142804.GA869400@redhat.com>
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
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lsvnQ-0001K3-7u
Subject: Re: [V9fs-developer] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>, dgilbert@redhat.com,
 virtio-fs@redhat.com, Stefan Hajnoczi <stefanha@redhat.com>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Vivek Goyal wrote on Mon, Jun 14, 2021 at 10:28:04AM -0400:
> I am not a big fan of nobdev_filesystems array but I really don't feel
> comfortable opening up this code by default to all filesystems having
> flag FS_REQUIRES_DEV. Use cases of this code path are not well documented
> and something somewhere will be broken and called regression.
> 
> I think nobdev_filesystems is sort of a misfit. Even mtd, ubi, cifs
> and nfs are nobdev filesystems but they are not covered by this.

I think it's fine being able to have these root mounted both ways, then
eventually removing the old fs-specific options after a period of
deprecation to have a unique and simple interface.

Maybe it's just a bit of a dream big attitude :-)

> > I'd bite the bullet and use FS_REQUIRES_DEV (and move this part of the
> > code just a bit below after the root_wait check just in case it matters,
> 
> Problem with moving this below root_wait check is that if user boots
> with root_wait option for virtiofs/9p, it will loop infitely. Reason
> being that ROOT_DEV=0 and device will never show up.

Hm, well, then don't use root_wait?! would be my first reaction.

The reason I suggested to move below would be that there might be
filesystems which handle both a block device and no block device, and
for these we wouldn't want to break root_wait which would become kind of
a switch saying "this really is a block device usecase even if the fs
doesn't require dev" -- that's also the reason I was mostly optimistic
even if we make it generic for all filesystems, there'd be this way out
even if the thing is compiled in.


Ultimately if we go through the explicit whitelist that's not required
anyway, and in that case it's probably better to check before as you've
said.


> I am assuming that for out use cases, device will need to be present
> at the time of boot. We can't have a notion of waiting for device to
> show up.
> 
> > but at that point if something would mount with /dev/root but not with
> > the raw root=argument then they probably do require a device!)
> > 
> > It could also be gated by a config option like e.g. CONFIG_ROOT_NFS and
> > others all are to make sure it doesn't impact anyone who doesn't want to
> > be impacted - I'm sure some people want to make sure their device
> > doesn't boot off a weird root if someone manages to change kernel params
> > so would want a way of disabling the option...
> 
> I guess I could do that. Given more than one filesystem will use this
> option (virtiofs and 9p to begin with), so we will have to have a 
> config option name which is little more generic and not filesystem
> specific like CONFIG_ROOT_NFS or CONFIG_ROOT_CIFS.

Well there's the builtin check you added, and there's the ability to
root boot from it that's historically always been separated.

The builtin checks you added actually doesn't matter all that much to
me. I mean, it'll pass this step, but fail as it cannot mount later
anyway, and it was an explicit request to have this filesystem in the
command line: you've changed an error that says "I cannot mount 9p!" to
"I cannot find root-device!" so it's not really a big deal.


What I was advocating for is the whole feature being gated by some
option - my example with an embdedded device having 9p builtin (because
for some reason they have everything builtin) but not wanting to boot on
a tcp 9p rootfs still stands even if we're limiting this to a few
filesystems.

If you're keeping the idea of tags CONFIG_ROOT_TAGS ?


> > Also, matter-of-factedly, how is this going to be picked up?
> > Is the plan to send it directly to Linus as part of the next virtiofs
> > PR? Going through Al Viro?
> 
> I was hoping that this patch can be routed through Al Viro.

Sounds good to me as well - I've upgraded him to To: to get his
attention.
(v2 has been sent as "[PATCH v2 0/2] Add support to boot virtiofs and
9pfs as rootfs"; I'll review/retest in the next few days)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
