Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F98791D0
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Jul 2019 19:10:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hs9AS-0000RO-En; Mon, 29 Jul 2019 17:10:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <leon@kernel.org>) id 1hs9AR-0000RH-4A
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 17:10:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NKdii5Qk9YCbUla2ZaqVdGQLoxt3JVA13J6pQsaOIFs=; b=dfttQlx4ZG43nhIzctMGqNQDs/
 lokrPkzTmvgZ94G35e88qqXNZYuRFu56nQBi6KwXY5fwN/rUteTDC0OR+8w7WpqJoehgFoN/8ZADa
 le1qiqmYZ4MoNFmjiilZ/9rJWbip1AcqIcWKI0giFpwG7q96oefuv1QeGq/C1/yXuDuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NKdii5Qk9YCbUla2ZaqVdGQLoxt3JVA13J6pQsaOIFs=; b=NsTrvK95Jiq1Q1R706nsoV0hK2
 1dJdcNPpQa5YAhbrHFilTYorjbpLi++VYlNTeafZs6dIf6mww2X3t3zT3Za+bVmAk8EZKeQ+6+RAN
 q4EEqLMuDH2a8S6RmGOawWE6M0BDOsEFIx6ub5aenhAgXjZbqpCTYOtJTh3TDs0vfwCk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hs9AM-003OPr-Ld
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 17:10:35 +0000
Received: from localhost (unknown [77.137.115.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B6E5206BA;
 Mon, 29 Jul 2019 17:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564420220;
 bh=WXZfFhxm/6xNh9hebjHvhoHEDNNIu4jbigvgxOw6uS0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zvZgYkvRo/Nb/7BSWXUMu0NQiOxf4sINcdgMyDAoJDJyx/tmQGJp4kU0S/f3N3Vdh
 NwuAILNrQQkHQihcUkoxpRQlpHK71vKe9Jc6IwOAEMorn2rDirM1gNoqBfcV+P11+W
 Fjlv9Tcv+1bTPpsceZ7XBAnLG6xE4MAC4uKbF8W8=
Date: Mon, 29 Jul 2019 20:10:16 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190729171016.GN4674@mtr-leonro.mtl.com>
References: <20190728163027.3637.70740.stgit@manet.1015granger.net>
 <20190729054933.GK4674@mtr-leonro.mtl.com>
 <20190729141945.GF17990@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729141945.GF17990@ziepe.ca>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1hs9AM-003OPr-Ld
Subject: Re: [V9fs-developer] [PATCH v2] rdma: Enable ib_alloc_cq to spread
 work over a device's comp_vectors
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
Cc: linux-rdma@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Chuck Lever <chuck.lever@oracle.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 29, 2019 at 11:19:45AM -0300, Jason Gunthorpe wrote:
> On Mon, Jul 29, 2019 at 08:49:33AM +0300, Leon Romanovsky wrote:
> > > +/**
> > > + * ib_alloc_cq_any: Allocate kernel CQ
> > > + * @dev: The IB device
> > > + * @private: Private data attached to the CQE
> > > + * @nr_cqe: Number of CQEs in the CQ
> > > + * @poll_ctx: Context used for polling the CQ
> > > + */
> > > +static inline struct ib_cq *ib_alloc_cq_any(struct ib_device *dev,
> > > +					    void *private, int nr_cqe,
> > > +					    enum ib_poll_context poll_ctx)
> > > +{
> > > +	return __ib_alloc_cq_any(dev, private, nr_cqe, poll_ctx,
> > > +				 KBUILD_MODNAME);
> > > +}
> >
> > This should be macro and not inline function, because compiler can be
> > instructed do not inline functions (there is kconfig option for that)
> > and it will cause that wrong KBUILD_MODNAME will be inserted (ib_core
> > instead of ulp).
>
> No, it can't, a static inline can only be de-inlined within the same
> compilation unit, so KBUILD_MODNAME can never be mixed up.
>
> You only need to use macros of the value changes within the
> compilation unit.

Thanks, good to know.

>
> Jason


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
