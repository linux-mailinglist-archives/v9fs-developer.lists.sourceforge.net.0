Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E69565879
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 16:20:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8Mve-0007OG-J2; Mon, 04 Jul 2022 14:19:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8Mvd-0007O9-3f
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 14:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sEJN53L6BzfWwRddod8bktU/FwcXRe3wrheKMHUBD0M=; b=dZs88eGCuKLLOFKzTWZKk/w907
 Gdr6uAaLIRZGYBEazSsEcbviP+mghpxVaj8zlSHmjFJWmTtR2+nkeGKi3mITL6Su1okiTgvzcSSpb
 2WSF7LPs3qoNv3C2A2xhvmSiaVizKPNCVZcttOHDQBY7YUEELXEUjD0CWvVI3r+SWulM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sEJN53L6BzfWwRddod8bktU/FwcXRe3wrheKMHUBD0M=; b=nPlRPsFhddjilbvyzr/2lPZFZS
 EBjCTdhBxUAnQiNw5MBkLIreyHp0f/jlTp7QgL0QvPAzh7f4hsJZxJUpZ9hB/ncSEdVfOxZOFkrJD
 MI5+KhxjKMyGbWr/I3B2EgR5QR+pZbGvmSgGz6MRotPsrPos1bn4JP8g+wKPQ1cW5Xb4=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8MvZ-0073uj-Tg
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 14:19:55 +0000
Received: by mail-qt1-f175.google.com with SMTP id r2so10021658qta.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 04 Jul 2022 07:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sEJN53L6BzfWwRddod8bktU/FwcXRe3wrheKMHUBD0M=;
 b=gzmCelenOs+wCtg9SR9PXcTu98xn8hlT6cjxHUdyNkLb92N0rc7GCxtoJiENNgjk/i
 oZ2l5otI8zHMQRCfx8zua97F3TZw2xx02hcvb2sL+IlQN/1k6Mm0xQOlmifuam46CpAY
 qPuLL1Oh9yjlXtiDGnPge1fB7XQvycM5ycp8L71I6+qd7u/zVqJe/rLeszDu10Qoc62f
 QWMDvarZfEA3asWZKKAYbqu31ejs1wBhxFMIH28qK2lOFbjCJKj/hiMq7U5v0m5EUBlZ
 H72aDNRWwkbsm2BfE3t1UEzLL8agYUwszUOKPljPC9Kt5sQF6hVnUWz+zPnhGztJzZHD
 1jQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sEJN53L6BzfWwRddod8bktU/FwcXRe3wrheKMHUBD0M=;
 b=dFPgYBujrqxaELpY3C1i3V2mhDPfsKlIIEhVixDSqveHIch8RKBqRYHEdIOJDQ0s6e
 rtRuMIwYsq2JamFJYXUgZDQvdIe8sgI28w2LR8WJzV585UzdVPpM59psJVBO0WGP0fNq
 4cXbT1hLjrb/1GeW4DRkXhazkMB3Ak50eQVV4D7VMgZGbFcDojaLxB1WoMz5C6MNH0j8
 vOBsQLKbo1mETfBZFsRTbWF1RcJmSSbl1bwFFJmytV6KnBmXHED2W6uZXGRLVpV5QKSy
 RLqQvFDt0w+NQel7SWv2YjZldRMmnxB9UqHPmxsYI3dt5ycR5zDdwI0vIkPmINiz9UpE
 SFEw==
X-Gm-Message-State: AJIora/lZM4E5/K2GhqjOoi1wULBXk6MLHvgHVZLsHEvQL0qZUdWzZRs
 v/KUl/XjLIX3MovdvMSAgA==
X-Google-Smtp-Source: AGRyM1vGNT5DAaqpGF5lfdyet3EM+DFcR9G2Fp5/GjeGD7+0UTAZfWxJ0uk288PfxMm/sopnV1P8pQ==
X-Received: by 2002:a05:622a:187:b0:319:b2d:4aff with SMTP id
 s7-20020a05622a018700b003190b2d4affmr24648682qtw.386.1656944387962; 
 Mon, 04 Jul 2022 07:19:47 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 g16-20020ae9e110000000b006aefa015c05sm23343969qkm.25.2022.07.04.07.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Jul 2022 07:19:47 -0700 (PDT)
Date: Mon, 4 Jul 2022 10:19:46 -0400
From: Kent Overstreet <kent.overstreet@gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <20220704141946.4yqo2o6ih5zrqjmy@moria.home.lan>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <2335194.JbyEHpbE5P@silver>
 <20220704130631.eq5txpq62gwvbvts@moria.home.lan>
 <1877940.0u7pHPiiHj@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1877940.0u7pHPiiHj@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 04, 2022 at 03:39:32PM +0200,
 Christian Schoenebeck
 wrote: > So simple that it already had one obvious bug (at least). But as
 it seems that > Dominique already supports your patch, I refra [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8MvZ-0073uj-Tg
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 04, 2022 at 03:39:32PM +0200, Christian Schoenebeck wrote:
> So simple that it already had one obvious bug (at least). But as it seems that 
> Dominique already supports your patch, I refrain from enumerating more 
> reasons.

So snippy.

> 
> > > However that's exactly what I was going to address with my already posted
> > > patches (relevant patches regarding this issue here being 9..12):
> > > https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/
> > > And in the cover letter (section "STILL TODO" ... "3.") I was suggesting
> > > to
> > > subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size
> > > categories? Because that's what my already posted patches do anyway.
> > 
> > Yeah that sounds like you're just reimplementing kmalloc.
> 
> Quite exaggerated statement.

I'm just pointing out that kmalloc() is just a frontend around
kmem_cache_alloc() that picks the cache based on the size parameter... so...
still sounds like you are?

Not that there's never a legitimate reason to do so, but it does raise an
eyebrow.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
