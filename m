Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 691C03E5C59
	for <lists+v9fs-developer@lfdr.de>; Tue, 10 Aug 2021 15:56:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mDSEj-0002YY-4o; Tue, 10 Aug 2021 13:56:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <leon@kernel.org>) id 1mDSEi-0002YS-81
 for v9fs-developer@lists.sourceforge.net; Tue, 10 Aug 2021 13:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O+SUcBxMyXtz0rKJ+0rErjGl14KcqUaTSHVDgKPU8q4=; b=fqkgZMYmJer/ySY+63MwL3FjRq
 5UxFVplw/sdQhTrAuYN4lPUdXoVVBwRv3k67ykQ9/xCC6bWRwEtQ70EnsRgV8JNi7XfCodsufCyBh
 kTlmDOWn717t9bKI4rfYYGFvLIGl5jUS9VZFPuFC6cSrxf/Fz913ot86OUaOX0zqyrrc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O+SUcBxMyXtz0rKJ+0rErjGl14KcqUaTSHVDgKPU8q4=; b=BkgnxUksRZHrAD/wjrpzdtItlG
 8auxMBGWOC+yWQpEBIvb5QuhJOEuDL+ZSIP967zcnExTD8pXNIL0P3HGDivrHZOVQ2zlQkqwX6im1
 3qlpmPnSM+337rmUYVMwbd3uUxxnrYJJrh+bEBtdkha5gSaChVo620UkEpBuchUVYJoU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDSEZ-0002I2-00
 for v9fs-developer@lists.sourceforge.net; Tue, 10 Aug 2021 13:56:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33AEB61008;
 Tue, 10 Aug 2021 13:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628603746;
 bh=fZas9mDhDErfOtLmKZvforBNwmzZa6S4b9MrrQS7Vo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z69p3OrbA2jvpVujt4ajJG2902DLmenfK6bEhO7JbATLSohsG6UOAJ9ArCO9ViH0O
 ThFenw7cKQFgzx2EnW5161a1acXEQxpywJ//Jn9KiuqXu91oaGi8sZUQ+jQ6m3IU2M
 3qtd6n+B2xS1n5qwogQPjtx7dtB/VjeZZSbC10xNUcfY0k3stSE9mQUoO5GuGT1A/E
 XeMMWY8SLdD8ckN8z7iNWgbkv6qr+dxEp9N/k2CwgsrgEY2vCK4X2DHigfNYgXLTAM
 W3Df5ro+eU5uYVuYlrMqHRfwHJYKWd3czJRmnwZGotVVrpknbzI4vYCpHxLGjpzi9A
 mKF/BcpZxgvZg==
Date: Tue, 10 Aug 2021 16:55:42 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Tuo Li <islituo@gmail.com>
Message-ID: <YRKFXpilGXnKZ2yH@unreal>
References: <20210810132007.296008-1-islituo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810132007.296008-1-islituo@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDSEZ-0002I2-00
Subject: Re: [V9fs-developer] [PATCH] net: 9p: Fix possible null-pointer
 dereference in p9_cm_event_handler()
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
 linux-kernel@vger.kernel.org, baijiaju1990@gmail.com, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, TOTE Robot <oslab@tsinghua.edu.cn>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Aug 10, 2021 at 06:20:07AM -0700, Tuo Li wrote:
> The variable rdma is checked when event->event is equal to 
> RDMA_CM_EVENT_DISCONNECTED:
>   if (rdma)
> 
> This indicates that it can be NULL. If so, a null-pointer dereference will 
> occur when calling complete():
>   complete(&rdma->cm_done);
> 
> To fix this possible null-pointer dereference, calling complete() only 
> when rdma is not NULL.

You need to explain how is it possible and blindly set if () checks.
I would say first "if (rdma)" is not needed, but don't know for sure.

> 
> Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
> Signed-off-by: Tuo Li <islituo@gmail.com>
> ---
>  net/9p/trans_rdma.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
> index af0a8a6cd3fd..fb3435dfd071 100644
> --- a/net/9p/trans_rdma.c
> +++ b/net/9p/trans_rdma.c
> @@ -285,7 +285,8 @@ p9_cm_event_handler(struct rdma_cm_id *id, struct rdma_cm_event *event)
>  	default:
>  		BUG();
>  	}
> -	complete(&rdma->cm_done);
> +	if (rdma)
> +		complete(&rdma->cm_done);
>  	return 0;
>  }
>  
> -- 
> 2.25.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
