Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA248388515
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 May 2021 05:00:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ljCRZ-0000dY-Uc; Wed, 19 May 2021 03:00:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1ljCRX-0000dE-Lf
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 03:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ByDh67j2M/lD7NoK6MNbk6ZDWMVdWn4cq98w46ouyQ=; b=ltKZCHSw1oLJRIiLNQP4Ucj1vn
 7+7rkQPfXQO8w9l+YjlRFcSrWa7tFpbAbgSnuuQmyXeWDbjj0Z862+BDBx4lIH+eTfeHcARQAn4EK
 5FxbOa15R8noPhsMe5Ql0dMff8wSnZkI3tIjbkR5h++mQPdG9IAtCNIriRecBm4TC5rA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5ByDh67j2M/lD7NoK6MNbk6ZDWMVdWn4cq98w46ouyQ=; b=j
 PamfndheBuahK/kNIcgYAkuXfu4Pxoh2Eiq8HO1IfCp4mcxm3fAsSnbyL9pUBEjKgRcuI5FjYZP2f
 UCifpa4gnFh2MYy007NfCZW/hwUWcEls2coOdPdKn4DkOKW1Ichdp6TsZysRSsVxwP4psIrBI2Gg0
 k5g9FDVOv64gVasI=;
Received: from szxga07-in.huawei.com ([45.249.212.35])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ljCRU-0007vb-20
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 03:00:19 +0000
Received: from dggems703-chm.china.huawei.com (unknown [172.30.72.58])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FlHbP60N4zBvbm;
 Wed, 19 May 2021 10:57:21 +0800 (CST)
Received: from dggema769-chm.china.huawei.com (10.1.198.211) by
 dggems703-chm.china.huawei.com (10.3.19.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 11:00:08 +0800
Received: from localhost (10.174.179.215) by dggema769-chm.china.huawei.com
 (10.1.198.211) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 19
 May 2021 11:00:07 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <davem@davemloft.net>, <kuba@kernel.org>
Date: Wed, 19 May 2021 10:56:39 +0800
Message-ID: <20210519025639.12108-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggema769-chm.china.huawei.com (10.1.198.211)
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ljCRU-0007vb-20
Subject: [V9fs-developer] [PATCH net-next] net/9p: use DEVICE_ATTR_RO macro
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
Cc: v9fs-developer@lists.sourceforge.net, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Use DEVICE_ATTR_RO helper instead of plain DEVICE_ATTR,
which makes the code a bit shorter and easier to read.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/9p/trans_virtio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 93f2f8654882..43339f314a86 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -528,8 +528,8 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	return err;
 }
 
-static ssize_t p9_mount_tag_show(struct device *dev,
-				struct device_attribute *attr, char *buf)
+static ssize_t mount_tag_show(struct device *dev,
+			      struct device_attribute *attr, char *buf)
 {
 	struct virtio_chan *chan;
 	struct virtio_device *vdev;
@@ -544,7 +544,7 @@ static ssize_t p9_mount_tag_show(struct device *dev,
 	return tag_len + 1;
 }
 
-static DEVICE_ATTR(mount_tag, 0444, p9_mount_tag_show, NULL);
+static DEVICE_ATTR_RO(mount_tag);
 
 /**
  * p9_virtio_probe - probe for existence of 9P virtio channels
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
