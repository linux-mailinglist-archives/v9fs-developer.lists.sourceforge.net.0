Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAC4639ED3
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 02:22:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozSql-0008Bu-DO;
	Mon, 28 Nov 2022 01:22:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1ozSqj-0008Bd-Qk
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hs2DHkiTy/weYFeN2rpwo0KTWngvSUQV/rJ7Qv7r6Dg=; b=EiL2zPeldS93fJl8djWzUqFoOq
 ludch+mUgmJWqWVcFc0ALxiDwr3H7urevF7b+oFVNFbdOcCo6+OHnBGV7DiREctHZ/aME3K99wswX
 EW6HCHiaMOVmUXyZrBAulK0wA1o+LQquqKnrOkDRuFXP9xKhQPkyGhsoKhE030cvdvsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Hs2DHkiTy/weYFeN2rpwo0KTWngvSUQV/rJ7Qv7r6Dg=; b=F
 uZ6UY9PmYhCw3atGezAtmWuLMzdGo0LnyHVWWMFBA0UpEZamkTE0IRxzUbSCoMtJ9gLLiOjKjK4sJ
 ej8EYPEtppTBGTrwgj4tRKHS5rhuYyhPas4Q8P9JYDgV/To3pVXxMgWifumV1n8cU5PgAVmy0vCpG
 cvT8UdbK8XWCM6ts=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozSqf-00G3Wx-BI for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:22:21 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NL73G4r4nzRpQQ;
 Mon, 28 Nov 2022 09:21:30 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 28 Nov
 2022 09:22:06 +0800
To: <mst@redhat.com>, <jasowang@redhat.com>, <pbonzini@redhat.com>,
 <stefanha@redhat.com>, <axboe@kernel.dk>, <kraxel@redhat.com>,
 <david@redhat.com>, <ericvh@gmail.com>, <lucho@ionkov.net>,
 <asmadeus@codewreck.org>, <linux_oss@crudebyte.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <rusty@rustcorp.com.au>
Date: Mon, 28 Nov 2022 10:10:01 +0800
Message-ID: <20221128021005.232105-1-lizetao1@huawei.com>
X-Mailer: git-send-email 2.25.1
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
 Content preview:  This patchset fixes similar issue,
 the root cause of the problem
 is that the virtqueues are not stopped on error handling path. Li Zetao (4):
 9p: Fix probe failed when modprobe 9pnet_virtio virtio-mem: Fix probe failed
 when modprobe virtio_mem virtio-input: Fix probe failed when modprobe
 virtio_input virtio-blk: Fix probe fail [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ozSqf-00G3Wx-BI
Subject: [V9fs-developer] [PATCH 0/4] Fix probe failed when modprobe modules
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

This patchset fixes similar issue, the root cause of the
problem is that the virtqueues are not stopped on error
handling path.

Li Zetao (4):
  9p: Fix probe failed when modprobe 9pnet_virtio
  virtio-mem: Fix probe failed when modprobe virtio_mem
  virtio-input: Fix probe failed when modprobe virtio_input
  virtio-blk: Fix probe failed when modprobe virtio_blk

 drivers/block/virtio_blk.c    | 1 +
 drivers/virtio/virtio_input.c | 1 +
 drivers/virtio/virtio_mem.c   | 1 +
 net/9p/trans_virtio.c         | 1 +
 4 files changed, 4 insertions(+)

-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
