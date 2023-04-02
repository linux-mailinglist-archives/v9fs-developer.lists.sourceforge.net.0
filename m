Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D525B6D3823
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 15:48:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1piy4T-0001lV-Pc;
	Sun, 02 Apr 2023 13:48:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1piy4R-0001lN-8M
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 13:48:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9zUEbiCR+KSKiHO2ssoVmAlcES3Ydor7Zr4UwI7Brus=; b=FaV76WP5SuIu1q3K1y+9aFJjGs
 Yc9Q8fPu57nd5CbnNz6t8vUJJdN92GpA5CzvAVyDCfI/zwNqhpCk9BkBAhh1kuJ71nRBUIMYvBkFn
 kghHNpZ4V1wKJ8D4it9eQs16AgaNDr4sh2uRZx4bu6we103rQx87CZKQ7g/z+NISMPZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9zUEbiCR+KSKiHO2ssoVmAlcES3Ydor7Zr4UwI7Brus=; b=GvSa046S9FN2UzkT3AaV4VA3tw
 hj/dhtyrxi+K6z1Ko1IZ0pVwQS6yFx7LX3lYz4lmq885GNaD5RFbu4j8skF2NRQFEmsbanlOnIvmn
 xTIspeiolpmKaoEXmIql+Tu7gUACh7eHROPxgTXGVudRSe7ud+2z3yshGjhaKRV78/2Q=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piy4P-00CqRu-9p for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 13:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=9zUEbiCR+KSKiHO2ssoVmAlcES3Ydor7Zr4UwI7Brus=; b=oQ+4P35WfrG7M/ZawBx9CKeB4V
 GmxxFa2oQC5pgCPBWgxzv11FAYneTHJRLng+EzoMciTy2z6wi/zJ0Oxh3Xwc7jBhO1+pQNvlu5oA8
 aQLaVrFe7M4phOG+U9nYcV6AmzfUijTw5TBtSBfWPKWB2yBbI4DcpNU8vACeb2x7KyKK1VSQzzi7W
 mgejIyb+W01Td/Ux/RRXtVneve0Dx/r4TmCziyq+xlex4c0is2n8jYY2rf7RoANT6z018LDGmCvOF
 1HNyYlYQavPJDXKy1TZenhdILCFKRNsyldHIUmfr4AA4ZSojkuMMZznATa+1eWm8C24DDP2BygbZ/
 iu90/+Jf09OPFKSDqCj+FOkZNunvTVONAIR/xpKAHReRmphJXddT35h2ftAyHeqOu5fXrrP/clntB
 cymGljOCg+O+Uc2Df4aSjwDcQqX3Gnrj8tZ1hZQsyrPd0McS9igwxQ5XyEdQMiz6FxxQYOPqK5VF1
 vkKYdaKH2Rzj1bylmtQ7/U/w5HrI+M7iIUZoeYEfvL1ImxU34qypyX/bjICvgmioslPZVt6KAGBU+
 L6iiFlKWHDpuN9TaU4jeldfPJR+zfVx5Pe3wZmwMb+qZHgQN7dRLXFKY+K3bDMgooWZfyQNdnJCSh
 AhdDtH+qrppx0/N8h2EIcwCTooPDVPCeMMdsJ7pIw=;
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Date: Sun, 02 Apr 2023 15:48:19 +0200
Message-ID: <4901173.k3S2UP3QcN@silver>
In-Reply-To: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
References: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, April 1,
 2023 9:06:25 PM CEST Eric Van Hensbergen
 wrote: > We've recently moved the mailing list to lists.linux.dev to move
 away > from the sourceforge infrastructure. This also updates t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1piy4P-00CqRu-9p
Subject: Re: [V9fs-developer] [PATCH] Update email address and mailing list
 for v9fs
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
Cc: lucho@ionkov.net, ericvh@gmail.com, v9fs@lists.linux.dev,
 rminnich@gmail.com, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, April 1, 2023 9:06:25 PM CEST Eric Van Hensbergen wrote:
> We've recently moved the mailing list to lists.linux.dev to move away
> from the sourceforge infrastructure.  This also updates the website
> from the (no longer v9fs relevant?) swik.net address to the github
> group which contains pointers to test cases, the protocol, servers,
> etc.  This also changes my email from my gmail to my kernel.org
> address.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

Acked-by: Christian Schoenebeck <linux_oss@crudebyte.com>

> ---
>  MAINTAINERS | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8d5bc223f305..6567bae7137b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -224,13 +224,13 @@ S:	Orphan / Obsolete
>  F:	drivers/net/ethernet/8390/
>  
>  9P FILE SYSTEM
> -M:	Eric Van Hensbergen <ericvh@gmail.com>
> +M:	Eric Van Hensbergen <ericvh@kernel.org>
>  M:	Latchesar Ionkov <lucho@ionkov.net>
>  M:	Dominique Martinet <asmadeus@codewreck.org>
>  R:	Christian Schoenebeck <linux_oss@crudebyte.com>
> -L:	v9fs-developer@lists.sourceforge.net
> +L:	v9fs@lists.linux.dev <v9fs@lists.linux.dev>

So the old list is officially dead? Migrated?

>  S:	Maintained
> -W:	http://swik.net/v9fs
> +W:	http://github.com/v9fs
>  Q:	http://patchwork.kernel.org/project/v9fs-devel/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
>  T:	git git://github.com/martinetd/linux.git
> 
> ---
> base-commit: 707823e7f22f3864ddc7d85e8e9b614afe4f1b16
> change-id: 20230401-ericvh-fix-maintainers-865452e6c43a
> 
> Best regards,
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
