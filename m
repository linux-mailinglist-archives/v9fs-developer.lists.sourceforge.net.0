Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 735E3633339
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 03:23:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxIwZ-0001uR-F5;
	Tue, 22 Nov 2022 02:23:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sstabellini@kernel.org>) id 1oxIwN-0001uI-U1
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 02:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=47pnS2+Uhc7HCQJ7l+y7hLEI5W8u2nH/QQLE50wpAS4=; b=OudWfxkmI0biyh7nytXb2cFq6L
 DqUh7CihvKwKSfTxr0USADzhO+CO49KP7Go5snBuSikkZ/UXNmgNSWFJJ091622VVmA8sodfmrjj1
 hfwXAtFap8Vv/GVACxNclpx1oT+kgxlhf4oUG2Izg5QXcGYVNuHGufN8AdyL43Rav+WM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=47pnS2+Uhc7HCQJ7l+y7hLEI5W8u2nH/QQLE50wpAS4=; b=fqk05cpiag1amNUfV+SJbdlIyo
 a2ZU2NokFIKmxRQq3YCRndfu6sTsqNJW3zqDmnFZ+D2zVwppJY0dVxezcF/o0oTdlNTygjKnOrKDA
 X90M9EMoy258BZy3EQTk2zAq1UN68tKgJ5LXsyCDBWCOPnehO2kAjQ3UgBcxGKOZIcio=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxIwG-0006XD-I9 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 02:23:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 35169B8190B;
 Tue, 22 Nov 2022 02:23:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F244C433D6;
 Tue, 22 Nov 2022 02:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669083781;
 bh=I7YL3bCCeJLisRqnPwuXs7B4Zp+B67ITumrFT7w6sqg=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=gi8ir3+/8iN5kIl4rz24XcNBNG2WqmFDqg06GajceHVzR0sDg9jmi9lhyYuA65fDE
 4cfm5SAdTEY1q/1B1nJv4X/rUvLMWUAdR+TljW3ZjxWnYZpsFMfbf6Nwtgeqm7bGeO
 QnOhi9dvdfdtP4f8KNPVw+PCgmCJNY+HpgwoXngiQbBaUtUTttlV/UAi7vLUXKdCJr
 c9xdlDf8nzJw7ClZSDLsOQAjJ0dfLfPMfqU15gtYxKju97fDHx+AJA9YODDPayNRf1
 VNtOEwJycXqWe8SQui6NMbfYeNAPvPXdcImVOCrrLxVLC/X0ONswdBp7g0TAvcA4UY
 x/WsplDl5gEOw==
Date: Mon, 21 Nov 2022 18:22:59 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20221122001025.119121-1-asmadeus@codewreck.org>
Message-ID: <alpine.DEB.2.22.394.2211211822510.1049131@ubuntu-linux-20-04-desktop>
References: <20221122001025.119121-1-asmadeus@codewreck.org>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 22 Nov 2022, Dominique Martinet wrote: > while 'h'
 is packed and can be assumed to match the request payload, > req->rc is a
 struct p9_fcall which is not packed and that memcpy > could be wron [...]
 Content analysis details:   (-5.9 points, 6.0 required)
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
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxIwG-0006XD-I9
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
Cc: v9fs-developer@lists.sourceforge.net,
 Stefano Stabellini <sstabellini@kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 22 Nov 2022, Dominique Martinet wrote:
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

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
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
> -- 
> 2.35.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
