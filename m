Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B755EF372
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 12:30:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odqnw-0003ZB-Oq;
	Thu, 29 Sep 2022 10:30:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odqnu-0003Z1-1p
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 10:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q1JuDuxPM80imtWmD4gg39v+nFleKhM8uTwldv2ouMY=; b=ktefXzNUYpDl/tGiy4Mn6weYRl
 yyWu8O5wlb7qE2EbiGCC6b6JpVny7DJEUNs0xUqljuX+A0OmzSjpbJ0Ku85P3q5qjh16oCk8V47Nn
 bLvNF5nIQ9C5z2t9f9pzXC1oreEa0gpHtfsMESYFkC7awyssMaafIi4ngqVI1/9VqKvs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q1JuDuxPM80imtWmD4gg39v+nFleKhM8uTwldv2ouMY=; b=DMWaSwpRdqsTW/KoYW8NejfMsd
 81e6QaKZAtN+SAdNli00k6HPaSGprP+BtpZePyhXW6hO2d8Ikq7BpM6ZcfUkTxsmzjOOKXCeH4dlL
 PQaXbOGFEr0iWTUYsBXaX1VlhWDTpgrKN1kIgxHSzHgmrFtzK5/PB4o//7d3i3YijeW4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odqnq-0006ji-Vp for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 10:30:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B801FC01E; Thu, 29 Sep 2022 12:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664447394; bh=q1JuDuxPM80imtWmD4gg39v+nFleKhM8uTwldv2ouMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=30/yviptwrioaqHhru9F8bp8TLherPm25w1M2Sqkv9OKYRHljD+LLkjkY+U7wEiN5
 AqgeyLjlvdMi+HehSgk52ITf0OpRtJxBSIjuGf4UO6/jKDNZC9w5AdPnOxEvDdIId8
 H4aQfnzy05q5e6QpbJOh1dRnyKizzttAaoBAH3VxFKgkWdfhTHqHDyfzg6bhR3DA4q
 Y+Y3mHl7n6r+EHke8BQlogycXchBZgn8CbacMEX+ZBsSSPJZfLcT6M3dnAa/Gtzp8n
 6ipU0R7p33fckw0DoAmOyVHAaj8FO4yI2Gfjy+KvqXmxjc1C7MkxbBeP9U/88xpHcy
 UwujdoyFQsQ8A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E1839C009;
 Thu, 29 Sep 2022 12:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664447393; bh=q1JuDuxPM80imtWmD4gg39v+nFleKhM8uTwldv2ouMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rznw3nVdTw/N22lYinrDRHbBvshtkZrX7+LAx6hZITG1omSNQxUg56Jz0PWNd/2sn
 aBO4JfJHUmJ5Ev7+2FOllEfaOQwLMB0SL5vuUdwTbDTxSlFBb0lrmIO2fjgFzkIMZO
 TCNvtODBNURRovM9apRQGOTEHmzSI8l868BjU/JSbJixZHjH79sO9rXjp6YnMhRcYV
 +FcxMWKodYEY+/SkON6go4Qc03su0dGKqAAyTaP+kWikGXmTFbFE1+tSazdLFW2Uvl
 PK+Qv3e82PW1tuwZV4nvSIY5P5515phZTDf3wQX3TCIKhjH7AI4GrzUsvajoAY0HZ1
 OrKbJk9azbUPw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3d07a534;
 Thu, 29 Sep 2022 10:29:48 +0000 (UTC)
Date: Thu, 29 Sep 2022 19:29:33 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YzVzjR4Yz3Oo3JS+@codewreck.org>
References: <cover.1664442592.git.leonro@nvidia.com>
 <743fc62b2e8d15c84e234744e3f3f136c467752d.1664442592.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <743fc62b2e8d15c84e234744e3f3f136c467752d.1664442592.git.leonro@nvidia.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leon Romanovsky wrote on Thu, Sep 29,
 2022 at 12:37:56PM +0300:
 > Make sure that all variables are initialized and released in correct >
 order. Haven't tried running or compiling, comments out of my head that might
 be wrong below 
 Content analysis details:   (-0.2 points, 6.0 required)
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1odqnq-0006ji-Vp
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

Leon Romanovsky wrote on Thu, Sep 29, 2022 at 12:37:56PM +0300:
> Make sure that all variables are initialized and released in correct
> order.

Haven't tried running or compiling, comments out of my head that might
be wrong below

> 
> Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com

You're adding this report tag but I don't see how you fix that failure.
What you need is p9_tag_cleanup(clnt) from p9_client_destroy -- I assume
this isn't possible for any fid to be allocated at this point so the fid
destroying loop is -probably- optional.

I would assume it is needed from p9_client_version failures.


> Signed-off-by: Leon Romanovsky <leon@kernel.org>
> ---
>  net/9p/client.c | 37 ++++++++++++-------------------------
>  1 file changed, 12 insertions(+), 25 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index aaa37b07e30a..8277e33506e7 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -179,7 +179,6 @@ static int parse_opts(char *opts, struct p9_client *clnt)
>  				goto free_and_return;
>  			}
>  
> -			v9fs_put_trans(clnt->trans_mod);

Pretty sure you'll be "leaking transports" if someone tries to pass
trans=foo multiple times; this can't be removed...(continues below)...


>  			clnt->trans_mod = v9fs_get_trans_by_name(s);
>  			if (!clnt->trans_mod) {
>  				pr_info("Could not find request transport: %s\n",
> @@ -187,7 +186,7 @@ static int parse_opts(char *opts, struct p9_client *clnt)
>  				ret = -EINVAL;
>  			}
>  			kfree(s);
> -			break;
> +			goto free_and_return;

... unless you also break the whole parsing, with this asking for -o
trans=virtio,msize=1M will just ignore the msize argument.
(or anything else that follows)

I appreciate that you're trying to avoid the get_default_trans below,
but unless you just remember the last string and try to get it get/put
trans is the most straight forward way to go.


(Note you just got me to try weird parsing and my old version was
double-puting these modules because of the put_trans below in this
function echoes with the client destroy. That'd just require removing
the put here though (or nulling after put), yet another invariant I had
wrongly assumed... Anyway.)


>  		case Opt_legacy:
>  			clnt->proto_version = p9_proto_legacy;
>  			break;
> @@ -211,9 +210,14 @@ static int parse_opts(char *opts, struct p9_client *clnt)
>  		}
>  	}
>  
> +	clnt->trans_mod = v9fs_get_default_trans();
> +	if (!clnt->trans_mod) {
> +		ret = -EPROTONOSUPPORT;
> +		p9_debug(P9_DEBUG_ERROR,
> +			 "No transport defined or default transport\n");
> +	}
> +
>  free_and_return:
> -	if (ret)
> -		v9fs_put_trans(clnt->trans_mod);

(oh, and if you parse options after trans= you'll need some sort of
escape hatch here...)

>  	kfree(tmp_options);
>  	return ret;
>  }
> @@ -956,19 +960,14 @@ static int p9_client_version(struct p9_client *c)
>  
>  struct p9_client *p9_client_create(const char *dev_name, char *options)
>  {
> -	int err;
>  	struct p9_client *clnt;
>  	char *client_id;
> +	int err = 0;
>  
> -	err = 0;
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
> @@ -980,16 +979,6 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
>  	if (err < 0)
>  		goto free_client;
>  
> -	if (!clnt->trans_mod)
> -		clnt->trans_mod = v9fs_get_default_trans();
> -
> -	if (!clnt->trans_mod) {
> -		err = -EPROTONOSUPPORT;
> -		p9_debug(P9_DEBUG_ERROR,
> -			 "No transport defined or default transport\n");
> -		goto free_client;
> -	}
> -
>  	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
>  		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
>  
> @@ -1044,9 +1033,8 @@ void p9_client_destroy(struct p9_client *clnt)
>  
>  	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
>  
> -	if (clnt->trans_mod)
> -		clnt->trans_mod->close(clnt);
> -
> +	kmem_cache_destroy(clnt->fcall_cache);

Pretty sure kmem_cache used to issue a warning when we did that (hence
me trying to move it up on allocation) -- at this point there can still
be in flight requests we need to finish freeing before we can destroy
the cache.

> +	clnt->trans_mod->close(clnt);
>  	v9fs_put_trans(clnt->trans_mod);
>  
>  	idr_for_each_entry(&clnt->fids, fid, id) {
> @@ -1056,7 +1044,6 @@ void p9_client_destroy(struct p9_client *clnt)
>  
>  	p9_tag_cleanup(clnt);
>  
> -	kmem_cache_destroy(clnt->fcall_cache);
>  	kfree(clnt);
>  }
>  EXPORT_SYMBOL(p9_client_destroy);

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
