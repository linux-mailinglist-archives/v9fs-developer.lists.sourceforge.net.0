Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CABB026ACD
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 May 2019 21:21:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hTWoG-0008Gy-66; Wed, 22 May 2019 19:21:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hTWoE-0008Gp-1Z
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8/DA6bLIlGEpWkUNUigB/Pnym+u5GROCIkibznKqnqI=; b=mKJtF7HlJp2uAxxMVq4Bh575pF
 k7oyEaX+4ux9fZRnT+pbySf8R6LJHDd7N/nF/Q1JRW476EgBWx9CqjEnbaJTet9nwYnsnW7ZMVX3v
 F//LggRe/Fm1tKweKkDWgmsaXrwO32PA+ZbntL8ihVdlr1MsRFEcGemFiYP9k/haQX5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8/DA6bLIlGEpWkUNUigB/Pnym+u5GROCIkibznKqnqI=; b=FWty4pkXO8lUFXoLd071Sw6GPn
 50b82LHzoXv4r/jxsDzC3Z/yXCPSOG/eJE6UYCOtDHtvQMjqlAT/CwIEcOu/aflvi+kLweEoLN+XD
 gUdsYUjzs2/IcpA6eoHT3jQ11waBaHDFjmUDi95F0VtJX545zKOdBpZgAnMOgiPsZVZM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hTWoB-000eFM-PM
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:21:53 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id E8FC1C009; Wed, 22 May 2019 21:21:44 +0200 (CEST)
Date: Wed, 22 May 2019 21:21:29 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Bharath Vedartham <linux.bhar@gmail.com>
Message-ID: <20190522192129.GA30941@nautica>
References: <20190522191655.GA4657@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522191655.GA4657@bharath12345-Inspiron-5559>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hTWoB-000eFM-PM
Subject: Re: [V9fs-developer] [PATCH] 9p/cache.c: Fix memory leak in
 v9fs_cache_session_get_cookie
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Bharath Vedartham wrote on Thu, May 23, 2019:
> v9fs_cache_session_get_cookie assigns a random cachetag to
> v9ses->cachetag, if the cachetag is not assigned previously.
> 
> v9fs_random_cachetag allocates memory to v9ses->cachetag with kmalloc
> and uses scnprintf to fill it up with a cachetag.
> 
> But if scnprintf fails, v9ses->cachetag is not freed in the current code causing a memory leak.
> 
> Fix this by freeing v9ses->cachetag it v9fs_random_cachetag fails.
> 
> This was reported by syzbot, the link to the report is below:
> https://syzkaller.appspot.com/bug?id=f012bdf297a7a4c860c38a88b44fbee43fd9bbf3
> 
> Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com 
> Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
> ---
>  fs/9p/cache.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/9p/cache.c b/fs/9p/cache.c
> index 9eb3470..4463b91 100644
> --- a/fs/9p/cache.c
> +++ b/fs/9p/cache.c
> @@ -66,6 +66,7 @@ void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
>  	if (!v9ses->cachetag) {
>  		if (v9fs_random_cachetag(v9ses) < 0) {
>  			v9ses->fscache = NULL;
> +			kfree(v9ses->cachetag);

I would also reset v9ses->cachetag to NULL just in case,
v9fs_cache_session_get_cookie will use v9ses->cachetag as it is if it is
not null and you were leaving an invalid pointer there

I do not see any reason it could be called multiple times but
v9fs_cache_session_get_cookie does not return any error (void function)
so something later on could try to use that cachetag incorrectly later
on

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
