Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D31AC79A77
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Jul 2019 22:57:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hsCiJ-0005bH-KH; Mon, 29 Jul 2019 20:57:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jglisse@redhat.com>) id 1hsCiI-0005b9-2C
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 20:57:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ej87fJCgfgG5YmUqt7FsxEwGENhvNmHWA4s4Vq1TU6w=; b=izxDvdJ22qZ1h8nrs00h27CgL4
 inOYSxd5WvNl5VKpnyjvDt+ON0vEjxU3SW6DDoY34ewgloGPINL4ozTjP7WraKFbPhgSaR2VPO7Uw
 WOi8T4Wbw66QsdY+0QkDeGld2aGTG4EsEgNVlHVY24k7dDjOVyxBWgUmAG70eyw7WWyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ej87fJCgfgG5YmUqt7FsxEwGENhvNmHWA4s4Vq1TU6w=; b=atZM4ON4BaU7KQFc76wq3XMDOw
 RDBtfUh9sy24htPWWlQ4ZZhAioCekR8UGscR6IikZLP36iaSJQVOdZAsaERzX7lBLataUHWA02JpH
 skgl2SlpMg3ijCe/l3ZtE5rYvgxqoqRoRyvSlALC+fuIaLWgbrV8G75msc8TLuCFXwBk=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsCiF-0047EU-RH
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 20:57:46 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 40047C060204;
 Mon, 29 Jul 2019 20:57:37 +0000 (UTC)
Received: from redhat.com (ovpn-112-31.rdu2.redhat.com [10.10.112.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D8C65C219;
 Mon, 29 Jul 2019 20:57:24 +0000 (UTC)
Date: Mon, 29 Jul 2019 16:57:21 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20190729205721.GB3760@redhat.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724042518.14363-4-jhubbard@nvidia.com>
 <20190724053053.GA18330@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724053053.GA18330@infradead.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 29 Jul 2019 20:57:38 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hsCiF-0047EU-RH
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
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
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

On Tue, Jul 23, 2019 at 10:30:53PM -0700, Christoph Hellwig wrote:
> On Tue, Jul 23, 2019 at 09:25:09PM -0700, john.hubbard@gmail.com wrote:
> > From: John Hubbard <jhubbard@nvidia.com>
> > =

> > In commit d241a95f3514 ("block: optionally mark pages dirty in
> > bio_release_pages"), new "bool mark_dirty" argument was added to
> > bio_release_pages.
> > =

> > In upcoming work, another bool argument (to indicate that the pages came
> > from get_user_pages) is going to be added. That's one bool too many,
> > because it's not desirable have calls of the form:
> =

> All pages releases by bio_release_pages should come from
> get_get_user_pages, so I don't really see the point here.

No they do not all comes from GUP for see various callers
of bio_check_pages_dirty() for instance iomap_dio_zero()

I have carefully tracked down all this and i did not do
anyconvertion just for the fun of it :)

Cheers,
J=E9r=F4me


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
