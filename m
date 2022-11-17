Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6326C62D63C
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 10:15:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovazp-0006Sy-4N;
	Thu, 17 Nov 2022 09:15:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovazW-0006RV-EG
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zylRlporf0uoeIm/8EM5SS/tyx33hmyhjiw/An/ZI/k=; b=lKcOb6OZmEhInfI2hyXZhparST
 lA6Hs3DWGd5M1Z/QwHuFKIkVUZq89HYoNNwjlFRwbI4kNLK5OklDY5Stw+Utne8REyRqBbzQpGqNu
 /i+GjhzL1gEoQB1Mdg2+8bE0vi1k32DtwbdiK2SnH9b8TCESX92ccFQ+8vBPL2Om058E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zylRlporf0uoeIm/8EM5SS/tyx33hmyhjiw/An/ZI/k=; b=F
 hvs5WV+GnUD9xU9FxzNhPUWDyb+9iSunFHJjbPKd/o7vrOSmzLHdglL6mTItn/IixSeSKNxeqgE5h
 kjsBTn6qm/EzS+EvR+YyexP+ZZHf+ITzhaIzZshXyI6XY6t2iuJPS1LhIbpU1IdijmnXNt1HM34l5
 glf6Dx5NB48eUX8s=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovazR-0004EB-V7 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:26 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NCZ4S1HvHzmW18;
 Thu, 17 Nov 2022 17:14:48 +0800 (CST)
Received: from huawei.com (10.67.175.31) by dggpemm500024.china.huawei.com
 (7.185.36.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 17 Nov
 2022 17:15:11 +0800
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>
Date: Thu, 17 Nov 2022 17:11:56 +0800
Message-ID: <20221117091159.31533-1-guozihua@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patchset fixes the write overflow issue in p9_read_work.
 As well as some follow up cleanups. BUG: KASAN: slab-out-of-bounds in
 _copy_to_iter+0xd35/0x1190
 Write of size 4043 at addr ffff888008724eb1 by task kworker/1:1/24 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ovazR-0004EB-V7
Subject: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
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

This patchset fixes the write overflow issue in p9_read_work. As well as
some follow up cleanups.

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

GUO Zihua (3):
  9p: Fix write overflow in p9_read_work
  9p: Remove redundent checks for message size against msize.
  9p: Use P9_HDRSZ for header size

 net/9p/trans_fd.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

---

v2:
  Addition log for debugging similar issues, as well as cleanups according to
  Dominique's comment.
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
