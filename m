Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A671633072
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 00:02:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxFnl-0007v1-DN;
	Mon, 21 Nov 2022 23:02:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sstabellini@kernel.org>) id 1oxFnj-0007uv-IH
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8xmTN0+jHD3TbhyXOVEAKEiECQoFTCIEoVXpBVC+Uag=; b=BFT7ZJscFDLjB43Vb53iC/XTRx
 wFvEeyFnSWsxBfonaAPzTK8s5LneRylH3ya6hEOCu8IruOyaZhgaEdC7X59R8rr/qjDCXVo9HsbFy
 iANSP8z/lwd9H/IxiGnm98ifyXkRx9BDvl3MVq6lGaAxfqic9MxqmV6sR3MOmZlxpiS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8xmTN0+jHD3TbhyXOVEAKEiECQoFTCIEoVXpBVC+Uag=; b=igDN2xjZ0h3eCOJY3ueRYfk2u4
 eDqpVOLEvhwHMvOq7W2AnlZ8Fd3GHdqM2gaO0KMOobKLTwIUoDhTSvRdijFyTj7MVI4r57dptYd5v
 mKnRb43bVq8qVolub1n+X2wiK6SAUVnJ6bcVOJL4AgftZJgxtecbW25K+Ey1RHjHai5M=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxFnf-009KWJ-FD for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:02:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 40B1D614C3;
 Mon, 21 Nov 2022 23:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE7EEC433C1;
 Mon, 21 Nov 2022 23:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669071716;
 bh=4BiwOETwQYdt5roOa+pyNI4BC0UtBQJIK+gof+CXNgo=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=tMT3E6D8Od7ZaPXYacJ0XmiiEdRQ6J4P13ZPab1S1+rTTaOqC1XLoFw6sxvx8ZK/j
 ns0TT1bq/e1rr0PqD/S4lSby5OXcQPbhJ+9JxW286Th27f8y3H3Z7e9nOqNsCLP0wO
 8/rtl+SbV4mxQ227rClC0S5HldW4+ZTixPjNJqohTtWFxtPD74d3p5WAEFhqLhnHJ6
 CWNK1a+SA3O+WWnAD5mDhoncTWhrK3yVnw5/sPAalelDPYE/pmlriv9hqLiD+UdEFn
 XzlZk+pqQvR5eqPlSPXIYW1D9exxess1/AbZvmmyUDKdabK+WiLbBJEtW6M3IrIscu
 KRh2t2CbQd/1g==
Date: Mon, 21 Nov 2022 15:01:54 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To: Christian Schoenebeck <linux_oss@crudebyte.com>
In-Reply-To: <37091478.n1eaNAWdo1@silver>
Message-ID: <alpine.DEB.2.22.394.2211211454540.1049131@ubuntu-linux-20-04-desktop>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
 <37091478.n1eaNAWdo1@silver>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 21 Nov 2022, Christian Schoenebeck wrote: > On Friday,
 November 18, 2022 2:55:41 PM CET Dominique Martinet wrote: > > trans_xen
 did not check the data fits into the buffer before copying > > f [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxFnf-009KWJ-FD
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for
 buffer size
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
 Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 21 Nov 2022, Christian Schoenebeck wrote:
> On Friday, November 18, 2022 2:55:41 PM CET Dominique Martinet wrote:
> > trans_xen did not check the data fits into the buffer before copying
> > from the xen ring, but we probably should.
> > Add a check that just skips the request and return an error to
> > userspace if it did not fit
> > 
> > Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> > ---
> > 
> > This comes more or less as a follow up of a fix for trans_fd:
> > https://lkml.kernel.org/r/20221117091159.31533-1-guozihua@huawei.com
> > Where msize should be replaced by capacity check, except trans_xen
> > did not actually use to check the size fits at all.
> > 
> > While we normally trust the hypervisor (they can probably do whatever
> > they want with our memory), a bug in the 9p server is always possible so
> > sanity checks never hurt, especially now buffers got drastically smaller
> > with a recent patch.
> > 
> > My setup for xen is unfortunately long dead so I cannot test this:
> > Stefano, you've tested v9fs xen patches in the past, would you mind
> > verifying this works as well?
> > 
> >  net/9p/trans_xen.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> > index b15c64128c3e..66ceb3b3ae30 100644
> > --- a/net/9p/trans_xen.c
> > +++ b/net/9p/trans_xen.c
> > @@ -208,6 +208,14 @@ static void p9_xen_response(struct work_struct *work)
> >  			continue;
> >  		}
> >  
> > +		if (h.size > req->rc.capacity) {
> > +			dev_warn(&priv->dev->dev,
> > +				 "requested packet size too big: %d for tag %d with capacity %zd\n",
> > +		                 h.size, h.tag, rreq->rc.capacity);
> > +			req->status = REQ_STATUS_ERROR;
> > +			goto recv_error;
> > +		}
> > +
> 
> Looks good (except of s/rreq/req/ mentioned by Stefano already).
> 
> >  		memcpy(&req->rc, &h, sizeof(h));
> 
> Is that really OK?
> 
> 1. `h` is of type xen_9pfs_header and declared as packed, whereas `rc` is of 
>    type p9_fcall not declared as packed.
> 
> 2. Probably a bit dangerous to assume the layout of xen_9pfs_header being in
>    sync with the starting layout of p9_fcall without any compile-time 
>    assertion?

You are right. It would be better to replace the memcpy with:

req->rc.size = h.size;
req->rc.id = h.id;
req->rc.tag = h.tag;



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
