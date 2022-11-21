Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71951631AC8
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 08:56:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ox1fZ-0004yb-6r;
	Mon, 21 Nov 2022 07:56:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yebin@huaweicloud.com>) id 1ox1fQ-0004yN-C9
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 07:56:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1wVFyNh4TdQIJ6vBzCWbE7nqdKPoS4uC8UM8dvKf2QI=; b=ll8+tJmGL+gz0sbqTFcnX911A+
 SFuaCjeg4eRuFOq1CuchFNcVUV4HhMQAoDkJFffmlChfWc6evMeIf6jf/CNn53Ny2WRPutDdQyywp
 oQ9PE99d931hlLfxN54SgPxBfcYnXo9Oz5u3gh3hdfRkn0KdTTPwTs9oC4KS4Bg31KXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1wVFyNh4TdQIJ6vBzCWbE7nqdKPoS4uC8UM8dvKf2QI=; b=dAFBlOPD4fz8uGTDQcx/Rkyba2
 FZagU6bghfjjfV4fhEY0dAuyVkgfHZfpg7deKpaR7MkbemQcRsgzWUz6OQd23yItyoqQK7cm1aS0r
 YWyTRtFHCbiyJLg7V79Pi01eRWO6QrlGI2/5NEbVZpj6VNy/pMhpnserWKguxvNlXows=;
Received: from [45.249.212.51] (helo=dggsgout11.his.huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ox1fL-005Bhq-NM for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 07:56:36 +0000
Received: from mail02.huawei.com (unknown [172.30.67.153])
 by dggsgout11.his.huawei.com (SkyGuard) with ESMTP id 4NFzmg6H5nz4f3v4f
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Nov 2022 15:39:31 +0800 (CST)
Received: from huaweicloud.com (unknown [10.175.127.227])
 by APP4 (Coremail) with SMTP id gCh0CgC329g0K3tj2M2XAw--.53628S6;
 Mon, 21 Nov 2022 15:39:34 +0800 (CST)
From: Ye Bin <yebin@huaweicloud.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, v9fs-developer@lists.sourceforge.net,
 netdev@vger.kernel.org
Date: Mon, 21 Nov 2022 16:00:46 +0800
Message-Id: <20221121080049.3850133-3-yebin@huaweicloud.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221121080049.3850133-1-yebin@huaweicloud.com>
References: <20221121080049.3850133-1-yebin@huaweicloud.com>
MIME-Version: 1.0
X-CM-TRANSID: gCh0CgC329g0K3tj2M2XAw--.53628S6
X-Coremail-Antispam: 1UD129KBjvdXoW7Gw45Wr4kCw45JF43tF1fWFg_yoW3XwbE9F
 4fGan3Xas7Jry7KFWjka1Fvr1kCFWxWr1xurn0ya4jkwn8Xr97Gw1jgr98Ar47CF4DCrW8
 Jwn8X3yfWFy3ZjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbfxYFVCjjxCrM7AC8VAFwI0_Wr0E3s1l1xkIjI8I6I8E6xAIw20E
 Y4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l82xGYIkIc2x26280x7IE14v26r15M2
 8IrcIa0xkI8VCY1x0267AKxVW5JVCq3wA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK
 021l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r
 4UJVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
 GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx
 0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWU
 JVW8JwACjcxG0xvY0x0EwIxGrwACI402YVCY1x02628vn2kIc2xKxwCF04k20xvY0x0EwI
 xGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
 Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7
 IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k2
 6cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxV
 AFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07UC9aPUUUUU=
X-CM-SenderInfo: p1hex046kxt4xhlfz01xgou0bp/
X-CFilter-Loop: Reflected
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Ye Bin <yebin10@huawei.com> If send request failed will
 not call 'send_done()', but already get '(&rdma->sq_sem'. So add release
 '(&rdma->sq_sem' after send request failed. Signed-off-by: Ye Bin
 <yebin10@huawei.com>
 --- net/9p/trans_rdma.c | 4 +++- 1 file changed, 3 insertions(+), 1 deletion(-)
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1ox1fL-005Bhq-NM
Subject: [V9fs-developer] [PATCH 2/5] 9p: fix miss release semaphore in
 'rdma_request()'
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

If send request failed will not call 'send_done()', but already get
'(&rdma->sq_sem'. So add release '(&rdma->sq_sem' after send request failed.

Signed-off-by: Ye Bin <yebin10@huawei.com>
---
 net/9p/trans_rdma.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index e498208ed72b..ae2bac9bf510 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -509,8 +509,10 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	 */
 	req->status = REQ_STATUS_SENT;
 	err = ib_post_send(rdma->qp, &wr, NULL);
-	if (err)
+	if (err) {
+		up(&rdma->sq_sem);
 		goto mapping_error;
+	}
 
 	/* Success */
 	return 0;
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
