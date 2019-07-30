Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2527AD08
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Jul 2019 17:57:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hsUVI-0004v1-Pd; Tue, 30 Jul 2019 15:57:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jglisse@redhat.com>) id 1hsUVD-0004um-Qo
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Jul 2019 15:57:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4c3jR0CaYiCMyIFZvXMgV0XG+tZgPmzd0opuCtAzKQ0=; b=czh5ZZywlWwZU1pvNQatnUB9W5
 O8xQaNaFIwDY3QgMT1v/Qnq11MpoAOH+gMmouzwOSw2aQ40RXYull325JX7uWlTYbGTdOhvFoiDGV
 5lS+vgQL3fIVC7pwEls6JB5ikR/UTRxPFPi3b5Lz+5UlQ2/XwS1lqkf7A/F46aYid5dM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4c3jR0CaYiCMyIFZvXMgV0XG+tZgPmzd0opuCtAzKQ0=; b=Gg/LBCnVrbya+H8n8wE6qOqQ8m
 hJTcU5CYS18zQzzLNvYsFB8QUwvtmci35MPSQ5VFRLFhQ7kIicp22aNVZMD+YvRsiSFsW8PEV6AQe
 0RxOJRwALEaf7IxUxx4i1jXWldn6RhIU0BE4N+3bWgBf51rDGGcgrqhxW2dSWplgohTk=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsUVB-000uwg-Pe
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Jul 2019 15:57:27 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AD19A300CB0C;
 Tue, 30 Jul 2019 15:57:17 +0000 (UTC)
Received: from redhat.com (ovpn-112-36.rdu2.redhat.com [10.10.112.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A63655D6A7;
 Tue, 30 Jul 2019 15:57:05 +0000 (UTC)
Date: Tue, 30 Jul 2019 11:57:02 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20190730155702.GB10366@redhat.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724042518.14363-4-jhubbard@nvidia.com>
 <20190724053053.GA18330@infradead.org>
 <20190729205721.GB3760@redhat.com> <20190730102557.GA1700@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730102557.GA1700@lst.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 30 Jul 2019 15:57:19 +0000 (UTC)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsUVB-000uwg-Pe
Subject: Re: [V9fs-developer] [PATCH 03/12] block: bio_release_pages: use
 flags arg instead of bool
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, kvm@vger.kernel.org,
 "Michael S . Tsirkin" <mst@redhat.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-cifs@vger.kernel.org, Miklos Szeredi <miklos@szeredi.hu>,
 linux-rdma@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Minwoo Im <minwoo.im.dev@gmail.com>, v9fs-developer@lists.sourceforge.net,
 Jason Wang <jasowang@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, john.hubbard@gmail.com,
 linux-block@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jul 30, 2019 at 12:25:57PM +0200, Christoph Hellwig wrote:
> On Mon, Jul 29, 2019 at 04:57:21PM -0400, Jerome Glisse wrote:
> > > All pages releases by bio_release_pages should come from
> > > get_get_user_pages, so I don't really see the point here.
> > =

> > No they do not all comes from GUP for see various callers
> > of bio_check_pages_dirty() for instance iomap_dio_zero()
> > =

> > I have carefully tracked down all this and i did not do
> > anyconvertion just for the fun of it :)
> =

> Well, the point is _should_ not necessarily do.  iomap_dio_zero adds the
> ZERO_PAGE, which we by definition don't need to refcount.  So we can
> mark this bio BIO_NO_PAGE_REF safely after removing the get_page there.
> =

> Note that the equivalent in the old direct I/O code, dio_refill_pages,
> will be a little more complicated as it can match user pages and the
> ZERO_PAGE in a single bio, so a per-bio flag won't handle it easily.
> Maybe we just need to use a separate bio there as well.
> =

> In general with series like this we should not encode the status quo an
> pile new hacks upon the old one, but thing where we should be and fix
> up the old warts while having to wade through all that code.

Other user can also add page that are not coming from GUP but need to
have a reference see __blkdev_direct_IO() saddly bio get fill from many
different places and not always with GUP. So we can not say that all
pages here are coming from bio. I had a different version of the patchset
i think that was adding a new release dirty function for GUP versus non
GUP bio. I posted it a while ago, i will try to dig it up once i am
back.

Cheers,
J=E9r=F4me


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
