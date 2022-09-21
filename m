Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD20C5E5522
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Sep 2022 23:24:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ob7CL-0005Et-D8;
	Wed, 21 Sep 2022 21:24:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ob7CK-0005Ej-1e
 for v9fs-developer@lists.sourceforge.net;
 Wed, 21 Sep 2022 21:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hk7ZZrOLXWtgfdRaSKqvrZagleJmeKAvZfrxZ3V1+4U=; b=NsEJpmXTI/F3eKOy2p9vIWOua9
 ZGL2XknC0E3EJTBuH4uXCFD3UJisjMODGXgX7R5F6KjfpVHOs3v508JS4DoprLWv+Ioo3J4nhJn4E
 hmGvVBmHJ9Ls2eyqwKvLxV3rNEA/A8npF8VPmh5vSL2hoDEKjdZ2S8HLBXRe1GgS+0UA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hk7ZZrOLXWtgfdRaSKqvrZagleJmeKAvZfrxZ3V1+4U=; b=CKN4sy5yT5gm9VUAFLIia0JaAP
 i37AhxaFFKB6ubjoX32Dz3WL4K7MtiuuP0W+nzQYpbfXTj+jbl8H5WHcaZI+z0y6Gjo/b6gWHns18
 cITukAp0JDGSY+n5+LeY6uOVprwS78DylyEpfH/Nsq7YFkj6+B5FbqvTr+/jJ9CezJ+o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ob7CQ-0003Dh-KF for v9fs-developer@lists.sourceforge.net;
 Wed, 21 Sep 2022 21:24:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AE830C01D; Wed, 21 Sep 2022 23:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1663795436; bh=Hk7ZZrOLXWtgfdRaSKqvrZagleJmeKAvZfrxZ3V1+4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XvsdswwrEr+kgv5ETd0AAQIVrGoJaupQkamWJ3HK4ox8f+0Hv/2k96b6p8eVdyMi4
 NUez9shxRcM+eqwBqetGl7aCNeNmIVesU+YVumsb9Qp+Uaanb0TJOIctX130JJiP76
 HZnyLIdIAB3uLmwcEryL04Z2g7xYzEsGtnsYggxlL850ZVi2XYa+YJIHZrf9fwBkYQ
 KSOzKp8UZwWEmtc9lcOpwQDi0uOGDXJceCElWW79iKegn4qTOm6Fe4e4d0Msltq4LH
 llQLuzsjL/dPUfB8AEZfI0iS8OWJZ4Z1gfyIZEEa449yL7VltPgDLoubtBNlajES6n
 ipB2BPTtUyRSQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0C307C009;
 Wed, 21 Sep 2022 23:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1663795435; bh=Hk7ZZrOLXWtgfdRaSKqvrZagleJmeKAvZfrxZ3V1+4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FGhJLRqd/qL7kQAGs0r9yDBb1BBTsU4zmbDGuzRBflqJjcoOoskTvIS8EM+qTjqMS
 0IrncS25vBY6uO854sulwPF3NRoS68n7a2XrvtMRBmyNsrgbA8uc4xYbraNV4yztTG
 nfcOWy73CyOWftTzG0KIdf0DMPAIE/GFQkJ+5V8aP4+Nqclv3SR2/WlwXo0t8k/BPr
 G4gCsGCkaSHqccsPFJ87WNXJBrvLBDw5alDb+60hFYnIW0krPK5VluEGV3To2xgN8X
 sruGUbpUIa+pR9qnlAOrZsw6eh1eUL20t8id4VCbN6RQ/6HOFRTJ5H9fx/toeXPP/0
 sPIWWyoImckpw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 69357d36;
 Wed, 21 Sep 2022 21:23:50 +0000 (UTC)
Date: Thu, 22 Sep 2022 06:23:35 +0900
From: asmadeus@codewreck.org
To: Li Zhong <floridsleeves@gmail.com>
Message-ID: <YyuA13q/B236lZ6U@codewreck.org>
References: <20220921210921.1654735-1-floridsleeves@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921210921.1654735-1-floridsleeves@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Li Zhong wrote on Wed, Sep 21, 2022 at 02:09:21PM -0700: >
 parse_opts() could fail when there is error parsing mount options into >
 p9_fd_opts structure due to allocation failure. In that case opts wi [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ob7CQ-0003Dh-KF
Subject: Re: [V9fs-developer] [PATCH net-next v1] net/9p/trans_fd: check the
 return value of parse_opts
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Li Zhong wrote on Wed, Sep 21, 2022 at 02:09:21PM -0700:
> parse_opts() could fail when there is error parsing mount options into
> p9_fd_opts structure due to allocation failure. In that case opts will
> contain invalid data.

In practice opts->rfd/wfd is set to ~0 before the failure modes so they
will contain exactly what we want them to contain: something that'll
fail the check below.

It is however cleared like this so I'll queue this patch in 9p tree when
I have a moment, but I'll clarify the commit message to say this is
NO-OP : please feel free to send a v2 if you want to put your own words
in there; otherwise it'll be something like below:
----
net/9p: clarify trans_fd parse_opt failure handling

This parse_opts will set invalid opts.rfd/wfd in case of failure which
we already check, but it is not clear for readers that parse_opts error
are handled in p9_fd_create: clarify this by explicitely checking the
return value.
----


Also, in practice args != null doesn't seem to be checked before (the
parse_opt() in client.c allows it) so keeping the error message common
might be better?
(allocation failure will print its own messages anyway and doesn't need
checking)

> 
> Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> ---
>  net/9p/trans_fd.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index e758978b44be..11ae64c1a24b 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -1061,7 +1061,9 @@ p9_fd_create(struct p9_client *client, const char *addr, char *args)
>  	int err;
>  	struct p9_fd_opts opts;
>  
> -	parse_opts(args, &opts);
> +	err = parse_opts(args, &opts);
> +	if (err < 0)
> +		return err;
>  	client->trans_opts.fd.rfd = opts.rfd;
>  	client->trans_opts.fd.wfd = opts.wfd;
>  


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
