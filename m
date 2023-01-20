Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6667550D
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Jan 2023 13:55:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pIqv8-00078J-1d;
	Fri, 20 Jan 2023 12:55:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1pIqv6-000785-Eg
 for v9fs-developer@lists.sourceforge.net;
 Fri, 20 Jan 2023 12:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Za8Y4nDbP8CWvHTQOrddwheGGIMRpuQAQh3mIFbUx8U=; b=g1INz5gYCc/F0F1Ex1R/uMk9u4
 yVbC8xuT2cwRq0K1WykVfUwY5whpMoOezSFm8IODm5YA8KdtmWT6VQD9T9o/FcgtM976DFmCMdJ5T
 QEuTaLoXEllVLrznZXxKWlWMqZoMsfsic0m1b0vTh3b6G9R1m/i4wRltSPjQ9HlWDt44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Za8Y4nDbP8CWvHTQOrddwheGGIMRpuQAQh3mIFbUx8U=; b=ZbwPSo3S9MFgZsQS4Z9IJqfm5+
 emLZftJPbKocxGBTmWwLSciD3P74ISEYhihwWXn+VEAWdaCSPXob8XLGDCTPaD3T1EJS1qY6v+pol
 geXnZm5mRFaYRJNA6Hx7cbxphW0aMePz5kMGV6q+jcgP3Lnm6ri7Uo/UWzj3DdoUL1YM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIquz-0006xX-2y for v9fs-developer@lists.sourceforge.net;
 Fri, 20 Jan 2023 12:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674219286;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Za8Y4nDbP8CWvHTQOrddwheGGIMRpuQAQh3mIFbUx8U=;
 b=hLJ7ZHjHVCc9qFL6Pg1A4EK9favrqZTpDjhQsKqvv1+YHhAoilkZvdYZgVSG+m/0jTj6jG
 at254zscVaELxGRolOc9brDTVUxLPwnIJ5x3Ts9su1ekc25tsviuyNj4EmhMe8BuFll3N/
 jCdHd05aXNFAuMLisD7agUxPoFcuhjY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-453-8hliWSFINcK-hC9FiU98lA-1; Fri, 20 Jan 2023 07:54:45 -0500
X-MC-Unique: 8hliWSFINcK-hC9FiU98lA-1
Received: by mail-wm1-f72.google.com with SMTP id
 o2-20020a05600c378200b003daf780e783so1297819wmr.8
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 20 Jan 2023 04:54:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Za8Y4nDbP8CWvHTQOrddwheGGIMRpuQAQh3mIFbUx8U=;
 b=WMx1UHdcEHy4ZZJC+h4UwmhEc65w+GjwVVIQVD/J2Zxm3Zu870k2TQtRzJmbfeT9Dq
 /PFf6OnCGX9ETPm2lufrIaqYAWEKe16GB508LjtbljuvJGyow4wvLhTU5Yjk3x2jsh0e
 ZvPz5JtOmg3LMAd53g7f5SgdtNTqzXQe8YjI8IXwKx2J1Z7ti+YRbvN4L27OPLbKOhhe
 5+8jG+OVUfyN68bodO15lRJ+TGzlmUFixQ0+Ju441/mBxzC229nmooSxjy4KE24z8uSw
 K0cPASwVDqm3BakTiTCdajOvVdm56ffJ6k/lH24tBxMHSUJRA5pkc4XKgQVn9hH9QOSF
 OU7g==
X-Gm-Message-State: AFqh2kpkfdIsyJsEC0Qljij4NWXKkAPSTUffs5jeTXYv5Xhfl4YDaR0+
 99ByDh60pUo9PB+1bl/aaTQW9sPU7MWZutm6Ea8oqT46R0JvfRSVBiKdWNknpElw5kuGt/xBLIg
 I85XGNEXnkm/XRS3sBUdtPp+kuUzUqmGWIXE=
X-Received: by 2002:a05:600c:2103:b0:3d3:43ae:4d10 with SMTP id
 u3-20020a05600c210300b003d343ae4d10mr14429480wml.11.1674219284583; 
 Fri, 20 Jan 2023 04:54:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtT9yqfP8Lvim31ZX9JEKbLExcTKqA9SmCXtTx+VQEAGdKIv1O2jbkTfAw7i5Vsh2YUHhYkxQ==
X-Received: by 2002:a05:600c:2103:b0:3d3:43ae:4d10 with SMTP id
 u3-20020a05600c210300b003d343ae4d10mr14429466wml.11.1674219284369; 
 Fri, 20 Jan 2023 04:54:44 -0800 (PST)
Received: from redhat.com ([2.52.19.29]) by smtp.gmail.com with ESMTPSA id
 v7-20020a05600c444700b003db06493ee7sm2206862wmn.47.2023.01.20.04.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Jan 2023 04:54:43 -0800 (PST)
Date: Fri, 20 Jan 2023 07:54:40 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Message-ID: <20230120074817-mutt-send-email-mst@kernel.org>
References: <20230119135721.83345-1-alexander.shishkin@linux.intel.com>
 <20230119135721.83345-4-alexander.shishkin@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20230119135721.83345-4-alexander.shishkin@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 19, 2023 at 03:57:18PM +0200, Alexander Shishkin
 wrote: > From: Andi Kleen <ak@linux.intel.com> > > tag_len is read as a u16
 from the untrusted host. It could overflow > in the memory allo [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pIquz-0006xX-2y
Subject: Re: [V9fs-developer] [PATCH v1 3/6] virtio 9p: Fix an overflow
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Andi Kleen <ak@linux.intel.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, jasowang@redhat.com,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, elena.reshetova@intel.com,
 v9fs-developer@lists.sourceforge.net, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 19, 2023 at 03:57:18PM +0200, Alexander Shishkin wrote:
> From: Andi Kleen <ak@linux.intel.com>
> 
> tag_len is read as a u16 from the untrusted host. It could overflow
> in the memory allocation, which would lead to a too small buffer.
> 
> Some later loops use it when extended to 32bit, so they could overflow
> the too small buffer.
> 
> Make sure to do the arithmetic for the buffer size in 32bit to avoid
> wrapping.
> 
> Signed-off-by: Andi Kleen <ak@linux.intel.com>
> Signed-off-by: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Cc: Eric Van Hensbergen <ericvh@gmail.com>
> Cc: Latchesar Ionkov <lucho@ionkov.net>
> Cc: Dominique Martinet <asmadeus@codewreck.org>
> Cc: v9fs-developer@lists.sourceforge.net
> ---
>  net/9p/trans_virtio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 3c27ffb781e3..a78e4d80e5ba 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -629,7 +629,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>  		err = -EINVAL;
>  		goto out_free_vq;
>  	}
> -	tag = kzalloc(tag_len + 1, GFP_KERNEL);
> +	tag = kzalloc((u32)tag_len + 1, GFP_KERNEL);
>  	if (!tag) {
>  		err = -ENOMEM;
>  		goto out_free_vq;

Hmm are you sure there's a difference in behaviour? I thought C will just
extend the integer to int.

> -- 
> 2.39.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
