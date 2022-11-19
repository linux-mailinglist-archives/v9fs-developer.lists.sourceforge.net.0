Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F876308C6
	for <lists+v9fs-developer@lfdr.de>; Sat, 19 Nov 2022 02:52:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1owD1V-00018b-Bv;
	Sat, 19 Nov 2022 01:52:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sstabellini@kernel.org>) id 1owD1U-00018I-2g
 for v9fs-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 01:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SAfJbqg0KCrRUljRwuR4OPQVC3lauRkEtOFjql4JFVU=; b=WD8J9jOSRh165chYGzu1U59DAK
 8hJsqsH+ewLPq9BVBESBbTMUcWQ1qpD8Jdxciqi9zcwz812Hp87ifkJl/7jjrOqbKT0ZWhCAWM1QR
 RNAxScUAupQMhumMo1LHno305ttZpwwNzdLo0g8ETuxZ6F9Eks5iACoE0S7RhVUn7Jqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SAfJbqg0KCrRUljRwuR4OPQVC3lauRkEtOFjql4JFVU=; b=JFvQXHVSm5uZie6caoZ/BkujTR
 MmdFN35oqeIUkPYkQK0SamcXtPSXsDGJC9+wP23MkI4zu64zyAIIkT/qNiBwP/L3f97OoWMELiSbT
 Unc2iIZ9/CjFDhcHBiVPUtctow24gyXrqaCj5VaxhfsxTwjaKkXy7hUEIeZgKfHI7lc0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1owD1T-0008Lf-Cw for v9fs-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 01:52:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F3D8962762;
 Sat, 19 Nov 2022 01:51:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FEB0C433C1;
 Sat, 19 Nov 2022 01:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1668822709;
 bh=fu4/1HaWI/LLlnuYvXu79voRYXVtVGUZKyjH9vTasoM=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=R3AFQQNEcNF2LnJUMTAZokYAWadmAkmKK4gPM2aQmN9jCLuAf+rcHJdcHOOxejYiX
 ymbtzWntiXyCR8SrAH9BfOiCl5hSubps0q7aiyEPOF+lV3WK6poQ1WxmBcB6k7X64e
 /7mIlkKmHKUAUJYbgCJlkLQ4H0h5XwBn8YcH76biJ9ghKlM+TY0LehVaWGihkTnt3G
 PeLsXjtkruRaOuIuLTWqEb233ATJY7Kvj9unkVsXP4v7QgkIpKqLNnAU3Eys0ZD3sk
 z7F03SQcBBnaKacA63ihlXIKDRr1NK/tz/Y9dMmHZDx/zExiuzm4d4MLSK7U2m22zA
 eASV1MyypSgdA==
Date: Fri, 18 Nov 2022 17:51:46 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20221118135542.63400-1-asmadeus@codewreck.org>
Message-ID: <alpine.DEB.2.22.394.2211181713420.1049131@ubuntu-linux-20-04-desktop>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 18 Nov 2022, Dominique Martinet wrote: > trans_xen
 did not check the data fits into the buffer before copying > from the xen
 ring, but we probably should. > Add a check that just skips the req [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1owD1T-0008Lf-Cw
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
Cc: v9fs-developer@lists.sourceforge.net,
 Stefano Stabellini <sstabellini@kernel.org>, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 18 Nov 2022, Dominique Martinet wrote:
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

"req" instead of "rreq"

I made this change and tried the two patches together. Unfortunately I
get the following error as soon as I try to write a file:

/bin/sh: can't create /mnt/file: Input/output error


Next I reverted the second patch and only kept this patch. With that, it
worked as usual. It looks like the second patch is the problem. I have
not investigated further.



> +			req->status = REQ_STATUS_ERROR;
> +			goto recv_error;
> +		}
> +
>  		memcpy(&req->rc, &h, sizeof(h));
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
> -- 
> 2.38.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
