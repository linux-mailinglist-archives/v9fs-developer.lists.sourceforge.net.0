Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAB93A8167
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Jun 2021 15:51:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lt9TR-0008Cy-9I; Tue, 15 Jun 2021 13:51:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lt9TP-0008Cr-MY
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Jun 2021 13:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6gSdThyIdMrNQRAlMW4E56JGtME2sOvlbaIEd5yJBHs=; b=lZH65+9cOuoCY3TUzvu9AMy+8R
 RvAiKYe+OSYq16gBfm2fXG7RK3GRrkUOFzbkVIJW/3oYjDSaznnUZnwxysj+0s4/65KO1f9hzTsZq
 de7aJUOBfzWF5I76lmNqOGMQNCsybt14ZQBMQotyAZXe7+N1Lx8DQquOkclcFBCmxVRU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6gSdThyIdMrNQRAlMW4E56JGtME2sOvlbaIEd5yJBHs=; b=DxvFYT688nIzt6JweigKNLSCVE
 GiR5PAVd9RrZg5HsSMEx0yciT5NORT6ApS0NrdCetetrvSuWxNbU01JG3GhnbwWkC2OWcZO3P6Q9I
 E4Xa7jLVxodz9VWZmQS/zGJ+IZWsoz/7tJ54xr1Z3+6fCpw7cDzE6RpzgueYCAxz73xQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lt9TH-00AmXR-D4
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Jun 2021 13:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623765069;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6gSdThyIdMrNQRAlMW4E56JGtME2sOvlbaIEd5yJBHs=;
 b=JZ6RX7bu8D77sPUWuIgUhoINzdyRR+xiElaNmGCqxxN1XqUVJd7bSVCLLznIAUUwmpFt3a
 MEIyj3hwurEuV213IWNmMgP0nRN/GHhkflMzL/oIzrXNhWSsXu7ghtH9U5OdwFvJpvkIGp
 MAmC+I3X7pp7ge8PK29KpfrkMBBQ+SQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-542-6hEdmEA3MCexY0mvFNRFDg-1; Tue, 15 Jun 2021 09:51:07 -0400
X-MC-Unique: 6hEdmEA3MCexY0mvFNRFDg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56BAE801106;
 Tue, 15 Jun 2021 13:51:06 +0000 (UTC)
Received: from horse.redhat.com (ovpn-115-170.rdu2.redhat.com [10.10.115.170])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA20760861;
 Tue, 15 Jun 2021 13:50:57 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 297C4220BCF; Tue, 15 Jun 2021 09:50:57 -0400 (EDT)
Date: Tue, 15 Jun 2021 09:50:57 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20210615135057.GB965196@redhat.com>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
 <20210609154543.GA579806@redhat.com>
 <YMHKZhfT0CUgeLno@stefanha-x1.localdomain>
 <YMHOXn2cpGh1T9vz@codewreck.org> <YMXyW0KXc3HqdUAj@codewreck.org>
 <20210614142804.GA869400@redhat.com>
 <YMfi3Q50b1wV+lDW@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMfi3Q50b1wV+lDW@codewreck.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lt9TH-00AmXR-D4
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
 virtio-fs@redhat.com, viro@zeniv.linux.org.uk,
 Stefan Hajnoczi <stefanha@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jun 15, 2021 at 08:14:37AM +0900, Dominique Martinet wrote:
> Vivek Goyal wrote on Mon, Jun 14, 2021 at 10:28:04AM -0400:
> > I am not a big fan of nobdev_filesystems array but I really don't feel
> > comfortable opening up this code by default to all filesystems having
> > flag FS_REQUIRES_DEV. Use cases of this code path are not well documented
> > and something somewhere will be broken and called regression.
> > 
> > I think nobdev_filesystems is sort of a misfit. Even mtd, ubi, cifs
> > and nfs are nobdev filesystems but they are not covered by this.
> 
> I think it's fine being able to have these root mounted both ways, then
> eventually removing the old fs-specific options after a period of
> deprecation to have a unique and simple interface.

Sure. And I think v2 of patches where I propose a whitelist of filesystems
should be able to achieve that. Right now I call that tag based
filesystems where tag is directly passed to filesystem. I think
mtd/ubi/cifs/nfs should be able to use that as well and be added to
that whitelist down the line.

> 
> Maybe it's just a bit of a dream big attitude :-)

> 
> > > I'd bite the bullet and use FS_REQUIRES_DEV (and move this part of the
> > > code just a bit below after the root_wait check just in case it matters,
> > 
> > Problem with moving this below root_wait check is that if user boots
> > with root_wait option for virtiofs/9p, it will loop infitely. Reason
> > being that ROOT_DEV=0 and device will never show up.
> 
> Hm, well, then don't use root_wait?! would be my first reaction.
> 
> The reason I suggested to move below would be that there might be
> filesystems which handle both a block device and no block device, and
> for these we wouldn't want to break root_wait which would become kind of
> a switch saying "this really is a block device usecase even if the fs
> doesn't require dev" -- that's also the reason I was mostly optimistic
> even if we make it generic for all filesystems, there'd be this way out
> even if the thing is compiled in.
> 
> 
> Ultimately if we go through the explicit whitelist that's not required
> anyway, and in that case it's probably better to check before as you've
> said.

Yes, current whitelist based approach will not allow to have both
block devices as well as tag/non-block based root devices. Are there
any examples where we current filesystems support such things. And
can filesystem deal with it instead?

If this becomes a requirement, then we will have to go back to my
previous proposal of "root=fstag=<tag>" instead. That way "root=<foo>"
will be interpreted as block device while "root=fstag=<foo>" explicitly
says its some kind of tag (and not a block device).

> 
> 
> > I am assuming that for out use cases, device will need to be present
> > at the time of boot. We can't have a notion of waiting for device to
> > show up.
> > 
> > > but at that point if something would mount with /dev/root but not with
> > > the raw root=argument then they probably do require a device!)
> > > 
> > > It could also be gated by a config option like e.g. CONFIG_ROOT_NFS and
> > > others all are to make sure it doesn't impact anyone who doesn't want to
> > > be impacted - I'm sure some people want to make sure their device
> > > doesn't boot off a weird root if someone manages to change kernel params
> > > so would want a way of disabling the option...
> > 
> > I guess I could do that. Given more than one filesystem will use this
> > option (virtiofs and 9p to begin with), so we will have to have a 
> > config option name which is little more generic and not filesystem
> > specific like CONFIG_ROOT_NFS or CONFIG_ROOT_CIFS.
> 
> Well there's the builtin check you added, and there's the ability to
> root boot from it that's historically always been separated.
> 
> The builtin checks you added actually doesn't matter all that much to
> me. I mean, it'll pass this step, but fail as it cannot mount later
> anyway, and it was an explicit request to have this filesystem in the
> command line: you've changed an error that says "I cannot mount 9p!" to
> "I cannot find root-device!" so it's not really a big deal.
> 
> 
> What I was advocating for is the whole feature being gated by some
> option - my example with an embdedded device having 9p builtin (because
> for some reason they have everything builtin) but not wanting to boot on
> a tcp 9p rootfs still stands even if we're limiting this to a few
> filesystems.
> 
> If you're keeping the idea of tags CONFIG_ROOT_TAGS ?

I thought about it and CONFIG_ROOT_TAGS made less sense because it will
disable all filesystem roots. So say you don't want to boot from 9p
rootfs but are ok booting from virtiofs rootfs, then disablig whole
feature does not allow that.

We probably need to have per filesystem option. Something like CONFIG_ROOT_NFS
and CONFIG_CIFS_ROOT. So may be we need to add CONFIG_ROOT_VIRTIOFS
and COFIG_ROOT_9P_FS to decide wither to include filesystem in whitelist
or not and that will enable/disable boot from root functionality.

I feel that these kind of patches can go in later. Because a user
can boot from 9p or virtiofs rootfs anyway using mtd prefix hack
or using /dev/root as tag hack and adding these options does not
close those paths. So I thought that adding these config
options should not be a strict requirement for this patch series and
these options can be added separately in respective filesystems. WDYT?

Thanks
Vivek

> 
> 
> > > Also, matter-of-factedly, how is this going to be picked up?
> > > Is the plan to send it directly to Linus as part of the next virtiofs
> > > PR? Going through Al Viro?
> > 
> > I was hoping that this patch can be routed through Al Viro.
> 
> Sounds good to me as well - I've upgraded him to To: to get his
> attention.
> (v2 has been sent as "[PATCH v2 0/2] Add support to boot virtiofs and
> 9pfs as rootfs"; I'll review/retest in the next few days)
> 
> -- 
> Dominique
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
