Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8578C1DC080
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 May 2020 22:48:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jbVd7-0007oB-Rl; Wed, 20 May 2020 20:47:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sstabellini@kernel.org>) id 1jbVd3-0007nd-ST
 for v9fs-developer@lists.sourceforge.net; Wed, 20 May 2020 20:47:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EpId3R+EJx4bDre66n8cMXlNGstS704B4rL6tilnteA=; b=V+iBc7pQE1pkicP7ZZoSvdf1m2
 SgefR+ytL7DOwKb2w8N6zXITSwwWU1XG+co5iUKSicC/dXKXBj8XhR71LF50h4ey+PG9Bibpyb42+
 r01/HOc811yoGxjMGuXViHIq2YZ7acMYMKi4/H1gXGk2ECqD8meST4p3U/g5ITbWN5EQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EpId3R+EJx4bDre66n8cMXlNGstS704B4rL6tilnteA=; b=kivzqc8Zvh3ikXvrC0Whd3ZD2M
 atPsyCSVnDWzqqVX10JSC9TCHrPrAkk3WxEEClueggoRi7c8uQlTDbWam4RTP+I21MSVvqTW51xEA
 63NnCLJhIrv9Wa3C9xhlAYLHlzYoupVhvcDDjyuaQzPUrtkztHOrXiE7eQT6psE6l9RA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jbVd2-002VrZ-KP
 for v9fs-developer@lists.sourceforge.net; Wed, 20 May 2020 20:47:53 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4752207D8;
 Wed, 20 May 2020 20:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590007667;
 bh=pFgqAYPdTivuUZr14bc7fno90C0BiU2RfDO4wiHaAio=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=tLct13YcQQztlMgsWhfmqelxdPnoUXZr/8o7FXEJqbxcId6ab55//VCBCeRv3xOsE
 IEHdIuSxaCxcYqNmrqzhljKujCvKPuf5zACGA996C9MtZjcsZi/CuYgbC3hhdkW2xv
 wOQc/tokPdONm0NXR+9SOL0nuB9ZnWw3R+azUk4Y=
Date: Wed, 20 May 2020 13:47:46 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20200520193647.GA17565@nautica>
Message-ID: <alpine.DEB.2.21.2005201340310.27502@sstabellini-ThinkPad-T480s>
References: <20200520184113.24727-1-sstabellini@kernel.org>
 <20200520193647.GA17565@nautica>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jbVd2-002VrZ-KP
Subject: Re: [V9fs-developer] [PATCH] 9p/xen: increase XEN_9PFS_RING_ORDER
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
Cc: jgross@suse.com, lucho@ionkov.net,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 ericvh@gmail.com, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, rminnich@sandia.gov,
 boris.ostrovsky@oracle.com, Stefano Stabellini <stefano.stabellini@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 20 May 2020, Dominique Martinet wrote:
> Stefano Stabellini wrote on Wed, May 20, 2020:
> > From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > 
> > Increase XEN_9PFS_RING_ORDER to 9 for performance reason. Order 9 is the
> > max allowed by the protocol.
> > 
> > We can't assume that all backends will support order 9. The xenstore
> > property max-ring-page-order specifies the max order supported by the
> > backend. We'll use max-ring-page-order for the size of the ring.
> > 
> > This means that the size of the ring is not static
> > (XEN_FLEX_RING_SIZE(9)) anymore. Change XEN_9PFS_RING_SIZE to take an
> > argument and base the calculation on the order chosen at setup time.
> > 
> > 
> > Finally, modify p9_xen_trans.maxsize to be divided by 4 compared to the
> > original value. We need to divide it by 2 because we have two rings
> > coming off the same order allocation: the in and out rings. This was a
> > mistake in the original code. Also divide it further by 2 because we
> > don't want a single request/reply to fill up the entire ring. There can
> > be multiple requests/replies outstanding at any given time and if we use
> > the full ring with one, we risk forcing the backend to wait for the
> > client to read back more replies before continuing, which is not
> > performant.
> 
> Sounds good to me overall. A couple of comments inline.
> Also worth noting I need to rebuild myself a test setup so might take a
> bit of time to actually run tests, but I might just trust you on this
> one for now if it builds with no new warning... Looks like it would
> probably work :p
> 
> > [...]
> > @@ -264,7 +265,7 @@ static irqreturn_t xen_9pfs_front_event_handler(int irq, void *r)
> >  
> >  static struct p9_trans_module p9_xen_trans = {
> >  	.name = "xen",
> > -	.maxsize = 1 << (XEN_9PFS_RING_ORDER + XEN_PAGE_SHIFT),
> > +	.maxsize = 1 << (XEN_9PFS_RING_ORDER + XEN_PAGE_SHIFT - 2),
> >  	.def = 1,
> >  	.create = p9_xen_create,
> >  	.close = p9_xen_close,
> > [...]
> > @@ -401,8 +405,10 @@ static int xen_9pfs_front_probe(struct xenbus_device *dev,
> >  		return -EINVAL;
> >  	max_ring_order = xenbus_read_unsigned(dev->otherend,
> >  					      "max-ring-page-order", 0);
> > -	if (max_ring_order < XEN_9PFS_RING_ORDER)
> > -		return -EINVAL;
> > +	if (max_ring_order > XEN_9PFS_RING_ORDER)
> > +		max_ring_order = XEN_9PFS_RING_ORDER;
> 
> (If there are backends with very small max_ring_orders, we no longer
> error out when we encounter one, it might make sense to add a min
> define? Although to be honest 9p works with pretty small maxsizes so I
> don't see much reason to error out, and even order 0 will be one page
> worth.. I hope there is no xenbus that small though :))

Your point is valid but the size calculation (XEN_FLEX_RING_SIZE) should
work correctly even with order 0:

    (1UL << ((0) + XEN_PAGE_SHIFT - 1)) = 1 << (12 - 1) = 2048

So I am thinking that the protocol should still work correctly, although
the performance might be undesirable.

FYI The smallest backend I know of has order 6.


> > +	if (p9_xen_trans.maxsize > XEN_FLEX_RING_SIZE(max_ring_order))
> > +		p9_xen_trans.maxsize = XEN_FLEX_RING_SIZE(max_ring_order);
> 
> So base maxsize initial value is 1 << (order + page_shift - 2) ; but
> this is 1 << (order + page_shift - 1) -- I agree with the logic you gave
> in commit message so would think this needs to be shifted down one more
> like the base value as well.
> What do you think?

Yes, you are right, thanks for noticing this! I meant to do that here
too but somehow forgot. This should be:

   p9_xen_trans.maxsize = XEN_FLEX_RING_SIZE(max_ring_order) / 2;


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
