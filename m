Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB2EF7A0
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Apr 2019 14:01:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hLRRT-0003As-Ss; Tue, 30 Apr 2019 12:00:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1hLRRS-0003Ak-GC
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 12:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MGJjdcjSONWzg2QIBwE7f/eeysHahTNmrUd0HUciLVM=; b=ZOCaahmqWvWsHto82FnYaF2jbd
 7IDcJIwHKPzVUoLrzGIe/uqMbfAvz0TStPflv9xQFH47qLLRiCBZAGA4t+XEW8+zy7O2qqEhl40QH
 vvDMIMPiQRPfpoc+Nv5iiWBsaRtSiPGJiiWhaa2TBwVXgZoeD6/TSGZthXS881MM5aaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MGJjdcjSONWzg2QIBwE7f/eeysHahTNmrUd0HUciLVM=; b=M
 8Uj0jp1Sn3YfDfWMDhRvDvqksr3RtzUeQ4Ugf2B0ipWMMzfCEchbBLNLgmcW536xFiXYTjKrD+F1U
 fF7cjWOLwXoPuw3kb9I+vhDsXLW0+rBfR82erv9reunohTeV6KTumbtEIiDnt4XZEbiuSLpfT5n3K
 CG5Dt8gYockLSWkw=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLRRQ-000YMV-P2
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 12:00:58 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 88B1F6B4890463D119E6;
 Tue, 30 Apr 2019 20:00:49 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 20:00:39 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <ericvh@gmail.com>, <lucho@ionkov.net>,
 <asmadeus@codewreck.org>
Date: Tue, 30 Apr 2019 19:59:42 +0800
Message-ID: <20190430115942.41840-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hLRRQ-000YMV-P2
Subject: [V9fs-developer] [PATCH] 9p/virtio: Add cleanup path in
 p9_virtio_init
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

KASAN report this:

BUG: unable to handle kernel paging request at ffffffffa0097000
PGD 3870067 P4D 3870067 PUD 3871063 PMD 2326e2067 PTE 0
Oops: 0000 [#1
CPU: 0 PID: 5340 Comm: modprobe Not tainted 5.1.0-rc7+ #25
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.9.3-0-ge2fc41e-prebuilt.qemu-project.org 04/01/2014
RIP: 0010:__list_add_valid+0x10/0x70
Code: c3 48 8b 06 55 48 89 e5 5d 48 39 07 0f 94 c0 0f b6 c0 c3 90 90 90 90 90 90 90 55 48 89 d0 48 8b 52 08 48 89 e5 48 39 f2 75 19 <48> 8b 32 48 39 f0 75 3a

RSP: 0018:ffffc90000e23c68 EFLAGS: 00010246
RAX: ffffffffa00ad000 RBX: ffffffffa009d000 RCX: 0000000000000000
RDX: ffffffffa0097000 RSI: ffffffffa0097000 RDI: ffffffffa009d000
RBP: ffffc90000e23c68 R08: 0000000000000001 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: ffffffffa0097000
R13: ffff888231797180 R14: 0000000000000000 R15: ffffc90000e23e78
FS:  00007fb215285540(0000) GS:ffff888237a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffa0097000 CR3: 000000022f144000 CR4: 00000000000006f0
Call Trace:
 v9fs_register_trans+0x2f/0x60 [9pnet
 ? 0xffffffffa0087000
 p9_virtio_init+0x25/0x1000 [9pnet_virtio
 do_one_initcall+0x6c/0x3cc
 ? kmem_cache_alloc_trace+0x248/0x3b0
 do_init_module+0x5b/0x1f1
 load_module+0x1db1/0x2690
 ? m_show+0x1d0/0x1d0
 __do_sys_finit_module+0xc5/0xd0
 __x64_sys_finit_module+0x15/0x20
 do_syscall_64+0x6b/0x1d0
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x7fb214d8e839
Code: 00 f3 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01

RSP: 002b:00007ffc96554278 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
RAX: ffffffffffffffda RBX: 000055e67eed2aa0 RCX: 00007fb214d8e839
RDX: 0000000000000000 RSI: 000055e67ce95c2e RDI: 0000000000000003
RBP: 000055e67ce95c2e R08: 0000000000000000 R09: 000055e67eed2aa0
R10: 0000000000000003 R11: 0000000000000246 R12: 0000000000000000
R13: 000055e67eeda500 R14: 0000000000040000 R15: 000055e67eed2aa0
Modules linked in: 9pnet_virtio(+) 9pnet gre rfkill vmw_vsock_virtio_transport_common vsock [last unloaded: 9pnet_virtio
CR2: ffffffffa0097000
---[ end trace 4a52bb13ff07b761

If register_virtio_driver() fails in p9_virtio_init,
we should call v9fs_unregister_trans() to do cleanup.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: b530cc794024 ("9p: add virtio transport")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/9p/trans_virtio.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index b1d39ca..6753ee9 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -782,10 +782,16 @@ static struct p9_trans_module p9_virtio_trans = {
 /* The standard init function */
 static int __init p9_virtio_init(void)
 {
+	int rc;
+
 	INIT_LIST_HEAD(&virtio_chan_list);
 
 	v9fs_register_trans(&p9_virtio_trans);
-	return register_virtio_driver(&p9_virtio_drv);
+	rc = register_virtio_driver(&p9_virtio_drv);
+	if (rc)
+		v9fs_unregister_trans(&p9_virtio_trans);
+
+	return rc;
 }
 
 static void __exit p9_virtio_cleanup(void)
-- 
2.7.0




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
