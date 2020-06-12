Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7A61F7596
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 10:59:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjfWs-0000Et-Tu; Fri, 12 Jun 2020 08:59:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jjfWj-0000Dj-5T
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 08:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BNy3nBUcK1EPFkhs3K6h0c7QPoDv1XIHVx+BM2AGxlE=; b=SqhwY9nht6rlv0/lnSEEG5KVxs
 NQ39dzjsI9H5CcyTl/29lG3JA7hYBs58LycYPdEfyxj+XacUc8uVys8fI3901sIfuEBCCUMduuBpU
 ObRfqlHLXbLf4gfpIPwuPVgFqBEXtJgZi1Ix8KG5x+Q9wxdd14GI0YQ5w8GHx8UeZDWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BNy3nBUcK1EPFkhs3K6h0c7QPoDv1XIHVx+BM2AGxlE=; b=gRyztS5ceVqoDWX9Ewe+aDuHtB
 CFF9HtMI8lcB+jVe1hfSnIPe42gBzDuRkWUTvlZElnkHqXRJYeX9nFDmB55RsFD/1uqe/yMDGOoQp
 27LqeyMkUvzwW53sJlxxo7fbcugvNcmin3JjNLDe5fYweptplS+CsPWc3cuGzMaYviJw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjfWb-002vm5-Ea
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 08:58:59 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id BEB7FC009; Fri, 12 Jun 2020 10:58:50 +0200 (CEST)
Date: Fri, 12 Jun 2020 10:58:35 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Zheng Bin <zhengbin13@huawei.com>
Message-ID: <20200612085835.GA8776@nautica>
References: <20200612073248.40020-1-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612073248.40020-1-zhengbin13@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjfWb-002vm5-Ea
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix memory leak in v9fs_mount
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
Cc: ericvh@gmail.com, lucho@ionkov.net, yi.zhang@huawei.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Zheng Bin wrote on Fri, Jun 12, 2020:
> v9fs_mount
>   v9fs_session_init
>     v9fs_cache_session_get_cookie
>       v9fs_random_cachetag                     -->alloc cachetag
>       v9ses->fscache = fscache_acquire_cookie  -->maybe NULL
>   sb = sget                                    -->fail, goto clunk
> clunk_fid:
>   v9fs_session_close
>     if (v9ses->fscache)                        -->NULL
>       kfree(v9ses->cachetag)
> 
> Thus memleak happens.
> 
> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>

LGTM.
I don't think it's critical so I'll queue it for 5.9 in a bit after testing

> ---
>  fs/9p/v9fs.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
> index 15a99f9c7253..39def020a074 100644
> --- a/fs/9p/v9fs.c
> +++ b/fs/9p/v9fs.c
> @@ -500,10 +500,9 @@ void v9fs_session_close(struct v9fs_session_info *v9ses)
>  	}
> 
>  #ifdef CONFIG_9P_FSCACHE
> -	if (v9ses->fscache) {
> +	if (v9ses->fscache)
>  		v9fs_cache_session_put_cookie(v9ses);
> -		kfree(v9ses->cachetag);
> -	}
> +	kfree(v9ses->cachetag);
>  #endif
>  	kfree(v9ses->uname);
>  	kfree(v9ses->aname);
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
