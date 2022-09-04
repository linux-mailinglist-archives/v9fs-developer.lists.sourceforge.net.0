Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 945295AC571
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 18:31:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUsWv-0004GJ-Vz;
	Sun, 04 Sep 2022 16:31:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oUsWu-0004GB-Qg
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 16:31:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vmMX29tPh/NH4P7ezbbad6kpxdk9LRYNKFDT/DUOtT8=; b=gVq8nbRvbJanvTB7Vur1JPh/Lw
 YUFwUOhh1MfhSFBraVYzaK10kJjHndfZ+m1Ph2VQdrHJxHJf0wTcWfCyLWURpbRWdPvtp63Guqxbd
 r2it9g0MLTz/YtoDpFs8ZGKOAiybEV+90aE6SLb7wozsH3XZ3CEYqmtkaTww29LGFYZw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vmMX29tPh/NH4P7ezbbad6kpxdk9LRYNKFDT/DUOtT8=; b=iSRUZQCum/PSea9uwugLHTsiuB
 HOz/GRk6smelxvuFHny79dPTN9aZzHP2i9Sc7bAlxjhT1oXITJlQXNc/l41H4EycO6z5Sj5AeSziw
 +nh8h2v4C5qbqxtPRRQ+G5ouy1joyJRxyCXSeBn/k5DxPBi/IsDzuEeZxnrGgrAISz3Q=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUsWp-00ERpL-96 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 16:31:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=vmMX29tPh/NH4P7ezbbad6kpxdk9LRYNKFDT/DUOtT8=; b=SLWzikcmV3SC2D2WeYjbroHM5e
 sJbz9FMw5KZgxHO3RIcqARU5jNQXgDgikS3meEmjyP5rZx6eSbWCfGR3KCfKA3AXIQW9zKHNa/GkW
 cnueVeyK9digO19gW+rBlOVxCKcPr58jo2323eG0pJpyJ1FsBvleL0ujbrfieSyEPpQcdQRVLYDeX
 wIuQC5Mi74i9UJyuBCfxvU4lqg/ki3lZoNBiaSzTUisEcMf9BiK6KqoKDtft+b1+ZFj62hKQna7qP
 2Grk55Tgk4OplwFSjtam2oFKH/UcHsbJnAnYRsPTmwXkzyVqKbWn4KQKgzqKR7WVsVLqGSvgQcPxC
 YEqXnNkxRHrvyyt8zqJL8ltnOEpsKSpOYVa6T3zup9JOMR0QlwTcHtYmqeKgX0MfFsFHC/7QMK8aq
 ANqi0ZxlR7CkzkJ8ob2z/U9c08T9qIcGiYIe2H/ymFYu+VfpSvKR5uDua+hiXzdKByXQ1L0PG1tRa
 7+WY4WbH7pP6iVCHBYHX7DV4lVavfbgkBe+CD44nTqAfRd15dtjYd6aFz9IX3oEeT9d3Rm+ACx2ns
 NnlnLkb7+GE4kxGH921GecMddB5XSmz6O3+3RpPmtokVwIlVkf5tdulZf5xoBsAcILHi4I+WNiaJM
 67rA3iZ0A9zGKULtVd9+EPyPITd4t8BZa9bAxM03o=;
To: v9fs-developer@lists.sourceforge.net,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 04 Sep 2022 18:31:12 +0200
Message-ID: <7389539.FyhnmifhmU@silver>
In-Reply-To: <20220904063936.1305139-1-asmadeus@codewreck.org>
References: <0000000000001c3efc05e6693f06@google.com>
 <20220904063936.1305139-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag,
 4. September 2022 08:39:36 CEST Dominique Martinet
 wrote: > If trans was connected it's somehow possible to fail with requests
 in > flight that could still be accessed after free if we jus [...] 
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
X-Headers-End: 1oUsWp-00ERpL-96
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p: p9_client_create: use
 p9_client_destroy on failure
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
Cc: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 4. September 2022 08:39:36 CEST Dominique Martinet wrote:
> If trans was connected it's somehow possible to fail with requests in
> flight that could still be accessed after free if we just free the clnt
> on failure.
> Just use p9_client_destroy instead that has proper safeguards.
> 
> Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  net/9p/client.c | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 0a6110e15d0f..d340dbbd2ace 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -931,14 +931,10 @@ struct p9_client *p9_client_create(const char
> *dev_name, char *options) char *client_id;
> 
>  	err = 0;
> -	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
> +	clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
>  	if (!clnt)
>  		return ERR_PTR(-ENOMEM);
> 
> -	clnt->trans_mod = NULL;
> -	clnt->trans = NULL;
> -	clnt->fcall_cache = NULL;
> -
>  	client_id = utsname()->nodename;
>  	memcpy(clnt->name, client_id, strlen(client_id) + 1);
> 
> @@ -948,7 +944,7 @@ struct p9_client *p9_client_create(const char *dev_name,
> char *options)
> 
>  	err = parse_opts(options, clnt);
>  	if (err < 0)
> -		goto free_client;
> +		goto out;
> 
>  	if (!clnt->trans_mod)
>  		clnt->trans_mod = v9fs_get_default_trans();
> @@ -957,7 +953,7 @@ struct p9_client *p9_client_create(const char *dev_name,
> char *options) err = -EPROTONOSUPPORT;
>  		p9_debug(P9_DEBUG_ERROR,
>  			 "No transport defined or default transport\n");
> -		goto free_client;
> +		goto out;
>  	}
> 
>  	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
> @@ -965,7 +961,7 @@ struct p9_client *p9_client_create(const char *dev_name,
> char *options)
> 
>  	err = clnt->trans_mod->create(clnt, dev_name, options);
>  	if (err)
> -		goto put_trans;
> +		goto out;
> 
>  	if (clnt->msize > clnt->trans_mod->maxsize) {
>  		clnt->msize = clnt->trans_mod->maxsize;
> @@ -979,12 +975,12 @@ struct p9_client *p9_client_create(const char
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
> @@ -997,12 +993,8 @@ struct p9_client *p9_client_create(const char
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






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
