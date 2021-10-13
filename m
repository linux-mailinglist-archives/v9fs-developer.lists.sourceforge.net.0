Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CE342C5A4
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Oct 2021 18:00:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1maggc-0004G1-C0; Wed, 13 Oct 2021 16:00:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <david@redhat.com>) id 1maggP-0004Fh-RE
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 16:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QCm5dOclxo0psHU4qKEkJZZeOXU3321uNZD2ahb33xs=; b=YSqMxyTaFieu7Eu38lpcPntSfH
 dxrabIiYnc/Wwe1R2CTWuO5S7t09R6Avcnj66fxqNg/njJVP/RFF4ffddvU5Df/c7i2q/n5p3/p+x
 z1Vr2w2RZnmvJ9dnB+IIVp/ChLWnsD1UlwWb/7qB66sMNQ3e7QAq/QhRURN7poDIGCyw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QCm5dOclxo0psHU4qKEkJZZeOXU3321uNZD2ahb33xs=; b=BEEX4ggFuXOJTX5yUf2ZEZdH4a
 oKoUPgaqOdI9i2JY/kau5rGx9E/Wnfn1LFNfWfMHLz84cHwM+MuOmIRa7dQ52hbMjK5gWLcvQ5OJw
 VA3pMoX/gajp8iin4Tvh5QhvWk5ICgJRLwpyDLYPnwyY9j9MFHibtji+Aq8ASK95uSko=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maggH-008fl3-5V
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 16:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634140808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QCm5dOclxo0psHU4qKEkJZZeOXU3321uNZD2ahb33xs=;
 b=BHjATy6fZP8ji4IGupauqNl0WwuhtgEHJ5Uvo41N7C5M7N8Uj7jryss0bo6TNq4OIi4Q4l
 gDnny4txN/4x+z2INOe6gluUHretukxeipr9wZKzZ3Z2N2Geayq8RKiR7CmF6nQOUFkNta
 Sqk16wgXDGlTSh4T0aJeS8g4mhBWmaI=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-QYb-_PZINzGpJnSMb5hTQA-1; Wed, 13 Oct 2021 12:00:06 -0400
X-MC-Unique: QYb-_PZINzGpJnSMb5hTQA-1
Received: by mail-wr1-f70.google.com with SMTP id
 c4-20020a5d6cc4000000b00160edc8bb28so2353583wrc.9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 13 Oct 2021 09:00:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=QCm5dOclxo0psHU4qKEkJZZeOXU3321uNZD2ahb33xs=;
 b=0NEt/mye6Q4z306GfnUrBS4ZQTPdgQ7v/0HaMh0Sp5n2kVKbuEqTy03mtAfCyR5tSo
 5IL00bF0fZZyWXYSqbKNeacOUqjEtV44uEl0nwFamgpAPsfl7hxijCk+LNpRDspiQcYL
 n8CuTWFHPGiQmob2+nq7wcOxI3V3EDOV6jLkUZQ/+72POWCY5fJnBwc7oEFixh0CWkMQ
 p6gpGXZoCCqR46X96Z9en5FztfuMVEWqRe6mb7CL4/0/vj3CUMZ3Pxgj1BfS33Q4augn
 W6jCEUfkpDYF4nBsEu4kHCzK6M5cxHihQUlt8gScIB+P4s+y0a1qD7NrXnUmyAq5NNpo
 8jMw==
X-Gm-Message-State: AOAM533dnXj1sV6Jj5/OQzuYgXLngK2Oa1gpoiK+GCSdp6Fa6BoBIO/0
 vcmqxZKzTwZ42R6wjPdAwX9eaLLpXzccXgwANui2Wtw4jnPS5jrH0ah+8UC3fQRAcCnX/5BMI0u
 SQYlNbIcUxxOVjv2kkDC+KnpLO/4BjJGAzMo=
X-Received: by 2002:adf:dc0d:: with SMTP id t13mr9654wri.158.1634140805530;
 Wed, 13 Oct 2021 09:00:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyItkbAA3kGIqmmHgTgrrpf9fCG54WlJV2+wdefB9WU28Q546eZydpGXWHl2Ou3h6lUqYc/hA==
X-Received: by 2002:adf:dc0d:: with SMTP id t13mr9603wri.158.1634140805309;
 Wed, 13 Oct 2021 09:00:05 -0700 (PDT)
Received: from [192.168.3.132] (p5b0c6774.dip0.t-ipconnect.de. [91.12.103.116])
 by smtp.gmail.com with ESMTPSA id n17sm6521wrq.11.2021.10.13.09.00.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Oct 2021 09:00:04 -0700 (PDT)
Message-ID: <cf511a7f-531f-4555-d7b4-cb171a615fdd@redhat.com>
Date: Wed, 13 Oct 2021 18:00:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20211013105226.20225-1-mst@redhat.com>
 <2060bd96-5884-a1b5-9f29-7fe670dc088d@redhat.com>
 <20211013081632-mutt-send-email-mst@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20211013081632-mutt-send-email-mst@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13.10.21 14:17, Michael S. Tsirkin wrote: > On Wed, Oct
 13, 2021 at 01:03:46PM +0200, David Hildenbrand wrote: >> On 13.10.21 12:55,
 Michael S. Tsirkin wrote: >>> This will enable cleanups down the [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maggH-008fl3-5V
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

On 13.10.21 14:17, Michael S. Tsirkin wrote:
> On Wed, Oct 13, 2021 at 01:03:46PM +0200, David Hildenbrand wrote:
>> On 13.10.21 12:55, Michael S. Tsirkin wrote:
>>> This will enable cleanups down the road.
>>> The idea is to disable cbs, then add "flush_queued_cbs" callback
>>> as a parameter, this way drivers can flush any work
>>> queued after callbacks have been disabled.
>>>
>>> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
>>> ---
>>>   arch/um/drivers/virt-pci.c                 | 2 +-
>>>   drivers/block/virtio_blk.c                 | 4 ++--
>>>   drivers/bluetooth/virtio_bt.c              | 2 +-
>>>   drivers/char/hw_random/virtio-rng.c        | 2 +-
>>>   drivers/char/virtio_console.c              | 4 ++--
>>>   drivers/crypto/virtio/virtio_crypto_core.c | 8 ++++----
>>>   drivers/firmware/arm_scmi/virtio.c         | 2 +-
>>>   drivers/gpio/gpio-virtio.c                 | 2 +-
>>>   drivers/gpu/drm/virtio/virtgpu_kms.c       | 2 +-
>>>   drivers/i2c/busses/i2c-virtio.c            | 2 +-
>>>   drivers/iommu/virtio-iommu.c               | 2 +-
>>>   drivers/net/caif/caif_virtio.c             | 2 +-
>>>   drivers/net/virtio_net.c                   | 4 ++--
>>>   drivers/net/wireless/mac80211_hwsim.c      | 2 +-
>>>   drivers/nvdimm/virtio_pmem.c               | 2 +-
>>>   drivers/rpmsg/virtio_rpmsg_bus.c           | 2 +-
>>>   drivers/scsi/virtio_scsi.c                 | 2 +-
>>>   drivers/virtio/virtio.c                    | 5 +++++
>>>   drivers/virtio/virtio_balloon.c            | 2 +-
>>>   drivers/virtio/virtio_input.c              | 2 +-
>>>   drivers/virtio/virtio_mem.c                | 2 +-
>>>   fs/fuse/virtio_fs.c                        | 4 ++--
>>>   include/linux/virtio.h                     | 1 +
>>>   net/9p/trans_virtio.c                      | 2 +-
>>>   net/vmw_vsock/virtio_transport.c           | 4 ++--
>>>   sound/virtio/virtio_card.c                 | 4 ++--
>>>   26 files changed, 39 insertions(+), 33 deletions(-)
>>>
>>> diff --git a/arch/um/drivers/virt-pci.c b/arch/um/drivers/virt-pci.c
>>> index c08066633023..22c4d87c9c15 100644
>>> --- a/arch/um/drivers/virt-pci.c
>>> +++ b/arch/um/drivers/virt-pci.c
>>> @@ -616,7 +616,7 @@ static void um_pci_virtio_remove(struct virtio_device *vdev)
>>>   	int i;
>>>           /* Stop all virtqueues */
>>> -        vdev->config->reset(vdev);
>>> +        virtio_reset_device(vdev);
>>>           vdev->config->del_vqs(vdev);
>>
>> Nit: virtio_device_reset()?
>>
>> Because I see:
>>
>> int virtio_device_freeze(struct virtio_device *dev);
>> int virtio_device_restore(struct virtio_device *dev);
>> void virtio_device_ready(struct virtio_device *dev)
>>
>> But well, there is:
>> void virtio_break_device(struct virtio_device *dev);
> 
> Exactly. I don't know what's best, so I opted for plain english :)

Fair enough, LGTM

Reviewed-by: David Hildenbrand <david@redhat.com>


-- 
Thanks,

David / dhildenb



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
