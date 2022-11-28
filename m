Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A27E4639ED4
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 02:22:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozSqm-00013s-CV;
	Mon, 28 Nov 2022 01:22:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1ozSqk-00013g-DC
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CHrl8QENLQUd02ouW7koU1DgW+vlpTy6GkYO79QlmpE=; b=ijdTrJmaUqvy1pC8xEBSw9nre/
 p7+ETdw0yMLFmd/qF5+Scc4Oo2JdP3CfIGMce9Ra0etvkYzRjTvmPwgM1fBR7FPTBW3gdqS+Ht14L
 sIck8dY5UJlkjeJ/Y0Hmnf5fht7fqr7aUuTLQ4f4jzlgVKI6oDQsqz9l2+9FAYyfC9t0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CHrl8QENLQUd02ouW7koU1DgW+vlpTy6GkYO79QlmpE=; b=l3u42IcJP3C2VjlZjXsL7a7ONo
 qSEfiWHLcqRR/s/uQH0D6o9/bCif+qgxsZNzfk3pQxP2zjh9unVRF779W2nxGvwLSZjj4UoFxoCXI
 O7eY9tCCBiYV7nyWxt+Y6HYeYXvlMxD1Pmok2L512NvKdaBq+jlavgDpSdVJYHz3PrKE=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozSqi-00042L-4r for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:22 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NL73H5KMdzRpVW;
 Mon, 28 Nov 2022 09:21:31 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 28 Nov
 2022 09:22:07 +0800
To: <mst@redhat.com>, <jasowang@redhat.com>, <pbonzini@redhat.com>,
 <stefanha@redhat.com>, <axboe@kernel.dk>, <kraxel@redhat.com>,
 <david@redhat.com>, <ericvh@gmail.com>, <lucho@ionkov.net>,
 <asmadeus@codewreck.org>, <linux_oss@crudebyte.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <rusty@rustcorp.com.au>
Date: Mon, 28 Nov 2022 10:10:03 +0800
Message-ID: <20221128021005.232105-3-lizetao1@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128021005.232105-1-lizetao1@huawei.com>
References: <20221128021005.232105-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.175.21]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ozSqi-00042L-4r
Subject: [V9fs-developer] [PATCH 2/4] virtio-mem: Fix probe failed when
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
Cc: netdev@vger.kernel.org, lizetao1@huawei.com, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-block@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
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

  step 3: modprobe virtio_net failed
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

Fixes: 1fcf0512c9c8 ("virtio_pci: modern driver")
Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
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
