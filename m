Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD195EED6D
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 07:58:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odmYb-0003xt-TL;
	Thu, 29 Sep 2022 05:58:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odmYI-0003wv-7F
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 05:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NtNmFdRxvwgbfr1EXdnI44Kqw7lw7cvPbCIPWiR2zu8=; b=FlPilJqT90aaqc2FateFj2S3WG
 i57dhFVjjwtbZxDplYOurtb+Pz+4esGoOAah5IIMMtSjlvm3GqVzBwXXx2AwuLSoah5Z7Hl7wVlOG
 5B5PGsIniPKUxIl2yTfY9OTcqlF3CgbHdM5eM8orgt5H5he7MMLvQ8DVax0GhpkYUt2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NtNmFdRxvwgbfr1EXdnI44Kqw7lw7cvPbCIPWiR2zu8=; b=X0la/C/xTni+pf3M/QecVGJZs0
 0n9xDSIrIDa5vjsKVTr62pDiiCbpam8LM8r37DSipUwrid48EUD8ZS6AW7G6ilaaluf6xFQbziW01
 CuKi+gAd2uVOY0orLW99DLTI0i6QOeMj6TIHtpkMOdzklifJyNSwT35dlsY9mDtJC+/s=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odmYH-006HGN-Hm for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 05:57:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 21A866200E;
 Thu, 29 Sep 2022 05:57:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1615C433D6;
 Thu, 29 Sep 2022 05:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664431055;
 bh=p8rNpJp8zU2f+LbsfvWOTxZBK5/phXiTL+WknhTB4Lo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gEHxFa5zU/tt3q+/nIgySIYn6Jl9r1VtPjgWxRr8KsknsfZswJbU/GMFxWiLErnM7
 OcDn48nvnHIKYIHNDyrW3v0wFyXGQJEcUC6EKV+tk6KYkSfp2F8TktK7Jd/UYbfStP
 d8EdVaOSbQqppNehQg80NIC1gaX1PFWayEQ7fsv/8h7qmjoFVabVyHbmrAMAqrkIBc
 u4RPTbNjxT7+x27boUMZGF/CjSTopCtlpeu/a2typQeda55cJqtg1DjPS8O/HNs0Pw
 kil5CO9qhi6AW8XUJY0Fa4cjWrOrYi52LB01KOoKgP31Cla17gRTC15T/vFqYCJqd0
 SJ4sRDizey1Nw==
Date: Thu, 29 Sep 2022 08:57:31 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <YzUzyw9JE4lFWKo5@unreal>
References: <YzQc2yaDufjp+rHc@unreal>
 <20220928214417.1749609-1-asmadeus@codewreck.org>
 <20220928214417.1749609-2-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220928214417.1749609-2-asmadeus@codewreck.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 29, 2022 at 06:44:17AM +0900, Dominique Martinet
 wrote: > fcall cache was init'd last for some reason, but we actually allocate
 > some requests for the version check before that. > Moving [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odmYH-006HGN-Hm
Subject: Re: [V9fs-developer] [PATCH 2/2] 9p: client_create: init
 fcall_cache earlier
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
Cc: v9fs-developer@lists.sourceforge.net, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 29, 2022 at 06:44:17AM +0900, Dominique Martinet wrote:
> fcall cache was init'd last for some reason, but we actually allocate
> some requests for the version check before that.
> Moving the cache creation towards the start also makes p9_client_destroy's
> order match the allocation order, which might be easier to think about
> 
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
>  net/9p/client.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)

Please submit it properly. It is unclear to which series you are
referring.

> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 40b59431a566..1ea326e6e271 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -977,6 +977,17 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
>  	if (err < 0)
>  		goto out;
>  
> +	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
> +	 * followed by data accessed from userspace by read
> +	 * Note we do not check for failure here because the cache is
> +	 * optional; warning will be issued on dmesg for failure.
> +	 */
> +	clnt->fcall_cache =
> +		kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
> +					   0, 0, P9_HDRSZ + 4,
> +					   clnt->msize - (P9_HDRSZ + 4),
> +					   NULL);
> +

clnt->msize can be changed after call to ->create() if it is larger than clnt->trans_mod->maxsize).

>  	if (!clnt->trans_mod)
>  		clnt->trans_mod = v9fs_get_default_trans();
>  
> @@ -1016,15 +1027,6 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
>  	if (err)
>  		goto out;
>  
> -	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
> -	 * followed by data accessed from userspace by read
> -	 */
> -	clnt->fcall_cache =
> -		kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
> -					   0, 0, P9_HDRSZ + 4,
> -					   clnt->msize - (P9_HDRSZ + 4),
> -					   NULL);
> -
>  	return clnt;
>  
>  out:
> -- 
> 2.35.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
