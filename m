Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 358BD6574B5
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Dec 2022 10:36:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pASqs-000126-7D;
	Wed, 28 Dec 2022 09:35:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1pASqd-0000y6-S5
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Dec 2022 09:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xdaneX1g9ZuAPydKWERzO6TgeRTOijGBM1c/uJdZGG0=; b=eXibetWWlIQ2al9oheD8L9xhMc
 ecYsjEdqLE/JGR72om6BqeswMgPOGNKSxiyVv+EwOyebKIw1Zkz1LcxB8Fm5dAhVL5oCrRsIJrOav
 UFGLNrR+BCct8Vl+I7WkHGBOfKNe2jcUSZckkhpP+nblRXfuu4DYFuLxJ4NpC3afLxOk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xdaneX1g9ZuAPydKWERzO6TgeRTOijGBM1c/uJdZGG0=; b=P34Z2QFof+Bxl1QRrLKWpkeaaR
 7WyRmdDXm7ceLJobLBE0tb1apKWHx47BjCCOULD/uIlmPwLoRuvEVfCOAMQDnS9CKZynw0uBodO98
 nhqqt4Fo8DdRtXX9mvctoiy0L7X7oZJ+wQRRgr2iQI2w66gBvs5LfPx3dtr4+Q10GzEI=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pASqd-00FBkd-56 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Dec 2022 09:35:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0770BB8125D;
 Wed, 28 Dec 2022 09:35:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46BECC433EF;
 Wed, 28 Dec 2022 09:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672220134;
 bh=+sNc/TkmwLtCuF3WdXUxEZNFgs58QUzSnzN5GtPJVfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gWvaKSvMzqNgHPGYNKYYTD26RNYZg+26+xbce1Ck4DozO6BjV8y0NGM/4bFQZWTlt
 4BiV/ZviwuyM+yd13FwXa1jyVhfOQ6oqXo+vvHYmOjNEpaIP+CaGwO3bB4rk0yJ6HU
 EO5GgFkNDEZ3323L9Q4H9VtypC3SsHmgZJuPGfanDeJMhXQ9CIzH5kjNy+Pt4PIv32
 Q6+EYKrr29hKBnwDO7AHlnZjgHDWDE5YgNJ6jvsOzCyMGTY8BOunaj3DZpt/5hqtq9
 rgP8JUw/KS95TVcKijBY4N1VEuUhAd8zuCgJ/c3XxGsa+k3YxIYdi35dE9tZNZ9ayI
 ArmL/BRq2HhrQ==
Date: Wed, 28 Dec 2022 11:35:30 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Zhengchao Shao <shaozhengchao@huawei.com>
Message-ID: <Y6wN4uBZwPV+rKXi@unreal>
References: <20221220031223.3890143-1-shaozhengchao@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221220031223.3890143-1-shaozhengchao@huawei.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Dec 20, 2022 at 11:12:23AM +0800,
 Zhengchao Shao wrote:
 > When down_interruptible() failed in rdma_request(), receive dma buffer
 > is not unmapped. Add unmap action to error path. > > Fixes: f [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pASqd-00FBkd-56
Subject: Re: [V9fs-developer] [PATCH] 9p/rdma: unmap receive dma buffer in
 rdma_request()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, yuehaibing@huawei.com, tom@opengridcomputing.com,
 edumazet@google.com, weiyongjun1@huawei.com, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Dec 20, 2022 at 11:12:23AM +0800, Zhengchao Shao wrote:
> When down_interruptible() failed in rdma_request(), receive dma buffer
> is not unmapped. Add unmap action to error path.
> 
> Fixes: fc79d4b104f0 ("9p: rdma: RDMA Transport Support for 9P")
> Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
> ---
>  net/9p/trans_rdma.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
> index 83f9100d46bf..da83023fecbf 100644
> --- a/net/9p/trans_rdma.c
> +++ b/net/9p/trans_rdma.c
> @@ -499,6 +499,8 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
>  
>  	if (down_interruptible(&rdma->sq_sem)) {
>  		err = -EINTR;
> +		ib_dma_unmap_single(rdma->cm_id->device, c->busa,
> +				    c->req->tc.size, DMA_TO_DEVICE);
>  		goto send_error;
>  	}

It is not the only place where ib_dma_unmap_single() wasn't called.
Even at the same function if ib_post_send() fails, the unmap is not
called. Also post_recv() is missing call to ib_dma_unmap_single() too.

Thanks

>  
> -- 
> 2.34.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
