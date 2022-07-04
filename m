Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB16565789
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 15:39:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8MIm-0000ty-9D; Mon, 04 Jul 2022 13:39:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o8MIk-0000tg-Gb
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZuSDtg49kLYvNdQDHtIgVQE+CHgjZQqn81sL6zDFFkE=; b=m6TdUPJ7KiKgqjHlWPVzVuUyFa
 FsLHvgJKi7NtFHTnPONhn1sIVj8VykZRWaR8lps3cH4sZEOn3/1+wRxZ9Jl6Zc/JzWsEgVyDjffbC
 f+uT30NO4y7mNqjZlAd22MEtotH19VCZXStOrjK3l7hOgoE8bres6P6cYz/S/wEns7dM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZuSDtg49kLYvNdQDHtIgVQE+CHgjZQqn81sL6zDFFkE=; b=RYqMzF/GUDrQnXw83gygvDsnaC
 XAp4xp63Ks4MxU9S7VuGjGZWaPJ1R3n9z/+RxC/KgzDM94z3E++fnmBgEN1PnZbcefoJmy1yA+EdY
 PDKjX5qjgOlP5aa5J+/LrCWiWN5TDDQUvoZVTsFBVaBU3u3vU/rUFtT3EKNMoRfVjY0I=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8MIg-0006kM-I2
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=ZuSDtg49kLYvNdQDHtIgVQE+CHgjZQqn81sL6zDFFkE=; b=L7MDoy5Caa1DaV9jEC4sssNR55
 vd6teVzYL4swnRjjgHtw6RdXIKMGwGGKV9X0g5ICcu2FOHBYYmb9evyQf2jVTHo62BfnElY7YOv5Z
 hk55Do48g2mG50tu+Yc2VIjn9XvbmincbH7of5a4P4VR9qbYM7AM5ofFZZNV/UzdVABFs8dh9UADf
 Wz3OY1uJAeJ4V0ffusGiksd1sdvQu8yI7jRE9lihBcSMEoYdN7xKLNlWVkfoMb+uDpbKw2V74rlhY
 eL3DYWw1psC210QO/ztoFqLFsvd6msehn44JpOqAOGDKnwoDDUP4Z8aX1kPiVpRAk3E8vwEFR/vdl
 xYY32sC0Mo7U5bKDalvzGlovKa86R+WtxmAQlMx6jcGBGbSNUZ3bKYIuKvlx/CdYBw9FfjnXhK9+N
 7S9bilgaaMkUKQSRupw34rS70Culbjuc+1d77p2c8r8IGJpAMliBRPebnTdf0ysRoIulE06TNlGst
 oLFdHEEG4kf2fhzWQFBwoGRCTRnevfFA7XscGWLEQQMKg9osuzcKpfJLHGN+S6qGmXrocoA+hssOO
 eT9TdNaqX5ybNCsBEpmSJYU1aHp0+QyfV8Mlm9ulwLsYHNd0hty7VjLdlw8aPZ6l8iqTuQgCBYj0/
 AYvbpBs7pDN8Un5lLnMuict8nUifr6bxjSeeHcRC8=;
To: Kent Overstreet <kent.overstreet@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 04 Jul 2022 15:39:32 +0200
Message-ID: <1877940.0u7pHPiiHj@silver>
In-Reply-To: <20220704130631.eq5txpq62gwvbvts@moria.home.lan>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <2335194.JbyEHpbE5P@silver>
 <20220704130631.eq5txpq62gwvbvts@moria.home.lan>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 4. Juli 2022 15:06:31 CEST Kent Overstreet wrote:
 > On Mon, Jul 04, 2022 at 01:12:51PM +0200, Christian Schoenebeck wrote:
 > > On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8MIg-0006kM-I2
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 4. Juli 2022 15:06:31 CEST Kent Overstreet wrote:
> On Mon, Jul 04, 2022 at 01:12:51PM +0200, Christian Schoenebeck wrote:
> > On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
> > > +Christian, sorry I just noticed you weren't in Ccs again --
> > > the patches are currently there if you want a look:
> > > https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool
> > 
> > I wonder whether it would make sense to update 9p section in MAINTAINERS
> > to
> > better reflect current reality, at least in a way such that contributors
> > would CC me right away?
> > 
> > Eric, Latchesar, what do you think?
> > 
> > > > @@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type,
> > > > unsigned int max_size)>
> > > > 
> > > >  	if (!req)
> > > >  	
> > > >  		return ERR_PTR(-ENOMEM);
> > > > 
> > > > -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> > > > -		goto free_req;
> > > > -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> > > > -		goto free;
> > > > +	p9_fcall_init(c, &req->tc, 0, alloc_msize);
> > > > +	p9_fcall_init(c, &req->rc, 1, alloc_msize);
> > > 
> > > mempool allocation never fails, correct?
> > > 
> > > (don't think this needs a comment, just making sure here)
> > > 
> > > This all looks good to me, will queue it up in my -next branch after
> > > running some tests next weekend and hopefully submit when 5.20 opens
> > > with the code making smaller allocs more common.
> > 
> > Hoo, Dominique, please hold your horses. I currently can't keep up with
> > reviewing and testing all pending 9p patches right now.
> > 
> > Personally I would hold these patches back for now. They would make sense
> > on current situation on master, because ATM basically all 9p requests
> > simply allocate exactly 'msize' for any 9p request.
> 
> Err, why?
> 
> These patches are pretty simple, and they fix a bug that's affecting users
> right now (and has been for ages)

So simple that it already had one obvious bug (at least). But as it seems that 
Dominique already supports your patch, I refrain from enumerating more 
reasons.

> > However that's exactly what I was going to address with my already posted
> > patches (relevant patches regarding this issue here being 9..12):
> > https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/
> > And in the cover letter (section "STILL TODO" ... "3.") I was suggesting
> > to
> > subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size
> > categories? Because that's what my already posted patches do anyway.
> 
> Yeah that sounds like you're just reimplementing kmalloc.

Quite exaggerated statement.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
