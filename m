Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1367D6329A7
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 17:36:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ox9mG-0000c1-Ik;
	Mon, 21 Nov 2022 16:36:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ox9mF-0000bt-Ex
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 16:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Jdq67axWtUO34awWLIaNKXOMCvzA9J92byS0Y3jkdI=; b=GHdgx0PpiGWU9oPjD3hy7+0WU4
 tncrvIYk2MoS9WTFgPQxiQfHXsj3o3jzLQOH9ksWyqpeIJ5iJ9W7oPAq9580GSVDsYRQLCBUYKTFF
 EfwWVExZETPDVbGzQ7YSk1GeieNlo/FsenTmOlhaRhz3QLYcauIMPoLtfUWpy4NLw868=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Jdq67axWtUO34awWLIaNKXOMCvzA9J92byS0Y3jkdI=; b=F6ZI4DJssEpP1+efOPDZtLWgeN
 8NQFpDqVDmr/qXkhyomzOhlmvv8HtCcXQIIONdGQc0xbtD/0NI5HF/Q+RMiytwvySje09R69fY4q9
 wBD9280A8pL9z6M9xNmbqYWFYrDISEXIy09UUXh/aPaX5B8iwDsAB8sbGR/MxTNmRmIg=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ox9mD-0082Si-AQ for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 16:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=6Jdq67axWtUO34awWLIaNKXOMCvzA9J92byS0Y3jkdI=; b=Sfn/BmoyQJaLmjkFqMzo6E3ccw
 9w8vK8RT339KYN4on2o/f89RERCq2lJXGDD6W1oc67dTSqp4n2WR9UcPOMyIJTwgGP84au8H4B1Yl
 Fz9P0MyaGGwTKNJq4E/SZL8iWbh4m6fHfsKdmuh0i3OXHKkYoV80OMDBMyxaMy6M7EUMwYs6X3SAE
 QVzLw/42djImpPeX9KJb3lsuRNg2hH8n/v2zjH+EGdUD93OhPcuqLkLtZMY8VdQ8uyT93Gg5zR8pH
 FMbI2mAOgs3X+nWvKNZJn6hRaEqdDI5g7m9xVNUJcxna9wmE9T0uMnqhupuOmZF2BGA4PaCFtWZ/U
 +2JYYWwBhz0yaxROhm2UxtEJlU2vTM01S/ruQmneuNKzGLgD4pgR4ihvUnaxNtspFIy0o4r3NgN9h
 mmv7Otaq0dLEyW8ZlPBiI3zG7jf71TJQyKpXIuG8cJXPN3Lzs/lnQE5oiCVZ8VQ6YDIkLc6FnS6og
 cu9re7un9iUXBdoqFrXs6PeCIcqKKQlHFrUOwKcBS8cgpArcaoXFfd+L3PsEMZJRO8n6iwN/lGZAC
 Ic+aLgyZSh+zYrLTiVAooNlOAxIbtuNHaZcykXyUb4WZuaqyPgpPFeE072Rm4hdMPHVzzLecKUaCF
 AUzPXci8K+yTYg5hYGclUDlp2nCrwSWFx6PYUHIxw=;
To: Stefano Stabellini <sstabellini@kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 21 Nov 2022 17:35:56 +0100
Message-ID: <37091478.n1eaNAWdo1@silver>
In-Reply-To: <20221118135542.63400-1-asmadeus@codewreck.org>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Friday, November 18,
 2022 2:55:41 PM CET Dominique Martinet
 wrote: > trans_xen did not check the data fits into the buffer before copying
 > from the xen ring, but we probably should. > Add a check [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ox9mD-0082Si-AQ
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for
 buffer size
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Friday, November 18, 2022 2:55:41 PM CET Dominique Martinet wrote:
> trans_xen did not check the data fits into the buffer before copying
> from the xen ring, but we probably should.
> Add a check that just skips the request and return an error to
> userspace if it did not fit
> 
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
> 
> This comes more or less as a follow up of a fix for trans_fd:
> https://lkml.kernel.org/r/20221117091159.31533-1-guozihua@huawei.com
> Where msize should be replaced by capacity check, except trans_xen
> did not actually use to check the size fits at all.
> 
> While we normally trust the hypervisor (they can probably do whatever
> they want with our memory), a bug in the 9p server is always possible so
> sanity checks never hurt, especially now buffers got drastically smaller
> with a recent patch.
> 
> My setup for xen is unfortunately long dead so I cannot test this:
> Stefano, you've tested v9fs xen patches in the past, would you mind
> verifying this works as well?
> 
>  net/9p/trans_xen.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> index b15c64128c3e..66ceb3b3ae30 100644
> --- a/net/9p/trans_xen.c
> +++ b/net/9p/trans_xen.c
> @@ -208,6 +208,14 @@ static void p9_xen_response(struct work_struct *work)
>  			continue;
>  		}
>  
> +		if (h.size > req->rc.capacity) {
> +			dev_warn(&priv->dev->dev,
> +				 "requested packet size too big: %d for tag %d with capacity %zd\n",
> +		                 h.size, h.tag, rreq->rc.capacity);
> +			req->status = REQ_STATUS_ERROR;
> +			goto recv_error;
> +		}
> +

Looks good (except of s/rreq/req/ mentioned by Stefano already).

>  		memcpy(&req->rc, &h, sizeof(h));

Is that really OK?

1. `h` is of type xen_9pfs_header and declared as packed, whereas `rc` is of 
   type p9_fcall not declared as packed.

2. Probably a bit dangerous to assume the layout of xen_9pfs_header being in
   sync with the starting layout of p9_fcall without any compile-time 
   assertion?

>  		req->rc.offset = 0;
>  
> @@ -217,6 +225,7 @@ static void p9_xen_response(struct work_struct *work)
>  				     masked_prod, &masked_cons,
>  				     XEN_9PFS_RING_SIZE(ring));
>  
> +recv_error:
>  		virt_mb();
>  		cons += h.size;
>  		ring->intf->in_cons = cons;
> 





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
