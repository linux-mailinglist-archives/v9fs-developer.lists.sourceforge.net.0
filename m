Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 630806CB5D2
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 07:14:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph1fZ-0002dJ-0r;
	Tue, 28 Mar 2023 05:14:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1ph1fV-0002d9-3Y
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 05:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c+upOLAl1tNic16x8Kml180+4+m4/ZhbaMD9TGfmxxs=; b=MgHxGtWSU54824tMMFArmi6kE0
 wbLENOAZJqhDyD5kc7KGAsnPfEDqCPiLuq7+VQ76bn4SdSpi9SCrWuxvZlsNiJlW0ygoJ38J10R5C
 i2ISqQGesYN0TW4ikNaw65MPMJZQCIkfU9vt1tQpHdgjGOjc9joc4dBhtw2JM17RjSQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c+upOLAl1tNic16x8Kml180+4+m4/ZhbaMD9TGfmxxs=; b=F2XHay4jAGiYYfoZ68rtNZN3CY
 yuKUiIne8pdVGkyNNwFz9l+inbmRge7xtLKOOcMXRDxzqR1G0Fu0d4BiLGLanypXs1SAsyTaq9vmV
 9IZjf/uwENbxeSfEllvQYrKptZBHUgNaU2EI/Kx5iC9vGd8jR2rayOErF9KfSC9TY2h0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ph1fT-0000qT-Ee for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 05:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=c+upOLAl1tNic16x8Kml180+4+m4/ZhbaMD9TGfmxxs=; b=fKGRKKkajfjv/3r8kcgNgFQfnP
 ikAfkwv4pEVGu1o8CVFNaLzRiEME/UkqQWM+50kX8UwmxxNrySdrHVZiFVyVVCp6LHsCCMW4l7Aaq
 VISqY0jRfjcgpSbf4jTNXj0ZZAOaddN9RU8H40G+o/+e0hm2ZRSBdP5Q8piYFC6GEB1tOyl9leUqd
 AnLBLn2a3zmQokWbjKZokz7VD9V234oSaNtlzWAVDhdY6MVnLBK7puPV6n9WYqnjdGpb9nb+YSnc0
 Rgmj1nu28F+MvOTyEcvGYg+N2heuu+xsfCm7o1kIB7WLirtaN+TGL4jxlkQsY0P4vg+qAfChjzgXG
 IvqkkaWQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1ph1fH-00DA9M-2y; Tue, 28 Mar 2023 05:14:35 +0000
Date: Mon, 27 Mar 2023 22:14:35 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <ZCJ3uzqDk6RPd28j@bombadil.infradead.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
 <ZBSc1jjYJn6noeMl@bombadil.infradead.org>
 <CAFkjPTmc-OgMEj9kF3y04sRGeOVO_ogEv1fGG=-CfKP-0ZKC_g@mail.gmail.com>
 <ZCHU6k56nF5849xj@bombadil.infradead.org>
 <ZCJRlqc/epbRhm93@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCJRlqc/epbRhm93@codewreck.org>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 28, 2023 at 11:31:50AM +0900, Dominique Martinet
 wrote: > Luis Chamberlain wrote on Mon, Mar 27, 2023 at 10:39:54AM -0700:
 > > > I have fixed what > > > I hope to be my last bug with the n [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ph1fT-0000qT-Ee
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Amir Goldstein <amir73il@gmail.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Mar 28, 2023 at 11:31:50AM +0900, Dominique Martinet wrote:
> Luis Chamberlain wrote on Mon, Mar 27, 2023 at 10:39:54AM -0700:
> > > I have fixed what
> > > I hope to be my last bug with the new patch series so it should be
> > > going into linux-next today.
> > 
> > Nice, thanks, since kdevops relies on a host kernel though and we strive
> > to have stability for that, I personally like to recommend distro
> > kernels and so they're a few kernel releases out of date. So debian-testing
> > is on 6.1 as of today for example.
> > [...]
> > -    opts: "ro,trans=virtio,version=9p2000.L,posixacl,cache=loose"
> > +    opts: "ro,trans=virtio,version=9p2000.L,posixacl,cache=none"
> 
> Yes, if you want something mostly coherent with the host, cache=none (or
> cache=mmap if you need mmap, iirc linux build does for linking? if you
> want to do that on guest...) is what you'll want to use on current
> kernels.

OK cool, we use 9p to build on the host and so all the guest has to do
is just 'make modules_install install'.

> > BTW the qemu wiki seems to suggest cache=loose and its why I used it on
> > kdevops as a default. What about the following so to avoid folks running
> > into similar issues? I can go and update the wiki too.
> 
> I've added Christian in Cc for this point, he's more active on the qemu
> side
> (thread started here:
> https://lkml.kernel.org/r/ZA0FEyOtRBvpIXbi@bombadil.infradead.org
> )
> 
> I have no opinion on the current wording, the default is there for a
> reason and it's a safe default (none), and cache=loose is clearly
> described with "no attempts are made at consistency, intended for
> exclusive, read-only mounts" which I think ought to be clear enough
> (exclusive means not shared with the host), but if you think it's not
> clear enough it probably isn't.

It certainly was not.

  LUis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
