Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5ED5EED66
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 07:54:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odmVG-0006Ca-4f;
	Thu, 29 Sep 2022 05:54:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odmVE-0006CQ-Q1
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 05:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KKbvO1umQRx23oaaldmlLr4UyZeUpgEdbWXfTwssv3I=; b=jP9v+yl/EFG/dd2YdhybuzUpQR
 wVxX0P2Kq250u3r0Cz+h2k5YKBMhv8BDqYiKggfs2W56U9Phf523UhEz0xWNlm5Kat9Lp5xGV8Ke/
 NfeyDte6wgZbjy7dnCYz9CbeSy/13/lW3xZlpuA4kmv4O26DPl3HwJ0QUb7Uucdho/gs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KKbvO1umQRx23oaaldmlLr4UyZeUpgEdbWXfTwssv3I=; b=ST3HifMqCn60/0fNfRiPNJRnhw
 jfdOCCPN8sbc6BdjYG9lX+6Ti76bOcqkw8Sgloo7YhlvYidDMWqeg4lzp2eFtwBasmzZueRpgElHt
 ph4lp7wwQdNELMDsm6aRrXJtDUh8oHyLPMnkV81SC1Imt6FQG4ETGfeiiPgKZLqdrFnE=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odmV9-006H7p-BD for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 05:54:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3F86EB82207;
 Thu, 29 Sep 2022 05:54:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71AB3C433D6;
 Thu, 29 Sep 2022 05:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664430855;
 bh=g15tzfzPdhSnHrHSTmuII/jk7Tm4dZCtS/XXnDPqtyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tfBEw+s8MOVjo4iTJNPZPcjjYTBZAdqre9O9iVsIcJ5MhFUPxQf9ytYYxh0mkDJyq
 sugtZ4zKLBV/+4g1giWF0Kf1ZoZNCMcoWPFBXYcxsSlZ62bixfCUgjs++/HFJdFsC/
 WKziSoaA1VpwLGc3Ohm01yN3PUBHs0Llhq+qQgwz5FQ0VOrYHdG6QGl0t74Vlj6T31
 bUuv7S9pAlAviHbNPagcA2E8ppy/27XQWldqwQCY+6T0nmlRmOmLCJfqkcKtHCaThp
 xbArcV84t4f51azWiOjZyvvP1pGl+cO9Aa6nGKQBfW+b6kKYFJt5cAKs+0eEhoXl3B
 xFggI8QsBK6ZA==
Date: Thu, 29 Sep 2022 08:54:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <YzUzAqsq803Z+rtr@unreal>
References: <20220928215800.1749929-1-asmadeus@codewreck.org>
 <20220928221923.1751130-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220928221923.1751130-1-asmadeus@codewreck.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 29, 2022 at 07:19:23AM +0900, Dominique Martinet
 wrote: > destroy code would incorrectly call close() if trans_mod exists
 after some > hasty code cleanup: we need to make sure we only call [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
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
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odmV9-006H7p-BD
Subject: Re: [V9fs-developer] [PATCH v3] 9p: client_create/destroy: only
 call trans_mod->close after create
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
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 29, 2022 at 07:19:23AM +0900, Dominique Martinet wrote:
> destroy code would incorrectly call close() if trans_mod exists after some
> hasty code cleanup: we need to make sure we only call close after create
> 
> Link: https://lkml.kernel.org/r/20220928214417.1749609-1-asmadeus@codewreck.org
> Link: https://lkml.kernel.org/r/00000000000015ac7905e97ebaed@google.com
> Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
> Reported-by: Leon Romanovsky <leon@kernel.org>
> Fixes: 3ff51294a055 ("9p: p9_client_create: use p9_client_destroy on failure")
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
> v1->v2: also reset trans on create error
> v2->v3: fix silly compile errors
> 
> Sorry for the multiple mails, that's what I get for not even doing basic
> tests before talking...

Please always submit new patch versions as new one and don't reply-to.
It breaks flows of everyone who relies on proper email threading.

> 
>  net/9p/client.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index bfa80f01992e..41e825a8da7c 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -971,6 +971,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
>  	spin_lock_init(&clnt->lock);
>  	idr_init(&clnt->fids);
>  	idr_init(&clnt->reqs);
> +	clnt->trans = ERR_PTR(-EINVAL);
>  
>  	err = parse_opts(options, clnt);
>  	if (err < 0)
> @@ -990,8 +991,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
>  		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
>  
>  	err = clnt->trans_mod->create(clnt, dev_name, options);
> -	if (err)
> +	// ensure clnt->trans is initialized to call close() on destroy
> +	// if and only if create succeeded

Please use /* */ comment style.

> +	if (err < 0) {
> +		clnt->trans = ERR_PTR(err);
>  		goto out;
> +	}
> +	if (IS_ERR(clnt->trans))
> +		clnt->trans = NULL;
>  
>  	if (clnt->msize > clnt->trans_mod->maxsize) {
>  		clnt->msize = clnt->trans_mod->maxsize;
> @@ -1036,7 +1043,7 @@ void p9_client_destroy(struct p9_client *clnt)
>  
>  	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
>  
> -	if (clnt->trans_mod)
> +	if (clnt->trans_mod && !IS_ERR(clnt->trans))

It is completely no-go to rely on internal value inside of structure after
failure in ->create() callback.

>  		clnt->trans_mod->close(clnt);
>  
>  	v9fs_put_trans(clnt->trans_mod);
> -- 
> 2.35.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
