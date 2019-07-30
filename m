Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8147A5F8
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Jul 2019 12:26:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hsPKg-0002Ov-QW; Tue, 30 Jul 2019 10:26:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1hsPKf-0002On-1Z
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Jul 2019 10:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OLnhwp1Ir7o0Cp8Oes6ebmKFiIiIxO6WwaM5tBmCVZg=; b=I/pmUmRwUjJ8PVYXnqr7pAo//r
 oeFRMg5nS+sm5F2Tuax9TpaDbr6gcCqFlb1ZdRZDtkBen95grksS9I/HbZ6UQIf9psArtHSsSWPrU
 ffbEaG+8Ip4KfwSVH0lAA9XrTE2S2GMhjh2CTDpzCy8tpGGu7CUd1hLFkV94oiCBSn0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OLnhwp1Ir7o0Cp8Oes6ebmKFiIiIxO6WwaM5tBmCVZg=; b=GbmcNwA4B16G9XVU/1S/VThLsr
 x6l5Q7PIJplBZ+Fzm936ohMElmO+8VnD3bybPR/bKAhngmH9lqwisVMaDeR6o53tB/WNvrQ4mi6HN
 okpaHvciaK5cY3WXY0qOaD7RtmMCJD37oWp2Ej/9chbhB3ZgNMTZPgpM8kR0qcyeOR78=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsPKc-000CGn-Kn
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Jul 2019 10:26:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4C21468B02; Tue, 30 Jul 2019 12:25:57 +0200 (CEST)
Date: Tue, 30 Jul 2019 12:25:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jerome Glisse <jglisse@redhat.com>
Message-ID: <20190730102557.GA1700@lst.de>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724042518.14363-4-jhubbard@nvidia.com>
 <20190724053053.GA18330@infradead.org> <20190729205721.GB3760@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729205721.GB3760@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hsPKc-000CGn-Kn
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
 Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Minwoo Im <minwoo.im.dev@gmail.com>,
 v9fs-developer@lists.sourceforge.net, Jason Wang <jasowang@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 john.hubbard@gmail.com, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 29, 2019 at 04:57:21PM -0400, Jerome Glisse wrote:
> > All pages releases by bio_release_pages should come from
> > get_get_user_pages, so I don't really see the point here.
> 
> No they do not all comes from GUP for see various callers
> of bio_check_pages_dirty() for instance iomap_dio_zero()
> 
> I have carefully tracked down all this and i did not do
> anyconvertion just for the fun of it :)

Well, the point is _should_ not necessarily do.  iomap_dio_zero adds the
ZERO_PAGE, which we by definition don't need to refcount.  So we can
mark this bio BIO_NO_PAGE_REF safely after removing the get_page there.

Note that the equivalent in the old direct I/O code, dio_refill_pages,
will be a little more complicated as it can match user pages and the
ZERO_PAGE in a single bio, so a per-bio flag won't handle it easily.
Maybe we just need to use a separate bio there as well.

In general with series like this we should not encode the status quo an
pile new hacks upon the old one, but thing where we should be and fix
up the old warts while having to wade through all that code.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
