Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F4465193D
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Dec 2022 04:04:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p7SvX-0008Ra-J8;
	Tue, 20 Dec 2022 03:04:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shaozhengchao@huawei.com>) id 1p7SvW-0008RU-IV
 for v9fs-developer@lists.sourceforge.net;
 Tue, 20 Dec 2022 03:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O5zXUyxYlpdWsYyNihJErK9teyWQ8HezjHLwZRFfZeI=; b=bKSyoausxi3/MtP62EPtgc0Jmr
 vCqHBibuyk+Fsf+uOOOBnElQldxh67qgv8LxA05SH34vJcNKcXyLH0YX09nEK4CgCzdC7FKpbnpbn
 ULya/RdQ4bSpd+N8/IVPem0I+s91K6fHMHDPTPAK4nqQP4oSSDt0iuZ7V5Z3VvZADIB4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=O5zXUyxYlpdWsYyNihJErK9teyWQ8HezjHLwZRFfZeI=; b=G
 lM+8hNDzISiObho97Izb0P7MjtGxnapnFW+tLn9yGNV+vbnX558N7nkYvTNowtWJ3pM5NZAESfDWF
 2xNzD1x0tULQohJaaL3wTYhkqgNU4siV6+3KyqAJpLsGBvRdWfXOYMv+eESDk5UwKfu36hjtC9o5f
 p9x8q3rRuxb813Uk=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p7SvU-005L8I-KN for v9fs-developer@lists.sourceforge.net;
 Tue, 20 Dec 2022 03:04:22 +0000
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NbhGG3WNGzRq32;
 Tue, 20 Dec 2022 11:03:02 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpeml500026.china.huawei.com
 (7.185.36.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 20 Dec
 2022 11:04:11 +0800
To: <v9fs-developer@lists.sourceforge.net>, <netdev@vger.kernel.org>,
 <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
Date: Tue, 20 Dec 2022 11:12:23 +0800
Message-ID: <20221220031223.3890143-1-shaozhengchao@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500026.china.huawei.com (7.185.36.106)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When down_interruptible() failed in rdma_request(), receive
 dma buffer is not unmapped. Add unmap action to error path. Fixes:
 fc79d4b104f0
 ("9p: rdma: RDMA Transport Support for 9P") Signed-off-by: Zhengchao Shao
 <shaozhengchao@huawei.com> --- net/9p/trans_rdma.c | 2 ++ 1 file changed,
 2 insertions(+) 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p7SvU-005L8I-KN
Subject: [V9fs-developer] [PATCH] 9p/rdma: unmap receive dma buffer in
 rdma_request()
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
From: Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Zhengchao Shao <shaozhengchao@huawei.com>
Cc: yuehaibing@huawei.com, shaozhengchao@huawei.com, linux_oss@crudebyte.com,
 weiyongjun1@huawei.com, tom@opengridcomputing.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When down_interruptible() failed in rdma_request(), receive dma buffer
is not unmapped. Add unmap action to error path.

Fixes: fc79d4b104f0 ("9p: rdma: RDMA Transport Support for 9P")
Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
---
 net/9p/trans_rdma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 83f9100d46bf..da83023fecbf 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -499,6 +499,8 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 
 	if (down_interruptible(&rdma->sq_sem)) {
 		err = -EINTR;
+		ib_dma_unmap_single(rdma->cm_id->device, c->busa,
+				    c->req->tc.size, DMA_TO_DEVICE);
 		goto send_error;
 	}
 
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
