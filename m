Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5725A3D6A6E
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 01:54:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m8AQo-0001dN-0R; Mon, 26 Jul 2021 23:54:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sstabellini@kernel.org>) id 1m8AQn-0001dC-5r
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 23:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cxc0r7eep6SxYlrrpuwhKUygXsgM7s8ZnU4gh0H8Qpc=; b=Qb/mWDN9YtcEv3+Pnqrq8cmkOi
 luG9rGUWFki4wVpyEk0LU8+zCCm5XD6A6mOlz0ATMv0pV3bvdDt1HESx8U0I/2ccY3sAWGddUww7b
 xGNbKoLfPdFI/jy38nO4Grmw6IH9tvN6nuIdYQiIgcD+275o7aetdAuJrT2UL0wue3Zc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cxc0r7eep6SxYlrrpuwhKUygXsgM7s8ZnU4gh0H8Qpc=; b=ME0LDyghZx2X+M4iAjfn0uo5Es
 HzF06oBcMhcqluiuigNeZh6S8kyK5VFyMZeQmlXw03kR1+VSidJSKo/k+tfpzBcbZzvVsxENu0bse
 9tPBAqG9CD+U9yv8TRKNoyJJPrMpGyCZc7QrRwFqfpNfM3m+bm+y4B0smIxiJ+9chbyE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8AQi-003blW-Va
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 23:54:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F31A60F94;
 Mon, 26 Jul 2021 23:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627343670;
 bh=iv+ATOSmwiwNnLSQnmZrL8/5KkfaAq/A3X/tsBD9WHo=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=XrdBfjd+bjwD4/0PhyJb6mCaEEXRj94JnYjShRENPJ+i3K7BviN0W/BdTMoM7fMZE
 vv4ow0zW74MUmAF6RfCSJuC/ROSQtXN28ThJopcNl44LakLmlmBz0LVG3ZjTXYYCuI
 aLxNGi2KA6R3MNmd+7oWSb4TFMXH+FiWyhNJRUcqDJuYuaSTrcfv4uSeXid0qy0Bzt
 l9IgKTo3L4J9ua3xKCToQ/k9zBRz6wPhAZ+3YMu2ijRWtEu95gMMRw8CVfjp+7+mS2
 15nZ7NODNRZKIUV8nSZzCscTdaltslCtORrxOJHXdRBabS5ZKKqklTtggUi437eDNV
 NXNcK1ampO7Cw==
Date: Mon, 26 Jul 2021 16:54:29 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Harshvardhan Jha <harshvardhan.jha@oracle.com>
In-Reply-To: <d956e0f2-546e-ddfd-86eb-9afb8549b40d@oracle.com>
Message-ID: <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
References: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
 <YP3NqQ5NGF7phCQh@codewreck.org>
 <alpine.DEB.2.21.2107261357210.10122@sstabellini-ThinkPad-T480s>
 <d956e0f2-546e-ddfd-86eb-9afb8549b40d@oracle.com>
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
X-Headers-End: 1m8AQi-003blW-Va
Subject: Re: [V9fs-developer] [External] : Re: [PATCH] 9p/xen: Fix end of
 loop tests for list_for_each_entry
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
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 27 Jul 2021, Harshvardhan Jha wrote:
> On 27/07/21 3:00 am, Stefano Stabellini wrote:
> > On Mon, 26 Jul 2021, asmadeus@codewreck.org wrote:
> > > Harshvardhan Jha wrote on Sun, Jul 25, 2021 at 11:21:03PM +0530:
> > > > The list_for_each_entry() iterator, "priv" in this code, can never be
> > > > NULL so the warning would never be printed.
> > > 
> > > hm? priv won't be NULL but priv->client won't be client, so it will
> > > return -EINVAL alright in practice?
> > > 
> > > This does fix an invalid read after the list head, so there's a real
> > > bug, but the commit message needs fixing.
> > 
> > Agreed
> > 
> > 
> > > > Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
> > > > ---
> > > >  From static analysis.  Not tested.
> > > 
> > > +Stefano in To - I also can't test xen right now :/
> > > This looks functional to me but if you have a bit of time to spare just
> > > a mount test can't hurt.
> > 
> > Yes, I did test it successfully. Aside from the commit messaged to be
> > reworded:
> How's this?
> ===========================BEGIN========================================
> 9p/xen: Fix end of loop tests for list_for_each_entry
> 
> This patch addresses the following problems:
>  - priv can never be NULL, so this part of the check is useless
>  - if the loop ran through the whole list, priv->client is invalid and
> it is more appropriate and sufficient to check for the end of
> list_for_each_entry loop condition.
> 
> Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>

That's fine


> ---
> From static analysis. Not tested.
> ===========================END==========================================
> > 
> > Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> > Tested-by: Stefano Stabellini <sstabellini@kernel.org>
> > 
> > 
> > > > ---
> > > >   net/9p/trans_xen.c | 4 ++--
> > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> > > > index f4fea28e05da..3ec1a51a6944 100644
> > > > --- a/net/9p/trans_xen.c
> > > > +++ b/net/9p/trans_xen.c
> > > > @@ -138,7 +138,7 @@ static bool p9_xen_write_todo(struct
> > > > xen_9pfs_dataring *ring, RING_IDX size)
> > > >     static int p9_xen_request(struct p9_client *client, struct p9_req_t
> > > > *p9_req)
> > > >   {
> > > > -	struct xen_9pfs_front_priv *priv = NULL;
> > > > +	struct xen_9pfs_front_priv *priv;
> > > >   	RING_IDX cons, prod, masked_cons, masked_prod;
> > > >   	unsigned long flags;
> > > >   	u32 size = p9_req->tc.size;
> > > > @@ -151,7 +151,7 @@ static int p9_xen_request(struct p9_client *client,
> > > > struct p9_req_t *p9_req)
> > > >   			break;
> > > >   	}
> > > >   	read_unlock(&xen_9pfs_lock);
> > > > -	if (!priv || priv->client != client)
> > > > +	if (list_entry_is_head(priv, &xen_9pfs_devs, list))
> > > >   		return -EINVAL;
> > > >     	num = p9_req->tc.tag % priv->num_rings;
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
