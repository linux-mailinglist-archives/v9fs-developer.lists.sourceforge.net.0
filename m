Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDD863A5D6
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 11:15:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozbAI-0000wD-F0;
	Mon, 28 Nov 2022 10:15:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1ozbA6-0000vi-LU
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 10:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zBqAwBRWRjtW0ICmoI0uX4BeXltXbya2cc38sf5NvgE=; b=mWyTmDLuW39A/jW0+Fimv2BVf+
 PQ5eDo/Qu134urDZ3CtnsnyDfiqZMLU2zMrl5fe7nQ+wuR7aPmj4Idx3OZUhi44peKKhotUc3qIfH
 1w7Y/hSZUeeMt/bzO2F+3qsNfiBSPLkzC0Q14gREnYqxuccl0GiV+BM1m1d8n9wl7d38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zBqAwBRWRjtW0ICmoI0uX4BeXltXbya2cc38sf5NvgE=; b=ALqs90ngN0EmBpdMvQPI1oJDiO
 pJd6jzqtdHBqn6XRRAeQ1zMO7i7/3fLPMG2JqMbRpTyIaiCggrJ17gwhDVxol/SQCVikhzXW9fAul
 N39Lr72oPmFg68xofKMSw2D1GDEwXeTVJrKCOY5eGaVWNFU22WBjjTrzI3EWUn+DLgg4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozbA5-0002Ag-Oi for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 10:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669630487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zBqAwBRWRjtW0ICmoI0uX4BeXltXbya2cc38sf5NvgE=;
 b=Jok5diD349xXsNGnd7Y3yasef1IwrCziYi3AQ5iENZ2xI11Qa3U6ORAkieCm1JH8f1XpyP
 AwD6YAxGiZwwf2vkExqyMKRoK6NajXF46QesT1m4e8P7uCxr0Afa+T8ZpieYWA4tRw2Oko
 zfo6vBcJmfaVUTJ4c+NuLIsUZxIF0Dc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-530-AbxmgwFqMFKnm8RhWABqXg-1; Mon, 28 Nov 2022 05:14:45 -0500
X-MC-Unique: AbxmgwFqMFKnm8RhWABqXg-1
Received: by mail-wm1-f72.google.com with SMTP id
 az40-20020a05600c602800b003cfa26c40easo5605866wmb.1
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Nov 2022 02:14:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zBqAwBRWRjtW0ICmoI0uX4BeXltXbya2cc38sf5NvgE=;
 b=q8b4Ge+Nbh2ALRmtb3MAY2ddqJCyPGuCMb1WuZOQvRbQ8ciAcLkNAyMd0RppJ2JSVf
 HNrxXQI/nRQhJnoGDE0D47tpntCni4Y+uZtZl5xzG37oqOhYley0FcRDyoJJoBxxrWN5
 IqAig4KN3LGoSCWJgiJ47uR6GVTh6TxxRrZUw0WwbUkDs3hoc0/TrbCocmskuxcXz1ox
 8YOAFLaCmknh6LVJ1CclxNs3CqG8h+IgpEi/ob56p7cTxaasjtz9i4hENHDCaG/r/DYx
 X/6NPp8WigMWsemz0iJl013igOcvDDvLPOYBp3tMWFBQ0AI2dHXHZMJc1rsx3LpVt746
 QX+Q==
X-Gm-Message-State: ANoB5pmtT4LZqS2XRUCaK3Ee5yu3gowljBsl+NHbTpOcM40JUdA59Xh4
 Miho8rw6RTdO0rwjdjF3BSp1riUUr93nMmR10IfDDzw+l3m/+8qgiS6BJ8qUgIxoSf29W2KyXAa
 RW1C/aMnpcSaP32rDSWl+iCXTZYgbLD3mx/Q=
X-Received: by 2002:adf:f302:0:b0:242:1dbc:2d29 with SMTP id
 i2-20020adff302000000b002421dbc2d29mr318230wro.609.1669630484333; 
 Mon, 28 Nov 2022 02:14:44 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5ewYVQblwq/AEaxJGpgSzFXdQ+34eT0h/HaNR6C/0BgeFYG90YGVYdSwR7BSPWiouADYG5SQ==
X-Received: by 2002:adf:f302:0:b0:242:1dbc:2d29 with SMTP id
 i2-20020adff302000000b002421dbc2d29mr318211wro.609.1669630484132; 
 Mon, 28 Nov 2022 02:14:44 -0800 (PST)
Received: from redhat.com ([2.52.149.178]) by smtp.gmail.com with ESMTPSA id
 a12-20020adfe5cc000000b0022cc3e67fc5sm10146135wrn.65.2022.11.28.02.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 02:14:43 -0800 (PST)
Date: Mon, 28 Nov 2022 05:14:39 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Li Zetao <lizetao1@huawei.com>
Message-ID: <20221128042945-mutt-send-email-mst@kernel.org>
References: <20221128021005.232105-1-lizetao1@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20221128021005.232105-1-lizetao1@huawei.com>
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
 Content preview:  On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zetao wrote:
 > This patchset fixes similar issue, the root cause of the > problem is that
 the virtqueues are not stopped on error > handling path. I've been thinking
 about this. Almost all drivers are affected. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozbA5-0002Ag-Oi
Subject: Re: [V9fs-developer] [PATCH 0/4] Fix probe failed when modprobe
 modules
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
Cc: axboe@kernel.dk, lucho@ionkov.net, rusty@rustcorp.com.au, david@redhat.com,
 ericvh@gmail.com, netdev@vger.kernel.org, jasowang@redhat.com,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-block@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 edumazet@google.com, kraxel@redhat.com, stefanha@redhat.com, kuba@kernel.org,
 pbonzini@redhat.com, pabeni@redhat.com,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zetao wrote:
> This patchset fixes similar issue, the root cause of the
> problem is that the virtqueues are not stopped on error
> handling path.

I've been thinking about this.
Almost all drivers are affected.

The reason really is that it used to be the right thing to do:
On legacy pci del_vqs writes 0
into vq index and this resets the device as a side effect
(we actually do this multiple times, what e.g. writes of MSI vector
 after the 1st reset do I have no idea).

mmio ccw and modern pci don't.

Given this has been with us for a while I am inlined to look for
a global solution rather than tweaking each driver.

Given many drivers are supposed to work on legacy too, we know del_vqs
includes a reset for many of them. So I think I see a better way to do
this:

Add virtio_reset_device_and_del_vqs()

and convert all drivers to that.

When doing this, we also need to/can fix a related problem (and related
to the hardening that Jason Wang was looking into):
virtio_reset_device is inherently racy: vq interrupts could
be in flight when we do reset. We need to prevent handlers from firing in
the window between reset and freeing the irq, so we should first
free irqs and only then start changing the state by e.g.
device reset.


Quite a lot of core work here. Jason are you still looking into
hardening?



> Li Zetao (4):
>   9p: Fix probe failed when modprobe 9pnet_virtio
>   virtio-mem: Fix probe failed when modprobe virtio_mem
>   virtio-input: Fix probe failed when modprobe virtio_input
>   virtio-blk: Fix probe failed when modprobe virtio_blk
> 
>  drivers/block/virtio_blk.c    | 1 +
>  drivers/virtio/virtio_input.c | 1 +
>  drivers/virtio/virtio_mem.c   | 1 +
>  net/9p/trans_virtio.c         | 1 +
>  4 files changed, 4 insertions(+)
> 
> -- 
> 2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
