Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78875565316
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 13:13:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8K0w-00029c-Kk; Mon, 04 Jul 2022 11:13:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o8K0u-00029U-N4
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 11:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WNP0ZMyD6GxVrQdemfnOUO9FL85lre3PmCHI5+4eook=; b=YGt5PdHUVQQLI+xN6D4wmDVH3A
 ODBqjNu7dVp+RzZ0jXubFKo5NCv+IemEuEU0skpuBROOy7iM7elua8RyDXtWTOasPsMyXnycJGRSJ
 q618a3Tyk+qM+4xViEBFrzlmHAtB45BxLdME+26gMNubXrw+RgPL2Vs7yRBG42OB1LwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WNP0ZMyD6GxVrQdemfnOUO9FL85lre3PmCHI5+4eook=; b=VGg3HzJEibQYb1xLqO31RLwWLm
 DVbjDGDw1vq8EmTNE5uW/ywkRBYRC730OaJbqObLQ/C1dYwJYSguhQ1bCSJc/e7hNRgfDTESbTzRm
 wpwIrbxqfI5Y6fPe7LcbZOtsUbl0WDYL4f67gfg02BbVlDUG27mK5su887DmJBP/0ScI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8K0s-006uXz-Hx
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 11:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=WNP0ZMyD6GxVrQdemfnOUO9FL85lre3PmCHI5+4eook=; b=Rzs78zrxsfYZNsAyQmZuEWqTAe
 jeYtNQbFoJPZVcxeUQSGmn+2f73F3EXBo+DGIKkR3XX6+aakkhxOkkkZra1jUtBgf5JPzjejUqFp6
 fXb4mxKtJ47CsP1naB1qSIjMSuS3fxNww4ud+RP7omeIXi+FE4DuCMBET0BNltC+1WKwc8sTfEFhD
 +40cuJ/XJh5MTQXCNPxeISxaiBgLlveIXLYMOYECP30zhE3AecQG+Eb/yct1jOGmLOJM+bIuGsEog
 q+pdUUrUHMSdPDbyNPDEfRUEHJge6/uHKcvJkWpheZ3OXp6NCrHq/u8BLOv7gb69JorXXlVuO+hEm
 ZxMDYCFg5mJQjf4+KxZPkf2uHiopM/kWRlzHvvbFP10LRYj0Qgt/rHx823/Vcdif7F2BXwfhuQYYH
 CaKmOnsaONv95tO0eG0glqu3o89zdc+msQRyVGTo+qMOgs5/Jmr8hqzfPzf/CxID52hp8JlP5zOzV
 PesGN8orkeJ3XDNps9rgTCg6YGdoLbTRp1WX8OjjstuWq2VMEF00FCR+2cBiUhTD9juM9PGWCSIRn
 pzh9hBtcgKpWJ4fGDCmtBZVQRQqXGowJspVS0Wwdh3RFIKqhhzaeMSVeVIqHMMUpza5iXqCCrEsVW
 syGFmulApR17z1aU65dje+yomxv1FFwxJWnSRpLik=;
To: Kent Overstreet <kent.overstreet@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 04 Jul 2022 13:12:51 +0200
Message-ID: <2335194.JbyEHpbE5P@silver>
In-Reply-To: <YsJgxoTyYxX1NwyW@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
 <YsJgxoTyYxX1NwyW@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag,
 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
 > +Christian, sorry I just noticed you weren't in Ccs again -- > the patches
 are currently there if you want a look: > https://evilpiepi [...] 
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
X-Headers-End: 1o8K0s-006uXz-Hx
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
> +Christian, sorry I just noticed you weren't in Ccs again --
> the patches are currently there if you want a look:
> https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool

I wonder whether it would make sense to update 9p section in MAINTAINERS to 
better reflect current reality, at least in a way such that contributors would 
CC me right away?

Eric, Latchesar, what do you think?

> > @@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type,
> > unsigned int max_size)> 
> >  	if (!req)
> >  	
> >  		return ERR_PTR(-ENOMEM);
> > 
> > -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> > -		goto free_req;
> > -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> > -		goto free;
> > +	p9_fcall_init(c, &req->tc, 0, alloc_msize);
> > +	p9_fcall_init(c, &req->rc, 1, alloc_msize);
> 
> mempool allocation never fails, correct?
> 
> (don't think this needs a comment, just making sure here)
> 
> This all looks good to me, will queue it up in my -next branch after
> running some tests next weekend and hopefully submit when 5.20 opens
> with the code making smaller allocs more common.

Hoo, Dominique, please hold your horses. I currently can't keep up with 
reviewing and testing all pending 9p patches right now.

Personally I would hold these patches back for now. They would make sense on 
current situation on master, because ATM basically all 9p requests simply 
allocate exactly 'msize' for any 9p request.

However that's exactly what I was going to address with my already posted 
patches (relevant patches regarding this issue here being 9..12):
https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/
And in the cover letter (section "STILL TODO" ... "3.") I was suggesting to 
subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size 
categories? Because that's what my already posted patches do anyway.

How about I address the already discussed issues and post a v5 of those 
patches this week and then we can continue from there?

Best regards,
Christian Schoenebeck





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
