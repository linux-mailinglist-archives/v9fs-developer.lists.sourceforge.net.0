Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 843945474E4
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 15:44:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o01PQ-0007FV-KL; Sat, 11 Jun 2022 13:44:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1o01PO-0007FP-S0
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 13:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ixh/tGjYEGtd9B0U4un+L2Dg2/GvxVifxx8JOO5/xxs=; b=ggxrlLfDV4ICBGHpjNTUim3p/g
 ZleaG3YsOFQIqj9B9el5mgDYwEqCnbk3rWeDwndIJeYvS38VAK0rEwbJl/gtk7aonJNhsKZjUpXyA
 ZSGFpc/eDBORvzu7Mr9t4/dgjbaTu7lVj5f+qd21PWkHSJrNoCbKZWxlhh/SPC4gX2wQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ixh/tGjYEGtd9B0U4un+L2Dg2/GvxVifxx8JOO5/xxs=; b=cZ18hMxnOv06TTNZ5+EH12vfbi
 IN0NEvMPqM3qSX5pgWl9vjqkrUM2jx7IJQz3wEknvbcAGgkeeFd2L0Uj1ufTUJs2j/RPFrBzAeyrK
 dI3toMVjb9h7KhgPfSF0Z8EpH4idMkOnM74tziIBi/ZSLqRbOaBZyTjdrp3iNHN1IlFs=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o01PI-0002Ah-0E
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 13:44:09 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 c12-20020a17090a558c00b001ea95be66a5so797002pji.2
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Jun 2022 06:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ixh/tGjYEGtd9B0U4un+L2Dg2/GvxVifxx8JOO5/xxs=;
 b=dWFageSqD+a/p7/dg6peuXBetNvvozPq1OrZOQ/jnLrmOlYGPzNGQ4RjNm2jbazw9i
 u781rrcK5N+1rObNiGXHrWMqVQY7pZTTAMDXq7DNXEPeF453QBw6/bxOS0JTWBW4mEFL
 oUM/P6Tc2N9Ofg4sbBfsItn4mThyJNPYPK0dfcLnQTh5rjJPmndWQJuSTs7DAwaCi/Vx
 rL+jaeKda3xCTVgeOwll+wUPQ1XB4/3T0OO18jS1/nlZwt9iAYKwdDwzN6eMueoG9fyg
 LLwuRDA7jXNLhI6Pff6Xji5gCQ5vnnxkZEApvX0oXAyGKRCiRXSTKan8B5OV8LXdXJGh
 CGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=Ixh/tGjYEGtd9B0U4un+L2Dg2/GvxVifxx8JOO5/xxs=;
 b=v6hcIbUZIZUpkZoysDTidlO+AR8fgZh8JRYD31nZsFbTXqRAi+1mlF4akC+Vp5yFyz
 U9NsGw2e6OeLx7nvHbIlcVplNEbXjwg8F4h2EZB9nLpFKPFeru5G5O+fgwMYxgYHy9IP
 06WbIJCACW/4+Dzlu7fpSTzom5caPmssQ9BEIzsdIIR9den05l9jijbIVsh6MZ99hkO8
 dzK0Z1yREbZa278k63kzfiYs1SvEbjvhMJyVYxkyp2XbI+xBAxbBS17V+A4Es9x1D5xF
 lbkbPntbK31wpbdQSN3u1839XGk4c/a7SS6SD4xx/Ah8VJiC69gYO4lsLzq7FPM/795N
 IHjw==
X-Gm-Message-State: AOAM5336FuZ2vF18k2uNS4HEOkvJKR1p0QFjnFREiIkjRtn2yYKLem+k
 hnru6+OipLSGIkcYcxrlpiU=
X-Google-Smtp-Source: ABdhPJyVm1Qx3rpbnexbaPz3LjRNh5xdY5jWDRPJD5O1BPtSHpLAWd+II5ejGzWE9luF6mWKd4zRSA==
X-Received: by 2002:a17:902:9f96:b0:163:dc33:6b72 with SMTP id
 g22-20020a1709029f9600b00163dc336b72mr50033692plq.34.1654955039652; 
 Sat, 11 Jun 2022 06:43:59 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a12-20020a1709027e4c00b00164097a779fsm1523377pln.147.2022.06.11.06.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jun 2022 06:43:58 -0700 (PDT)
Date: Sat, 11 Jun 2022 06:43:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: David Howells <dhowells@redhat.com>
Message-ID: <20220611134357.GA278954@roeck-us.net>
References: <165476202136.3999992.433442175457370240.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <165476202136.3999992.433442175457370240.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 09, 2022 at 09:07:01AM +0100,
 David Howells wrote:
 > The maths at the end of iter_xarray_get_pages() to calculate the actual
 > size doesn't work under some circumstances, such as when it's [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o01PI-0002Ah-0E
Subject: Re: [V9fs-developer] [PATCH] iov_iter: Fix iter_xarray_get_pages{,
 _alloc}()
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
Cc: jlayton@kernel.org, linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jun 09, 2022 at 09:07:01AM +0100, David Howells wrote:
> The maths at the end of iter_xarray_get_pages() to calculate the actual
> size doesn't work under some circumstances, such as when it's been asked to
> extract a partial single page.  Various terms of the equation cancel out
> and you end up with actual == offset.  The same issue exists in
> iter_xarray_get_pages_alloc().
> 
> Fix these to just use min() to select the lesser amount from between the
> amount of page content transcribed into the buffer, minus the offset, and
> the size limit specified.
> 
> This doesn't appear to have caused a problem yet upstream because network
> filesystems aren't getting the pages from an xarray iterator, but rather
> passing it directly to the socket, which just iterates over it.  Cachefiles
> *does* do DIO from one to/from ext4/xfs/btrfs/etc. but it always asks for
> whole pages to be written or read.
> 
> Fixes: 7ff5062079ef ("iov_iter: Add ITER_XARRAY")
> Reported-by: Jeff Layton <jlayton@kernel.org>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Alexander Viro <viro@zeniv.linux.org.uk>
> cc: Dominique Martinet <asmadeus@codewreck.org>
> cc: Mike Marshall <hubcap@omnibond.com>
> cc: Gao Xiang <xiang@kernel.org>
> cc: linux-afs@lists.infradead.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: devel@lists.orangefs.org
> cc: linux-erofs@lists.ozlabs.org
> cc: linux-cachefs@redhat.com
> cc: linux-fsdevel@vger.kernel.org
> ---
> 
>  lib/iov_iter.c |   20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
> 
> diff --git a/lib/iov_iter.c b/lib/iov_iter.c
> index 834e1e268eb6..814f65fd0c42 100644
> --- a/lib/iov_iter.c
> +++ b/lib/iov_iter.c
> @@ -1434,7 +1434,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
>  {
>  	unsigned nr, offset;
>  	pgoff_t index, count;
> -	size_t size = maxsize, actual;
> +	size_t size = maxsize;
>  	loff_t pos;
>  
>  	if (!size || !maxpages)
> @@ -1461,13 +1461,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
>  	if (nr == 0)
>  		return 0;
>  
> -	actual = PAGE_SIZE * nr;
> -	actual -= offset;
> -	if (nr == count && size > 0) {
> -		unsigned last_offset = (nr > 1) ? 0 : offset;
> -		actual -= PAGE_SIZE - (last_offset + size);
> -	}
> -	return actual;
> +	return min(nr * PAGE_SIZE - offset, maxsize);

This needs min_t to avoid a build error on 32-bit builds.

In file included from include/linux/kernel.h:26,
                 from include/linux/crypto.h:16,
                 from include/crypto/hash.h:11,
                 from lib/iov_iter.c:2:
lib/iov_iter.c: In function 'iter_xarray_get_pages':
include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast [-Werror]
...
lib/iov_iter.c:1628:16: note: in expansion of macro 'min'
 1628 |         return min(nr * PAGE_SIZE - offset, maxsize);
      |                ^~~

Guenter


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
