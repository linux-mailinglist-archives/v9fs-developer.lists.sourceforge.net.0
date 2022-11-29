Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C8163C372
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 16:18:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p02Nc-0000A5-1g;
	Tue, 29 Nov 2022 15:18:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lizetao1@huawei.com>) id 1p02NY-00009l-H0
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6PuL8O2pD+LzoINyGMadNmT33wfKDQBTMqXrQIFlJew=; b=Cqufnx+ehX6MxgO0S1+Dfp/K6t
 CLLjHPdr6VzCBAlh3pVJqaL+98irBayGhHNsWK1ufNj9VmFxROC/yJVLy2C/3YlaHHVTZWRG72uNC
 8eu2TkPzsRNab9dbEIKBruJjWoetlOZ2/qdn7Xtui8OG8UwUy8ExSyYL0H1+Lb+Pay38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6PuL8O2pD+LzoINyGMadNmT33wfKDQBTMqXrQIFlJew=; b=a3dalHkKgtwdYa+2ihMHtlLJx7
 mQCldfdLi15oa3yU/8WcCnID+A8viY7KvXYwb9ER1laBHnO7xW22c2kRN4IWRHh5ieI+Rj1V2nDkB
 KNizJMBaGupplYKUcqD/TJ0Hnzy6wGRhZwt5wTYBqR5WLRKg/Cz8b1GxLsn4/AeznIuw=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p02NT-0005Sp-GS for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 15:18:36 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.55])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NM5YX4lRrzHwJ8;
 Tue, 29 Nov 2022 23:17:36 +0800 (CST)
Received: from huawei.com (10.67.175.21) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 29 Nov
 2022 23:18:17 +0800
To: <lizetao1@huawei.com>
Date: Wed, 30 Nov 2022 00:06:10 +0800
Message-ID: <20221129160615.3343036-1-lizetao1@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128021005.232105-1-lizetao1@huawei.com>
References: <20221128021005.232105-1-lizetao1@huawei.com>
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
 Content preview:  This patchset fixes similar issue,
 the root cause of the problem
 is that the virtqueues are not stopped on error handling path. Changes since
 v1: - Modify the description error of the test case and fixes tag information.
 - Add patch to fix virtio_gpu module. 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p02NT-0005Sp-GS
Subject: [V9fs-developer] [PATCH v2 0/5] Fix probe failed when modprobe
 modules
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

This patchset fixes similar issue, the root cause of the
problem is that the virtqueues are not stopped on error
handling path.

Changes since v1:
- Modify the description error of the test case and fixes tag
  information.
- Add patch to fix virtio_gpu module.

v1 at:
https://lore.kernel.org/all/20221128021005.232105-1-lizetao1@huawei.com/

Li Zetao (5):
  9p: Fix probe failed when modprobe 9pnet_virtio
  virtio-mem: Fix probe failed when modprobe virtio_mem
  virtio-input: Fix probe failed when modprobe virtio_input
  virtio-blk: Fix probe failed when modprobe virtio_blk
  drm/virtio: Fix probe failed when modprobe virtio_gpu

 drivers/block/virtio_blk.c           | 1 +
 drivers/gpu/drm/virtio/virtgpu_kms.c | 1 +
 drivers/virtio/virtio_input.c        | 1 +
 drivers/virtio/virtio_mem.c          | 1 +
 net/9p/trans_virtio.c                | 1 +
 5 files changed, 5 insertions(+)

-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
