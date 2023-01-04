Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B112C65CBA9
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 Jan 2023 02:55:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pCszl-0007lj-DB;
	Wed, 04 Jan 2023 01:55:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shaozhengchao@huawei.com>) id 1pCszk-0007ld-A6
 for v9fs-developer@lists.sourceforge.net;
 Wed, 04 Jan 2023 01:55:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r4G7+DSQErwM5cUvtx1xwNZpsIh78mDy5ma7qQfaTME=; b=a60lTkVNU2JgoFd7QCw/IpVq+u
 Mr2qzSkfUljRpC/Ze0HjAVK2uzH1jawq/h62vlRiUc1TjEq1sVr4fIM56TpagPqRDNKmhMQgkwHeV
 75ZSSApQmaYcaYXirmBqjMlzZHsXCeP4Q4Y8wZYnQ/cRdDqjFfvf8ShX/ZOhV6jZL05E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r4G7+DSQErwM5cUvtx1xwNZpsIh78mDy5ma7qQfaTME=; b=l
 bT19epwA3AySz6Po8/c7xhUi4T84alqpNoQS8y1nMu7fyQxwG1GvDvMPITluhvdI5PCMX+/5fpFj8
 9qcZf5EptnZ88O6oGPZZXsrpRSduanZNy4MA8ytiLyenCixQyjdYu9D1escvd//h6sQ67tRAwWxwr
 wPUTK0fOrF+PFjkQ=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pCszi-003xjx-9f for v9fs-developer@lists.sourceforge.net;
 Wed, 04 Jan 2023 01:55:08 +0000
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.56])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Nmsy962l2zJpnd;
 Wed,  4 Jan 2023 09:50:57 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpeml500026.china.huawei.com
 (7.185.36.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Wed, 4 Jan
 2023 09:54:56 +0800
To: <v9fs-developer@lists.sourceforge.net>, <netdev@vger.kernel.org>,
 <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
Date: Wed, 4 Jan 2023 10:04:24 +0800
Message-ID: <20230104020424.611926-1-shaozhengchao@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500026.china.huawei.com (7.185.36.106)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: When down_interruptible() or ib_post_send() failed in
 rdma_request(), 
 receive dma buffer is not unmapped. Add unmap action to error path. Also
 if ib_post_recv() failed in post_recv(), dma buffer is no [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1pCszi-003xjx-9f
Subject: [V9fs-developer] [PATCH v2] 9p/rdma: unmap receive dma buffer in
 rdma_request()/post_recv()
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

When down_interruptible() or ib_post_send() failed in rdma_request(),
receive dma buffer is not unmapped. Add unmap action to error path.
Also if ib_post_recv() failed in post_recv(), dma buffer is not unmapped.
Add unmap action to error path.

Fixes: fc79d4b104f0 ("9p: rdma: RDMA Transport Support for 9P")
Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
---
v2: add unmap action if ib_post_send() or ib_post_recv() failed
---
 net/9p/trans_rdma.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 83f9100d46bf..b84748baf9cb 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -385,6 +385,7 @@ post_recv(struct p9_client *client, struct p9_rdma_context *c)
 	struct p9_trans_rdma *rdma = client->trans;
 	struct ib_recv_wr wr;
 	struct ib_sge sge;
+	int ret;
 
 	c->busa = ib_dma_map_single(rdma->cm_id->device,
 				    c->rc.sdata, client->msize,
@@ -402,7 +403,12 @@ post_recv(struct p9_client *client, struct p9_rdma_context *c)
 	wr.wr_cqe = &c->cqe;
 	wr.sg_list = &sge;
 	wr.num_sge = 1;
-	return ib_post_recv(rdma->qp, &wr, NULL);
+
+	ret = ib_post_recv(rdma->qp, &wr, NULL);
+	if (ret)
+		ib_dma_unmap_single(rdma->cm_id->device, c->busa,
+				    client->msize, DMA_FROM_DEVICE);
+	return ret;
 
  error:
 	p9_debug(P9_DEBUG_ERROR, "EIO\n");
@@ -499,7 +505,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 
 	if (down_interruptible(&rdma->sq_sem)) {
 		err = -EINTR;
-		goto send_error;
+		goto dma_unmap;
 	}
 
 	/* Mark request as `sent' *before* we actually send it,
@@ -509,11 +515,14 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 	err = ib_post_send(rdma->qp, &wr, NULL);
 	if (err)
-		goto send_error;
+		goto dma_unmap;
 
 	/* Success */
 	return 0;
 
+dma_unmap:
+	ib_dma_unmap_single(rdma->cm_id->device, c->busa,
+			    c->req->tc.size, DMA_TO_DEVICE);
  /* Handle errors that happened during or while preparing the send: */
  send_error:
 	WRITE_ONCE(req->status, REQ_STATUS_ERROR);
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
