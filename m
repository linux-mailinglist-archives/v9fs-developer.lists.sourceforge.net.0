Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A142BDFA
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Oct 2021 12:56:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mabvS-0003y8-89; Wed, 13 Oct 2021 10:55:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mst@redhat.com>) id 1mabvQ-0003y1-Iw
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 10:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HOHQBuq5n1jvyoAk83wUOf4Uik9+loiLDFU1S+KWwJc=; b=U/1IrEK2Z6CRb9BC5HNaiSUG09
 CUb+zqPvgUa46hjhRfu5Ji9/OV3oJQVzunkWEp7C2SlTllct+xs2IFw4YiwZxJt+G+wgxkDAOGoMX
 gMamRATLva4WoFW0uOJ/CyfLWjyz5r7HAcdjTytgGGC4M0ddsDHfe8Luh8eZti1NF/Es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HOHQBuq5n1jvyoAk83wUOf4Uik9+loiLDFU1S+KWwJc=; b=E
 8sSBrBwqtBoyBO5cKK4FiHaSnX0/ThvAbUlbql0xhKoD8F8RLjpHkY315Zh1lEMwnTRPtIW50DU0r
 R9a4s0U3MVwV4FQ6YSp8zJFdu9hcLObXAAEjn8yj5QhRKnm6Q/cIqDHA0fsFp99xnh3pG7BUISArb
 K4Sxmj6jr3mdK6QE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mabvO-0002yq-Up
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 10:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634122548;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=HOHQBuq5n1jvyoAk83wUOf4Uik9+loiLDFU1S+KWwJc=;
 b=GSyHZdpJoWPX8JmAMmKAlvUOeIPKmWGMROlcYUw0ZK36y8CV3rn7l2LpIUNTWSf0heVOXn
 MMl99gRcJNUx0H9PVKaiTuV/CddQnehZhI2Z1no/UB84RGXOqIpJ2Kc3NDajF+dPumRrWi
 08drjIN2tTkA8GeSpb9p/z9/Q4cL4S8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-524-aBm3I9bYN3ODRptosN3PlA-1; Wed, 13 Oct 2021 06:55:46 -0400
X-MC-Unique: aBm3I9bYN3ODRptosN3PlA-1
Received: by mail-wr1-f70.google.com with SMTP id
 41-20020adf812c000000b00160dfbfe1a2so1680535wrm.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 13 Oct 2021 03:55:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=HOHQBuq5n1jvyoAk83wUOf4Uik9+loiLDFU1S+KWwJc=;
 b=Py4UD88Enl2NB/GhiPjrK7tkDfPGE2IUivOFqnWF+IsAWYX953yRVZ+1bFh0UgM+qU
 j4LJXx7QssQ/0ocOB2RepOeRolbS7+xTCekvKpB0Vf4k+JvcC+JvdvOfVVQlsJ9uAu/4
 pwqzv3wJxdHiUAN0IF+fLOt+ZJWlZ8gnyNLcYYagPMiTFVaIKGhUIblnBE4lafJRT3ka
 HqLD+TNnyHQ4ZS8jD8rT97wljjEo9uZCfkHfpMgVQEjl8NNS+gXI7e+qk93yHQWvy4fl
 hKNILTIVMHYK5cNjC+XvgfazXuv/KD3c7iFV6tnBshnPIaCnvD9YvUlruUu3uN4plM2U
 ucdg==
X-Gm-Message-State: AOAM533Wzc10ACKQ3uPtjc2ZgBjWILSfZZNid9UsQyXbgrUo8dlpWxiF
 zHZRecg2BJipQ3o1V636d8/3vyXkF30SmUAG62h/Nvz/jc8YJgqHyzDJGK2rU8WGFERvs5UGbFq
 h4w7tkWufvaBDFXUHo+ZjEh2BZv3VJrBOpPc=
X-Received: by 2002:a1c:f216:: with SMTP id s22mr12239203wmc.27.1634122544698; 
 Wed, 13 Oct 2021 03:55:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIFKVzN3wSeM2Mpi+3ebMvrIe+xpiLg9sofnH/e5wmfza96yWoV1W27PJsbS9IH10+WwuJlw==
X-Received: by 2002:a1c:f216:: with SMTP id s22mr12239123wmc.27.1634122544323; 
 Wed, 13 Oct 2021 03:55:44 -0700 (PDT)
Received: from redhat.com ([2.55.30.112])
 by smtp.gmail.com with ESMTPSA id a81sm5721952wmd.30.2021.10.13.03.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 03:55:42 -0700 (PDT)
Date: Wed, 13 Oct 2021 06:55:31 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Message-ID: <20211013105226.20225-1-mst@redhat.com>
MIME-Version: 1.0
X-Mailer: git-send-email 2.27.0.106.g8ac3dc51b1
X-Mutt-Fcc: =sent
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
 Content preview: This will enable cleanups down the road. The idea is to
 disable
 cbs, then add "flush_queued_cbs" callback as a parameter, this way drivers
 can flush any work queued after callbacks have been disabled. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mabvO-0002yq-Up
Subject: [V9fs-developer] [PATCH RFC] virtio: wrap config->reset calls
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
 Stefan Hajnoczi <stefanha@redhat.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <vireshk@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 netdev@vger.kernel.org, Gerd Hoffmann <kraxel@redhat.com>,
 linux-scsi@vger.kernel.org, Will Deacon <will@kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Dave Jiang <dave.jiang@intel.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel@lists.infradead.org, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Gonglei <arei.gonglei@huawei.com>, Kalle Valo <kvalo@codeaurora.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, virtualization@lists.linux-foundation.org,
 Marcel Holtmann <marcel@holtmann.org>, Vivek Goyal <vgoyal@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Amit Shah <amit@kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-block@vger.kernel.org,
 Vishal Verma <vishal.l.verma@intel.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Matt Mackall <mpm@selenic.com>,
 Dan Williams <dan.j.williams@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Cristian Marussi <cristian.marussi@arm.com>, Jens Axboe <axboe@kernel.dk>,
 Jie Deng <jie.deng@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-gpio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>, linux-wireless@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, linux-i2c@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, iommu@lists.linux-foundation.org,
 Anton Yakovlev <anton.yakovlev@opensynergy.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Johannes Berg <johannes@sipsolutions.net>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, "David S. Miller" <davem@davemloft.net>,
 Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This will enable cleanups down the road.
The idea is to disable cbs, then add "flush_queued_cbs" callback
as a parameter, this way drivers can flush any work
queued after callbacks have been disabled.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 arch/um/drivers/virt-pci.c                 | 2 +-
 drivers/block/virtio_blk.c                 | 4 ++--
 drivers/bluetooth/virtio_bt.c              | 2 +-
 drivers/char/hw_random/virtio-rng.c        | 2 +-
 drivers/char/virtio_console.c              | 4 ++--
 drivers/crypto/virtio/virtio_crypto_core.c | 8 ++++----
 drivers/firmware/arm_scmi/virtio.c         | 2 +-
 drivers/gpio/gpio-virtio.c                 | 2 +-
 drivers/gpu/drm/virtio/virtgpu_kms.c       | 2 +-
 drivers/i2c/busses/i2c-virtio.c            | 2 +-
 drivers/iommu/virtio-iommu.c               | 2 +-
 drivers/net/caif/caif_virtio.c             | 2 +-
 drivers/net/virtio_net.c                   | 4 ++--
 drivers/net/wireless/mac80211_hwsim.c      | 2 +-
 drivers/nvdimm/virtio_pmem.c               | 2 +-
 drivers/rpmsg/virtio_rpmsg_bus.c           | 2 +-
 drivers/scsi/virtio_scsi.c                 | 2 +-
 drivers/virtio/virtio.c                    | 5 +++++
 drivers/virtio/virtio_balloon.c            | 2 +-
 drivers/virtio/virtio_input.c              | 2 +-
 drivers/virtio/virtio_mem.c                | 2 +-
 fs/fuse/virtio_fs.c                        | 4 ++--
 include/linux/virtio.h                     | 1 +
 net/9p/trans_virtio.c                      | 2 +-
 net/vmw_vsock/virtio_transport.c           | 4 ++--
 sound/virtio/virtio_card.c                 | 4 ++--
 26 files changed, 39 insertions(+), 33 deletions(-)

diff --git a/arch/um/drivers/virt-pci.c b/arch/um/drivers/virt-pci.c
index c08066633023..22c4d87c9c15 100644
--- a/arch/um/drivers/virt-pci.c
+++ b/arch/um/drivers/virt-pci.c
@@ -616,7 +616,7 @@ static void um_pci_virtio_remove(struct virtio_device *vdev)
 	int i;
 
         /* Stop all virtqueues */
-        vdev->config->reset(vdev);
+        virtio_reset_device(vdev);
         vdev->config->del_vqs(vdev);
 
 	device_set_wakeup_enable(&vdev->dev, false);
diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 303caf2d17d0..83d0af3fbf30 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -910,7 +910,7 @@ static void virtblk_remove(struct virtio_device *vdev)
 	mutex_lock(&vblk->vdev_mutex);
 
 	/* Stop all the virtqueues. */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	/* Virtqueues are stopped, nothing can use vblk->vdev anymore. */
 	vblk->vdev = NULL;
@@ -929,7 +929,7 @@ static int virtblk_freeze(struct virtio_device *vdev)
 	struct virtio_blk *vblk = vdev->priv;
 
 	/* Ensure we don't receive any more interrupts */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	/* Make sure no work handler is accessing the device. */
 	flush_work(&vblk->config_work);
diff --git a/drivers/bluetooth/virtio_bt.c b/drivers/bluetooth/virtio_bt.c
index 57908ce4fae8..24a9258962fa 100644
--- a/drivers/bluetooth/virtio_bt.c
+++ b/drivers/bluetooth/virtio_bt.c
@@ -364,7 +364,7 @@ static void virtbt_remove(struct virtio_device *vdev)
 	struct hci_dev *hdev = vbt->hdev;
 
 	hci_unregister_dev(hdev);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	hci_free_dev(hdev);
 	vbt->hdev = NULL;
diff --git a/drivers/char/hw_random/virtio-rng.c b/drivers/char/hw_random/virtio-rng.c
index a90001e02bf7..95980489514b 100644
--- a/drivers/char/hw_random/virtio-rng.c
+++ b/drivers/char/hw_random/virtio-rng.c
@@ -134,7 +134,7 @@ static void remove_common(struct virtio_device *vdev)
 	vi->hwrng_removed = true;
 	vi->data_avail = 0;
 	complete(&vi->have_data);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vi->busy = false;
 	if (vi->hwrng_register_done)
 		hwrng_unregister(&vi->hwrng);
diff --git a/drivers/char/virtio_console.c b/drivers/char/virtio_console.c
index 7eaf303a7a86..08bbd693436f 100644
--- a/drivers/char/virtio_console.c
+++ b/drivers/char/virtio_console.c
@@ -1957,7 +1957,7 @@ static void virtcons_remove(struct virtio_device *vdev)
 	spin_unlock_irq(&pdrvdata_lock);
 
 	/* Disable interrupts for vqs */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	/* Finish up work that's lined up */
 	if (use_multiport(portdev))
 		cancel_work_sync(&portdev->control_work);
@@ -2139,7 +2139,7 @@ static int virtcons_freeze(struct virtio_device *vdev)
 
 	portdev = vdev->priv;
 
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	if (use_multiport(portdev))
 		virtqueue_disable_cb(portdev->c_ivq);
diff --git a/drivers/crypto/virtio/virtio_crypto_core.c b/drivers/crypto/virtio/virtio_crypto_core.c
index e2375d992308..8e977b7627cb 100644
--- a/drivers/crypto/virtio/virtio_crypto_core.c
+++ b/drivers/crypto/virtio/virtio_crypto_core.c
@@ -404,7 +404,7 @@ static int virtcrypto_probe(struct virtio_device *vdev)
 free_engines:
 	virtcrypto_clear_crypto_engines(vcrypto);
 free_vqs:
-	vcrypto->vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	virtcrypto_del_vqs(vcrypto);
 free_dev:
 	virtcrypto_devmgr_rm_dev(vcrypto);
@@ -436,7 +436,7 @@ static void virtcrypto_remove(struct virtio_device *vdev)
 
 	if (virtcrypto_dev_started(vcrypto))
 		virtcrypto_dev_stop(vcrypto);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	virtcrypto_free_unused_reqs(vcrypto);
 	virtcrypto_clear_crypto_engines(vcrypto);
 	virtcrypto_del_vqs(vcrypto);
@@ -456,7 +456,7 @@ static int virtcrypto_freeze(struct virtio_device *vdev)
 {
 	struct virtio_crypto *vcrypto = vdev->priv;
 
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	virtcrypto_free_unused_reqs(vcrypto);
 	if (virtcrypto_dev_started(vcrypto))
 		virtcrypto_dev_stop(vcrypto);
@@ -492,7 +492,7 @@ static int virtcrypto_restore(struct virtio_device *vdev)
 free_engines:
 	virtcrypto_clear_crypto_engines(vcrypto);
 free_vqs:
-	vcrypto->vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	virtcrypto_del_vqs(vcrypto);
 	return err;
 }
diff --git a/drivers/firmware/arm_scmi/virtio.c b/drivers/firmware/arm_scmi/virtio.c
index 11e8efb71375..6b8d93fe8848 100644
--- a/drivers/firmware/arm_scmi/virtio.c
+++ b/drivers/firmware/arm_scmi/virtio.c
@@ -452,7 +452,7 @@ static void scmi_vio_remove(struct virtio_device *vdev)
 	 * outstanding message on any vqueue to be ignored by complete_cb: now
 	 * we can just stop processing buffers and destroy the vqueues.
 	 */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 	/* Ensure scmi_vdev is visible as NULL */
 	smp_store_mb(scmi_vdev, NULL);
diff --git a/drivers/gpio/gpio-virtio.c b/drivers/gpio/gpio-virtio.c
index d24f1c9264bc..5029f01966f4 100644
--- a/drivers/gpio/gpio-virtio.c
+++ b/drivers/gpio/gpio-virtio.c
@@ -203,7 +203,7 @@ static void virtio_gpio_request_vq(struct virtqueue *vq)
 
 static void virtio_gpio_free_vqs(struct virtio_device *vdev)
 {
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 }
 
diff --git a/drivers/gpu/drm/virtio/virtgpu_kms.c b/drivers/gpu/drm/virtio/virtgpu_kms.c
index f3379059f324..6aa605b8d3a1 100644
--- a/drivers/gpu/drm/virtio/virtgpu_kms.c
+++ b/drivers/gpu/drm/virtio/virtgpu_kms.c
@@ -257,7 +257,7 @@ void virtio_gpu_deinit(struct drm_device *dev)
 	flush_work(&vgdev->ctrlq.dequeue_work);
 	flush_work(&vgdev->cursorq.dequeue_work);
 	flush_work(&vgdev->config_changed_work);
-	vgdev->vdev->config->reset(vgdev->vdev);
+	virtio_reset_device(vgdev->vdev);
 	vgdev->vdev->config->del_vqs(vgdev->vdev);
 }
 
diff --git a/drivers/i2c/busses/i2c-virtio.c b/drivers/i2c/busses/i2c-virtio.c
index f10a603b13fb..eb3261ac64dc 100644
--- a/drivers/i2c/busses/i2c-virtio.c
+++ b/drivers/i2c/busses/i2c-virtio.c
@@ -177,7 +177,7 @@ static int virtio_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 
 static void virtio_i2c_del_vqs(struct virtio_device *vdev)
 {
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 }
 
diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 80930ce04a16..1d4e1e7cf175 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -1115,7 +1115,7 @@ static void viommu_remove(struct virtio_device *vdev)
 	iommu_device_unregister(&viommu->iommu);
 
 	/* Stop all virtqueues */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 
 	dev_info(&vdev->dev, "device removed\n");
diff --git a/drivers/net/caif/caif_virtio.c b/drivers/net/caif/caif_virtio.c
index 91230894692d..444ef6a342f6 100644
--- a/drivers/net/caif/caif_virtio.c
+++ b/drivers/net/caif/caif_virtio.c
@@ -754,7 +754,7 @@ static void cfv_remove(struct virtio_device *vdev)
 	debugfs_remove_recursive(cfv->debugfs);
 
 	vringh_kiov_cleanup(&cfv->ctx.riov);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->vringh_config->del_vrhs(cfv->vdev);
 	cfv->vr_rx = NULL;
 	vdev->config->del_vqs(cfv->vdev);
diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index 79bd2585ec6b..8c10fcad73a4 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -3274,7 +3274,7 @@ static int virtnet_probe(struct virtio_device *vdev)
 	return 0;
 
 free_unregister_netdev:
-	vi->vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	unregister_netdev(dev);
 free_failover:
@@ -3290,7 +3290,7 @@ static int virtnet_probe(struct virtio_device *vdev)
 
 static void remove_vq_common(struct virtnet_info *vi)
 {
-	vi->vdev->config->reset(vi->vdev);
+	virtio_reset_device(vi->vdev);
 
 	/* Free unused buffers in both send and recv, if any. */
 	free_unused_bufs(vi);
diff --git a/drivers/net/wireless/mac80211_hwsim.c b/drivers/net/wireless/mac80211_hwsim.c
index 0adae76eb8df..9ee430c1d4a2 100644
--- a/drivers/net/wireless/mac80211_hwsim.c
+++ b/drivers/net/wireless/mac80211_hwsim.c
@@ -4369,7 +4369,7 @@ static void remove_vqs(struct virtio_device *vdev)
 {
 	int i;
 
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	for (i = 0; i < ARRAY_SIZE(hwsim_vqs); i++) {
 		struct virtqueue *vq = hwsim_vqs[i];
diff --git a/drivers/nvdimm/virtio_pmem.c b/drivers/nvdimm/virtio_pmem.c
index 726c7354d465..995b6cdc67ed 100644
--- a/drivers/nvdimm/virtio_pmem.c
+++ b/drivers/nvdimm/virtio_pmem.c
@@ -105,7 +105,7 @@ static void virtio_pmem_remove(struct virtio_device *vdev)
 
 	nvdimm_bus_unregister(nvdimm_bus);
 	vdev->config->del_vqs(vdev);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 }
 
 static struct virtio_driver virtio_pmem_driver = {
diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
index 8e49a3bacfc7..6a11952822df 100644
--- a/drivers/rpmsg/virtio_rpmsg_bus.c
+++ b/drivers/rpmsg/virtio_rpmsg_bus.c
@@ -1015,7 +1015,7 @@ static void rpmsg_remove(struct virtio_device *vdev)
 	size_t total_buf_space = vrp->num_bufs * vrp->buf_size;
 	int ret;
 
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	ret = device_for_each_child(&vdev->dev, NULL, rpmsg_remove_device);
 	if (ret)
diff --git a/drivers/scsi/virtio_scsi.c b/drivers/scsi/virtio_scsi.c
index 07d0250f17c3..f2502a8a5213 100644
--- a/drivers/scsi/virtio_scsi.c
+++ b/drivers/scsi/virtio_scsi.c
@@ -778,7 +778,7 @@ static void virtscsi_init_vq(struct virtio_scsi_vq *virtscsi_vq,
 static void virtscsi_remove_vqs(struct virtio_device *vdev)
 {
 	/* Stop all the virtqueues. */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 }
 
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index 0a5b54034d4b..a67dd0eca578 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -204,6 +204,11 @@ int virtio_finalize_features(struct virtio_device *dev)
 }
 EXPORT_SYMBOL_GPL(virtio_finalize_features);
 
+static void virtio_reset_device(struct virtio_device *dev)
+{
+	dev->config->reset(dev);
+}
+
 static int virtio_dev_probe(struct device *_d)
 {
 	int err, i;
diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index c22ff0117b46..f4c34a2a6b8e 100644
--- a/drivers/virtio/virtio_balloon.c
+++ b/drivers/virtio/virtio_balloon.c
@@ -1056,7 +1056,7 @@ static void remove_common(struct virtio_balloon *vb)
 		return_free_pages_to_mm(vb, ULONG_MAX);
 
 	/* Now we reset the device so we can clean up the queues. */
-	vb->vdev->config->reset(vb->vdev);
+	virtio_reset_device(vb->vdev);
 
 	vb->vdev->config->del_vqs(vb->vdev);
 }
diff --git a/drivers/virtio/virtio_input.c b/drivers/virtio/virtio_input.c
index ce51ae165943..3aa46703872d 100644
--- a/drivers/virtio/virtio_input.c
+++ b/drivers/virtio/virtio_input.c
@@ -347,7 +347,7 @@ static void virtinput_remove(struct virtio_device *vdev)
 	spin_unlock_irqrestore(&vi->lock, flags);
 
 	input_unregister_device(vi->idev);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	while ((buf = virtqueue_detach_unused_buf(vi->sts)) != NULL)
 		kfree(buf);
 	vdev->config->del_vqs(vdev);
diff --git a/drivers/virtio/virtio_mem.c b/drivers/virtio/virtio_mem.c
index bef8ad6bf466..3bab0a625a4b 100644
--- a/drivers/virtio/virtio_mem.c
+++ b/drivers/virtio/virtio_mem.c
@@ -2722,7 +2722,7 @@ static void virtio_mem_remove(struct virtio_device *vdev)
 	}
 
 	/* reset the device and cleanup the queues */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 
 	kfree(vm);
diff --git a/fs/fuse/virtio_fs.c b/fs/fuse/virtio_fs.c
index 0ad89c6629d7..27c3b74070a2 100644
--- a/fs/fuse/virtio_fs.c
+++ b/fs/fuse/virtio_fs.c
@@ -895,7 +895,7 @@ static int virtio_fs_probe(struct virtio_device *vdev)
 	return 0;
 
 out_vqs:
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	virtio_fs_cleanup_vqs(vdev, fs);
 	kfree(fs->vqs);
 
@@ -927,7 +927,7 @@ static void virtio_fs_remove(struct virtio_device *vdev)
 	list_del_init(&fs->list);
 	virtio_fs_stop_all_queues(fs);
 	virtio_fs_drain_all_queues_locked(fs);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	virtio_fs_cleanup_vqs(vdev, fs);
 
 	vdev->priv = NULL;
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index 41edbc01ffa4..72292a62cd90 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -138,6 +138,7 @@ int virtio_finalize_features(struct virtio_device *dev);
 int virtio_device_freeze(struct virtio_device *dev);
 int virtio_device_restore(struct virtio_device *dev);
 #endif
+void virtio_reset_device(struct virtio_device *dev);
 
 size_t virtio_max_dma_size(struct virtio_device *vdev);
 
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 490a4c900339..19c69821dd04 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -721,7 +721,7 @@ static void p9_virtio_remove(struct virtio_device *vdev)
 
 	mutex_unlock(&virtio_9p_lock);
 
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 
 	sysfs_remove_file(&(vdev->dev.kobj), &dev_attr_mount_tag.attr);
diff --git a/net/vmw_vsock/virtio_transport.c b/net/vmw_vsock/virtio_transport.c
index 4f7c99dfd16c..fb3302fff627 100644
--- a/net/vmw_vsock/virtio_transport.c
+++ b/net/vmw_vsock/virtio_transport.c
@@ -665,7 +665,7 @@ static void virtio_vsock_remove(struct virtio_device *vdev)
 	vsock_for_each_connected_socket(virtio_vsock_reset_sock);
 
 	/* Stop all work handlers to make sure no one is accessing the device,
-	 * so we can safely call vdev->config->reset().
+	 * so we can safely call virtio_reset_device().
 	 */
 	mutex_lock(&vsock->rx_lock);
 	vsock->rx_run = false;
@@ -682,7 +682,7 @@ static void virtio_vsock_remove(struct virtio_device *vdev)
 	/* Flush all device writes and interrupts, device will not use any
 	 * more buffers.
 	 */
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	mutex_lock(&vsock->rx_lock);
 	while ((pkt = virtqueue_detach_unused_buf(vsock->vqs[VSOCK_VQ_RX])))
diff --git a/sound/virtio/virtio_card.c b/sound/virtio/virtio_card.c
index 150ab3e37013..e2847c040f75 100644
--- a/sound/virtio/virtio_card.c
+++ b/sound/virtio/virtio_card.c
@@ -350,7 +350,7 @@ static void virtsnd_remove(struct virtio_device *vdev)
 		snd_card_free(snd->card);
 
 	vdev->config->del_vqs(vdev);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	for (i = 0; snd->substreams && i < snd->nsubstreams; ++i) {
 		struct virtio_pcm_substream *vss = &snd->substreams[i];
@@ -379,7 +379,7 @@ static int virtsnd_freeze(struct virtio_device *vdev)
 	virtsnd_ctl_msg_cancel_all(snd);
 
 	vdev->config->del_vqs(vdev);
-	vdev->config->reset(vdev);
+	virtio_reset_device(vdev);
 
 	for (i = 0; i < snd->nsubstreams; ++i)
 		cancel_work_sync(&snd->substreams[i].elapsed_period);
-- 
MST



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
