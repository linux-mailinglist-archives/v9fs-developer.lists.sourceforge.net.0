Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0952063C374
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 16:18:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p02Nd-0001k7-OQ;
	Tue, 29 Nov 2022 15:18:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1p02NZ-0001ju-O3
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cEEZcTBdhf2EXwtXapp7YldP4zYj7bnpyodhZ9f0AfE=; b=BCprYW2pkf359bvygQIAa7NogV
 OJuCDvZWvi1q7VLaR/jME8AsuFNF0YUqvA32EZwjB7gx5EPt/WhzEtc3lU4W7ciJLbFHu3RMTy6cN
 H30c9a3DNxl+BEkMGz4nIB8yCDAWStu2LgHWheapooqZWBOed5aC2NVgaGNsUvVMbJ4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cEEZcTBdhf2EXwtXapp7YldP4zYj7bnpyodhZ9f0AfE=; b=Gr/3NXD+XC88UlWMPhpehe9nUC
 +0VKctf7XVVg1xMB6tkoybNV5jVgarjOkJFYoFYzSlxc+mfBXyeUtvLL3xHU6DFFeN2gMUEPWevai
 uwIFIHT7gqZXRrjJ4bZ9UXKERFFAfRm37gBhur5Jv9mx0OQGx1EJqIMNkQ1bwkR+G3ko=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p02NT-0005T1-Ot for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:37 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NM5Yb6d5xzmWHl;
 Tue, 29 Nov 2022 23:17:39 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 29 Nov
 2022 23:18:18 +0800
To: <lizetao1@huawei.com>
Date: Wed, 30 Nov 2022 00:06:11 +0800
Message-ID: <20221129160615.3343036-2-lizetao1@huawei.com>
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
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
X-Headers-End: 1p02NT-0005T1-Ot
Subject: [V9fs-developer] [PATCH v2 1/5] 9p: Fix probe failed when modprobe
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

  step 3: modprobe 9pnet_virtio failed
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

Fixes: ea52bf8eda98 ("9p/trans_virtio: reset virtio device on remove")
Signed-off-by: Li Zetao <lizetao1@huawei.com>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
v1 -> v2: modify the description error of the test case in step 3 and
modify the fixes tag information.

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
