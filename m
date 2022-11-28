Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77457639ED2
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 02:22:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozSqk-00013c-4l;
	Mon, 28 Nov 2022 01:22:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1ozSqj-00013W-2X
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TJ+WK81uYTewWou8LnxAm9+tkMqXDDA806+7FX8FayE=; b=KiPzbFwxXpUXxnf9a0OJLClKFh
 5/4upN6soatzr3OzXojT6p0uFIhaoKL2floS+EG5PaledaCg0qfkCvO+otCwyRdvcMsQ/x3UYx7pK
 ral90EAtUchu+MQJlxXwc0HpSwogW02rV9spt5rWEI+7UYQ+XKswLmFK9dPpYdHdNoEY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TJ+WK81uYTewWou8LnxAm9+tkMqXDDA806+7FX8FayE=; b=B/ottXpJqIG7s7YiYWp+wwCJyv
 uUYLI0dwApSqnEufJPaWyZpnJQN8rIJOGHlCPuQIvEsbyxJ/m/oh8+7pYKFBKYxlhwAIoQtp1tqoF
 7JJjHn5sY0B1r4epkG9IF6Ydcl1y0x+J2aTdO7gdgQ8jp1MFenNtel4781oJLEVs4JaU=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozSqf-00G3Ww-B4 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:21 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NL73H1X3HzRpSN;
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
Date: Mon, 28 Nov 2022 10:10:02 +0800
Message-ID: <20221128021005.232105-2-lizetao1@huawei.com>
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
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When doing the following test steps, an error was found: step
 1: modprobe 9pnet_virtio succeeded # modprobe 9pnet_virtio <-- OK step 2:
 fault injection in sysfs_create_file() # modprobe -r 9pnet_virtio <-- OK
 # ... FAULT_INJECTION: forcing a failure. name failslab, interval 1,
 probability 0, space 0, times 0 CPU: 0 PID: 3790 [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ozSqf-00G3Ww-B4
Subject: [V9fs-developer] [PATCH 1/4] 9p: Fix probe failed when modprobe
 9pnet_virtio
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
  step 1: modprobe 9pnet_virtio succeeded
    # modprobe 9pnet_virtio      <-- OK

  step 2: fault injection in sysfs_create_file()
    # modprobe -r 9pnet_virtio   <-- OK
    # ...
      FAULT_INJECTION: forcing a failure.
      name failslab, interval 1, probability 0, space 0, times 0
      CPU: 0 PID: 3790 Comm: modprobe Tainted: G        W
      6.1.0-rc6-00285-g6a1e40c4b995-dirty #108
      Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
      Call Trace:
       <TASK>
       ...
       should_failslab+0xa/0x20
       ...
       sysfs_create_file_ns+0x130/0x1d0
       p9_virtio_probe+0x662/0xb30 [9pnet_virtio]
       virtio_dev_probe+0x608/0xae0
       ...
       </TASK>
      9pnet_virtio: probe of virtio3 failed with error -12

  step 3: modprobe virtio_net failed
    # modprobe 9pnet_virtio       <-- failed
      9pnet_virtio: probe of virtio3 failed with error -2

The root cause of the problem is that the virtqueues are not
stopped on the error handling path when sysfs_create_file()
fails in p9_virtio_probe(), resulting in an error "-ENOENT"
returned in the next modprobe call in setup_vq().

virtio_pci_modern_device uses virtqueues to send or
receive message, and "queue_enable" records whether the
queues are available. In vp_modern_find_vqs(), all queues
will be selected and activated, but once queues are enabled
there is no way to go back except reset.

Fix it by reset virtio device on error handling path. After
virtio_find_single_vq() succeeded, all virtqueues should be
stopped on error handling path.

Fixes: 1fcf0512c9c8 ("virtio_pci: modern driver")
Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 net/9p/trans_virtio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index e757f0601304..39933187284b 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -668,6 +668,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 out_free_tag:
 	kfree(tag);
 out_free_vq:
+	virtio_reset_device(vdev);
 	vdev->config->del_vqs(vdev);
 out_free_chan:
 	kfree(chan);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
