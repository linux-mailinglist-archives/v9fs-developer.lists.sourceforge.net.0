Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 509EC62D63B
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 10:15:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovazo-0000Fu-0S;
	Thu, 17 Nov 2022 09:15:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovazX-0000FW-G2
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hhfKWXqDJ4Z+6v/x2llnC+y5W5wgsXE3pmBwe//WYd8=; b=UfSjx4LBuduL1ujNFFz18nKQMe
 6ekD+JjROI8JQPzvX9fiyQEBKIK1zZfj9ZAA/H1F4/DGea/F1U9y6eJGxoAahuX6ZHtnid1PF4My8
 AlYiiwdtFPMv0o1/EfeWWVk4e+MVGNDlcFayPNdz9wegieRDtVoNwRSbt1a3rGlTdL2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hhfKWXqDJ4Z+6v/x2llnC+y5W5wgsXE3pmBwe//WYd8=; b=QpNaQVjsZxqfSw3FWoJI1vtlhd
 F0erCTZ3dNrC/MPxIe/Hx+MzonlR1vRQiyBSSOx4ZKpgvO9xdcM+UgeYlbj96oek+8B42XD4D8DuI
 2KFzg2CEqwxMUJ3lbUnG/RdlMF9n2tf3d5OXFbNHxP1cbozwDpXeyhIB6CZrZsr5g33o=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovazT-00BDkH-I7 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:27 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NCZ4X33BmzRpG4;
 Thu, 17 Nov 2022 17:14:52 +0800 (CST)
Received: from huawei.com (10.67.175.31) by dggpemm500024.china.huawei.com
 (7.185.36.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 17 Nov
 2022 17:15:13 +0800
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>
Date: Thu, 17 Nov 2022 17:11:57 +0800
Message-ID: <20221117091159.31533-2-guozihua@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221117091159.31533-1-guozihua@huawei.com>
References: <20221117091159.31533-1-guozihua@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This error was reported while fuzzing: BUG: KASAN:
 slab-out-of-bounds
 in _copy_to_iter+0xd35/0x1190 Write of size 4043 at addr ffff888008724eb1
 by task kworker/1:1/24 CPU: 1 PID: 24 Comm: kworker/1:1 Not tainted
 6.1.0-rc5-00002-g1adf73218daa-dirty
 #223 Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
 BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org
 04/01/201 [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ovazT-00BDkH-I7
Subject: [V9fs-developer] [PATCH 1/3 v2] 9p: Fix write overflow in
 p9_read_work
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
From: GUO Zihua via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: GUO Zihua <guozihua@huawei.com>
Cc: netdev@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This error was reported while fuzzing:

BUG: KASAN: slab-out-of-bounds in _copy_to_iter+0xd35/0x1190
Write of size 4043 at addr ffff888008724eb1 by task kworker/1:1/24

CPU: 1 PID: 24 Comm: kworker/1:1 Not tainted 6.1.0-rc5-00002-g1adf73218daa-dirty #223
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
Workqueue: events p9_read_work
Call Trace:
 <TASK>
 dump_stack_lvl+0x4c/0x64
 print_report+0x178/0x4b0
 kasan_report+0xae/0x130
 kasan_check_range+0x179/0x1e0
 memcpy+0x38/0x60
 _copy_to_iter+0xd35/0x1190
 copy_page_to_iter+0x1d5/0xb00
 pipe_read+0x3a1/0xd90
 __kernel_read+0x2a5/0x760
 kernel_read+0x47/0x60
 p9_read_work+0x463/0x780
 process_one_work+0x91d/0x1300
 worker_thread+0x8c/0x1210
 kthread+0x280/0x330
 ret_from_fork+0x22/0x30
 </TASK>

Allocated by task 457:
 kasan_save_stack+0x1c/0x40
 kasan_set_track+0x21/0x30
 __kasan_kmalloc+0x7e/0x90
 __kmalloc+0x59/0x140
 p9_fcall_init.isra.11+0x5d/0x1c0
 p9_tag_alloc+0x251/0x550
 p9_client_prepare_req+0x162/0x350
 p9_client_rpc+0x18d/0xa90
 p9_client_create+0x670/0x14e0
 v9fs_session_init+0x1fd/0x14f0
 v9fs_mount+0xd7/0xaf0
 legacy_get_tree+0xf3/0x1f0
 vfs_get_tree+0x86/0x2c0
 path_mount+0x885/0x1940
 do_mount+0xec/0x100
 __x64_sys_mount+0x1a0/0x1e0
 do_syscall_64+0x3a/0x90
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

This BUG pops up when trying to reproduce
https://syzkaller.appspot.com/bug?id=6c7cd46c7bdd0e86f95d26ec3153208ad186f9fa.
The callstack is different but the issue is valid and re-producable with
the same re-producer in the link.

The root cause of this issue is that we check the size of the message
received against the msize of the client in p9_read_work. However, it
turns out that capacity is no longer consistent with msize. Thus,
the message size should also be checked against sdata capacity.

Reported-by: syzbot+0f89bd13eaceccc0e126@syzkaller.appspotmail.com
Fixes: 60ece0833b6c ("net/9p: allocate appropriate reduced message buffers")
Signed-off-by: GUO Zihua <guozihua@huawei.com>
---
 net/9p/trans_fd.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 56a186768750..30f37bf7c598 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -342,6 +342,14 @@ static void p9_read_work(struct work_struct *work)
 			goto error;
 		}
 
+		if (m->rc.size > m->rreq->rc.capacity - m->rc.offset) {
+			p9_debug(P9_DEBUG_ERROR,
+				 "requested packet size too big: %d for tag %d with capacity %zd\n",
+				 m->rc.size, m->rc.tag, m->rreq->rc.capacity);
+			err = -EIO;
+			goto error;
+		}
+
 		if (!m->rreq->rc.sdata) {
 			p9_debug(P9_DEBUG_ERROR,
 				 "No recv fcall for tag %d (req %p), disconnecting!\n",
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
