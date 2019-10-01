Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F24C3AB5
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Oct 2019 18:39:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iFLBj-0002ZE-8C; Tue, 01 Oct 2019 16:39:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1iFLBh-0002Z2-G6
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Oct 2019 16:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kOUZGz7SmdL0XUHhODqEI6rVDeno5FxTnsGAQhZP7XQ=; b=FuFp65JWVG4TtDIO5KoTIhQ1fB
 k4DhIfNiG0orhH7i8shlrUeyighSYyVgVmkNzkxvslX9pTYwSYtCbN+RSAmfDEKknQTA2LkJfUBNn
 qFf82+12c5Ukn4MgbS/uXAtF7AO+5yHnRlNMOL7LPB1MKlWUEDct9gvyLVQOmR1J3zek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kOUZGz7SmdL0XUHhODqEI6rVDeno5FxTnsGAQhZP7XQ=; b=kF2Y3CBpL/3uhCi9kW0ZsPaiQ2
 sfY8xdl8A37XBOpBWld06IXfQffBbNULL6vNNo3pAOxXmVob2lOMMfDMxMrRTPcb9bkyl/sGoI1hG
 wnjCyDnBsYX30Nk62NFZHaGQLIaTzhDTwuK0r5rjNj7s61H45JxwRaeXJpP1h39Uhk98=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iFLBc-00HMHm-Fl
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Oct 2019 16:39:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05DDD21872;
 Tue,  1 Oct 2019 16:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569947974;
 bh=K4JtO4D3ApZQ4fgFUps0vrNW1aXpYkqjHX4RDmNYVX8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P4D2NIICQJCSPVlaxxPMR34YACt4hvVpb7tpju57hvucIZotag/wf1P56WkSKcXuL
 W/yCW9WaiGu7q9c4F/KOqxiQD9Ir4/B+oD+SC84z130T3ufCWlS5m8sdsmfE6ADkIW
 U3N45bV8ZpdPiOUDpm6BvU/G7iDdVACmZjb4Vo6Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  1 Oct 2019 12:38:17 -0400
Message-Id: <20191001163922.14735-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001163922.14735-1-sashal@kernel.org>
References: <20191001163922.14735-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iFLBc-00HMHm-Fl
Subject: [V9fs-developer] [PATCH AUTOSEL 5.3 07/71] 9p: Transport error
 uninitialized
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
Cc: Lu Shuaibing <shuaibinglu@126.com>,
 Dominique Martinet <dominique.martinet@cea.fr>,
 v9fs-developer@lists.sourceforge.net, netdev@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Lu Shuaibing <shuaibinglu@126.com>

[ Upstream commit 0ce772fe79b68f83df40f07f28207b292785c677 ]

The p9_tag_alloc() does not initialize the transport error t_err field.
The struct p9_req_t *req is allocated and stored in a struct p9_client
variable. The field t_err is never initialized before p9_conn_cancel()
checks its value.

KUMSAN(KernelUninitializedMemorySantizer, a new error detection tool)
reports this bug.

==================================================================
BUG: KUMSAN: use of uninitialized memory in p9_conn_cancel+0x2d9/0x3b0
Read of size 4 at addr ffff88805f9b600c by task kworker/1:2/1216

CPU: 1 PID: 1216 Comm: kworker/1:2 Not tainted 5.2.0-rc4+ #28
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS Ubuntu-1.8.2-1ubuntu1 04/01/2014
Workqueue: events p9_write_work
Call Trace:
 dump_stack+0x75/0xae
 __kumsan_report+0x17c/0x3e6
 kumsan_report+0xe/0x20
 p9_conn_cancel+0x2d9/0x3b0
 p9_write_work+0x183/0x4a0
 process_one_work+0x4d1/0x8c0
 worker_thread+0x6e/0x780
 kthread+0x1ca/0x1f0
 ret_from_fork+0x35/0x40

Allocated by task 1979:
 save_stack+0x19/0x80
 __kumsan_kmalloc.constprop.3+0xbc/0x120
 kmem_cache_alloc+0xa7/0x170
 p9_client_prepare_req.part.9+0x3b/0x380
 p9_client_rpc+0x15e/0x880
 p9_client_create+0x3d0/0xac0
 v9fs_session_init+0x192/0xc80
 v9fs_mount+0x67/0x470
 legacy_get_tree+0x70/0xd0
 vfs_get_tree+0x4a/0x1c0
 do_mount+0xba9/0xf90
 ksys_mount+0xa8/0x120
 __x64_sys_mount+0x62/0x70
 do_syscall_64+0x6d/0x1e0
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

Freed by task 0:
(stack is not available)

The buggy address belongs to the object at ffff88805f9b6008
 which belongs to the cache p9_req_t of size 144
The buggy address is located 4 bytes inside of
 144-byte region [ffff88805f9b6008, ffff88805f9b6098)
The buggy address belongs to the page:
page:ffffea00017e6d80 refcount:1 mapcount:0 mapping:ffff888068b63740 index:0xffff88805f9b7d90 compound_mapcount: 0
flags: 0x100000000010200(slab|head)
raw: 0100000000010200 ffff888068b66450 ffff888068b66450 ffff888068b63740
raw: ffff88805f9b7d90 0000000000100001 00000001ffffffff 0000000000000000
page dumped because: kumsan: bad access detected
==================================================================

Link: http://lkml.kernel.org/r/20190613070854.10434-1-shuaibinglu@126.com
Signed-off-by: Lu Shuaibing <shuaibinglu@126.com>
[dominique.martinet@cea.fr: grouped the added init with the others]
Signed-off-by: Dominique Martinet <dominique.martinet@cea.fr>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/client.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index 9622f3e469f67..1d48afc7033ca 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -281,6 +281,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 
 	p9pdu_reset(&req->tc);
 	p9pdu_reset(&req->rc);
+	req->t_err = 0;
 	req->status = REQ_STATUS_ALLOC;
 	init_waitqueue_head(&req->wq);
 	INIT_LIST_HEAD(&req->req_list);
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
