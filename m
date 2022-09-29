Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F41F5EEE53
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 09:04:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odnap-0001Bp-L5;
	Thu, 29 Sep 2022 07:04:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odnao-0001Bj-CG
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 07:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jnYXx8RyU8Xz38FBBjgJIXss06fviVw1nDupFosbI1E=; b=JUlY98d4DPTckp7dyiVcilLPRE
 bnqTH6a/ELuR0cPbkdq98hMolag+c0mpmG2el2bzn6PbjUKjmZN4Xb0gjdbtFpHNXQa5jP+6bU6Be
 ckMb5J+fHvJLrrDg9ZhYs5K30eT7dLKaiC64dg6WG5xRh2j5jPzmhe7Vm4aT+ieaEzYw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jnYXx8RyU8Xz38FBBjgJIXss06fviVw1nDupFosbI1E=; b=U2gLD7tg4o9ktctG4B5IsnGPEI
 1XpEgNNVb0uaMdMPQaJDme0FFjX7B0EXEa/S5jeU9mJ74bQX2h3WcQLICtbRqQ62wQW8ATWZETmXM
 soJJhRCLKgYuviAkga4SDugEEWd2Hxxf+MktWfATAp9ZPg53YMvEMiehuPJL4NSGsShU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odnak-0003lt-0J for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 07:04:22 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A6F2FC01E; Thu, 29 Sep 2022 09:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664435050; bh=jnYXx8RyU8Xz38FBBjgJIXss06fviVw1nDupFosbI1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vi7DUuTg1NGRDGjgO8BHjnNsST4FQrlM17K62hZQZV9IPwqEXqxsOXn9AaMgnzX0q
 TsMdnEksZLwa5hFYeyAGJaWPb5W8ds0Jbj535bo3fDFTBCVhzSPCZL0AAQrtHq91b7
 yWXA3pft1fA2NIg6wwhnnDAPz4dHFDIzIEWwITvF7aIsasTfJbc43WOumi9Jn2C2m2
 SCwRSJaSSLqkmLeQrj782dJ+yAsAaV3gjEseASZUKJ3otLJM1HlaEV/w3SkuBr7di/
 foQlfT/7cUtfzbGPZC81xpvrzFA3MC3JTS6LXov/PFItLXDAEt6EyC4jAozjpeAH9V
 z0dMr9YNF2Q7g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5D81FC009;
 Thu, 29 Sep 2022 09:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664435050; bh=jnYXx8RyU8Xz38FBBjgJIXss06fviVw1nDupFosbI1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vi7DUuTg1NGRDGjgO8BHjnNsST4FQrlM17K62hZQZV9IPwqEXqxsOXn9AaMgnzX0q
 TsMdnEksZLwa5hFYeyAGJaWPb5W8ds0Jbj535bo3fDFTBCVhzSPCZL0AAQrtHq91b7
 yWXA3pft1fA2NIg6wwhnnDAPz4dHFDIzIEWwITvF7aIsasTfJbc43WOumi9Jn2C2m2
 SCwRSJaSSLqkmLeQrj782dJ+yAsAaV3gjEseASZUKJ3otLJM1HlaEV/w3SkuBr7di/
 foQlfT/7cUtfzbGPZC81xpvrzFA3MC3JTS6LXov/PFItLXDAEt6EyC4jAozjpeAH9V
 z0dMr9YNF2Q7g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id dc3ba70a;
 Thu, 29 Sep 2022 07:04:05 +0000 (UTC)
Date: Thu, 29 Sep 2022 16:03:50 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YzVDVhSHBVFltc4o@codewreck.org>
References: <YzQc2yaDufjp+rHc@unreal>
 <20220928214417.1749609-1-asmadeus@codewreck.org>
 <20220928214417.1749609-2-asmadeus@codewreck.org>
 <YzUzyw9JE4lFWKo5@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzUzyw9JE4lFWKo5@unreal>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leon Romanovsky wrote on Thu, Sep 29,
 2022 at 08:57:31AM +0300:
 > > + * followed by data accessed from userspace by read > > + * Note we
 do not check for failure here because the cache is > > + * opti [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1odnak-0003lt-0J
Subject: Re: [V9fs-developer] [PATCH 2/2] 9p: client_create: init
 fcall_cache earlier
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
Cc: v9fs-developer@lists.sourceforge.net, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leon Romanovsky wrote on Thu, Sep 29, 2022 at 08:57:31AM +0300:
> > +	 * followed by data accessed from userspace by read
> > +	 * Note we do not check for failure here because the cache is
> > +	 * optional; warning will be issued on dmesg for failure.
> > +	 */
> > +	clnt->fcall_cache =
> > +		kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
> > +					   0, 0, P9_HDRSZ + 4,
> > +					   clnt->msize - (P9_HDRSZ + 4),
> > +					   NULL);
> > +
> 
> clnt->msize can be changed after call to ->create() if it is larger than clnt->trans_mod->maxsize).

Ugh, that's what I get for doing this in a hurry because you're all
talking about order this order that...

This is absolutely correct, I'm dropping this patch.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
