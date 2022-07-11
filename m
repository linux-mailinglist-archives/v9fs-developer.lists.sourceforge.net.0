Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4456D6F8
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Jul 2022 09:40:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAo1f-0008RG-Vw; Mon, 11 Jul 2022 07:40:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oAo1e-0008R9-To
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Jul 2022 07:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4znMRb8yNMIL2ImNXJHHakTw5e86CC6v8rfhTcy+ZYY=; b=NCxyxZap+iLjBDuX4aQ71Nv9iP
 joZAN7T5uJSy49jEOKU7EqIiG8WBiM6CkUT59LXTOrTjS5cWzHRM0lO+QAvv0XIIfGRyGiuo00W/Y
 r+/ERH61sUQkDJZubYiswxF2BMOJoLG2jUAKDSu+jquHb9QgTRtaqlQmLyYurdKGpuEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4znMRb8yNMIL2ImNXJHHakTw5e86CC6v8rfhTcy+ZYY=; b=cqxweDFLvNWPbO1qpVwkcGr/ym
 oUTue+DDup8WuUlMKXt47Tpm65YVrFWRiMR6x1/IHb1g0wkZUHD9etpBRkWGu8829rxu2oAYzkMRF
 13XQ0eEmTT1ThdtFSKZXPnFT29G84cinGD5WQ6liFs+2dkwtzyd9wFamwwNf/nIL4GeA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAo1b-00DbDO-Ih
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Jul 2022 07:40:14 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 194E8C01F; Mon, 11 Jul 2022 09:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657525205; bh=4znMRb8yNMIL2ImNXJHHakTw5e86CC6v8rfhTcy+ZYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0Hp+pjZdW6nvsDpQMwtbcZJsXG4UaF+GS8rGC4AeCNlM/agyHrpB3s+OyC4XivVD+
 zCrblT85F8a97htBCZ7V6w6XacakGklghoTZqzqUc7ZNuiy+y1Bu0yd5JHSwgtdpBy
 TXrWkJlk89SEWozd0l91LgwGLBfPlNMVy1PeQk6TzJWzpR60QMBDqqQWPgRsiMOPsb
 3QC5RbGHhn9f4fe1pIkWBD7JCV4pBjHqRKfoBiPgYYY/uEtJSMwMw8U02LuZiHsWgn
 vaGV70wkJZT2xLQba66jPV/BE/CCG4KWnTFH8AxdsDykNzB70URPLFpJSQyvwuHyId
 jUUwEAkXOMwtw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A6C79C009;
 Mon, 11 Jul 2022 09:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657525204; bh=4znMRb8yNMIL2ImNXJHHakTw5e86CC6v8rfhTcy+ZYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=APOSJV0WYbmBOmerpJvPFt0U+eh10sL0i+zdv7vzmc+EW0jRxUGJacQN7/3Rr/9iW
 Qt6ZNPhVMYkoXX0VXV2Om/asntBOqpgLoTH2CRKEQdF6VjL3qog2JLbGasmTzZ5l85
 tNG45gtzUEjVx6pBM6wrryisuqFJXXZSFA4p/ZTuO2pg7T/Szs6JjCnWaY7Oqtyna7
 fZhNEKYR4J764OWtaHk3wHhCk5Ze5s3ct67tfhdvX5hLxAkUKUFQ77OqDssV+EQK49
 yPohvHCZ4xhb9Pw3F0DQY5DyZ9+zfK53vJ4WsFSRv91L1hgyRtamHOPYB4bjcgpCnr
 Rnylswyj3je0Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d9434db7;
 Mon, 11 Jul 2022 07:39:56 +0000 (UTC)
Date: Mon, 11 Jul 2022 16:39:41 +0900
From: asmadeus@codewreck.org
To: Hangyu Hua <hbh25y@gmail.com>
Message-ID: <YsvTvalrwd4bxO75@codewreck.org>
References: <20220711065907.23105-1-hbh25y@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220711065907.23105-1-hbh25y@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hangyu Hua wrote on Mon, Jul 11, 2022 at 02:59:07PM +0800:
 > A ref got in p9_tag_lookup needs to be put when functions enter the > error
 path. > > Fix this by adding p9_req_put in error path. I wish it was that
 simple. Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1oAo1b-00DbDO-Ih
Subject: Re: [V9fs-developer] [PATCH] net: 9p: fix possible refcount leak in
 p9_read_work() and recv_done()
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
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, tomasbortoli@gmail.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hangyu Hua wrote on Mon, Jul 11, 2022 at 02:59:07PM +0800:
> A ref got in p9_tag_lookup needs to be put when functions enter the
> error path.
> 
> Fix this by adding p9_req_put in error path.

I wish it was that simple.

Did you actually observe a leak?

> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index 8f8f95e39b03..c4ccb7b9e1bf 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -343,6 +343,7 @@ static void p9_read_work(struct work_struct *work)
>  			p9_debug(P9_DEBUG_ERROR,
>  				 "No recv fcall for tag %d (req %p), disconnecting!\n",
>  				 m->rc.tag, m->rreq);
> +			p9_req_put(m->rreq);
>  			m->rreq = NULL;
>  			err = -EIO;
>  			goto error;
> @@ -372,6 +373,8 @@ static void p9_read_work(struct work_struct *work)
>  				 "Request tag %d errored out while we were reading the reply\n",
>  				 m->rc.tag);
>  			err = -EIO;
> +			p9_req_put(m->rreq);
> +			m->rreq = NULL;
>  			goto error;
>  		}
>  		spin_unlock(&m->client->lock);


for tcp, we still have that request in m->req_list, so we should be
calling p9_client_cb which will do the p9_req_put in p9_conn_cancel.

If you do it here, you'll get a refcount overflow and use after free.

> diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
> index 88e563826674..82b5d6894ee2 100644
> --- a/net/9p/trans_rdma.c
> +++ b/net/9p/trans_rdma.c
> @@ -317,6 +317,7 @@ recv_done(struct ib_cq *cq, struct ib_wc *wc)
>  	/* Check that we have not yet received a reply for this request.
>  	 */
>  	if (unlikely(req->rc.sdata)) {
> +		p9_req_put(req);
>  		pr_err("Duplicate reply for request %d", tag);
>  		goto err_out;
>  	}

This one isn't as clear cut, I see that they put the client in a
FLUSHING state but nothing seems to acton on it... But if this happens
we're already in the use after free realm -- it means rc.sdata was
already set so the other thread could be calling p9_client_cb anytime if
it already hasn't, and yet another thread will then do the final ref put
and free this.
We shouldn't free this here as that would also be an overflow. The best
possible thing to do at this point is just to stop using that pointer.


If you actually run into a problem with these refcounts (should get a
warning on umount that something didn't get freed) then by all mean
let's look further into it, but please don't send such patches without
testing the error paths you're "fixing" -- I'm pretty sure a reproducer
to hit these paths would bark errors in dmesg as refcount has an
overflow check.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
