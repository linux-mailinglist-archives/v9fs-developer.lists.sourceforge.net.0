Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A1C42C658
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Oct 2021 18:27:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mah60-0002iF-Gg; Wed, 13 Oct 2021 16:27:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pankaj.gupta.linux@gmail.com>) id 1mah5z-0002hv-4I
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 16:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xrtpz9NXHFWFufGg5SCBWCumluTEAtqRhhWyErbsuT8=; b=nQpqR6aCED7R1tuHH2ImVKpwm2
 Z4vzfJ6vDrPmSQ9197NR+GZi31vyjDZl3hgaa1rHJstfk1fmnGHuyD8TfFg1BHn7Pb8VPGXXeizs5
 xJxGGTwJmb7HysG62sBs+iT+4FOHgfWRJPCiW85oxK2TxwGJfQqUJKRD/TG4JFG9z/ZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xrtpz9NXHFWFufGg5SCBWCumluTEAtqRhhWyErbsuT8=; b=edMk+7rZkf019AA1uggdotIgUo
 LK+JzQYa0qxY5ZTdNNkx11hT2xldXWDsAhyD6Nfs/IG88BbTANoEZlAfAJQzVztPDn2I5Be79L394
 0qHY6YOc5sS21X1Ui0ZpGj6U3Twc0cqT+ESnqP7J7lBdXmlu/tFdcJ0B21WHDkF7Mp9I=;
Received: from mail-io1-f45.google.com ([209.85.166.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mah5x-008jEc-Dd
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 16:27:10 +0000
Received: by mail-io1-f45.google.com with SMTP id r134so321910iod.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 13 Oct 2021 09:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xrtpz9NXHFWFufGg5SCBWCumluTEAtqRhhWyErbsuT8=;
 b=cm62qW/8bM+RvH6hNwULRssypHbQXgwQh9hAuLuU0Axk90D74llz7ih64+7HGRdbUx
 yEjqXWZvnHRMNxdOSqQfncIsHo9pGNcAbIAt4vtNjtGFGCCfubtEakJ/WK8T5PosJHX7
 SvO/7OaNqlLgZVT5X7OdbzsWgNbeAxl3BlLWjA+6XPiJd8uxlaKGakcjGuVYhPzDjead
 Nf7WBsZ+S0hRvV40PfR9I3um9qpbIfQjoegJkYpHE2unO5pwCaYQXrimbaPTvNxXp95b
 MaGaif9EsmZA3H5yk+M0khVV8DmhTgmKDbCCmhqSMpOho8AZ/8zAOMcW9Hxirq9BxUGJ
 72Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xrtpz9NXHFWFufGg5SCBWCumluTEAtqRhhWyErbsuT8=;
 b=T3doavrjD/K6zCrfCQtmvO/sMPylnLVQsoQQ+v+Pdd72xTyvbyK4tH/XkZMqMok6Sw
 0WXzSnK7bxBl6Lj/fd3OAE9hspaQ5U9qoIycpiLf4MkZGFpw0RBQTw3/2SEQ77RhyREB
 jJdE6pOsNmRWWOej6IO7o5QUZkcJ+vRf7VjdJ4UGs/DrO8yAlEAnkn1SRwNhm/6BcBsh
 sX0fmMZ1h8xKSpP4s6yG8X/DGcdEG5fSMuHoPKtmoaBrVhYq2wivmkKpJOzpp6CGWP+a
 UP+yOcgyl+aMCN+gtmX4fTtf+TmvD7wL2cvJTmS5BB2kqt5QSFiOTpgq0WdsaPWgFzDL
 cpsw==
X-Gm-Message-State: AOAM5313hWvNhfEJkLkD0TXqTIj1bacUn/+DlGOhN7OFWDqPbktW4Htn
 XGc8zJyozCZx3uXhufZ0iXxrwQRmdlqZxNOQqRk=
X-Google-Smtp-Source: ABdhPJyuL03Mu4jCtrDahdjQhnotErC05Ve18e62uQyBilTUwz90riuTyD8fiewVxVGZWLl9N2i8KnFUl44nihqeTWo=
X-Received: by 2002:a5e:a619:: with SMTP id q25mr200218ioi.144.1634142423625; 
 Wed, 13 Oct 2021 09:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211013105226.20225-1-mst@redhat.com>
In-Reply-To: <20211013105226.20225-1-mst@redhat.com>
From: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
Date: Wed, 13 Oct 2021 18:26:51 +0200
Message-ID: <CAM9Jb+j9=JKAaZp5vb82JYErpwkaVbv0zoUJagYLwr5m=Vbptg@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > This will enable cleanups down the road. > The idea is to
 disable cbs, then add "flush_queued_cbs" callback > as a parameter, this
 way drivers can flush any work > queued after callbacks have been d [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pankaj.gupta.linux[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.45 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mah5x-008jEc-Dd
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Linux NVDIMM <nvdimm@lists.linux.dev>,
 Stefan Hajnoczi <stefanha@redhat.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <vireshk@kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 netdev@vger.kernel.org, Gerd Hoffmann <kraxel@redhat.com>,
 linux-scsi@vger.kernel.org, Will Deacon <will@kernel.org>,
 v9fs-developer@lists.sourceforge.net,
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
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
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

> This will enable cleanups down the road.
> The idea is to disable cbs, then add "flush_queued_cbs" callback
> as a parameter, this way drivers can flush any work
> queued after callbacks have been disabled.
>
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>  arch/um/drivers/virt-pci.c                 | 2 +-
>  drivers/block/virtio_blk.c                 | 4 ++--
>  drivers/bluetooth/virtio_bt.c              | 2 +-
>  drivers/char/hw_random/virtio-rng.c        | 2 +-
>  drivers/char/virtio_console.c              | 4 ++--
>  drivers/crypto/virtio/virtio_crypto_core.c | 8 ++++----
>  drivers/firmware/arm_scmi/virtio.c         | 2 +-
>  drivers/gpio/gpio-virtio.c                 | 2 +-
>  drivers/gpu/drm/virtio/virtgpu_kms.c       | 2 +-
>  drivers/i2c/busses/i2c-virtio.c            | 2 +-
>  drivers/iommu/virtio-iommu.c               | 2 +-
>  drivers/net/caif/caif_virtio.c             | 2 +-
>  drivers/net/virtio_net.c                   | 4 ++--
>  drivers/net/wireless/mac80211_hwsim.c      | 2 +-
>  drivers/nvdimm/virtio_pmem.c               | 2 +-
>  drivers/rpmsg/virtio_rpmsg_bus.c           | 2 +-
>  drivers/scsi/virtio_scsi.c                 | 2 +-
>  drivers/virtio/virtio.c                    | 5 +++++
>  drivers/virtio/virtio_balloon.c            | 2 +-
>  drivers/virtio/virtio_input.c              | 2 +-
>  drivers/virtio/virtio_mem.c                | 2 +-
>  fs/fuse/virtio_fs.c                        | 4 ++--
>  include/linux/virtio.h                     | 1 +
>  net/9p/trans_virtio.c                      | 2 +-
>  net/vmw_vsock/virtio_transport.c           | 4 ++--
>  sound/virtio/virtio_card.c                 | 4 ++--
>  26 files changed, 39 insertions(+), 33 deletions(-)
>
> diff --git a/arch/um/drivers/virt-pci.c b/arch/um/drivers/virt-pci.c
> index c08066633023..22c4d87c9c15 100644
> --- a/arch/um/drivers/virt-pci.c
> +++ b/arch/um/drivers/virt-pci.c
> @@ -616,7 +616,7 @@ static void um_pci_virtio_remove(struct virtio_device *vdev)
>         int i;
>
>          /* Stop all virtqueues */
> -        vdev->config->reset(vdev);
> +        virtio_reset_device(vdev);
>          vdev->config->del_vqs(vdev);
>
>         device_set_wakeup_enable(&vdev->dev, false);
> diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
> index 303caf2d17d0..83d0af3fbf30 100644
> --- a/drivers/block/virtio_blk.c
> +++ b/drivers/block/virtio_blk.c
> @@ -910,7 +910,7 @@ static void virtblk_remove(struct virtio_device *vdev)
>         mutex_lock(&vblk->vdev_mutex);
>
>         /* Stop all the virtqueues. */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         /* Virtqueues are stopped, nothing can use vblk->vdev anymore. */
>         vblk->vdev = NULL;
> @@ -929,7 +929,7 @@ static int virtblk_freeze(struct virtio_device *vdev)
>         struct virtio_blk *vblk = vdev->priv;
>
>         /* Ensure we don't receive any more interrupts */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         /* Make sure no work handler is accessing the device. */
>         flush_work(&vblk->config_work);
> diff --git a/drivers/bluetooth/virtio_bt.c b/drivers/bluetooth/virtio_bt.c
> index 57908ce4fae8..24a9258962fa 100644
> --- a/drivers/bluetooth/virtio_bt.c
> +++ b/drivers/bluetooth/virtio_bt.c
> @@ -364,7 +364,7 @@ static void virtbt_remove(struct virtio_device *vdev)
>         struct hci_dev *hdev = vbt->hdev;
>
>         hci_unregister_dev(hdev);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         hci_free_dev(hdev);
>         vbt->hdev = NULL;
> diff --git a/drivers/char/hw_random/virtio-rng.c b/drivers/char/hw_random/virtio-rng.c
> index a90001e02bf7..95980489514b 100644
> --- a/drivers/char/hw_random/virtio-rng.c
> +++ b/drivers/char/hw_random/virtio-rng.c
> @@ -134,7 +134,7 @@ static void remove_common(struct virtio_device *vdev)
>         vi->hwrng_removed = true;
>         vi->data_avail = 0;
>         complete(&vi->have_data);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vi->busy = false;
>         if (vi->hwrng_register_done)
>                 hwrng_unregister(&vi->hwrng);
> diff --git a/drivers/char/virtio_console.c b/drivers/char/virtio_console.c
> index 7eaf303a7a86..08bbd693436f 100644
> --- a/drivers/char/virtio_console.c
> +++ b/drivers/char/virtio_console.c
> @@ -1957,7 +1957,7 @@ static void virtcons_remove(struct virtio_device *vdev)
>         spin_unlock_irq(&pdrvdata_lock);
>
>         /* Disable interrupts for vqs */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         /* Finish up work that's lined up */
>         if (use_multiport(portdev))
>                 cancel_work_sync(&portdev->control_work);
> @@ -2139,7 +2139,7 @@ static int virtcons_freeze(struct virtio_device *vdev)
>
>         portdev = vdev->priv;
>
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         if (use_multiport(portdev))
>                 virtqueue_disable_cb(portdev->c_ivq);
> diff --git a/drivers/crypto/virtio/virtio_crypto_core.c b/drivers/crypto/virtio/virtio_crypto_core.c
> index e2375d992308..8e977b7627cb 100644
> --- a/drivers/crypto/virtio/virtio_crypto_core.c
> +++ b/drivers/crypto/virtio/virtio_crypto_core.c
> @@ -404,7 +404,7 @@ static int virtcrypto_probe(struct virtio_device *vdev)
>  free_engines:
>         virtcrypto_clear_crypto_engines(vcrypto);
>  free_vqs:
> -       vcrypto->vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         virtcrypto_del_vqs(vcrypto);
>  free_dev:
>         virtcrypto_devmgr_rm_dev(vcrypto);
> @@ -436,7 +436,7 @@ static void virtcrypto_remove(struct virtio_device *vdev)
>
>         if (virtcrypto_dev_started(vcrypto))
>                 virtcrypto_dev_stop(vcrypto);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         virtcrypto_free_unused_reqs(vcrypto);
>         virtcrypto_clear_crypto_engines(vcrypto);
>         virtcrypto_del_vqs(vcrypto);
> @@ -456,7 +456,7 @@ static int virtcrypto_freeze(struct virtio_device *vdev)
>  {
>         struct virtio_crypto *vcrypto = vdev->priv;
>
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         virtcrypto_free_unused_reqs(vcrypto);
>         if (virtcrypto_dev_started(vcrypto))
>                 virtcrypto_dev_stop(vcrypto);
> @@ -492,7 +492,7 @@ static int virtcrypto_restore(struct virtio_device *vdev)
>  free_engines:
>         virtcrypto_clear_crypto_engines(vcrypto);
>  free_vqs:
> -       vcrypto->vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         virtcrypto_del_vqs(vcrypto);
>         return err;
>  }
> diff --git a/drivers/firmware/arm_scmi/virtio.c b/drivers/firmware/arm_scmi/virtio.c
> index 11e8efb71375..6b8d93fe8848 100644
> --- a/drivers/firmware/arm_scmi/virtio.c
> +++ b/drivers/firmware/arm_scmi/virtio.c
> @@ -452,7 +452,7 @@ static void scmi_vio_remove(struct virtio_device *vdev)
>          * outstanding message on any vqueue to be ignored by complete_cb: now
>          * we can just stop processing buffers and destroy the vqueues.
>          */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>         /* Ensure scmi_vdev is visible as NULL */
>         smp_store_mb(scmi_vdev, NULL);
> diff --git a/drivers/gpio/gpio-virtio.c b/drivers/gpio/gpio-virtio.c
> index d24f1c9264bc..5029f01966f4 100644
> --- a/drivers/gpio/gpio-virtio.c
> +++ b/drivers/gpio/gpio-virtio.c
> @@ -203,7 +203,7 @@ static void virtio_gpio_request_vq(struct virtqueue *vq)
>
>  static void virtio_gpio_free_vqs(struct virtio_device *vdev)
>  {
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>  }
>
> diff --git a/drivers/gpu/drm/virtio/virtgpu_kms.c b/drivers/gpu/drm/virtio/virtgpu_kms.c
> index f3379059f324..6aa605b8d3a1 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_kms.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_kms.c
> @@ -257,7 +257,7 @@ void virtio_gpu_deinit(struct drm_device *dev)
>         flush_work(&vgdev->ctrlq.dequeue_work);
>         flush_work(&vgdev->cursorq.dequeue_work);
>         flush_work(&vgdev->config_changed_work);
> -       vgdev->vdev->config->reset(vgdev->vdev);
> +       virtio_reset_device(vgdev->vdev);
>         vgdev->vdev->config->del_vqs(vgdev->vdev);
>  }
>
> diff --git a/drivers/i2c/busses/i2c-virtio.c b/drivers/i2c/busses/i2c-virtio.c
> index f10a603b13fb..eb3261ac64dc 100644
> --- a/drivers/i2c/busses/i2c-virtio.c
> +++ b/drivers/i2c/busses/i2c-virtio.c
> @@ -177,7 +177,7 @@ static int virtio_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
>
>  static void virtio_i2c_del_vqs(struct virtio_device *vdev)
>  {
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>  }
>
> diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> index 80930ce04a16..1d4e1e7cf175 100644
> --- a/drivers/iommu/virtio-iommu.c
> +++ b/drivers/iommu/virtio-iommu.c
> @@ -1115,7 +1115,7 @@ static void viommu_remove(struct virtio_device *vdev)
>         iommu_device_unregister(&viommu->iommu);
>
>         /* Stop all virtqueues */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>
>         dev_info(&vdev->dev, "device removed\n");
> diff --git a/drivers/net/caif/caif_virtio.c b/drivers/net/caif/caif_virtio.c
> index 91230894692d..444ef6a342f6 100644
> --- a/drivers/net/caif/caif_virtio.c
> +++ b/drivers/net/caif/caif_virtio.c
> @@ -754,7 +754,7 @@ static void cfv_remove(struct virtio_device *vdev)
>         debugfs_remove_recursive(cfv->debugfs);
>
>         vringh_kiov_cleanup(&cfv->ctx.riov);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->vringh_config->del_vrhs(cfv->vdev);
>         cfv->vr_rx = NULL;
>         vdev->config->del_vqs(cfv->vdev);
> diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
> index 79bd2585ec6b..8c10fcad73a4 100644
> --- a/drivers/net/virtio_net.c
> +++ b/drivers/net/virtio_net.c
> @@ -3274,7 +3274,7 @@ static int virtnet_probe(struct virtio_device *vdev)
>         return 0;
>
>  free_unregister_netdev:
> -       vi->vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         unregister_netdev(dev);
>  free_failover:
> @@ -3290,7 +3290,7 @@ static int virtnet_probe(struct virtio_device *vdev)
>
>  static void remove_vq_common(struct virtnet_info *vi)
>  {
> -       vi->vdev->config->reset(vi->vdev);
> +       virtio_reset_device(vi->vdev);
>
>         /* Free unused buffers in both send and recv, if any. */
>         free_unused_bufs(vi);
> diff --git a/drivers/net/wireless/mac80211_hwsim.c b/drivers/net/wireless/mac80211_hwsim.c
> index 0adae76eb8df..9ee430c1d4a2 100644
> --- a/drivers/net/wireless/mac80211_hwsim.c
> +++ b/drivers/net/wireless/mac80211_hwsim.c
> @@ -4369,7 +4369,7 @@ static void remove_vqs(struct virtio_device *vdev)
>  {
>         int i;
>
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         for (i = 0; i < ARRAY_SIZE(hwsim_vqs); i++) {
>                 struct virtqueue *vq = hwsim_vqs[i];
> diff --git a/drivers/nvdimm/virtio_pmem.c b/drivers/nvdimm/virtio_pmem.c
> index 726c7354d465..995b6cdc67ed 100644
> --- a/drivers/nvdimm/virtio_pmem.c
> +++ b/drivers/nvdimm/virtio_pmem.c
> @@ -105,7 +105,7 @@ static void virtio_pmem_remove(struct virtio_device *vdev)
>
>         nvdimm_bus_unregister(nvdimm_bus);
>         vdev->config->del_vqs(vdev);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>  }
>
>  static struct virtio_driver virtio_pmem_driver = {
> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> index 8e49a3bacfc7..6a11952822df 100644
> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> @@ -1015,7 +1015,7 @@ static void rpmsg_remove(struct virtio_device *vdev)
>         size_t total_buf_space = vrp->num_bufs * vrp->buf_size;
>         int ret;
>
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         ret = device_for_each_child(&vdev->dev, NULL, rpmsg_remove_device);
>         if (ret)
> diff --git a/drivers/scsi/virtio_scsi.c b/drivers/scsi/virtio_scsi.c
> index 07d0250f17c3..f2502a8a5213 100644
> --- a/drivers/scsi/virtio_scsi.c
> +++ b/drivers/scsi/virtio_scsi.c
> @@ -778,7 +778,7 @@ static void virtscsi_init_vq(struct virtio_scsi_vq *virtscsi_vq,
>  static void virtscsi_remove_vqs(struct virtio_device *vdev)
>  {
>         /* Stop all the virtqueues. */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>  }
>
> diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
> index 0a5b54034d4b..a67dd0eca578 100644
> --- a/drivers/virtio/virtio.c
> +++ b/drivers/virtio/virtio.c
> @@ -204,6 +204,11 @@ int virtio_finalize_features(struct virtio_device *dev)
>  }
>  EXPORT_SYMBOL_GPL(virtio_finalize_features);
>
> +static void virtio_reset_device(struct virtio_device *dev)
> +{
> +       dev->config->reset(dev);
> +}
> +
>  static int virtio_dev_probe(struct device *_d)
>  {
>         int err, i;
> diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
> index c22ff0117b46..f4c34a2a6b8e 100644
> --- a/drivers/virtio/virtio_balloon.c
> +++ b/drivers/virtio/virtio_balloon.c
> @@ -1056,7 +1056,7 @@ static void remove_common(struct virtio_balloon *vb)
>                 return_free_pages_to_mm(vb, ULONG_MAX);
>
>         /* Now we reset the device so we can clean up the queues. */
> -       vb->vdev->config->reset(vb->vdev);
> +       virtio_reset_device(vb->vdev);
>
>         vb->vdev->config->del_vqs(vb->vdev);
>  }
> diff --git a/drivers/virtio/virtio_input.c b/drivers/virtio/virtio_input.c
> index ce51ae165943..3aa46703872d 100644
> --- a/drivers/virtio/virtio_input.c
> +++ b/drivers/virtio/virtio_input.c
> @@ -347,7 +347,7 @@ static void virtinput_remove(struct virtio_device *vdev)
>         spin_unlock_irqrestore(&vi->lock, flags);
>
>         input_unregister_device(vi->idev);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         while ((buf = virtqueue_detach_unused_buf(vi->sts)) != NULL)
>                 kfree(buf);
>         vdev->config->del_vqs(vdev);
> diff --git a/drivers/virtio/virtio_mem.c b/drivers/virtio/virtio_mem.c
> index bef8ad6bf466..3bab0a625a4b 100644
> --- a/drivers/virtio/virtio_mem.c
> +++ b/drivers/virtio/virtio_mem.c
> @@ -2722,7 +2722,7 @@ static void virtio_mem_remove(struct virtio_device *vdev)
>         }
>
>         /* reset the device and cleanup the queues */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>
>         kfree(vm);
> diff --git a/fs/fuse/virtio_fs.c b/fs/fuse/virtio_fs.c
> index 0ad89c6629d7..27c3b74070a2 100644
> --- a/fs/fuse/virtio_fs.c
> +++ b/fs/fuse/virtio_fs.c
> @@ -895,7 +895,7 @@ static int virtio_fs_probe(struct virtio_device *vdev)
>         return 0;
>
>  out_vqs:
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         virtio_fs_cleanup_vqs(vdev, fs);
>         kfree(fs->vqs);
>
> @@ -927,7 +927,7 @@ static void virtio_fs_remove(struct virtio_device *vdev)
>         list_del_init(&fs->list);
>         virtio_fs_stop_all_queues(fs);
>         virtio_fs_drain_all_queues_locked(fs);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         virtio_fs_cleanup_vqs(vdev, fs);
>
>         vdev->priv = NULL;
> diff --git a/include/linux/virtio.h b/include/linux/virtio.h
> index 41edbc01ffa4..72292a62cd90 100644
> --- a/include/linux/virtio.h
> +++ b/include/linux/virtio.h
> @@ -138,6 +138,7 @@ int virtio_finalize_features(struct virtio_device *dev);
>  int virtio_device_freeze(struct virtio_device *dev);
>  int virtio_device_restore(struct virtio_device *dev);
>  #endif
> +void virtio_reset_device(struct virtio_device *dev);
>
>  size_t virtio_max_dma_size(struct virtio_device *vdev);
>
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 490a4c900339..19c69821dd04 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -721,7 +721,7 @@ static void p9_virtio_remove(struct virtio_device *vdev)
>
>         mutex_unlock(&virtio_9p_lock);
>
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>         vdev->config->del_vqs(vdev);
>
>         sysfs_remove_file(&(vdev->dev.kobj), &dev_attr_mount_tag.attr);
> diff --git a/net/vmw_vsock/virtio_transport.c b/net/vmw_vsock/virtio_transport.c
> index 4f7c99dfd16c..fb3302fff627 100644
> --- a/net/vmw_vsock/virtio_transport.c
> +++ b/net/vmw_vsock/virtio_transport.c
> @@ -665,7 +665,7 @@ static void virtio_vsock_remove(struct virtio_device *vdev)
>         vsock_for_each_connected_socket(virtio_vsock_reset_sock);
>
>         /* Stop all work handlers to make sure no one is accessing the device,
> -        * so we can safely call vdev->config->reset().
> +        * so we can safely call virtio_reset_device().
>          */
>         mutex_lock(&vsock->rx_lock);
>         vsock->rx_run = false;
> @@ -682,7 +682,7 @@ static void virtio_vsock_remove(struct virtio_device *vdev)
>         /* Flush all device writes and interrupts, device will not use any
>          * more buffers.
>          */
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         mutex_lock(&vsock->rx_lock);
>         while ((pkt = virtqueue_detach_unused_buf(vsock->vqs[VSOCK_VQ_RX])))
> diff --git a/sound/virtio/virtio_card.c b/sound/virtio/virtio_card.c
> index 150ab3e37013..e2847c040f75 100644
> --- a/sound/virtio/virtio_card.c
> +++ b/sound/virtio/virtio_card.c
> @@ -350,7 +350,7 @@ static void virtsnd_remove(struct virtio_device *vdev)
>                 snd_card_free(snd->card);
>
>         vdev->config->del_vqs(vdev);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         for (i = 0; snd->substreams && i < snd->nsubstreams; ++i) {
>                 struct virtio_pcm_substream *vss = &snd->substreams[i];
> @@ -379,7 +379,7 @@ static int virtsnd_freeze(struct virtio_device *vdev)
>         virtsnd_ctl_msg_cancel_all(snd);
>
>         vdev->config->del_vqs(vdev);
> -       vdev->config->reset(vdev);
> +       virtio_reset_device(vdev);
>
>         for (i = 0; i < snd->nsubstreams; ++i)
>                 cancel_work_sync(&snd->substreams[i].elapsed_period);

Reviewed-by: Pankaj Gupta <pankaj.gupta.linux@gmail.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
