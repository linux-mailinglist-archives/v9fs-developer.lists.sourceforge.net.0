Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C7A547524
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 16:01:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o01fm-0007dF-U7; Sat, 11 Jun 2022 14:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1o01fl-0007d9-LC
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 14:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c9HBwLp0Uv5MjgxnDuQRISysx2V5J/58czPWYFl7Y+c=; b=CXjrtf6dOPdvh7rmzo9nYVkpNR
 WEjiYKCwyZzusujgPRxa+hDChg+12KMsT+o2TTkj+XKid61uUCvp0AEQ8rmurOOY0akz9XL7ghpqE
 UIC1Kn3bmoJMEv+hJmfqhe4Ps3uFrao0tVtcSMIaswlhTgNWefFG0xOJ5MpslW7YOfDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c9HBwLp0Uv5MjgxnDuQRISysx2V5J/58czPWYFl7Y+c=; b=m9KHvDWxyf8IhTqLjcboYfu3WN
 itSQMQJbjM7/XcrQCBmDWKCjdi0rc1fZbeKuB6RHp8HWgjSTYYprlR5bjvSvBZgbv1QaojsqqnJ2r
 0mq8qjkphEQXbX3yUEUETJJ4xm6hUr+6sTOFQrNHeNNTl//082y0oNDMNG0TtsgL0CMM=;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o01fe-0002hz-OP
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 14:01:04 +0000
Received: by mail-pg1-f173.google.com with SMTP id 184so1643699pga.12
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Jun 2022 07:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c9HBwLp0Uv5MjgxnDuQRISysx2V5J/58czPWYFl7Y+c=;
 b=J5ILuXUYWMfQjDH4S2msyhgkPRceCZoVKL6RHwfqAlOBIL3InHqK7wcsqLhDuwhGTZ
 GsjxoYTI3nxq09rAthVavpFmZpRa+WedvYuXMvFelYFG3anGgzlvOOBCY+ZykdsLpO47
 h1m8c9Tcc7+0Lauceew5EJJAFiqE3YeTfZNkBsc29H0tpyHmPqrWyRoJ32cuqoshLtVO
 zgGt03epVWoeR0d70Oj2+9baQg1u7RWDjy9RJ4Y+9prhr5JI7fEHU/Z0P83Aevjfpsvr
 GduSckWxvPbVquHtRFul5qZ4pcxW88Gt5KPQHgjN1kPTnzQ1hujOcnEWnAZ9NFOac9S3
 EWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=c9HBwLp0Uv5MjgxnDuQRISysx2V5J/58czPWYFl7Y+c=;
 b=kqc7Xafnjv8R3ML817xUHXbQ6ATnXnE8kBlzlDwffAlT44jLAP1QecamVitEBpXHrT
 /YgxBfoum7wKxuzmX8hny8O9zSCfLieHRAl817zKdmB6UM9+CQ96wnNHO2ydpV5xiOcJ
 fra1rtNcdcU215KK6wH/3xZJzfCLetchxz6wigJTZbG/ucEcyH5rGQF0tcPp+i89YPEB
 M+C7g1LGtjTnSPhyUA+WPPwjCm+p4Nc2vbP6WrjoPfV30f+jn7+NVll3RzbkgZPolJtH
 UdaM0fVRBvNvBGrecVP2TDcA/jerZh2v7xi7jmYmJe/G7zRpGB9tXzXL38uhsf8Hxpsm
 hcww==
X-Gm-Message-State: AOAM531yQUQrsEVPs77TQKGMUokXqWMQsgFhhZgtQiqrpHty1kWvUez+
 zG17LUPs6kkngmo/j8VbiB7bDuaviuQ=
X-Google-Smtp-Source: ABdhPJx8aXzG7lARTjf0DGMNWJ7cU2i9+ckERmOuVpIwDU+ICn1bZ2jiI0zO6THloqk9kmx74bkHfg==
X-Received: by 2002:a63:2a0c:0:b0:3fc:9b04:541d with SMTP id
 q12-20020a632a0c000000b003fc9b04541dmr44653939pgq.546.1654956054512; 
 Sat, 11 Jun 2022 07:00:54 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 g10-20020a170902d5ca00b00163d4dc6e95sm1528126plh.307.2022.06.11.07.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jun 2022 07:00:54 -0700 (PDT)
Date: Sat, 11 Jun 2022 07:00:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20220611140052.GA288528@roeck-us.net>
References: <YqRyL2sIqQNDfky2@debian> <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
 <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
 <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 12:56:27PM +0000, Al Viro wrote: >
 On Sat, Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote: > > On Sat, Jun
 11, 2022 at 12:12:47PM +0000, Al Viro wrote: > > > > > > > At a gues [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.173 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o01fe-0002hz-OP
Subject: Re: [V9fs-developer] mainline build failure due to 6c77676645ad
 ("iov_iter: Fix iter_xarray_get_pages{, _alloc}()")
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Gao Xiang <xiang@kernel.org>, linux-erofs@lists.ozlabs.org,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jun 11, 2022 at 12:56:27PM +0000, Al Viro wrote:
> On Sat, Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote:
> > On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote:
> > 
> > 
> > > At a guess, should be
> > > 	return min((size_t)nr * PAGE_SIZE - offset, maxsize);
> > > 
> > > in both places.  I'm more than half-asleep right now; could you verify that it
> > > (as the last lines of both iter_xarray_get_pages() and iter_xarray_get_pages_alloc())
> > > builds correctly?
> > 
> > No, I'm misreading it - it's unsigned * unsigned long - unsigned vs. size_t.
> > On arm it ends up with unsigned long vs. unsigned int; functionally it *is*
> > OK (both have the same range there), but it triggers the tests.  Try 
> > 
> > 	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
> > 
> > there (both places).
> 
> The reason we can't overflow on multiplication there, BTW, is that we have
> nr <= count, and count has come from weirdly open-coded
> 	DIV_ROUND_UP(size + offset, PAGE_SIZE)

That is often done to avoid possible overflows. Is size + offset
guaranteed to be smaller than ULONG_MAX ?

Guenter

> IMO we'd better make it explicit, so how about the following:
> 
> Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
> ---
> diff --git a/lib/iov_iter.c b/lib/iov_iter.c
> index dda6d5f481c1..150dbd314d25 100644
> --- a/lib/iov_iter.c
> +++ b/lib/iov_iter.c
> @@ -1445,15 +1445,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
>  	offset = pos & ~PAGE_MASK;
>  	*_start_offset = offset;
>  
> -	count = 1;
> -	if (size > PAGE_SIZE - offset) {
> -		size -= PAGE_SIZE - offset;
> -		count += size >> PAGE_SHIFT;
> -		size &= ~PAGE_MASK;
> -		if (size)
> -			count++;
> -	}
> -
> +	count = DIV_ROUND_UP(size + offset, PAGE_SIZE);
>  	if (count > maxpages)
>  		count = maxpages;
>  
> @@ -1461,7 +1453,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
>  	if (nr == 0)
>  		return 0;
>  
> -	return min(nr * PAGE_SIZE - offset, maxsize);
> +	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
>  }
>  
>  /* must be done on non-empty ITER_IOVEC one */
> @@ -1607,15 +1599,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
>  	offset = pos & ~PAGE_MASK;
>  	*_start_offset = offset;
>  
> -	count = 1;
> -	if (size > PAGE_SIZE - offset) {
> -		size -= PAGE_SIZE - offset;
> -		count += size >> PAGE_SHIFT;
> -		size &= ~PAGE_MASK;
> -		if (size)
> -			count++;
> -	}
> -
> +	count = DIV_ROUND_UP(size + offset, PAGE_SIZE);
>  	p = get_pages_array(count);
>  	if (!p)
>  		return -ENOMEM;
> @@ -1625,7 +1609,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
>  	if (nr == 0)
>  		return 0;
>  
> -	return min(nr * PAGE_SIZE - offset, maxsize);
> +	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
>  }
>  
>  ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
