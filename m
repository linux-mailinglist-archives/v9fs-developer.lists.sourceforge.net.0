Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB17694E58
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 18:47:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRcvh-0007mX-3q;
	Mon, 13 Feb 2023 17:47:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pRcvf-0007mQ-3R
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 17:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A5df1yTIZD9wAyLTiI9WcLrb+WZ3/VTbUZ/qbUROp8w=; b=lDRbqvuius6TaNJjDkw9JtorZ6
 g1A5fKIctZXD9ZjQYzDjXWE13j4z+QDCcdNeOViV8pEfiFyFfNhS5JEt202hQc9+EaA/DtWBuXmFn
 CaQd4G88k4W1lrHfNvCKlZJiZoulHHNN/PIP27WGXy3mPuqoxRoSyce6ySZTlvD//QgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A5df1yTIZD9wAyLTiI9WcLrb+WZ3/VTbUZ/qbUROp8w=; b=nVGEsr6WDa+px/ZWBKCQZaW3VI
 yPy4gE6hghfDPe37oslXvVLAOf4gwFzXYNeMjzaz58GHl8jysHqgKROQzX6XkN41QS7yH2CHiZDCj
 OMV4bO8B01oPybIwwR3BF0qJDNFyLIRnYCdkams88wE2PqoVXV5ykicP2cYHVd+ltw54=;
Received: from [5.189.157.229] (helo=kylie.crudebyte.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pRcva-003FFF-1X for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 17:47:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=A5df1yTIZD9wAyLTiI9WcLrb+WZ3/VTbUZ/qbUROp8w=; b=C4K8k+rtBUYTFU+iQu5F+kYFhj
 2DZHAIyak88UeJ7ohRtfc+kj9gm6eOtZq/BmFAeDtDFfnUTLW9Hmlr4F5VQVa606yjkMuKaNDRzCT
 6EsaOhaguz0wZ+5YpXB1dwsIa9zC6KoMfzhSA5Gtdik1pSjrk7roWUADvmU8Zxn8akghvcJhKdCt2
 uBjDVTuyJelFnyfkNfSqxmK14O3xJJ2qh8t9J8bLi3B2S3M1QZWJ0l2PDItEzQImdnCQ7ysybjDb/
 iNlm3P3KoB9bqll6rYKruGF1g1Q1KgWm8gOMMrT9Tl4vcSKT7hXIFZmMr6WR4IVIxOAx+E4m8AePo
 W3VvsuQbAz8k5zL4q84qv6OQlR4o08b4SE1vLsOPK9G+VwrSFpRXifkPKd3/CjoWVOlNJlhByez8x
 /DR1/l9M3XmT5sJ5201ztvBeUy1SliOxNbW+c2MYAJfol0HOwpYC4Kkl14MkoKbmzsKVlRGbM4Tx/
 drx1FLUAfU56Owji1zc65TyfcYo6i74oWzSPS1vCfcl82ErkmLu24pDtduCha4Xl68Khr1U0bVWn+
 I4gzh+qQ6xbizvrZUpvPWXRBG8b8NMPm8yMsV0X2DHs2fGSur2rIg+4YH4KaHffWpYyc4C91+sUzz
 1EaroH3VDG5E/rJ7UcT7V/SRBT2iQo61/K3JLA3uc=;
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 13 Feb 2023 18:46:13 +0100
Message-ID: <1847623.mNM4OxGzmo@silver>
In-Reply-To: <20230211075023.137253-2-asmadeus@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <20230211075023.137253-2-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, February 11,
 2023 8:50:19 AM CET Dominique Martinet
 wrote: > This commit containers no code change: > - move p9_fid_* higher
 in code as p9_fid_destroy will be used > in async callback I would have just
 added p9_fid_destroy()'s prototype earlier in code instead of moving stuff
 around: Content analysis details:   (1.1 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pRcva-003FFF-1X
Subject: Re: [V9fs-developer] [PATCH 1/5] 9p/net: move code in preparation
 of async rpc
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

On Saturday, February 11, 2023 8:50:19 AM CET Dominique Martinet wrote:
> This commit containers no code change:
>  - move p9_fid_* higher in code as p9_fid_destroy will be used
> in async callback

I would have just added p9_fid_destroy()'s prototype earlier in code instead
of moving stuff around:

static void p9_fid_destroy(struct p9_fid *fid);

Because that would not mess with 'git blame' history. But anyway, it's just
restructuring, no behaviour change, so:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  - move p9_client_flush as it will no longer call p9_client_rpc
> and can simplify forward declaration a bit later
> 
> This just simplifies the next commits to make diffs cleaner.
> 
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
>  net/9p/client.c | 198 ++++++++++++++++++++++++------------------------
>  1 file changed, 99 insertions(+), 99 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 622ec6a586ee..53ebd07c36ee 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -428,6 +428,66 @@ static void p9_tag_cleanup(struct p9_client *c)
>  	rcu_read_unlock();
>  }
>  
> +static struct p9_fid *p9_fid_create(struct p9_client *clnt)
> +{
> +	int ret;
> +	struct p9_fid *fid;
> +
> +	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
> +	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
> +	if (!fid)
> +		return NULL;
> +
> +	fid->mode = -1;
> +	fid->uid = current_fsuid();
> +	fid->clnt = clnt;
> +	refcount_set(&fid->count, 1);
> +
> +	idr_preload(GFP_KERNEL);
> +	spin_lock_irq(&clnt->lock);
> +	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
> +			    GFP_NOWAIT);
> +	spin_unlock_irq(&clnt->lock);
> +	idr_preload_end();
> +	if (!ret) {
> +		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
> +		return fid;
> +	}
> +
> +	kfree(fid);
> +	return NULL;
> +}
> +
> +static void p9_fid_destroy(struct p9_fid *fid)
> +{
> +	struct p9_client *clnt;
> +	unsigned long flags;
> +
> +	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
> +	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
> +	clnt = fid->clnt;
> +	spin_lock_irqsave(&clnt->lock, flags);
> +	idr_remove(&clnt->fids, fid->fid);
> +	spin_unlock_irqrestore(&clnt->lock, flags);
> +	kfree(fid->rdir);
> +	kfree(fid);
> +}
> +
> +/* We also need to export tracepoint symbols for tracepoint_enabled() */
> +EXPORT_TRACEPOINT_SYMBOL(9p_fid_ref);
> +
> +void do_trace_9p_fid_get(struct p9_fid *fid)
> +{
> +	trace_9p_fid_ref(fid, P9_FID_REF_GET);
> +}
> +EXPORT_SYMBOL(do_trace_9p_fid_get);
> +
> +void do_trace_9p_fid_put(struct p9_fid *fid)
> +{
> +	trace_9p_fid_ref(fid, P9_FID_REF_PUT);
> +}
> +EXPORT_SYMBOL(do_trace_9p_fid_put);
> +
>  /**
>   * p9_client_cb - call back from transport to client
>   * @c: client state
> @@ -570,6 +630,45 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
>  	return err;
>  }
>  
> +static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
> +					      int8_t type, uint t_size, uint r_size,
> +					      const char *fmt, va_list ap)
> +{
> +	int err;
> +	struct p9_req_t *req;
> +	va_list apc;
> +
> +	p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);
> +
> +	/* we allow for any status other than disconnected */
> +	if (c->status == Disconnected)
> +		return ERR_PTR(-EIO);
> +
> +	/* if status is begin_disconnected we allow only clunk request */
> +	if (c->status == BeginDisconnect && type != P9_TCLUNK)
> +		return ERR_PTR(-EIO);
> +
> +	va_copy(apc, ap);
> +	req = p9_tag_alloc(c, type, t_size, r_size, fmt, apc);
> +	va_end(apc);
> +	if (IS_ERR(req))
> +		return req;
> +
> +	/* marshall the data */
> +	p9pdu_prepare(&req->tc, req->tc.tag, type);
> +	err = p9pdu_vwritef(&req->tc, c->proto_version, fmt, ap);
> +	if (err)
> +		goto reterr;
> +	p9pdu_finalize(c, &req->tc);
> +	trace_9p_client_req(c, type, req->tc.tag);
> +	return req;
> +reterr:
> +	p9_req_put(c, req);
> +	/* We have to put also the 2nd reference as it won't be used */
> +	p9_req_put(c, req);
> +	return ERR_PTR(err);
> +}
> +
>  static struct p9_req_t *
>  p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...);
>  
> @@ -613,45 +712,6 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
>  	return 0;
>  }
>  
> -static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
> -					      int8_t type, uint t_size, uint r_size,
> -					      const char *fmt, va_list ap)
> -{
> -	int err;
> -	struct p9_req_t *req;
> -	va_list apc;
> -
> -	p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);
> -
> -	/* we allow for any status other than disconnected */
> -	if (c->status == Disconnected)
> -		return ERR_PTR(-EIO);
> -
> -	/* if status is begin_disconnected we allow only clunk request */
> -	if (c->status == BeginDisconnect && type != P9_TCLUNK)
> -		return ERR_PTR(-EIO);
> -
> -	va_copy(apc, ap);
> -	req = p9_tag_alloc(c, type, t_size, r_size, fmt, apc);
> -	va_end(apc);
> -	if (IS_ERR(req))
> -		return req;
> -
> -	/* marshall the data */
> -	p9pdu_prepare(&req->tc, req->tc.tag, type);
> -	err = p9pdu_vwritef(&req->tc, c->proto_version, fmt, ap);
> -	if (err)
> -		goto reterr;
> -	p9pdu_finalize(c, &req->tc);
> -	trace_9p_client_req(c, type, req->tc.tag);
> -	return req;
> -reterr:
> -	p9_req_put(c, req);
> -	/* We have to put also the 2nd reference as it won't be used */
> -	p9_req_put(c, req);
> -	return ERR_PTR(err);
> -}
> -
>  /**
>   * p9_client_rpc - issue a request and wait for a response
>   * @c: client session
> @@ -838,66 +898,6 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
>  	return ERR_PTR(safe_errno(err));
>  }
>  
> -static struct p9_fid *p9_fid_create(struct p9_client *clnt)
> -{
> -	int ret;
> -	struct p9_fid *fid;
> -
> -	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
> -	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
> -	if (!fid)
> -		return NULL;
> -
> -	fid->mode = -1;
> -	fid->uid = current_fsuid();
> -	fid->clnt = clnt;
> -	refcount_set(&fid->count, 1);
> -
> -	idr_preload(GFP_KERNEL);
> -	spin_lock_irq(&clnt->lock);
> -	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
> -			    GFP_NOWAIT);
> -	spin_unlock_irq(&clnt->lock);
> -	idr_preload_end();
> -	if (!ret) {
> -		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
> -		return fid;
> -	}
> -
> -	kfree(fid);
> -	return NULL;
> -}
> -
> -static void p9_fid_destroy(struct p9_fid *fid)
> -{
> -	struct p9_client *clnt;
> -	unsigned long flags;
> -
> -	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
> -	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
> -	clnt = fid->clnt;
> -	spin_lock_irqsave(&clnt->lock, flags);
> -	idr_remove(&clnt->fids, fid->fid);
> -	spin_unlock_irqrestore(&clnt->lock, flags);
> -	kfree(fid->rdir);
> -	kfree(fid);
> -}
> -
> -/* We also need to export tracepoint symbols for tracepoint_enabled() */
> -EXPORT_TRACEPOINT_SYMBOL(9p_fid_ref);
> -
> -void do_trace_9p_fid_get(struct p9_fid *fid)
> -{
> -	trace_9p_fid_ref(fid, P9_FID_REF_GET);
> -}
> -EXPORT_SYMBOL(do_trace_9p_fid_get);
> -
> -void do_trace_9p_fid_put(struct p9_fid *fid)
> -{
> -	trace_9p_fid_ref(fid, P9_FID_REF_PUT);
> -}
> -EXPORT_SYMBOL(do_trace_9p_fid_put);
> -
>  static int p9_client_version(struct p9_client *c)
>  {
>  	int err = 0;
> 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
