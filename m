Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D370154529B
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Jun 2022 19:05:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzLb1-0005bD-4E; Thu, 09 Jun 2022 17:05:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nzLb0-0005b5-8g
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 17:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1lNa6iNcfHqhr5MbA/Mh/ouee24JBaZZj0uAHjT9KTU=; b=QSaH1qQOWYvd7bWc5nHKG3+uyF
 qHDvvx4V+pnCwIrP9IehkpEE39AimF02mJ3VFQjtxuajvMhrtJe3tgKRyiOzuGNeHnM4fgAimxwBu
 m+JgNXDqhi4wKOvYx8GGL37jwRRySCNh6xxL09ctKn5v55Co3avNrAs4KSRp6kHL0tQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1lNa6iNcfHqhr5MbA/Mh/ouee24JBaZZj0uAHjT9KTU=; b=EgsIH5ThOoN9tZYjBv/X8Dr+Q7
 Bll0VV42OWJuGqURu8+OPzZkS9HVtLE69w7qRCWm6CwJPIAHX9PhAz3x6o4fe6PVRwdzpe2DHQU/A
 riSOedCQs/NMcQpqyXAPkRs3gbjiChuxvFKLR+SPDWCSHAXkUWE9SGn2GPjwCIxhxzHw=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzLav-0003Kl-3s
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 17:05:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 61D9FB82ECD;
 Thu,  9 Jun 2022 17:05:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F7CFC34114;
 Thu,  9 Jun 2022 17:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1654794306;
 bh=TyXSDd71ITvKQbVh8Cn4dAI1JmsPDXjiP1sZFC/KfUM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=rhg3JZaXznf78tW/tdEvAZeK/jwmr6IJEVpWLJd1VzkAPNn8y6eM+SNyfgZyDXy6e
 lzNm1gVEVN6ZxDQI0KQgBKkvEzQ+MruELC+MDfMaYKEPkGtGnbNol3EH4cG6y7wszl
 RSNzsHsZGrDFkVBcL2W3CtahOkx0VPF8D5bRAHWyKUNBAnwvCdaHOOoRWWBPCZ/LB0
 EdTtz6w1OAan7q0dkZFoSIYs5zY7KpT60WZA/RwiE64PBTEnog/9i09qZAd8i/ZqaL
 lUBjad8+Mef5m3Dvqhc486tjVH/i4T9OHs7pJmqLnpyFS54OL7mg+W6iz0arPzr7AY
 /TBgqR61XVDlQ==
Message-ID: <480f3b02d2cda67cb2a1b68e88afa03e95809b8c.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Thu, 09 Jun 2022 13:05:03 -0400
In-Reply-To: <165476202136.3999992.433442175457370240.stgit@warthog.procyon.org.uk>
References: <165476202136.3999992.433442175457370240.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
X-Spam-Score: -6.4 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2022-06-09 at 09:07 +0100, David Howells wrote: >
 The maths at the end of iter_xarray_get_pages() to calculate the actual >
 size doesn't work under some circumstances, such as when it's been a [...]
 Content analysis details:   (-6.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzLav-0003Kl-3s
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
Cc: linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2022-06-09 at 09:07 +0100, David Howells wrote:
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
>  }
>  
>  /* must be done on non-empty ITER_IOVEC one */
> @@ -1602,7 +1596,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
>  	struct page **p;
>  	unsigned nr, offset;
>  	pgoff_t index, count;
> -	size_t size = maxsize, actual;
> +	size_t size = maxsize;
>  	loff_t pos;
>  
>  	if (!size)
> @@ -1631,13 +1625,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
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
>  }
>  
>  ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
> 
> 

This seems to fix the bug I was hitting. Thanks!

Reviewed-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
