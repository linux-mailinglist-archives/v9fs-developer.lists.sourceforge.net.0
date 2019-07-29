Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC2D791D5
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Jul 2019 19:12:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hs9C3-0000Va-Ky; Mon, 29 Jul 2019 17:12:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <leon@kernel.org>) id 1hs9C2-0000VT-I2
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 17:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vqqjZMkxjgD2uOQOoWSroIyJIk9MRtC8kDb4+XgTDq0=; b=F7QFV276ggWm54vbCr5lSAIu4+
 5N0PtrhmSFBgrNOEQzlHcOFm7QWkx2ITO/ohabRIeesZvAkNBjpgBjleDUt21MFSy4CJerZHdXV+n
 x8w7qFIE0AJfpi69IRe8h3jhuNDdwiUiUACz+mJ6Rk5Z1UR4E2SIRijw0++/6sH/0lJA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vqqjZMkxjgD2uOQOoWSroIyJIk9MRtC8kDb4+XgTDq0=; b=VhHg+Hv7BGOBfeNzLdVZGQp2Ba
 ZzwblQDAXWqBF9yppqSQwn3bOnifgmFIw8GUWH8kW1lqDUiwmHwcN3xWI66LOimL8kVxQZ0YGyJ+C
 K4o/MMg4O4brFdhQzgCua8e1QmJcMtVXt0lOmmOxcIey15M5gVeiJYfivoemVs5ydqMU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hs9Bx-003Odl-VZ
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 17:12:14 +0000
Received: from localhost (unknown [77.137.115.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6298206BA;
 Mon, 29 Jul 2019 17:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564420324;
 bh=ekpbK+Fura14peaaAT1tvUqSV0rNrJNhzNho9n7q3HU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nDzMTv/qYk+oX2kbDjbHqDGE85LjRNjlpYthX4C1cUgUs/KBG9SYIiY32rpBxiGhJ
 ulsE2qNtpvKFs5AdR9+iMykQJkdXElw11tcCNhCMIsqJFrRvSj49bdowErsaWdC/71
 p1JizJ+p+dkB9jCUZLzKesbiFTp0sRiueNDV+NT4=
Date: Mon, 29 Jul 2019 20:12:01 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Chuck Lever <chuck.lever@oracle.com>
Message-ID: <20190729171201.GO4674@mtr-leonro.mtl.com>
References: <20190728163027.3637.70740.stgit@manet.1015granger.net>
 <20190729054933.GK4674@mtr-leonro.mtl.com>
 <9AF784D9-E0B4-473F-9D5F-7858F6FE1FDD@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9AF784D9-E0B4-473F-9D5F-7858F6FE1FDD@oracle.com>
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
X-Headers-End: 1hs9Bx-003Odl-VZ
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
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 29, 2019 at 10:24:12AM -0400, Chuck Lever wrote:
>
>
> > On Jul 29, 2019, at 1:49 AM, Leon Romanovsky <leon@kernel.org> wrote:
> >
> > On Sun, Jul 28, 2019 at 12:30:27PM -0400, Chuck Lever wrote:
> >> Send and Receive completion is handled on a single CPU selected at
> >> the time each Completion Queue is allocated. Typically this is when
> >> an initiator instantiates an RDMA transport, or when a target
> >> accepts an RDMA connection.
> >>
> >> Some ULPs cannot open a connection per CPU to spread completion
> >> workload across available CPUs and MSI vectors. For such ULPs,
> >> provide an API that allows the RDMA core to select a completion
> >> vector based on the device's complement of available comp_vecs.
> >>
> >> ULPs that invoke ib_alloc_cq() with only comp_vector 0 are converted
> >> to use the new API so that their completion workloads interfere less
> >> with each other.
> >>
> >> Suggested-by: H=E5kon Bugge <haakon.bugge@oracle.com>
> >> Signed-off-by: Chuck Lever <chuck.lever@oracle.com>
> >> Cc: <linux-cifs@vger.kernel.org>
> >> Cc: <v9fs-developer@lists.sourceforge.net>
> >> ---
> >> drivers/infiniband/core/cq.c             |   29 ++++++++++++++++++++++=
+++++++
> >> drivers/infiniband/ulp/srpt/ib_srpt.c    |    4 ++--
> >> fs/cifs/smbdirect.c                      |   10 ++++++----
> >> include/rdma/ib_verbs.h                  |   19 +++++++++++++++++++
> >> net/9p/trans_rdma.c                      |    6 +++---
> >> net/sunrpc/xprtrdma/svc_rdma_transport.c |    8 ++++----
> >> net/sunrpc/xprtrdma/verbs.c              |   13 ++++++-------
> >> 7 files changed, 69 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/infiniband/core/cq.c b/drivers/infiniband/core/cq=
.c
> >> index 7c59987..ea3bb0d 100644
> >> --- a/drivers/infiniband/core/cq.c
> >> +++ b/drivers/infiniband/core/cq.c
> >> @@ -253,6 +253,35 @@ struct ib_cq *__ib_alloc_cq_user(struct ib_device=
 *dev, void *private,
> >> EXPORT_SYMBOL(__ib_alloc_cq_user);
> >>
> >> /**
> >> + * __ib_alloc_cq_any - allocate a completion queue
> >> + * @dev:		device to allocate the CQ for
> >> + * @private:		driver private data, accessible from cq->cq_context
> >> + * @nr_cqe:		number of CQEs to allocate
> >> + * @poll_ctx:		context to poll the CQ from.
> >> + * @caller:		module owner name.
> >> + *
> >> + * Attempt to spread ULP Completion Queues over each device's interru=
pt
> >> + * vectors.
> >> + */
> >> +struct ib_cq *__ib_alloc_cq_any(struct ib_device *dev, void *private,
> >> +				int nr_cqe, enum ib_poll_context poll_ctx,
> >> +				const char *caller)
> >> +{
> >> +	static atomic_t counter;
> >> +	int comp_vector;
> >
> > int comp_vector =3D 0;
> >
> >> +
> >> +	comp_vector =3D 0;
> >
> > This assignment is better to be part of initialization.
> >
> >> +	if (dev->num_comp_vectors > 1)
> >> +		comp_vector =3D
> >> +			atomic_inc_return(&counter) %
> >
> > Don't we need manage "free list" of comp_vectors? Otherwise we can find
> > ourselves providing already "taken" comp_vector.
>
> Many ULPs use only comp_vector 0 today. It is obviously harmless
> to have more than one ULP using the same comp_vector.
>
> The point of this patch is best effort spreading. This algorithm
> has been proposed repeatedly for several years on this list, and
> each time the consensus has been this is simple and good enough.

Agree, it is better than current implementation.

Reviewed-by: Leon Romanovsky <leonro@mellanox.com>

Thanks


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
