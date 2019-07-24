Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 522C672A3D
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 10:36:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqCkm-0002W2-P0; Wed, 24 Jul 2019 08:36:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mst@redhat.com>) id 1hqCkl-0002Vt-3D
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 08:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/MFYQFzENwHk5G46kOvOVKTzaxjp4jXpKM7WypPWBDc=; b=azQ44mCcwpJNvXDtnPYR6uxscC
 8lnb/pY2w6hwleJhrN7bPAIxNQlRd/bNHnPJKwq1tzJIrsJhoQ4d1Iq1i+eT3AJBeSSpclG4AeDuT
 jHkke2hy1uaCkdyUYkB9QtPk5F1cm7R1V8Dk0U1YZdZi/Hz2YXUGiwBDyDxZdtEyM7D0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/MFYQFzENwHk5G46kOvOVKTzaxjp4jXpKM7WypPWBDc=; b=OwqJmQRqztSq/5LxwFRapavoA0
 U9vQxtlWN1wlW1cPQQ//MnlOIgPSsZ3W4SEqQcZglimIVDb3Oa7ze0w0HVwHkgirmelrXKXd4tD8x
 RXsugZsJ9zjgJ2/E9PDWIhb6zg1FoU6ko5GbGc2xHWHmSIcnyTcI/J4UTZbs1FY21oDk=;
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqCkh-00FjX8-PT
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 08:36:03 +0000
Received: by mail-qk1-f195.google.com with SMTP id t8so33170004qkt.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 01:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/MFYQFzENwHk5G46kOvOVKTzaxjp4jXpKM7WypPWBDc=;
 b=oqRxSBpAAcshK7HSa5hcC412FLedpZfH8k36GZNn1RLdW5WE6dcOAOgdAzDoFdT7hz
 7vgxM+jhsMQ+ZOLh7WSsCiYRDMtvyYKR04CVet3u3OOgurVHxshOoda2c735fyU4wLeZ
 ODH5I1SXGEUtr6EnBa2gwtLCQphYJF1AJf8SCRrjKPSIMzwzFOwybXpco27Z80Bn8I+V
 tdtAe4rJU+zHoF3EzSCOdcU/uuiSH6k8lbyBFIbfcTJhlwdFKZl+r9PsE/m2Pz6OMB6B
 K2Mb/AXevEFvYUW7XEUKyinI145spFc6Be8YpESXg1EEkgB/upKVnZ9fJww8edbQdww9
 Rx+g==
X-Gm-Message-State: APjAAAUzTKu4BXLwmgmDjEELlEHmXpdJdzBeoijRNUtm4O0dBOPv8Za6
 IeEtRzFuidu3C46V3CUEoT0PVQ==
X-Google-Smtp-Source: APXvYqyqOJ7xj5WyBSGnSKw6r+fHzKSSQgggyWILPC/N5KbhyvrIGi3wpGDnO2q6i0xNWsrtSCd37A==
X-Received: by 2002:a05:620a:31b:: with SMTP id
 s27mr17648521qkm.264.1563955687250; 
 Wed, 24 Jul 2019 01:08:07 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 t26sm23203051qtc.95.2019.07.24.01.07.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 01:08:06 -0700 (PDT)
Date: Wed, 24 Jul 2019 04:07:55 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: john.hubbard@gmail.com
Message-ID: <20190724040745-mutt-send-email-mst@kernel.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724042518.14363-8-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724042518.14363-8-jhubbard@nvidia.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hqCkh-00FjX8-PT
Subject: Re: [V9fs-developer] [PATCH 07/12] vhost-scsi: convert put_page()
 to put_user_page*()
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Boaz Harrosh <boaz@plexistor.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Chinner <david@fromorbit.com>, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Johannes Thumshirn <jthumshirn@suse.de>, v9fs-developer@lists.sourceforge.net,
 Jason Wang <jasowang@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, Dan Williams <dan.j.williams@intel.com>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Stefan Hajnoczi <stefanha@redhat.com>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jul 23, 2019 at 09:25:13PM -0700, john.hubbard@gmail.com wrote:
> From: J=E9r=F4me Glisse <jglisse@redhat.com>
> =

> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page().
> =

> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> =

> Changes from J=E9r=F4me's original patch:
> =

> * Changed a WARN_ON to a BUG_ON.
> =

> Signed-off-by: J=E9r=F4me Glisse <jglisse@redhat.com>
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> Cc: virtualization@lists.linux-foundation.org
> Cc: linux-fsdevel@vger.kernel.org
> Cc: linux-block@vger.kernel.org
> Cc: linux-mm@kvack.org
> Cc: Jan Kara <jack@suse.cz>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Alexander Viro <viro@zeniv.linux.org.uk>
> Cc: Johannes Thumshirn <jthumshirn@suse.de>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: Ming Lei <ming.lei@redhat.com>
> Cc: Dave Chinner <david@fromorbit.com>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Boaz Harrosh <boaz@plexistor.com>
> Cc: Miklos Szeredi <miklos@szeredi.hu>
> Cc: "Michael S. Tsirkin" <mst@redhat.com>
> Cc: Jason Wang <jasowang@redhat.com>
> Cc: Paolo Bonzini <pbonzini@redhat.com>
> Cc: Stefan Hajnoczi <stefanha@redhat.com>

Acked-by: Michael S. Tsirkin <mst@redhat.com>

> ---
>  drivers/vhost/scsi.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/vhost/scsi.c b/drivers/vhost/scsi.c
> index a9caf1bc3c3e..282565ab5e3f 100644
> --- a/drivers/vhost/scsi.c
> +++ b/drivers/vhost/scsi.c
> @@ -329,11 +329,11 @@ static void vhost_scsi_release_cmd(struct se_cmd *s=
e_cmd)
>  =

>  	if (tv_cmd->tvc_sgl_count) {
>  		for (i =3D 0; i < tv_cmd->tvc_sgl_count; i++)
> -			put_page(sg_page(&tv_cmd->tvc_sgl[i]));
> +			put_user_page(sg_page(&tv_cmd->tvc_sgl[i]));
>  	}
>  	if (tv_cmd->tvc_prot_sgl_count) {
>  		for (i =3D 0; i < tv_cmd->tvc_prot_sgl_count; i++)
> -			put_page(sg_page(&tv_cmd->tvc_prot_sgl[i]));
> +			put_user_page(sg_page(&tv_cmd->tvc_prot_sgl[i]));
>  	}
>  =

>  	vhost_scsi_put_inflight(tv_cmd->inflight);
> @@ -630,6 +630,13 @@ vhost_scsi_map_to_sgl(struct vhost_scsi_cmd *cmd,
>  	size_t offset;
>  	unsigned int npages =3D 0;
>  =

> +	/*
> +	 * Here in all cases we should have an IOVEC which use GUP. If that is
> +	 * not the case then we will wrongly call put_user_page() and the page
> +	 * refcount will go wrong (this is in vhost_scsi_release_cmd())
> +	 */
> +	WARN_ON(!iov_iter_get_pages_use_gup(iter));
> +
>  	bytes =3D iov_iter_get_pages(iter, pages, LONG_MAX,
>  				VHOST_SCSI_PREALLOC_UPAGES, &offset);
>  	/* No pages were pinned */
> @@ -681,7 +688,7 @@ vhost_scsi_iov_to_sgl(struct vhost_scsi_cmd *cmd, boo=
l write,
>  			while (p < sg) {
>  				struct page *page =3D sg_page(p++);
>  				if (page)
> -					put_page(page);
> +					put_user_page(page);
>  			}
>  			return ret;
>  		}
> -- =

> 2.22.0


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
