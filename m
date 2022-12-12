Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D85E64A124
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 Dec 2022 14:35:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p4iyG-0008It-AD;
	Mon, 12 Dec 2022 13:35:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p4iyF-0008Ii-HI
 for v9fs-developer@lists.sourceforge.net;
 Mon, 12 Dec 2022 13:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HEmAqWujrVxNCQMKl7ptRdTCY1TyWIcI8oh1636jxcU=; b=ML4PPZbfXi/7GeTFAR7viy749r
 vbk/sMQy41LG3I4FOGhGvMm0N527XRJE1cniyGgjnfjGcr9LDtGUS309ogEPUlKFreyBRx+bLhzTL
 zoR0VZPTAYcpLIy+lYL47bQpDLiO+FKZfyfYL/y8iEH7ShKu4ozeWomiWWFkkGEz+ly4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HEmAqWujrVxNCQMKl7ptRdTCY1TyWIcI8oh1636jxcU=; b=QkdtVbBG5qR/Mk6Eg7MZre//ob
 6m4BMcbNjtVvPDJzdih/y3yyJP0LxKZEtib9KS3C2Sk497qfb6brQrgCdiT9vOGhrn3ii46GCXsAN
 kDg4GSxok7Erl2ribHRa+BRgHwjSVEyNNoVCEtyW07ceTBLlK/X9aBcjm+q93Pt3trKo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p4iyD-0005ev-Lh for v9fs-developer@lists.sourceforge.net;
 Mon, 12 Dec 2022 13:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=HEmAqWujrVxNCQMKl7ptRdTCY1TyWIcI8oh1636jxcU=; b=F52oo6ztaWYvJ/v3/RSAYaULwe
 +PhRv7I8Uq6Uxxx5wQleZfm4qd0DEszRDRnwUFuRyd1mCPg6N1QdL+lhT4yFngIvLqlDsFb/125KD
 nYJqUCjUtivSA2jcfebm8VXNRmBrNgJwg/tcy9i3yb98QArdi2kg2rNk/H++5IDOeEgJoiqwWlvsd
 8TCZfRN26Sx0hXUuBqPrXbylEwqk23t11R2Ap35ESplCj6kvro/Y2j0OgJz3DuQ0BiZ0sL+MxKy3i
 UIqxxI4g2z7r0T3fp1KHm2IarvNkMnu/FjXESN/+T8iUgJDaVT2v/5qCy+FIZDtyIqcu088QMCv2i
 bJ2FWmuZ0yQAFqwi0Yna+sVomriQbUda2ltppEUsYn9ZdaglMW6/CAuAuLxwm8cY5D32NaF6ls1nA
 ZSDtjEb/vUh34DBx7EwH4YQbAmCFenGX2R61xXdnyl7dUUvxr1yigzTljr43MxdM4b4OW/7hkGK7Q
 5uegmpdk+9SI7ptFLMPeh8gmRNtkdtBZvUEUJ8j7vS0OHxcV6XaX/MNkLOyBUV7lSTjQC0e2W0Amo
 W+7973zZnAV0WsQ8AQfzVo/I7d5cA743t4tWaypgry7de6kHliQ7TN+E0GMus+oGGIRO12fKO/UPC
 SRwYFgKvHxZJF7k/ExW+XoWuQv6dZ1SuuQfSS3W10=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 12 Dec 2022 14:35:39 +0100
Message-ID: <21422678.bhv4C0q8Fj@silver>
In-Reply-To: <20221210001044.534859-1-asmadeus@codewreck.org>
References: <20221210001044.534859-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, December 10,
 2022 1:10:44 AM CET Dominique Martinet
 wrote: > The request receiving thread writes into request then marks the
 request > valid in p9_client_cb by setting status after a writ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p4iyD-0005ev-Lh
Subject: Re: [V9fs-developer] [PATCH] 9p/virtio: add a read barrier in
 p9_virtio_zc_request
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
Cc: v9fs-developer@lists.sourceforge.net, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, December 10, 2022 1:10:44 AM CET Dominique Martinet wrote:
> The request receiving thread writes into request then marks the request
> valid in p9_client_cb by setting status after a write barrier.
> 
> p9_virtio_zc_request must like p9_client_rpc issue a read barrier after
> getting notified of the new request status before reading other request
> files.
> 
> (This has been noticed while fixing the usage of READ/WRITE_ONCE macros
> for request status)
> 
> Link: https://lkml.kernel.org/r/167052961.MU3OA6Uzks@silver
> Reported-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
>  net/9p/trans_virtio.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 3c27ffb781e3..98425c63b3c3 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -533,6 +533,12 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
>  	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
>  	err = wait_event_killable(req->wq,
>  			          READ_ONCE(req->status) >= REQ_STATUS_RCVD);
> +
> +	/* Make sure our req is coherent with regard to updates in other
> +	 * threads - echoes to wmb() in the callback like p9_client_rpc
> +	 */
> +	smp_rmb();
> +

Oh, I had p9_client_zc_rpc() for this in mind, but I see why you chose this
place in p9_virtio_zc_request() instead. LGTM

I also made some tests to check whether this barrier would hurt performance,
but I measured no difference. So this should be good to go:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  	// RERROR needs reply (== error string) in static data
>  	if (READ_ONCE(req->status) == REQ_STATUS_RCVD &&
>  	    unlikely(req->rc.sdata[4] == P9_RERROR))
> 





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
