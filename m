Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C95EF3BC
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 12:53:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odrAq-0003vS-SH;
	Thu, 29 Sep 2022 10:53:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odrAp-0003vM-V1
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 10:53:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VsiLCIM10mqGVVl6aZ/p5pxtzTZtLCwyrHSQFvwSTGo=; b=cDGo+tvfQZRfI9FnOYcfTo1kVV
 BJ4zKthXyQ4AQXYhHrlnpBGxvt/gq9MJwl4KUP0LTXBfJgE2zgi1No8yFoxDfutYHuDojUtsUxImJ
 KDXYcpRbyrEmFpXxHFtyvV3O3Gb36mbB7RztZlWte0h9RWxy6rQkuEnqth3CDPYtiHQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VsiLCIM10mqGVVl6aZ/p5pxtzTZtLCwyrHSQFvwSTGo=; b=CznMRBY0CP734+OI5FuviZSAMM
 ay5k41fjXOfkQ7Y9tc+ifjc2uhnEjEoYVbHNDR7De/qAadQbmfAHixsegWpLmMnVITYAVM+PMYo0s
 gQaaFsFYRR7WQzYRHIHjm9NQE8ZKUAetHYGBiMkbwqOgHRbrGkaGutbxQR64JVWELdEQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odrAk-0007tB-Rg for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 10:53:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9FC9960AF7;
 Thu, 29 Sep 2022 10:53:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 748E2C433D6;
 Thu, 29 Sep 2022 10:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664448812;
 bh=sZuIjfSp6Vx+HwrCQ+D8Xsx9v7jNEhaZgxEAhP0d0Lo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UIGYnWCORoxVctFfgurybpC7Qcu+d8brtglYNBF4Kor8mm0CuuF3IVyXdhuYWpYBR
 Pahdn4Yq2lFl38tW0TxZYqu+athqnnuqL2oy5SjHYDpA8yvFpc2fL+zteX5Ky9h2S2
 3W656moZ/R66QyK+2ao3kziqvXHy3aKALshwMi167k/by/UHIgGCNZwKWCx063JlGJ
 u2EIf1QREk6MTKS0Mk/8sfnhW3DEDPs6S0QmRNDuJeUFo7oGzI+5xEvN+nXquDsjze
 8t6DVOh8VwiTWSuLHY2rgtFnJnnmmnUPo/6Z6TdIChRH5SfkAMz+wMYvoEvvNfcSqy
 yyf+YJ2p1pkKA==
Date: Thu, 29 Sep 2022 13:53:27 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <YzV5J9NmL7hijFTR@unreal>
References: <cover.1664442592.git.leonro@nvidia.com>
 <743fc62b2e8d15c84e234744e3f3f136c467752d.1664442592.git.leonro@nvidia.com>
 <YzVzjR4Yz3Oo3JS+@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzVzjR4Yz3Oo3JS+@codewreck.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 29, 2022 at 07:29:33PM +0900, Dominique Martinet
 wrote: > Leon Romanovsky wrote on Thu, Sep 29, 2022 at 12:37:56PM +0300:
 > > Make sure that all variables are initialized and released in c [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odrAk-0007tB-Rg
Subject: Re: [V9fs-developer] [PATCH 2/2] 9p: destroy client in symmetric
 order
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
Cc: lucho@ionkov.net, syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 29, 2022 at 07:29:33PM +0900, Dominique Martinet wrote:
> Leon Romanovsky wrote on Thu, Sep 29, 2022 at 12:37:56PM +0300:
> > Make sure that all variables are initialized and released in correct
> > order.
> 
> Haven't tried running or compiling, comments out of my head that might
> be wrong below
> 
> > 
> > Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
> 
> You're adding this report tag but I don't see how you fix that failure.
> What you need is p9_tag_cleanup(clnt) from p9_client_destroy -- I assume
> this isn't possible for any fid to be allocated at this point so the fid
> destroying loop is -probably- optional.
> 
> I would assume it is needed from p9_client_version failures.
> 
> 
> > Signed-off-by: Leon Romanovsky <leon@kernel.org>
> > ---
> >  net/9p/client.c | 37 ++++++++++++-------------------------
> >  1 file changed, 12 insertions(+), 25 deletions(-)
> > 
> > diff --git a/net/9p/client.c b/net/9p/client.c
> > index aaa37b07e30a..8277e33506e7 100644
> > --- a/net/9p/client.c
> > +++ b/net/9p/client.c
> > @@ -179,7 +179,6 @@ static int parse_opts(char *opts, struct p9_client *clnt)
> >  				goto free_and_return;
> >  			}
> >  
> > -			v9fs_put_trans(clnt->trans_mod);
> 
> Pretty sure you'll be "leaking transports" if someone tries to pass
> trans=foo multiple times; this can't be removed...(continues below)...

It is pity, you are right.

Thanks


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
