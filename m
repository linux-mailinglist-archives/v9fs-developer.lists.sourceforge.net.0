Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 458D263C376
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 16:18:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p02Nf-0001kJ-0L;
	Tue, 29 Nov 2022 15:18:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1p02Nc-0001k1-Om
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KJSAAHESjyeCHrFtz4HoHHg2QBNAG15hBXiL/LzmC7w=; b=S05zUZ/qrxEgd93wGYwWwi0hHS
 suubrD6caTMgpoME4liseThgA817H7e/98s92TtfZVw4cFfoMKA+9lKPjF1I2jE/3hU8tCqi2iEDA
 Q1uYHN2VZQBLfZKdGwSF9vBcLrwT/3c8xloXjwUKMFRIIJonfQwozvNaDcw/G1FbL5qs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KJSAAHESjyeCHrFtz4HoHHg2QBNAG15hBXiL/LzmC7w=; b=efL+RNFokOsv7wLzOkJQfHM3O1
 Ua4KI4ABaYbHpzCVG/Fc2FWl176KuhIXfVloNbODzFQJ9/szl3a+418yVgu41+O5O+R1SsLNK0gok
 ONBIMkFt8MY8mQ55p/w2Ns9gf7hZTFpDyTMgybHfsrrcYhIZrJ6/VGF61pRxL0u06hTQ=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p02NV-0005TG-7t for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:40 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.53])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NM5Yh4Z1Wz15MyW;
 Tue, 29 Nov 2022 23:17:44 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 29 Nov
 2022 23:18:22 +0800
To: <lizetao1@huawei.com>
Date: Wed, 30 Nov 2022 00:06:15 +0800
Message-ID: <20221129160615.3343036-6-lizetao1@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129160615.3343036-1-lizetao1@huawei.com>
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221129160615.3343036-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.175.21]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When doing the following test steps, an error was found: step
 1: modprobe virtio_gpu succeeded # modprobe virtio_gpu <-- OK step 2: fault
 injection in virtio_gpu_alloc_vbufs() # modprobe -r virtio_gpu <-- OK # ...
 CPU: 0 PID: 1714 Comm: modprobe Not tainted 6.1.0-rc7-dirty Hardware name:
 QEMU Standard PC (i440FX + PIIX, 1 [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p02NV-0005TG-7t
Subject: [V9fs-developer] [PATCH v2 5/5] drm/virtio: Fix probe failed when
 modprobe virtio_gpu
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
From: Li Zetao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Li Zetao <lizetao1@huawei.com>
Cc: lucho@ionkov.net, david@redhat.com, jasowang@redhat.com,
 linux_oss@crudebyte.com, pmorel@linux.vnet.ibm.com,
 dri-devel@lists.freedesktop.org, gurchetansingh@chromium.org,
 edumazet@google.com, kraxel@redhat.com, airlied@gmail.com, kuba@kernel.org,
 pabeni@redhat.com, olvaffe@gmail.com, st@redhat.com, ericvh@gmail.com,
 rusty@rustcorp.com.au, linux-block@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, stefanha@redhat.com, airlied@redhat.com,
 cornelia.huck@de.ibm.com, virtualization@lists.linux-foundation.org,
 axboe@kernel.dk, pankaj.gupta.linux@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, pbonzini@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When doing the following test steps, an error was found:
  step 1: modprobe virtio_gpu succeeded
    # modprobe virtio_gpu      <-- OK

  step 2: fault injection in virtio_gpu_alloc_vbufs()
    # modprobe -r virtio_gpu   <-- OK
    # ...
      CPU: 0 PID: 1714 Comm: modprobe Not tainted 6.1.0-rc7-dirty
      Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
      Call Trace:
       <TASK>
       should_fail_ex.cold+0x1a/0x1f
       ...
       kmem_cache_create+0x12/0x20
       virtio_gpu_alloc_vbufs+0x2f/0x90 [virtio_gpu]
       virtio_gpu_init.cold+0x659/0xcad [virtio_gpu]
       virtio_gpu_probe+0x14f/0x260 [virtio_gpu]
       virtio_dev_probe+0x608/0xae0
       ?...
       </TASK>
      kmem_cache_create_usercopy(virtio-gpu-vbufs) failed with error -12

  step 3: modprobe virtio_gpu failed
    # modprobe virtio_gpu       <-- failed
      failed to find virt queues
      virtio_gpu: probe of virtio6 failed with error -2

The root cause of the problem is that the virtqueues are not
stopped on the error handling path when virtio_gpu_alloc_vbufs()
fails in virtio_gpu_init(), resulting in an error "-ENOENT"
returned in the next modprobe call in setup_vq().

virtio_pci_modern_device uses virtqueues to send or
receive message, and "queue_enable" records whether the
queues are available. In vp_modern_find_vqs(), all queues
will be selected and activated, but once queues are enabled
there is no way to go back except reset.

Fix it by reset virtio device on error handling path. After
virtio_find_vqs() succeeded, all virtqueues should be stopped
on error handling path.

Fixes: dc5698e80cf7 ("Add virtio gpu driver.")
Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
v1 -> v2: patch is new.

 drivers/gpu/drm/virtio/virtgpu_kms.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/virtio/virtgpu_kms.c b/drivers/gpu/drm/virtio/virtgpu_kms.c
index 27b7f14dae89..1a03e8e13b5b 100644
--- a/drivers/gpu/drm/virtio/virtgpu_kms.c
+++ b/drivers/gpu/drm/virtio/virtgpu_kms.c
@@ -255,6 +255,7 @@ int virtio_gpu_init(struct virtio_device *vdev, struct drm_device *dev)
 err_scanouts:
 	virtio_gpu_free_vbufs(vgdev);
 err_vbufs:
+	virtio_reset_device(vgdev->vdev);
 	vgdev->vdev->config->del_vqs(vgdev->vdev);
 err_vqs:
 	dev->dev_private = NULL;
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
