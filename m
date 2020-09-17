Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC13326E11E
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 18:50:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIx6h-0006bQ-MT; Thu, 17 Sep 2020 16:50:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1kIx6f-0006bI-Uk
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 16:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wLAV4OTHL26auA7sA0r9nIrRyEfjAZaupZCV0H9QcAM=; b=R9X0dEfWy6xOnHh0kFZzqhOkGP
 YXaPLfxqXFqhsX9kJMXWNioHzv9LzNkxn2//LI4wSjjyumidjq8NCAiGORU1h6S0V4Ayqylb7HLSc
 Ru1ruhbJcFq8flr5OZRvJE+s4K662OWuUNNUgom2VNvJb+juW8NIxx6iHZ/zfCOJIAjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wLAV4OTHL26auA7sA0r9nIrRyEfjAZaupZCV0H9QcAM=; b=EdoKSTJZCmsM0I/XX08D4Kv2Gg
 nY9W627ZFi6JCfNc8EYa/gFrsDM5NCMZMvAO26ZceTVSe+B4MpJtE9VtApiXfiEghQwk6Z9KslflA
 O86cjHoj2+ER8uWOe+AHJESWOQTIJNQI3wpwPfK6Cdt63eZLwz3kuR/Ujepzb35Kt3CI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIx6a-00DBVL-Jj
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 16:50:01 +0000
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net [68.20.15.154])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 650562220E;
 Thu, 17 Sep 2020 16:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600361382;
 bh=sF5GNWOZkQ3nf3+Th5gnQt2xcpsdwKBCS7zrVGfmbVw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=y+iGlgpCeM9xb9d27IMJV7+wkEMiK0mQoV9W7l5UCg8sFTmZkgM99uNvIc2+GWqlH
 0ZPlY/toTe9JazTgGCZZDIpYPmlLHd2V1m/PsaZcDqBuvctHhOeuwFRx8Pao5bfxG/
 9CS6yNA1rBp1Aud48qlKW00CelvRgOeuZ6WNzkHg=
Message-ID: <57d35fdb5ea646f96b70fd8b8a29434761c3f1d3.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>, 
 linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 12:49:40 -0400
In-Reply-To: <20200917151050.5363-5-willy@infradead.org>
References: <20200917151050.5363-1-willy@infradead.org>
 <20200917151050.5363-5-willy@infradead.org>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kIx6a-00DBVL-Jj
Subject: Re: [V9fs-developer] [PATCH 04/13] ceph: Tell the VFS that readpage
 was synchronous
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2020-09-17 at 16:10 +0100, Matthew Wilcox (Oracle) wrote:
> The ceph readpage implementation was already synchronous, so use
> AOP_UPDATED_PAGE to avoid cycling the page lock.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/ceph/addr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
> index 6ea761c84494..b2bf8bf7a312 100644
> --- a/fs/ceph/addr.c
> +++ b/fs/ceph/addr.c
> @@ -291,10 +291,11 @@ static int ceph_do_readpage(struct file *filp, struct page *page)
>  static int ceph_readpage(struct file *filp, struct page *page)
>  {
>  	int r = ceph_do_readpage(filp, page);
> -	if (r != -EINPROGRESS)
> -		unlock_page(page);
> -	else
> -		r = 0;
> +	if (r == -EINPROGRESS)
> +		return 0;
> +	if (r == 0)
> +		return AOP_UPDATED_PAGE;
> +	unlock_page(page);
>  	return r;
>  }
>  

Looks good to me. I assume you'll merge all of these as a set since the
early ones are a prerequisite?

Reviewed-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
