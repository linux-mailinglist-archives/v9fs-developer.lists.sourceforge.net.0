Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E325C631ACC
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 08:57:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ox1fr-0006uc-Kr;
	Mon, 21 Nov 2022 07:57:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yebin@huaweicloud.com>) id 1ox1fR-0006tg-6r
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 07:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HIWtb16icPbt7+Y8MR34INS23jrMHnOpe4+79O2FdIA=; b=kig1Oh4DnaeJM64Yri5n3cqUzl
 muIEb+Gm74e3px8kd3qoMSVsixSfhp1IZS2KTDP8S1FOJ50j20pSpv92/9r/j6N/1gxM+jOk4mPtX
 mBmirWM7en81rdSPydyhF+a4tXDaYE9BRSfVVYaiBOCG9eFZcRB4cw63EYdFthqpEWjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HIWtb16icPbt7+Y8MR34INS23jrMHnOpe4+79O2FdIA=; b=FpnoVfZehx4FRx2P010oj3lrrw
 LRLVSqu0Wy3XlktgY7/DBBQic3HdbszVX7UBRcKpLqoBp38YWKmYjpFhS1WsGU/nrZxfRaH9rrnKf
 PfA9eZsoCXyeU1FcknqjXSNISL2kSBcERa3IK4jCtDvQQc0p0u1Tw0RjoDjdCV6iPKSs=;
Received: from [45.249.212.51] (helo=dggsgout11.his.huawei.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ox1fL-0006JZ-RD for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 07:56:37 +0000
Received: from mail02.huawei.com (unknown [172.30.67.153])
 by dggsgout11.his.huawei.com (SkyGuard) with ESMTP id 4NFzmj2Bh5z4f3vdg
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Nov 2022 15:39:33 +0800 (CST)
Received: from huaweicloud.com (unknown [10.175.127.227])
 by APP4 (Coremail) with SMTP id gCh0CgC329g0K3tj2M2XAw--.53628S9;
 Mon, 21 Nov 2022 15:39:36 +0800 (CST)
From: Ye Bin <yebin@huaweicloud.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, v9fs-developer@lists.sourceforge.net,
 netdev@vger.kernel.org
Date: Mon, 21 Nov 2022 16:00:49 +0800
Message-Id: <20221121080049.3850133-6-yebin@huaweicloud.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221121080049.3850133-1-yebin@huaweicloud.com>
References: <20221121080049.3850133-1-yebin@huaweicloud.com>
MIME-Version: 1.0
X-CM-TRANSID: gCh0CgC329g0K3tj2M2XAw--.53628S9
X-Coremail-Antispam: 1UD129KBjvJXoWxJF4fGr1rKF1fJFykAFyUAwb_yoWrXr1fpF
 4fuwsIyrZ0qF17Cw4kKa4UZF12kr4rCa1rG3y8Kws3JFn8trn5KF4jyryFgFWxuFZ7J3WF
 yr1DKFWruF1UZrUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUBab4IE77IF4wAFF20E14v26rWj6s0DM7CY07I20VC2zVCF04k2
 6cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI8067AKxVWUAV
 Cq3wA2048vs2IY020Ec7CjxVAFwI0_Xr0E3s1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0
 rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267
 AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E
 14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7
 xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Y
 z7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l42xK82IYc2
 Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s02
 6x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0x
 vE2Ix0cI8IcVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY
 6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aV
 CY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x07UZo7tUUUUU=
X-CM-SenderInfo: p1hex046kxt4xhlfz01xgou0bp/
X-CFilter-Loop: Reflected
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Ye Bin <yebin10@huawei.com> Refactor 'post_recv()',
 move receive resource request from 'rdma_request()' to 'post_recv()'.
 Signed-off-by:
 Ye Bin <yebin10@huawei.com> --- net/9p/trans_rdma.c | 77
 +++++++++++++++++++++++
 1 file changed, 39 insertions(+), 38 deletions(-) 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1ox1fL-0006JZ-RD
Subject: [V9fs-developer] [PATCH 5/5] 9p: refactor 'post_recv()'
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
Cc: linux-kernel@vger.kernel.org, yebin10@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Ye Bin <yebin10@huawei.com>

Refactor 'post_recv()', move receive resource request from 'rdma_request()' to
'post_recv()'.

Signed-off-by: Ye Bin <yebin10@huawei.com>
---
 net/9p/trans_rdma.c | 77 +++++++++++++++++++++++----------------------
 1 file changed, 39 insertions(+), 38 deletions(-)

diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index bb917389adc9..78452c289f35 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -380,19 +380,40 @@ static void rdma_destroy_trans(struct p9_trans_rdma *rdma)
 	kfree(rdma);
 }
 
-static int
-post_recv(struct p9_client *client, struct p9_rdma_context *c)
+static int post_recv(struct p9_client *client, struct p9_req_t *req)
 {
 	struct p9_trans_rdma *rdma = client->trans;
+	struct p9_rdma_context *c = NULL;
 	struct ib_recv_wr wr;
 	struct ib_sge sge;
-	int err = -EIO;
+	int err;
+
+	c = kmalloc(sizeof *c, GFP_NOFS);
+	if (!c) {
+		err = -ENOMEM;
+		goto error;
+	}
+	c->rc.sdata = req->rc.sdata;
+
+	/*
+	 * Post a receive buffer for this request. We need to ensure
+	 * there is a reply buffer available for every outstanding
+	 * request. A flushed request can result in no reply for an
+	 * outstanding request, so we must keep a count to avoid
+	 * overflowing the RQ.
+	 */
+	if (down_interruptible(&rdma->rq_sem)) {
+		err = -EINTR;
+		goto error;
+	}
 
 	c->busa = ib_dma_map_single(rdma->cm_id->device,
 				    c->rc.sdata, client->msize,
 				    DMA_FROM_DEVICE);
-	if (ib_dma_mapping_error(rdma->cm_id->device, c->busa))
-		goto error;
+	if (ib_dma_mapping_error(rdma->cm_id->device, c->busa)) {
+		err = -EIO;
+		goto sem_error;
+	}
 
 	c->cqe.done = recv_done;
 
@@ -405,15 +426,18 @@ post_recv(struct p9_client *client, struct p9_rdma_context *c)
 	wr.sg_list = &sge;
 	wr.num_sge = 1;
 	err = ib_post_recv(rdma->qp, &wr, NULL);
-	if (err) {
-		ib_dma_unmap_single(rdma->cm_id->device, c->busa,
-				    client->msize, DMA_FROM_DEVICE);
-		goto error;
-	}
+	if (err)
+		goto mapping_error;
+
 	return 0;
- error:
+
+mapping_error:
+	ib_dma_unmap_single(rdma->cm_id->device, c->busa,
+			    client->msize, DMA_FROM_DEVICE);
+sem_error:
 	up(&rdma->rq_sem);
-	p9_debug(P9_DEBUG_ERROR, "EIO\n");
+error:
+	kfree(c);
 	return err;
 }
 
@@ -481,9 +505,8 @@ static int post_send(struct p9_client *client, struct p9_req_t *req)
 static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 {
 	struct p9_trans_rdma *rdma = client->trans;
-	int err = 0;
 	unsigned long flags;
-	struct p9_rdma_context *rpl_context = NULL;
+	int err;
 
 	/* When an error occurs between posting the recv and the send,
 	 * there will be a receive context posted without a pending request.
@@ -505,27 +528,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 		}
 	}
 
-	/* Allocate an fcall for the reply */
-	rpl_context = kmalloc(sizeof *rpl_context, GFP_NOFS);
-	if (!rpl_context) {
-		err = -ENOMEM;
-		goto recv_error;
-	}
-	rpl_context->rc.sdata = req->rc.sdata;
-
-	/*
-	 * Post a receive buffer for this request. We need to ensure
-	 * there is a reply buffer available for every outstanding
-	 * request. A flushed request can result in no reply for an
-	 * outstanding request, so we must keep a count to avoid
-	 * overflowing the RQ.
-	 */
-	if (down_interruptible(&rdma->rq_sem)) {
-		err = -EINTR;
-		goto recv_error;
-	}
-
-	err = post_recv(client, rpl_context);
+	err = post_recv(client, req);
 	if (err) {
 		p9_debug(P9_DEBUG_ERROR, "POST RECV failed: %d\n", err);
 		goto recv_error;
@@ -547,9 +550,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	}
 	return err;
 
- /* Handle errors that happened during or while preparing post_recv(): */
- recv_error:
-	kfree(rpl_context);
+recv_error:
 	spin_lock_irqsave(&rdma->req_lock, flags);
 	if (err != -EINTR && rdma->state < P9_RDMA_CLOSING) {
 		rdma->state = P9_RDMA_CLOSING;
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
