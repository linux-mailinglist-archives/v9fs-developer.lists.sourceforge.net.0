Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA3372761
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 07:32:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq9sd-0001Tp-If; Wed, 24 Jul 2019 05:31:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+1e4efd27347a199fee4d+5813+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1hq9sb-0001TZ-Po
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 05:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QMaeodYE6xPawroosfuLAM7Isuyd6msaiuu7WIzXJNg=; b=eMsEXQVTnna2n5171EIxrz5ux+
 eEre9QNclPwlSYdh1Ao9bF3myxeAcnjfSjoZWjIkk/mGRPD8Ojh86V7+InxMGG275gGJp+0NmInAb
 rDYNUxAzRYntnsQlEeOcKVaW+ZMn7NXARyQuB+Wuj5akx9g9So8fbHfsYt5z/dnYBnKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QMaeodYE6xPawroosfuLAM7Isuyd6msaiuu7WIzXJNg=; b=cKHe9ZCzS23G8FSOLjW2ORsnGP
 7sO7W6XZhgtwrBWFpD0xW0FkniqVIPpb4J6gNfiH47GlD+8oEG2zmVLovkZt5KcGWH3ZTbZhwDjTl
 Y2HWKl/7EXuk4bIRaKdir34zBjSy9j2NQ75aquZT/rrPbfuvP+u99H/46n9SaEmwHyaQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hq9sa-00DFz0-9Q
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 05:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QMaeodYE6xPawroosfuLAM7Isuyd6msaiuu7WIzXJNg=; b=oW2+1uEt0qJRsZ3rIR+o/XGwJ
 IpJYdIAzmbpSGeQXXd0w7hFDdorld2bWWW2oiCVa9bfBdmqzQ8VzYAS+3VpPpYND1enTUT3LXM1SV
 CwbH89SUpW2WcPCY1lNCr1Q9WWq6hrUjLEGXr0uuup16IdlyJWTjkk54FwGggAAJ6/K2n0CpTScov
 6bsInH3E0/xFvQn6gl70zra+lZBETmvjV0nc1ECTcsc2eePjN7LRDKmPqETKEgRYUFXsRBdhR/R8v
 o2dvpNjC4kqeW2Xy7IKsHBsPaIMTNnKrfPXCCv6MAnnK2HeXtxBGaSw/R+BXARy62cABx/L38sQl7
 Pi0QmIdOw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hq9rZ-0006FA-JW; Wed, 24 Jul 2019 05:30:53 +0000
Date: Tue, 23 Jul 2019 22:30:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: john.hubbard@gmail.com
Message-ID: <20190724053053.GA18330@infradead.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724042518.14363-4-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724042518.14363-4-jhubbard@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hq9sa-00DFz0-9Q
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
 linux-block@vger.kernel.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jul 23, 2019 at 09:25:09PM -0700, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> In commit d241a95f3514 ("block: optionally mark pages dirty in
> bio_release_pages"), new "bool mark_dirty" argument was added to
> bio_release_pages.
> 
> In upcoming work, another bool argument (to indicate that the pages came
> from get_user_pages) is going to be added. That's one bool too many,
> because it's not desirable have calls of the form:

All pages releases by bio_release_pages should come from
get_get_user_pages, so I don't really see the point here.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
