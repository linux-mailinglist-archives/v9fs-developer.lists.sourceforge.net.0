Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C7D639ED1
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 02:22:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozSql-0008C0-NR;
	Mon, 28 Nov 2022 01:22:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1ozSqk-0008Bn-BY
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ksBnJc4Bw+rJgg2Hc4VqeAtyYAJ+spE+63eM4zBrJz8=; b=nAjdKKrcBEXJln3bN/m1ugmyQJ
 S7BwIuw29vf8rx1pKzLv+KbNVUQV0iQ+hs1WiFtr62LRArLojXvsH4UT8NFt84P4Zavw4sXgObRvm
 jGgx/WOGRD7dppkyh8gfH/62ZatlB6uQVS4gf3Z8p6E9IhV3BkQCANA4rmSQfYiem6kU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ksBnJc4Bw+rJgg2Hc4VqeAtyYAJ+spE+63eM4zBrJz8=; b=CU4sRMy36r8a1nYi+73qIMbaYq
 fETmGr89tlQnCsizlNp7vSki0lYAC1QLXt7y7ZmNS89lav3z38ExkAhlzLslJeRF4GjdCRogJHM43
 WyLQADKDI8czNtH2X7IiVGWdue2BGfQuStDjmm3y+re/3ufV6Cgyi3kQhD7u12FwfdvQ=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozSqi-00042N-4F for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:22 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NL73F3BWpzHw33;
 Mon, 28 Nov 2022 09:21:29 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 28 Nov
 2022 09:22:09 +0800
To: <mst@redhat.com>, <jasowang@redhat.com>, <pbonzini@redhat.com>,
 <stefanha@redhat.com>, <axboe@kernel.dk>, <kraxel@redhat.com>,
 <david@redhat.com>, <ericvh@gmail.com>, <lucho@ionkov.net>,
 <asmadeus@codewreck.org>, <linux_oss@crudebyte.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <rusty@rustcorp.com.au>
Date: Mon, 28 Nov 2022 10:10:05 +0800
Message-ID: <20221128021005.232105-5-lizetao1@huawei.com>
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
 1: modprobe virtio_blk succeeded # modprobe virtio_blk <-- OK step 2: fault
 injection in __blk_mq_alloc_disk() # modprobe -r virtio_blk <-- OK # ...
 CPU: 0 PID: 4578 Comm: modprobe Tainted: G W
 6.1.0-rc6-00308-g644e9524388a-dirty
 Hardware name: QEMU Standard PC [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ozSqi-00042N-4F
Subject: [V9fs-developer] [PATCH 4/4] virtio-blk: Fix probe failed when
 modprobe virtio_blk
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
  step 1: modprobe virtio_blk succeeded
    # modprobe virtio_blk      <-- OK

  step 2: fault injection in __blk_mq_alloc_disk()
    # modprobe -r virtio_blk   <-- OK
    # ...
      CPU: 0 PID: 4578 Comm: modprobe Tainted: G        W
      6.1.0-rc6-00308-g644e9524388a-dirty
      Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
      Call Trace:
       <TASK>
       should_failslab+0xa/0x20
       ...
       blk_alloc_queue+0x3a4/0x780
       __blk_mq_alloc_disk+0x91/0x1f0
       virtblk_probe+0x6ff/0x1f20 [virtio_blk]
       ...
       </TASK>
      virtio_blk: probe of virtio1 failed with error -12

  step 3: modprobe virtio_net failed
    # modprobe virtio_blk       <-- failed
      virtio_blk: probe of virtio1 failed with error -2

The root cause of the problem is that the virtqueues are not
stopped on the error handling path when __blk_mq_alloc_disk()
fails in virtblk_probe(), resulting in an error "-ENOENT"
returned in the next modprobe call in setup_vq().

virtio_pci_modern_device uses virtqueues to send or
receive message, and "queue_enable" records whether the
queues are available. In vp_modern_find_vqs(), all queues
will be selected and activated, but once queues are enabled
there is no way to go back except reset.

Fix it by reset virtio device on error handling path. After
init_vq() succeeded, all virtqueues should be stopped on error
handling path.

Fixes: 1fcf0512c9c8 ("virtio_pci: modern driver")
Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/block/virtio_blk.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 19da5defd734..f401546d4e85 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -1157,6 +1157,7 @@ static int virtblk_probe(struct virtio_device *vdev)
 	put_disk(vblk->disk);
 out_free_tags:
 	blk_mq_free_tag_set(&vblk->tag_set);
+	virtio_reset_device(vdev);
 out_free_vq:
 	vdev->config->del_vqs(vdev);
 	kfree(vblk->vqs);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
