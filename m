Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C751F5FBF
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Jun 2020 03:54:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjCQb-0006vv-Ht; Thu, 11 Jun 2020 01:54:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wanghai38@huawei.com>) id 1jjCQV-0006vi-VT
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Jun 2020 01:54:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DaT/MkiNsYahnHAZ76+Njfr8F/kTNR7lY2GiPah8YQA=; b=QKRVzzrGWndbtU7odK6I3wV4Sj
 xIka/c3uyq95gtLPLX3hATFFcTI+gwI64W33sXTIJ+DJQryRpF2UnJSevktoFB4Poiv8rAw9uYwbf
 5bgTUFH5KtPpUiWihCEaRmGRGPLAQYIDVEWRW0/MJ9EmxpHj1xKGxMzy0zQJL9r4HS9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DaT/MkiNsYahnHAZ76+Njfr8F/kTNR7lY2GiPah8YQA=; b=X
 YOEge1xL8goR6YNegPeNpwSP47bL6JrgF0kfFE09O/xWYLDCHX1WXy3kyp4GtpuiqoLNnxMP4nmAn
 ms2lX0N8EHITQmyQDdyEfZxc8B0yl8sOpTRfp+++5fXKjaB0Th0XzHNqsx8uGtc/FDdHtNuvDKcgY
 FUnPPowd8F+bpYGY=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjCQQ-001ZlL-1q
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Jun 2020 01:54:42 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4998A452455622F1EEA3;
 Thu, 11 Jun 2020 09:49:33 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Thu, 11 Jun 2020
 09:49:26 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <davem@davemloft.net>
Date: Thu, 11 Jun 2020 09:48:55 +0800
Message-ID: <20200611014855.60550-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jjCQQ-001ZlL-1q
Subject: [V9fs-developer] [PATCH] 9p/trans_fd: Fix concurrency del of
 req_list in p9_fd_cancelled/p9_read_work
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
Cc: v9fs-developer@lists.sourceforge.net, wanghai38@huawei.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

p9_read_work and p9_fd_cancelled may be called concurrently.
Before list_del(&m->rreq->req_list) in p9_read_work is called,
the req->req_list may have been deleted in p9_fd_cancelled.
We can fix it by setting req->status to REQ_STATUS_FLSHD after
list_del(&req->req_list) in p9_fd_cancelled.

Before list_del(&req->req_list) in p9_fd_cancelled is called,
the req->req_list may have been deleted in p9_read_work.
We should return when req->status = REQ_STATUS_RCVD which means
we just received a response for oldreq, so we need do nothing
in p9_fd_cancelled.

Fixes: 60ff779c4abb ("9p: client: remove unused code and any reference to "cancelled" function")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 net/9p/trans_fd.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index f868cf6fba79..a563699629cb 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -718,11 +718,18 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 {
 	p9_debug(P9_DEBUG_TRANS, "client %p req %p\n", client, req);
 
-	/* we haven't received a response for oldreq,
-	 * remove it from the list.
+	/* If req->status == REQ_STATUS_RCVD, it means we just received a
+	 * response for oldreq, we need do nothing here. Else, remove it from
+	 * the list.
 	 */
 	spin_lock(&client->lock);
+	if (req->status == REQ_STATUS_RCVD) {
+		spin_unlock(&client->lock);
+		return 0;
+	}
+
 	list_del(&req->req_list);
+	req->status = REQ_STATUS_FLSHD;
 	spin_unlock(&client->lock);
 	p9_req_put(req);
 
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
