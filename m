Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC13D68B0
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Jul 2021 23:31:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m88Bh-0004Pu-0P; Mon, 26 Jul 2021 21:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sstabellini@kernel.org>) id 1m88Bf-0004Pn-Tj
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 21:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=di7cEwYJsl/AxoOq/susMPtv/1UXA9kiGLH5WkEqG+s=; b=VCTpthYGKjiLKiNumWd2OMFLq6
 xDkeiWNrlfOLI2ZDPEB9FUKC7g3b/AZAHj2twlbs9vsnFup07U4TPg1/z6MG1RB06tHR4xv0KoY8k
 6m2P35hD5/00ChIzmN9NgvpymLyuDx1bmduHdiJPzuf00jfEn9GqY2aJvIm7RN30LxKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=di7cEwYJsl/AxoOq/susMPtv/1UXA9kiGLH5WkEqG+s=; b=gu211HW9oLMYaj4sJDlwkyaaWk
 qBf6SInvh/uFiz+cViyaXPKY+TtUrFYdizKQd2H19ZQ7p775UZOOJXNknNqFI8VUda16NNPC5mYSl
 bLnmItcsJH5BQmzKNY7fEfkwXuKcuununXfC92/BULUA4dgaRBwqgvqI+nBuzfLirDS4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m88Bb-0004As-I4
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 21:30:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E5B8C60F6B;
 Mon, 26 Jul 2021 21:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627335045;
 bh=10sumWN6KbuT6Bm4qG/cts13R1eLADJ18/WfByzAeGs=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=Qnm4bnw50azM1D1dMwCqm5ptC3S/j1h5Z0cBjmlIcP5NPuh+X9gt4fF9/ABBZV6D+
 2nEaKThLrbUKediyIMqJxAn6iUblKyjXsZaVlP27lt0Yd1WDcY+AYHsbc+qKd1Fn9P
 HjT8TsxDJBw2WE4+f33fSnw66hvdPKEARchNVDuwYY51Tuwzh6xPceTNMSlj0lPwuK
 Tcxy+IGN1VoV1haxQF40g/uNJ5HWgG7rCHR9ZJKucSfkMx+PYEeLIISWffeLlikCOU
 iLjUZi2+DjiC7yH2c+JGyB+dGWAzcfMWrNOX8b/vPLNrEbzRDEnWiBEdVBL0WgtYTI
 iVss8A5X/hBBQ==
Date: Mon, 26 Jul 2021 14:30:44 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: asmadeus@codewreck.org
In-Reply-To: <YP3NqQ5NGF7phCQh@codewreck.org>
Message-ID: <alpine.DEB.2.21.2107261357210.10122@sstabellini-ThinkPad-T480s>
References: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
 <YP3NqQ5NGF7phCQh@codewreck.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m88Bb-0004As-I4
Subject: Re: [V9fs-developer] [PATCH] 9p/xen: Fix end of loop tests for
 list_for_each_entry
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
Cc: lucho@ionkov.net, Stefano Stabellini <sstabellini@kernel.org>,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Harshvardhan Jha <harshvardhan.jha@oracle.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 26 Jul 2021, asmadeus@codewreck.org wrote:
> Harshvardhan Jha wrote on Sun, Jul 25, 2021 at 11:21:03PM +0530:
> > The list_for_each_entry() iterator, "priv" in this code, can never be
> > NULL so the warning would never be printed.
> 
> hm? priv won't be NULL but priv->client won't be client, so it will
> return -EINVAL alright in practice?
> 
> This does fix an invalid read after the list head, so there's a real
> bug, but the commit message needs fixing.

Agreed


> > Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
> > ---
> > From static analysis.  Not tested.
> 
> +Stefano in To - I also can't test xen right now :/
> This looks functional to me but if you have a bit of time to spare just
> a mount test can't hurt.

Yes, I did test it successfully. Aside from the commit messaged to be
reworded:

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
Tested-by: Stefano Stabellini <sstabellini@kernel.org>


> > ---
> >  net/9p/trans_xen.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> > index f4fea28e05da..3ec1a51a6944 100644
> > --- a/net/9p/trans_xen.c
> > +++ b/net/9p/trans_xen.c
> > @@ -138,7 +138,7 @@ static bool p9_xen_write_todo(struct xen_9pfs_dataring *ring, RING_IDX size)
> >  
> >  static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
> >  {
> > -	struct xen_9pfs_front_priv *priv = NULL;
> > +	struct xen_9pfs_front_priv *priv;
> >  	RING_IDX cons, prod, masked_cons, masked_prod;
> >  	unsigned long flags;
> >  	u32 size = p9_req->tc.size;
> > @@ -151,7 +151,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
> >  			break;
> >  	}
> >  	read_unlock(&xen_9pfs_lock);
> > -	if (!priv || priv->client != client)
> > +	if (list_entry_is_head(priv, &xen_9pfs_devs, list))
> >  		return -EINVAL;
> >  
> >  	num = p9_req->tc.tag % priv->num_rings;


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
