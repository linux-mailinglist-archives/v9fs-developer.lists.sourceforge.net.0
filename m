Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C879942BFB2
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Oct 2021 14:18:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1madD4-0005tH-Km; Wed, 13 Oct 2021 12:18:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mst@redhat.com>) id 1madD3-0005t0-Nx
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 12:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8uA+gFhUzMMrb5D5fxARTwQwcT+AEfWKWkQ0ooGMKj8=; b=OfDf8HRBrIY9w/bqzY7ECc01Fs
 wjxcZPrmEAGnkdYuiBM7apgo6gzcqUZhjQPTVvGNTtB3Pd6ktIpMfABAk8hLLZAziu/tGGsOMMzz7
 ndHkcGPsDySEQjRbeOgAXrILzSmCHfS8sOJjCLCko1RY+PMA3vdYYUPjdOgKtAq3KpEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8uA+gFhUzMMrb5D5fxARTwQwcT+AEfWKWkQ0ooGMKj8=; b=J62ylctbAEn7Kz/Fj34BFB16fy
 i0WhrLiQ6MHR+4ABBGLr9/FAfQQBhI3iwWIki0fxrKpyzxkw9/El6r71uMaKhndrlas51KBogAOsd
 eI9bsveR3wuC93yixS8pXz9+s3KTTiL9cdp5D9gLDn00sPqt0IcCBlL+oRYm+5ZrAhfA=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1madD1-0002k0-RY
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 12:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634127485;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8uA+gFhUzMMrb5D5fxARTwQwcT+AEfWKWkQ0ooGMKj8=;
 b=Ve02VRqNmCM1dqPHkXIOmiZJrG7akjeZUof6td6way5PfULWyukWfxnTwRArc4kOaho95W
 1g9Jmq3+Fj+dAM4X7Jte0bQlJ8GFBPGGiMKrENwExhLvlKX5kfiWt7TBARlzlxMLNFJMF1
 mu63a3Om9OhhlNLHaXGVfFwiu7UNCI8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-2KRL623AMnuulq-a6YSztQ-1; Wed, 13 Oct 2021 08:18:02 -0400
X-MC-Unique: 2KRL623AMnuulq-a6YSztQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 r21-20020adfa155000000b001608162e16dso1804155wrr.15
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 13 Oct 2021 05:18:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8uA+gFhUzMMrb5D5fxARTwQwcT+AEfWKWkQ0ooGMKj8=;
 b=qO800L2/iomMOyU9oYEiQPAkVwuEaQHzBGIqCRrogNf/4EaKk22LxMbk2nK0K5Flhc
 kw7orbCWaoFt3ywCrxu1Uki6OCQ5xBLWqkbddVqR4XaBPsWiiU5ehtaGqp3uGrsjQDGj
 5XDUk86KKjigPd2zugB750ttCNPVZkwmlXmmhq8XpVvWH9mfSdanQIYDfddOh8Zmm5VE
 IX7XVo+wgRB6k96LZMk2WFwYDVqYYTDgoKuQkin+9sFLhO8SOOi2PDx5ipBcthovb8Hb
 IF3G1J1mcR7rOo6T3RMyGtRQoAcTjgxkU/xWl6b0Um2xoEQ4DrhBsRabxAwXxfAzPPEB
 HU7Q==
X-Gm-Message-State: AOAM530qf/8EQ5VLdYCpj42Mg0lxwAXXKmhnr8bqtwEvE9ljMyIsYgZB
 5iXANaqRDENx/pbm7ESkTM6T/QoRivF8pW6/SsKo5PKX4ZCq2l3bRiMvTBt4DIXshubTp8YRtdC
 NLa7ju/wm7czmcF2+7xtqHwAPPhXqa+xBp/4=
X-Received: by 2002:a7b:c30c:: with SMTP id k12mr12535225wmj.38.1634127481364; 
 Wed, 13 Oct 2021 05:18:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFEzPqFQ+1qHznC4euH1QtbfXrvr/+t46tCqHwjpC6aqk2B2gJ30j5Cm2I+Hz0oA4zGN44UQ==
X-Received: by 2002:a7b:c30c:: with SMTP id k12mr12535146wmj.38.1634127481076; 
 Wed, 13 Oct 2021 05:18:01 -0700 (PDT)
Received: from redhat.com ([2.55.30.112])
 by smtp.gmail.com with ESMTPSA id z1sm4104369wrt.94.2021.10.13.05.17.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 05:18:00 -0700 (PDT)
Date: Wed, 13 Oct 2021 08:17:49 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Hildenbrand <david@redhat.com>
Message-ID: <20211013081632-mutt-send-email-mst@kernel.org>
References: <20211013105226.20225-1-mst@redhat.com>
 <2060bd96-5884-a1b5-9f29-7fe670dc088d@redhat.com>
MIME-Version: 1.0
In-Reply-To: <2060bd96-5884-a1b5-9f29-7fe670dc088d@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 01:03:46PM +0200, David Hildenbrand
 wrote: > On 13.10.21 12:55, Michael S. Tsirkin wrote: > > This will enable
 cleanups down the road. > > The idea is to disable cbs, then add [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1madD1-0002k0-RY
Subject: Re: [V9fs-developer] [PATCH RFC] virtio: wrap config->reset calls
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 v9fs-developer@lists.sourceforge.net, Stefan Hajnoczi <stefanha@redhat.com>,
 kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Viresh Kumar <vireshk@kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 netdev@vger.kernel.org, Gerd Hoffmann <kraxel@redhat.com>,
 linux-scsi@vger.kernel.org, Will Deacon <will@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Dave Jiang <dave.jiang@intel.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Miklos Szeredi <miklos@szeredi.hu>, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Takashi Iwai <tiwai@suse.com>,
 Gonglei <arei.gonglei@huawei.com>, Kalle Valo <kvalo@codeaurora.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, virtualization@lists.linux-foundation.org,
 Jeff Dike <jdike@addtoit.com>, Vivek Goyal <vgoyal@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Amit Shah <amit@kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 Marcel Holtmann <marcel@holtmann.org>, linux-um@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-block@vger.kernel.org,
 Vishal Verma <vishal.l.verma@intel.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Matt Mackall <mpm@selenic.com>,
 Dan Williams <dan.j.williams@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Cristian Marussi <cristian.marussi@arm.com>, Jens Axboe <axboe@kernel.dk>,
 Jie Deng <jie.deng@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-gpio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 iommu@lists.linux-foundation.org,
 Anton Yakovlev <anton.yakovlev@opensynergy.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Johannes Berg <johannes@sipsolutions.net>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, "David S. Miller" <davem@davemloft.net>,
 Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 01:03:46PM +0200, David Hildenbrand wrote:
> On 13.10.21 12:55, Michael S. Tsirkin wrote:
> > This will enable cleanups down the road.
> > The idea is to disable cbs, then add "flush_queued_cbs" callback
> > as a parameter, this way drivers can flush any work
> > queued after callbacks have been disabled.
> > 
> > Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> > ---
> >   arch/um/drivers/virt-pci.c                 | 2 +-
> >   drivers/block/virtio_blk.c                 | 4 ++--
> >   drivers/bluetooth/virtio_bt.c              | 2 +-
> >   drivers/char/hw_random/virtio-rng.c        | 2 +-
> >   drivers/char/virtio_console.c              | 4 ++--
> >   drivers/crypto/virtio/virtio_crypto_core.c | 8 ++++----
> >   drivers/firmware/arm_scmi/virtio.c         | 2 +-
> >   drivers/gpio/gpio-virtio.c                 | 2 +-
> >   drivers/gpu/drm/virtio/virtgpu_kms.c       | 2 +-
> >   drivers/i2c/busses/i2c-virtio.c            | 2 +-
> >   drivers/iommu/virtio-iommu.c               | 2 +-
> >   drivers/net/caif/caif_virtio.c             | 2 +-
> >   drivers/net/virtio_net.c                   | 4 ++--
> >   drivers/net/wireless/mac80211_hwsim.c      | 2 +-
> >   drivers/nvdimm/virtio_pmem.c               | 2 +-
> >   drivers/rpmsg/virtio_rpmsg_bus.c           | 2 +-
> >   drivers/scsi/virtio_scsi.c                 | 2 +-
> >   drivers/virtio/virtio.c                    | 5 +++++
> >   drivers/virtio/virtio_balloon.c            | 2 +-
> >   drivers/virtio/virtio_input.c              | 2 +-
> >   drivers/virtio/virtio_mem.c                | 2 +-
> >   fs/fuse/virtio_fs.c                        | 4 ++--
> >   include/linux/virtio.h                     | 1 +
> >   net/9p/trans_virtio.c                      | 2 +-
> >   net/vmw_vsock/virtio_transport.c           | 4 ++--
> >   sound/virtio/virtio_card.c                 | 4 ++--
> >   26 files changed, 39 insertions(+), 33 deletions(-)
> > 
> > diff --git a/arch/um/drivers/virt-pci.c b/arch/um/drivers/virt-pci.c
> > index c08066633023..22c4d87c9c15 100644
> > --- a/arch/um/drivers/virt-pci.c
> > +++ b/arch/um/drivers/virt-pci.c
> > @@ -616,7 +616,7 @@ static void um_pci_virtio_remove(struct virtio_device *vdev)
> >   	int i;
> >           /* Stop all virtqueues */
> > -        vdev->config->reset(vdev);
> > +        virtio_reset_device(vdev);
> >           vdev->config->del_vqs(vdev);
> 
> Nit: virtio_device_reset()?
> 
> Because I see:
> 
> int virtio_device_freeze(struct virtio_device *dev);
> int virtio_device_restore(struct virtio_device *dev);
> void virtio_device_ready(struct virtio_device *dev)
> 
> But well, there is:
> void virtio_break_device(struct virtio_device *dev);

Exactly. I don't know what's best, so I opted for plain english :)


> -- 
> Thanks,
> 
> David / dhildenb



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
