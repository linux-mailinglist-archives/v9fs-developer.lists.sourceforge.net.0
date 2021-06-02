Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16359398140
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Jun 2021 08:41:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1loKZG-0008E9-8M; Wed, 02 Jun 2021 06:41:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengyongjun3@huawei.com>) id 1loKZD-0008E1-VR
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Jun 2021 06:41:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=puTcBeJVanyQ6a0QNoFjjTr9Q2tCc6EQX3Bej79nkUc=; b=k+DbAMiN8wUsS0wNcdEi7VCSgk
 EMVYwFWg1VNiZdCrbG7422Yx6Tmib3HOz56ntxhQuQ5TrUugl+qgog3ke0/6nmN4DFfDV1tvm9j6O
 IfQhaKyhrkPfboLocmz/oG20MJYGgyBjDLSGlSGJFKjGXsxDgk1ms+lycRi1Kr/xOJzA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=puTcBeJVanyQ6a0QNoFjjTr9Q2tCc6EQX3Bej79nkUc=; b=I
 jBDT27mSOTBdFKc2DiSs+CHQ6S+uVWw63DMwvowNGQs41huPeFBl56PSjQ81tcI3WH+QsIDDKgQXH
 2H0Lra/Njt9eBBHqhtjyrYfxdukuaNzj84CanmKUeV4usOgVAJ2izivNgxKjkHqFaXQV0hZStfmx+
 MhMGHwd7HaKjcpTM=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1loKZ3-006qKv-KR
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Jun 2021 06:41:30 +0000
Received: from dggeme760-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Fvzpq62dQz67Lm;
 Wed,  2 Jun 2021 14:37:23 +0800 (CST)
Received: from localhost.localdomain (10.175.104.82) by
 dggeme760-chm.china.huawei.com (10.3.19.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Wed, 2 Jun 2021 14:41:06 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <davem@davemloft.net>, <kuba@kernel.org>,
 <v9fs-developer@lists.sourceforge.net>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Date: Wed, 2 Jun 2021 14:54:42 +0800
Message-ID: <20210602065442.104765-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.82]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggeme760-chm.china.huawei.com (10.3.19.106)
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1loKZ3-006qKv-KR
Subject: [V9fs-developer] [PATCH net-next] 9p/trans_virtio: Fix spelling
 mistakes
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
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

reseting  ==> resetting
alloced  ==> allocated
accomodate  ==> accommodate

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 net/9p/trans_virtio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 93f2f8654882..2bbd7dce0f1d 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -99,7 +99,7 @@ static unsigned int rest_of_page(void *data)
  * @client: client instance
  *
  * This reclaims a channel by freeing its resources and
- * reseting its inuse flag.
+ * resetting its inuse flag.
  *
  */
 
@@ -463,7 +463,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	 * For example TREAD have 11.
 	 * 11 is the read/write header = PDU Header(7) + IO Size (4).
 	 * Arrange in such a way that server places header in the
-	 * alloced memory and payload onto the user buffer.
+	 * allocated memory and payload onto the user buffer.
 	 */
 	in = pack_sg_list(chan->sg, out,
 			  VIRTQUEUE_NUM, req->rc.sdata, in_hdr_len);
@@ -760,7 +760,7 @@ static struct p9_trans_module p9_virtio_trans = {
 	.cancelled = p9_virtio_cancelled,
 	/*
 	 * We leave one entry for input and one entry for response
-	 * headers. We also skip one more entry to accomodate, address
+	 * headers. We also skip one more entry to accommodate, address
 	 * that are not at page boundary, that can result in an extra
 	 * page in zero copy.
 	 */
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
