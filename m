Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A555A694ECB
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 19:06:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRdDj-0007g4-Sd;
	Mon, 13 Feb 2023 18:06:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pRdDi-0007fx-GY
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 18:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=akMfePs3N2PcAvu5Nq/PqkDdQ9WQCjfhn/rZvX1a8+Y=; b=ZqELJoHKkLNw4GHUNtQDt+D6nP
 UTVqj4XP3jM91VY7GgwbVSJy05CF3GIpJn1TfOFcR9UoW/xXdEf6oWiUc6b3cChunH0FKD7+CnHgI
 9ctz9mA8NWp+5sgoZsApirlBAtU/BEJ5ozIXoIfqeP16/003jx9sp5VqF8yymlWKcrC4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=akMfePs3N2PcAvu5Nq/PqkDdQ9WQCjfhn/rZvX1a8+Y=; b=LOSgQpAzxYiqCsU8NQZcvSBbd9
 VT48L7rJijkgmL0N3etBUOWT1MIxX8iKBihppkuLXgbH0LJEZLoEUT8cgaPekBbsYyKeZmuuYGp3L
 DPj+ljeNigZ9qgFbk7QJC79dURfwsOZtEjAWkfOtdAA5R5JzZoIMgXnwa4sKKUk5PIGo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pRdDf-003I0X-DN for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 18:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=akMfePs3N2PcAvu5Nq/PqkDdQ9WQCjfhn/rZvX1a8+Y=; b=hD5Rrsg4X5+wBTUwx87Szs44MO
 jvYYTSpla2cylioms7AQLxd2hNB2pRzr5O5lLFMqlUFZtJj5gaxAstxrdDZ8PSckbAkhrXAFp5zmu
 jOV0Ywqbvazg6Ucz/zn2BnuVTrZG9cSqTX67AvUubJNm4MfylRtIsQfhJnSlx4zDM4oU8NEmgPRi7
 JAfmp80e6KhoaImcPCd4zIYgIUjLNTejgA+6xWfF6P9fR0HOU+tJ0v8ct0PdhDTQWJrCBgR5fDGDj
 RwCXQcUXGwow0OhM7YdBa1Azr8IMg/WPX2Q8s8r/gSronSQBBxjPvbs+4OY/sdM5OA+UCnCMPbIxk
 A/8jlxrQ+JDtfcLdRWheKo8s7WznMw77KB08jKCqRby1QVMGNLlmqyHavZ7sr0P6HB2sM+s+B8KQw
 VW3TCwK2CYLXgTEvCBAVIrn8EMsQCuVA/xOwTM/x5qMc7M/33fuXvNa8p0CrS6XBavbnlK6cX/xEj
 akV4F6YXSBAEgrD6ncL/LBYApMr5nZr2koKyZKb7FxDEpsVMnoUiE76+TQ5FlK6eCAd0B8HFrE2ZW
 JUxEFAsp+wPjuvsUJ7SRwdy899cHRwi3qx6VuaQYR8ygm5lIvbZxNEXN80TsqSjNpOBO/BBuvJcnm
 pH6ymD+Z0SAA8b3P2MD253vJUSYY/X1j+NYW0tQ4Q=;
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 13 Feb 2023 19:06:13 +0100
Message-ID: <2221747.x32gLWZWRm@silver>
In-Reply-To: <20230211075023.137253-3-asmadeus@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <20230211075023.137253-3-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, February 11,
 2023 8:50:20 AM CET Dominique Martinet
 wrote: > The async RPC code will also use an automatic size and this bit
 of code > can be shared, as p9_tag_alloc still knows what clie [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pRdDf-003I0X-DN
Subject: Re: [V9fs-developer] [PATCH 2/5] 9p/net: share pooled receive
 buffers size exception in p9_tag_alloc
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Pengfei Xu <pengfei.xu@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, February 11, 2023 8:50:20 AM CET Dominique Martinet wrote:
> The async RPC code will also use an automatic size and this bit of code
> can be shared, as p9_tag_alloc still knows what client we alloc for.
> 
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

> ---
>  net/9p/client.c | 23 +++++++++++------------
>  1 file changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 53ebd07c36ee..4e5238db4a7a 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -282,8 +282,15 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
>  			    t_size ?: p9_msg_buf_size(c, type, fmt, apc));
>  	va_end(apc);
>  
> -	alloc_rsize = min_t(size_t, c->msize,
> -			    r_size ?: p9_msg_buf_size(c, type + 1, fmt, ap));
> +	/* Currently RDMA transport is excluded from response message size
> +	 * optimization, as it cannot cope with it due to its pooled response
> +	 * buffers (this has no impact on request size)
> +	 */
> +	if (r_size == 0 && c->trans_mod->pooled_rbuffers)
> +		alloc_rsize = c->msize;
> +	else
> +		alloc_rsize = min_t(size_t, c->msize,
> +				    r_size ?: p9_msg_buf_size(c, type + 1, fmt, ap));
>  
>  	if (!req)
>  		return ERR_PTR(-ENOMEM);
> @@ -728,18 +735,10 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
>  	int sigpending, err;
>  	unsigned long flags;
>  	struct p9_req_t *req;
> -	/* Passing zero for tsize/rsize to p9_client_prepare_req() tells it to
> -	 * auto determine an appropriate (small) request/response size
> -	 * according to actual message data being sent. Currently RDMA
> -	 * transport is excluded from this response message size optimization,
> -	 * as it would not cope with it, due to its pooled response buffers
> -	 * (using an optimized request size for RDMA as well though).
> -	 */
> -	const uint tsize = 0;
> -	const uint rsize = c->trans_mod->pooled_rbuffers ? c->msize : 0;
>  
>  	va_start(ap, fmt);
> -	req = p9_client_prepare_req(c, type, tsize, rsize, fmt, ap);
> +	/* auto determine an appropriate request/response size */
> +	req = p9_client_prepare_req(c, type, 0, 0, fmt, ap);
>  	va_end(ap);
>  	if (IS_ERR(req))
>  		return req;
> 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
