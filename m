Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC1263C373
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 16:18:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p02Nc-0000A9-Cv;
	Tue, 29 Nov 2022 15:18:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1p02NY-00009u-MC
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=egnwMNofzyvOB8fw3bTALpRN7Su+UqFqMxPvrPfBr0Q=; b=fXxJYFqgXk7/CcPHwZXk2jiGML
 2Q0YrK7utmS8aueaoTQjYQfKNRsT0a/PluXlcTAKUW0i85uCCLrTbqTgF34YXmb/WFzcZJn/1oz64
 Qhd3vOQMVl5VW9kEuc8+A9cS1VElhxJZWwfbRHG+yWNpj/n2mDIcsDJmabZH41qulNTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=egnwMNofzyvOB8fw3bTALpRN7Su+UqFqMxPvrPfBr0Q=; b=IqlwiQnAewOj//u6bLiRfxIkUa
 WgXJKNQDfgywOhLla6mAr74fLM7ZBUy9pK0fz/TMDAitth+bkTO+GY2nhXhdBgM0p6+HDz9GtIC0p
 GdHpbLPFtou+Kc27n/xQinDzhQYmmHCt48EAe+mzVujkwPl21F58KehsMCAMYl6sDhoQ=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p02NT-000No0-PY for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:36 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NM5Yc6XbdzmWL6;
 Tue, 29 Nov 2022 23:17:40 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 29 Nov
 2022 23:18:19 +0800
To: <lizetao1@huawei.com>
Date: Wed, 30 Nov 2022 00:06:12 +0800
Message-ID: <20221129160615.3343036-3-lizetao1@huawei.com>
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
 1: modprobe virtio_mem succeeded # modprobe virtio_mem <-- OK step 2: fault
 injection in virtio_mem_init() # modprobe -r virtio_mem <-- OK # ... CPU:
 0 PID: 1837 Comm: modprobe Not tainted 6.1.0-rc6-00285-g6a1e40c4b995-dirty
 Hardware name: QEMU Standard PC (i44 [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p02NT-000No0-PY
Subject: [V9fs-developer] [PATCH v2 2/5] virtio-mem: Fix probe failed when
 modprobe virtio_mem
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
  step 1: modprobe virtio_mem succeeded
    # modprobe virtio_mem      <-- OK

  step 2: fault injection in virtio_mem_init()
    # modprobe -r virtio_mem   <-- OK
    # ...
      CPU: 0 PID: 1837 Comm: modprobe Not tainted
      6.1.0-rc6-00285-g6a1e40c4b995-dirty
      Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
      Call Trace:
       <TASK>
       should_fail.cold+0x5/0x1f
       ...
       virtio_mem_init_hotplug+0x9ae/0xe57 [virtio_mem]
       virtio_mem_init.cold+0x327/0x339 [virtio_mem]
       virtio_mem_probe+0x48e/0x910 [virtio_mem]
       virtio_dev_probe+0x608/0xae0
       ...
       </TASK>
      virtio_mem virtio4: could not reserve device region
      virtio_mem: probe of virtio4 failed with error -16

  step 3: modprobe virtio_mem failed
    # modprobe virtio_mem       <-- failed
      virtio_mem: probe of virtio4 failed with error -16

The root cause of the problem is that the virtqueues are not
stopped on the error handling path when virtio_mem_init()
fails in virtio_mem_probe(), resulting in an error "-ENOENT"
returned in the next modprobe call in setup_vq().

virtio_pci_modern_device uses virtqueues to send or
receive message, and "queue_enable" records whether the
queues are available. In vp_modern_find_vqs(), all queues
will be selected and activated, but once queues are enabled
there is no way to go back except reset.

Fix it by reset virtio device on error handling path. After
virtio_mem_init_vq() succeeded, all virtqueues should be
stopped on error handling path.

Fixes: 5f1f79bbc9e2 ("virtio-mem: Paravirtualized memory hotplug")
Signed-off-by: Li Zetao <lizetao1@huawei.com>
Reviewed-by: David Hildenbrand <david@redhat.com>
---
v1 -> v2: modify the description error of the test case in step 3 and
modify the fixes tag information.

 drivers/virtio/virtio_mem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/virtio/virtio_mem.c b/drivers/virtio/virtio_mem.c
index 0c2892ec6817..c7f09c2ce982 100644
--- a/drivers/virtio/virtio_mem.c
+++ b/drivers/virtio/virtio_mem.c
@@ -2793,6 +2793,7 @@ static int virtio_mem_probe(struct virtio_device *vdev)
 
 	return 0;
 out_del_vq:
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 out_free_vm:
 	kfree(vm);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
