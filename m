Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 754B01DBE0F
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 May 2020 21:37:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jbUWm-0000v5-5H; Wed, 20 May 2020 19:37:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jbUWk-0000ux-Qo
 for v9fs-developer@lists.sourceforge.net; Wed, 20 May 2020 19:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AQ+dNWUNf0zYMHRCdY+Y3qfmhXUFasH+zAkIqY7y8EM=; b=GrS6DvgrIE5l5vly/kMA1nZCi5
 +Uzb5hM8hNIWHFeNiiZd6/oEsen0XcllaQofuQEW51kRi2YcjTxMjRU1YKHY6BWyfs49q91YDSjVT
 x2wFR40BO4sZ61r42pVEOPAZOOVB/5tUlL6qZ1s9Ua6vtLdeI+vt+lVLwkEAMCBppEYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AQ+dNWUNf0zYMHRCdY+Y3qfmhXUFasH+zAkIqY7y8EM=; b=PnFKL9pAfFW38L49jqbDzoxEz+
 JX5AjIZ+Vicc0gJJESGMLF4wUgJrSpKYifbv+HWJ9bq6Bn5CHqH8NPkI07TgVVNx0vxB5Q4/KljqJ
 To1jwpufnqsspZyB/MZeLoycBqI8YdxrSAWND036o8e5brxeKr5MmoBNI+79AUvKDP2I=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jbUWi-002RKv-Jo
 for v9fs-developer@lists.sourceforge.net; Wed, 20 May 2020 19:37:18 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id C6D98C009; Wed, 20 May 2020 21:37:02 +0200 (CEST)
Date: Wed, 20 May 2020 21:36:47 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Message-ID: <20200520193647.GA17565@nautica>
References: <20200520184113.24727-1-sstabellini@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520184113.24727-1-sstabellini@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jbUWi-002RKv-Jo
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
Cc: jgross@suse.com, lucho@ionkov.net, xen-devel@lists.xenproject.org,
 ericvh@gmail.com, linux-kernel@vger.kernel.org, rminnich@sandia.gov,
 v9fs-developer@lists.sourceforge.net, boris.ostrovsky@oracle.com,
 Stefano Stabellini <stefano.stabellini@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Stefano Stabellini wrote on Wed, May 20, 2020:
> From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> 
> Increase XEN_9PFS_RING_ORDER to 9 for performance reason. Order 9 is the
> max allowed by the protocol.
> 
> We can't assume that all backends will support order 9. The xenstore
> property max-ring-page-order specifies the max order supported by the
> backend. We'll use max-ring-page-order for the size of the ring.
> 
> This means that the size of the ring is not static
> (XEN_FLEX_RING_SIZE(9)) anymore. Change XEN_9PFS_RING_SIZE to take an
> argument and base the calculation on the order chosen at setup time.
> 
> 
> Finally, modify p9_xen_trans.maxsize to be divided by 4 compared to the
> original value. We need to divide it by 2 because we have two rings
> coming off the same order allocation: the in and out rings. This was a
> mistake in the original code. Also divide it further by 2 because we
> don't want a single request/reply to fill up the entire ring. There can
> be multiple requests/replies outstanding at any given time and if we use
> the full ring with one, we risk forcing the backend to wait for the
> client to read back more replies before continuing, which is not
> performant.

Sounds good to me overall. A couple of comments inline.
Also worth noting I need to rebuild myself a test setup so might take a
bit of time to actually run tests, but I might just trust you on this
one for now if it builds with no new warning... Looks like it would
probably work :p

> [...]
> @@ -264,7 +265,7 @@ static irqreturn_t xen_9pfs_front_event_handler(int irq, void *r)
>  
>  static struct p9_trans_module p9_xen_trans = {
>  	.name = "xen",
> -	.maxsize = 1 << (XEN_9PFS_RING_ORDER + XEN_PAGE_SHIFT),
> +	.maxsize = 1 << (XEN_9PFS_RING_ORDER + XEN_PAGE_SHIFT - 2),
>  	.def = 1,
>  	.create = p9_xen_create,
>  	.close = p9_xen_close,
> [...]
> @@ -401,8 +405,10 @@ static int xen_9pfs_front_probe(struct xenbus_device *dev,
>  		return -EINVAL;
>  	max_ring_order = xenbus_read_unsigned(dev->otherend,
>  					      "max-ring-page-order", 0);
> -	if (max_ring_order < XEN_9PFS_RING_ORDER)
> -		return -EINVAL;
> +	if (max_ring_order > XEN_9PFS_RING_ORDER)
> +		max_ring_order = XEN_9PFS_RING_ORDER;

(If there are backends with very small max_ring_orders, we no longer
error out when we encounter one, it might make sense to add a min
define? Although to be honest 9p works with pretty small maxsizes so I
don't see much reason to error out, and even order 0 will be one page
worth.. I hope there is no xenbus that small though :))

> +	if (p9_xen_trans.maxsize > XEN_FLEX_RING_SIZE(max_ring_order))
> +		p9_xen_trans.maxsize = XEN_FLEX_RING_SIZE(max_ring_order);

So base maxsize initial value is 1 << (order + page_shift - 2) ; but
this is 1 << (order + page_shift - 1) -- I agree with the logic you gave
in commit message so would think this needs to be shifted down one more
like the base value as well.
What do you think?

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
