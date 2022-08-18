Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD68598718
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Aug 2022 17:12:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oOhCP-0007tk-QX;
	Thu, 18 Aug 2022 15:12:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oOhCN-0007td-HO
 for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Aug 2022 15:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IaeNReyR52ej9/tS6s/KAFhEesm0POJXHliyXuIE5Ho=; b=L1iReyQBgBibt+Iyb4cr24yV0s
 o1N7IddK00QGlTK2ISnNEIH+1ss3ChOfMZJlYTbPLodO5Q0AUoOAIjBaDzzlADCpi2XSX1sc7iQCt
 oKWsce/BEWMnIuqUUGUWt3NxMMf9I9r1azqARA+MlMgtnSFdzNf0FTV1JAiOVNpBj2Tc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IaeNReyR52ej9/tS6s/KAFhEesm0POJXHliyXuIE5Ho=; b=XPvFa2Mmd2IsQUUCwnBFyZovh6
 ZdiuXvdV641x1W+rLVs0oOntY7VTna40l4vM+Z+3GIDROTyJaI/RXinnhC5CFe3gRMjaUCLQY+j/r
 pVaBMpswNu+14Z/v1+58QhyW7QrRfEEwazliuWWmIYncyqKMK7o3PEvDQsg+/t2E2T3c=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOhCL-0004Ql-M0 for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Aug 2022 15:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=IaeNReyR52ej9/tS6s/KAFhEesm0POJXHliyXuIE5Ho=; b=DFphwx+kUSC2kPYk8B5cLq0V2v
 DLWvFY8986Tb+7pbZRCd6hf5vmkAeX3AFl/mGcI0YSVwpefRCttymkqv+DxOhILfRxFQU3AcUUAIa
 cUrjm6Fu2/v4RdkBqwvWXl4l1u1wtixjWuMV/pIREomlKh1T5UyzuSYKf/UcQClWRmUY9wwsZ11kV
 s2S2cH7ZtRNmF/9VV9QCaPD9JSXOqYIVmseB4D8TGiOjCDqkYsZcxd76cQ7/7n+psKtnZGyHSYCUH
 2S7DfOX1dPPfSNLggpNtLmHkvq1aigmnddpEDnR61DYecB3tASKgwXcs+kffUyGlQYKdnl4QjJa0U
 Ow/3imWV1swdHtYBOdGFrBN65BgPaKoCr7blg5OmHECpMqwYpSL+o5kDodFawBEcCmlwgM/jcgpHi
 93fVwJObhkUoEsG4l31zN14OpP/UIBo8wZQrMxpOQxeV2OR/iiXYGuafJ+2DIkHnVJx4dnRMR0ZnO
 MBqVVDObXDyMERo9qMPNkZ2jjP7s3gqEhKeLDp96LsXZK3S4fUjrHdhspwyBXrBvW/GHPjGq4U1lu
 rzHgXYym/J96vzKHh5ckA4x8Td7IznksQpj2llWpRAhEjHRN+OPT7NyvtEEoUJK20UekpPZAtXXNT
 +6Ar+5m3839LWTt9KOi5z5RwNRzZQJ8PbvkFIibEM=;
To: syzbot <syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com>,
 asmadeus@codewreck.org
Date: Thu, 18 Aug 2022 17:12:17 +0200
Message-ID: <2207113.SgyDDyVIbp@silver>
In-Reply-To: <YvyD053bdbGE9xoo@codewreck.org>
References: <0000000000001c3efc05e6693f06@google.com>
 <YvyD053bdbGE9xoo@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch,
 17. August 2022 07:59:47 CEST asmadeus@codewreck.org
 wrote: > syzbot having a fresh look at 9p? > > Well at least that one should
 be easy enough, the following (untested) > probably shoul [...] 
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oOhCL-0004Ql-M0
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 p9_req_put
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 17. August 2022 07:59:47 CEST asmadeus@codewreck.org wrote:
> syzbot having a fresh look at 9p?
> 
> Well at least that one should be easy enough, the following (untested)
> probably should work around that issue:
> 
> -----
> From 433138e5d36a5b29b46b043c542e14b9dc908460 Mon Sep 17 00:00:00 2001
> From: Dominique Martinet <asmadeus@codewreck.org>
> Date: Wed, 17 Aug 2022 14:49:29 +0900
> Subject: [PATCH] 9p: p9_client_create: use p9_client_destroy on failure
> 
> If trans was connected it's somehow possible to fail with requests in
> flight that could still be accessed after free if we just free the clnt
> on failure.
> Just use p9_client_destroy instead that has proper safeguards.
> 
> Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 5bf4dfef0c70..da5d43848600 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -948,7 +948,7 @@ struct p9_client *p9_client_create(const char *dev_name,
> char *options)
> 
>  	err = parse_opts(options, clnt);
>  	if (err < 0)
> -		goto free_client;
> +		goto out;
> 
>  	if (!clnt->trans_mod)
>  		clnt->trans_mod = v9fs_get_default_trans();
> @@ -957,7 +957,7 @@ struct p9_client *p9_client_create(const char *dev_name,
> char *options) err = -EPROTONOSUPPORT;
>  		p9_debug(P9_DEBUG_ERROR,
>  			 "No transport defined or default transport\n");
> -		goto free_client;
> +		goto out;
>  	}
> 
>  	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
> @@ -965,7 +965,7 @@ struct p9_client *p9_client_create(const char *dev_name,
> char *options)
> 
>  	err = clnt->trans_mod->create(clnt, dev_name, options);
>  	if (err)
> -		goto put_trans;
> +		goto out;
> 
>  	if (clnt->msize > clnt->trans_mod->maxsize) {
>  		clnt->msize = clnt->trans_mod->maxsize;
> @@ -979,12 +979,12 @@ struct p9_client *p9_client_create(const char
> *dev_name, char *options) p9_debug(P9_DEBUG_ERROR,
>  			 "Please specify a msize of at least 4k\n");
>  		err = -EINVAL;
> -		goto close_trans;
> +		goto out;
>  	}
> 
>  	err = p9_client_version(clnt);
>  	if (err)
> -		goto close_trans;
> +		goto out;
> 
>  	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
>  	 * followed by data accessed from userspace by read
> @@ -997,12 +997,8 @@ struct p9_client *p9_client_create(const char
> *dev_name, char *options)
> 
>  	return clnt;
> 
> -close_trans:
> -	clnt->trans_mod->close(clnt);
> -put_trans:
> -	v9fs_put_trans(clnt->trans_mod);
> -free_client:
> -	kfree(clnt);
> +out:
> +	p9_client_destroy(clnt);
>  	return ERR_PTR(err);
>  }
>  EXPORT_SYMBOL(p9_client_create);

Looks like a nice reduction to me!

As p9_client_destroy() is doing a bit more than current code, I would probably 
additionally do s/kmalloc/kzmalloc/ at the start of the function, which would 
add more safety & reduction.

> -----
> 
> I'll test and submit to Linus over the next few weeks.
> 
> I had a quick look at the other new syzbot warnings and:
>  - 'possible deadlock in p9_req_put' is clear enough, we can just drop
> the lock before running through the cancel list and I don't think
> that'll cause any problem as everything has been moved to a local list
> and that lock is abused by trans fd for its local stuff. I'll also send
> that after quick testing.
> ----
> From c46435a4af7c119bd040922886ed2ea3a2a842d7 Mon Sep 17 00:00:00 2001
> From: Dominique Martinet <asmadeus@codewreck.org>
> Date: Wed, 17 Aug 2022 14:58:44 +0900
> Subject: [PATCH] 9p: trans_fd/p9_conn_cancel: drop client lock earlier
> 
> syzbot reported a double-lock here and we no longer need this
> lock after requests have been moved off to local list:
> just drop the lock earlier.
> 
> Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index e758978b44be..60fcc6b30b46 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -205,6 +205,8 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
>  		list_move(&req->req_list, &cancel_list);
>  	}
> 
> +	spin_unlock(&m->client->lock);
> +
>  	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
>  		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
>  		list_del(&req->req_list);
> @@ -212,7 +214,6 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
>  			req->t_err = err;
>  		p9_client_cb(m->client, req, REQ_STATUS_ERROR);
>  	}
> -	spin_unlock(&m->client->lock);
>  }

Are you sure that would resolve that (other) syzbot report? I just had a 
glimpse at it yet, but I don't see this list iteration portion being involved 
in the backtrace provided by the report, is it?

> 
>  static __poll_t
> ----
> 
>  - but I don't get the two 'inconsistent lock state', the hint says it's
> possibly an interrupt while the lock was held but that doesn't seem to
> be the case from the stack trace (unless we leaked the lock, at which
> point anything goes)
> I'd need to take time to look at it, feel free to beat me to these.
> 
> --
> Dominique






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
