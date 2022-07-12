Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D0D57276E
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 22:39:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBMex-0004Qx-4f; Tue, 12 Jul 2022 20:39:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBMev-0004Qq-WF
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 20:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xoIWT0+MGU+XdIrhk6lVq1lEsSSRx8pWavkPy8XPrhc=; b=WB8sVv24f0zL9FYtj/z5aXpHJl
 FMTEza3anKI403TI4zjMsV+wGUb0P2iO8Wrt9Q1N2eV5JTls4XBVKumTEFo+N4kXEAmJSuXVNH2Iy
 iCnjFTnwzsBQZTIs777Jv8hJg0wkHH3taNIi0Fc+mk7hCIvroMgR4r+7XzI1ar979T50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xoIWT0+MGU+XdIrhk6lVq1lEsSSRx8pWavkPy8XPrhc=; b=DlFievl7EBp9g4ipyRTTOJTCar
 jjxpLe26FdJg0iYOP+vPih/IAsevmlO2IoVTZ2Lp5RGHQxgTvSBswnwsN1SN4pzt41pHDxB+J4WOf
 EaRkRjecDbFnVMEg+gBHGm1old6L1pBZcUPsbauUzAcruL2AW1w+DvgFBvdTBI9eFdVU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBMev-00F4G2-Po
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 20:39:06 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7B425C01E; Tue, 12 Jul 2022 22:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657658339; bh=xoIWT0+MGU+XdIrhk6lVq1lEsSSRx8pWavkPy8XPrhc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ESwoFOV316NhH0R9hOku2o0Bv1JXDoxMNFNlEvvRNmPtkOIKPtoifOHWnBmPMSG1H
 sQuiZNdjPK41hGT5j6xd3vLuvdbxV60GAO5SGLpx55rwCoKLo5EJncytk/FBiijncl
 XjCLjOPDKP81lY2LQcRcB2B8Z/sBsLgjZVc6vXGiQNqXWXWi99nZB4akvi8AB+91zv
 rXKuD1bvt4T6Izsjswxn4oWgf67mHj7yxrgy1GntzyHB/gYy1g+nMN6nxoeqRNbbeH
 CXabD/kGDAGulEBIp+qtaVDPUWJJSdy9OcOTgNGGsFjTewNiP834hnS322EqSKw7u7
 efofqaeojbX0g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id BA27CC009;
 Tue, 12 Jul 2022 22:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657658337; bh=xoIWT0+MGU+XdIrhk6lVq1lEsSSRx8pWavkPy8XPrhc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hYL5aJsYK2K6nSHFdG4wihmfLZ2pKaJNYRNn9/sRs9KgdPw0WLHjBL6IyvyCSoqu6
 ovIy4KNGT2pknVIw2waXODhEQufmtk2X97AiyQx0KjQyD376bfgsnDjyR6lUks0FHt
 x/XWxDAQ2NLOsEct8O5WQo5miBCXSYVIJVJzyoMMwvPj70x3SB/k5HAlC6fzXHhhXL
 j/9JrkXz3XAybJDUuTXed/jCsrFkzOEWcdn8gTODyzAu7oIGsZ8UBg2r3fJmWTsh+u
 BMCVMc65maV7GhMn+uRpwdVs5SfNcWz63tPFgiuxgMawK+kycCftFu3/xtoNYeP82X
 m7/1QJ0ZYBZLQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 436c2c9e;
 Tue, 12 Jul 2022 20:38:53 +0000 (UTC)
Date: Wed, 13 Jul 2022 05:38:38 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys3bzjuDgseOliUW@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <2506fd2ed484f688826cdc33c177c467e2b0506c.1657636554.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2506fd2ed484f688826cdc33c177c467e2b0506c.1657636554.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Jul 12,
 2022 at 04:31:26PM
 +0200: > This 9p client implementation is yet using linear message buffers
 for > most message types, i.e. they use kmalloc() et al. for a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBMev-00F4G2-Po
Subject: Re: [V9fs-developer] [PATCH v5 07/11] net/9p: limit 'msize' to
 KMALLOC_MAX_SIZE for all transports
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:26PM +0200:
> This 9p client implementation is yet using linear message buffers for
> most message types, i.e. they use kmalloc() et al. for allocating
> continuous physical memory pages, which is usually limited to 4MB
> buffers. Use KMALLOC_MAX_SIZE though instead of a hard coded 4MB for
> constraining this more safely.
> 
> Unfortunately we cannot simply replace the existing kmalloc() calls by
> vmalloc() ones, because that would yield in non-logical kernel addresses
> (for any vmalloc(>4MB) that is) which are in general not accessible by
> hosts like QEMU.
> 
> In future we would replace those linear buffers by scatter/gather lists
> to eventually get rid of this limit (struct p9_fcall's sdata member by
> p9_fcall_init() and struct p9_fid's rdir member by
> v9fs_alloc_rdir_buf()).
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
> 
> Hmm, that's a bit too simple, as we also need a bit of headroom for
> transport specific overhead. So maybe this has to be handled by each
> transport appropriately instead?

hm yes I'd say it's redundant with each transports max size already --
let's just keep appropriate max values in each transport.

> 
>  net/9p/client.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 20054addd81b..fab939541c81 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -1042,6 +1042,17 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
>  	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
>  		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
>  
> +	/*
> +	 * due to linear message buffers being used by client ATM
> +	 */
> +	if (clnt->msize > KMALLOC_MAX_SIZE) {
> +		clnt->msize = KMALLOC_MAX_SIZE;
> +		pr_info("Limiting 'msize' to %zu as this is the maximum "
> +			"supported by this client version.\n",
> +			(size_t) KMALLOC_MAX_SIZE
> +		);
> +	}
> +
>  	err = clnt->trans_mod->create(clnt, dev_name, options);
>  	if (err)
>  		goto put_trans;


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
