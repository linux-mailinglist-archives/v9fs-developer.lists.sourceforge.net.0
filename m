Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF3D633AA9
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 11:58:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxQzA-0002Z0-IE;
	Tue, 22 Nov 2022 10:58:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oxQz9-0002Yt-9R
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 10:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFmQ4BHqkfYXHJbxs2dTDkAt9Y6OhHoJPxA7yM9/MD0=; b=UzRH3yBOZh8AFJUyTjJYZWBYOj
 VcwUEci3RcL9w5nYp1XA0EDtXjXsnRI9KSF6gt7nELb/1UVGJ7TbG+O5gBwa0ejCqA22QaBTzuz7c
 vL5klJeKILQByBUysp0RTDDcE/I7LhKDDBoHzAZMdEnAhL2/Vc6tReFQUwlbkRYMKx0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NFmQ4BHqkfYXHJbxs2dTDkAt9Y6OhHoJPxA7yM9/MD0=; b=Po92NatEqvD2VNs9oMHWMVEDbE
 rn/iN7AhHBBkggl8KrK6mPJ+lpQdvPTSHZ/bc6fQmRQBgXmn+x1ZLMLNat7GUoEGGkGVxLalApQkg
 Dt2yXLXpzm+4R+uQIS8wFllyCXfxIcn8sOHlasQ55v20w0p07OVVW1HMkItXJIEnUIy4=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxQz6-0001iM-2C for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 10:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=NFmQ4BHqkfYXHJbxs2dTDkAt9Y6OhHoJPxA7yM9/MD0=; b=jX5AbsTOTPWw97x7bnntdg6Lmp
 wB9CV0UkXgWqIYIaWdWNtep50iCxoweH1Bw3Z70pmgb4IxkMp5QinylflkFiG3BNkwKZ0gNXJePmy
 TMD+pd2zOCgszFCscGuEbG3QvEm1A8LHOBhbgyHhnHL23kXjm+35L6utQZdbSohCgkQBN9m1HwJKY
 p3vUAd8asloTPM1xYK5C77OfwdVmdIhWGuvS5tqiC2WJ0Aa+VM1+L8XxFEHuwqtp3I+xBETBK92Gt
 EQJDp2lX0duL0dQKb4VfKjEZ99Ds+zFajwSt51i3UrJmmU8nvX9Ftdd7kRUMIUATCyx9mOcnUbfh0
 +Os/QOg0uega6pFpISltbZbbz4sV8/8LniCX0ZKk3ARcrGSunOVnGVlag+qdNd9LB3hWXLp7a+23q
 Cq37lwRVvlw9Ul64L/j5AKuFB6bm3cbVqZSX7VWAAKYDToJAAMkErg51GiYXYGhSrKzh2THVmtybA
 z91ZYNE79pKVpAGwKNHvJho5QPcb7PF4NtdWpvLp9X0subBbxFFGMaSG3qZsABydiiioq+DkPnnks
 aVSQ+aodqK63mpX6dew2cX3sLzR2kuA4CQz3vPqdz8xdo1qBf6bLDEL8aQAwDiQBRIbC1qVOUTOAn
 HySKBI6Z0bFFvWYzBIzabnxCviroZ135WgCC3tu4M=;
To: Stefano Stabellini <sstabellini@kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 22 Nov 2022 11:58:26 +0100
Message-ID: <2044434.5qkcZKU06U@silver>
In-Reply-To: <20221122001025.119121-1-asmadeus@codewreck.org>
References: <20221122001025.119121-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, November 22,
 2022 1:10:25 AM CET Dominique Martinet
 wrote: > while 'h' is packed and can be assumed to match the request payload, 
 > req->rc is a struct p9_fcall which is not packed and tha [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1oxQz6-0001iM-2C
Subject: Re: [V9fs-developer] [PATCH] 9p/xen: do not memcpy header into
 req->rc
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, November 22, 2022 1:10:25 AM CET Dominique Martinet wrote:
> while 'h' is packed and can be assumed to match the request payload,
> req->rc is a struct p9_fcall which is not packed and that memcpy
> could be wrong.
> 
> Fix this by copying each fields individually instead.
> 
> Reported-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Suggested-by: Stefano Stabellini <sstabellini@kernel.org>
> Link: https://lkml.kernel.org/r/alpine.DEB.2.22.394.2211211454540.1049131@ubuntu-linux-20-04-desktop
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

> Follow up from the previous xen patch's review.
> 
> This isn't an immediate fix so I don't think this one should be rushed
> in with the rest of the overflow fixes -- I'll let this sit a bit in
> -next after reviews.
> 
>  net/9p/trans_xen.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> index 4665215bc98b..e8e3f54a837e 100644
> --- a/net/9p/trans_xen.c
> +++ b/net/9p/trans_xen.c
> @@ -216,7 +216,9 @@ static void p9_xen_response(struct work_struct *work)
>  			goto recv_error;
>  		}
>  
> -		memcpy(&req->rc, &h, sizeof(h));
> +		req->rc.size = h.size;
> +		req->rc.id = h.id;
> +		req->rc.tag = h.tag;
>  		req->rc.offset = 0;
>  
>  		masked_cons = xen_9pfs_mask(cons, XEN_9PFS_RING_SIZE(ring));
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
