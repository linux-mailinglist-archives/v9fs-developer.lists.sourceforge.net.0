Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA469564C11
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 05:39:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8Cve-0002Qt-QI; Mon, 04 Jul 2022 03:39:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o8Cvd-0002Qn-Ar
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 03:39:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N3c1eiQ7nwJJg69WAl+jbstvA3hNmOP3XxOxF8bdAH8=; b=O6I7HMUYvPKRxno3+J410vHT5o
 TDQuyt+If+vpvKUMczqAd8wftWBb1OOcEGcoAPzOAWKeRdWTKAWloYXz7wmdF7eiad/xORQ3hTeWb
 uc2A26PnU7MEo+61hfFvvzO3im1zMsMblRn0i1tbKWQW1lIYDXVOP40LglBAaEKYhoxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N3c1eiQ7nwJJg69WAl+jbstvA3hNmOP3XxOxF8bdAH8=; b=JgSVt007UuIT1Xgn6Vae0JFRFK
 ssJMsJlE4t+YjOfL3iBVp9KYYzAJow9AKrplvTiNj4bN5L6+mFZ2PxeO9W56rrkuEINizqd1NzIWy
 cUiPZQeNreXANfuj5ar3PNVV80LpMdJ8ZBvXbbwQYvrwlwg0QZ9NhlmHNE8d/h57vY90=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8Cvb-0002DM-1U
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 03:39:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9A6B7C01E; Mon,  4 Jul 2022 05:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656905947; bh=N3c1eiQ7nwJJg69WAl+jbstvA3hNmOP3XxOxF8bdAH8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pQHyggw9mrB2lFZavRFDFOp/VP1YlvOdu3KR3ya9HuVOqE5VoDCBEBnvdSZnnEmdT
 1Hjzet1EBR5xuZHQaTydkH3PuZeJVApfAVID8z6eyDUTdcUemQL2QjGw+cFiwUF07T
 mnyAIPA6YA7T4PtMP+8WmkGUwTgiiJGI7Kj6PTHome04n4NU64Lw1pl0+H7JzXtUue
 BMEdMMV5BhCS8keKlvGDSGQ1MqkvrvDHBuP3NtvahmOr8FPKNC5A2hyaznh0lKnYNd
 +XUV7qZcYR7CumsNbI2DdAgeiMkeXHOSYibCFgxTFM8opacxnG6WC2ektQOWWrieN/
 U2KepKzupIOZg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0E1F4C009;
 Mon,  4 Jul 2022 05:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656905946; bh=N3c1eiQ7nwJJg69WAl+jbstvA3hNmOP3XxOxF8bdAH8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cdz3gC+OMwGPXDc8pOgDDCqx2HS4nAnAH46oK+3FxeA6v7z1t5Bb3yZ1//uWrfWJl
 A0l7SatELFmrCT7aNab73cqJXw0JAIKxgsLqR7f1DSjyfJkKGEH/1BejkXzrbGYPAB
 Rvoy1JWAlxT+0Wv3tnvaRgESgRhKb6tsvQhCsX7/STnyct+3W/gj8Sc4TDsfmV2D/C
 BkH1WtgKB9gLGjwf81jF4G2HMfw1QcKYUChMPuAYGy9jlu7CuLHMa4+jdiXltD477V
 gFzgUxEbDBlC0Ah2LdrHXMMArEwS2AQMCXrZNZqgA4XcAlzolEhPmJ+K6tCSzGttjm
 TK5LBzO1Npcww==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8cdbb83f;
 Mon, 4 Jul 2022 03:39:01 +0000 (UTC)
Date: Mon, 4 Jul 2022 12:38:46 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Kent Overstreet <kent.overstreet@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YsJgxoTyYxX1NwyW@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704014243.153050-1-kent.overstreet@gmail.com>
 <20220704014243.153050-3-kent.overstreet@gmail.com>
 <YsJO8gJeRwf96yTi@codewreck.org>
 <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  +Christian, sorry I just noticed you weren't in Ccs again
 -- the patches are currently there if you want a look:
 https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool
 I think it'll conflict a bit with your 8k non-read/write RPCs but I'll take
 care of that when checking it this weekend. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8Cvb-0002DM-1U
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

+Christian, sorry I just noticed you weren't in Ccs again --
the patches are currently there if you want a look:
https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool 

I think it'll conflict a bit with your 8k non-read/write RPCs but I'll
take care of that when checking it this weekend.


Kent Overstreet wrote on Sun, Jul 03, 2022 at 11:05:57PM -0400:
> > We shouldn't have any user calling with more at this point (the
> > user-provided size comes from p9_client_prepare_req arguments and it's
> > either msize or header size constants); and it probably makes sense to
> > check and error out rather than cap it.
> 
> If that's the case I think we should just switch the warning to a BUG_ON() - I
> just wasn't sure from reading the code if that was really guarded against.

yes, BUG_ON is good for me.

> > > -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> > > +	if (p9_fcall_init(c, &req->tc, 0, alloc_msize))
> > >  		goto free_req;
> > > -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> > > +	if (p9_fcall_init(c, &req->rc, 1, alloc_msize))
> > 
> > given the two rc/tc buffers are of same size I don't see the point of
> > using two caches either, you could just double the min number of
> > elements to the same effect?
> 
> You can't double allocate from the same mempool, that will deadlock if multiple
> threads need the last element at the same time - I should've left a comment for
> that.

hmm, looking at the code as long as min elements is big enough the
deadlock becomes increasingly difficult to hit -- but I guess there's no
guarantee we won't get 8 threads each getting their first item from the
pool and starving each other on the second... Fair enough, thank you for
the comment.

> @@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
>  	if (!req)
>  		return ERR_PTR(-ENOMEM);
>  
> -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> -		goto free_req;
> -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> -		goto free;
> +	p9_fcall_init(c, &req->tc, 0, alloc_msize);
> +	p9_fcall_init(c, &req->rc, 1, alloc_msize);


mempool allocation never fails, correct?

(don't think this needs a comment, just making sure here)


This all looks good to me, will queue it up in my -next branch after
running some tests next weekend and hopefully submit when 5.20 opens
with the code making smaller allocs more common.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
