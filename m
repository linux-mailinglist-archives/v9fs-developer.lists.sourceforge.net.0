Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FFE1F7492
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 09:26:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jje4o-0004E6-UU; Fri, 12 Jun 2020 07:26:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengbin13@huawei.com>) id 1jje4n-0004Dy-5F
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 07:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wjJZn69HGNe/KVeN66laAFHabUa1fOs1amg/X54I/Xc=; b=BXfnCoaKFLXtMlBcOjRZTUJtN1
 O2LA3te+4yp11piSsxSUeJmFVyWrEYoseZs9FSY33IPNerPJuW9Rl3IpS7vZoHBJm7o3Xv2vluXNk
 2LP5G8KIoFQ1zicA2wbZ2+/fJK6T3ovOKQoI29ei55lbSskQN3oRzbH+vLvMh8i4fRw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wjJZn69HGNe/KVeN66laAFHabUa1fOs1amg/X54I/Xc=; b=H
 IHEH8vSVdF8pg3SL4NMZZ+aZBeBPIQno65TwLEEB2jLo+Ko03R3SS7HD1PN45gO2AvU3yofHccABQ
 QCbTEuqTNxHq3T8EfR3EgTj+fmMP8ybPxF5rpyioa4vdpmGyza/JUC1XXs8HT9HLOdxyRagA66HLT
 wz0i+b4NKZ/9iJJc=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jje4k-00HTr2-Pl
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 07:26:08 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 91469CD0937179E6DBBD;
 Fri, 12 Jun 2020 15:25:51 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Fri, 12 Jun 2020
 15:25:43 +0800
From: Zheng Bin <zhengbin13@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <v9fs-developer@lists.sourceforge.net>
Date: Fri, 12 Jun 2020 15:32:48 +0800
Message-ID: <20200612073248.40020-1-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jje4k-00HTr2-Pl
Subject: [V9fs-developer] [PATCH] 9p: Fix memory leak in v9fs_mount
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
Cc: zhengbin13@huawei.com, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v9fs_mount
  v9fs_session_init
    v9fs_cache_session_get_cookie
      v9fs_random_cachetag                     -->alloc cachetag
      v9ses->fscache = fscache_acquire_cookie  -->maybe NULL
  sb = sget                                    -->fail, goto clunk
clunk_fid:
  v9fs_session_close
    if (v9ses->fscache)                        -->NULL
      kfree(v9ses->cachetag)

Thus memleak happens.

Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
---
 fs/9p/v9fs.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index 15a99f9c7253..39def020a074 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -500,10 +500,9 @@ void v9fs_session_close(struct v9fs_session_info *v9ses)
 	}

 #ifdef CONFIG_9P_FSCACHE
-	if (v9ses->fscache) {
+	if (v9ses->fscache)
 		v9fs_cache_session_put_cookie(v9ses);
-		kfree(v9ses->cachetag);
-	}
+	kfree(v9ses->cachetag);
 #endif
 	kfree(v9ses->uname);
 	kfree(v9ses->aname);
--
2.26.0.106.g9fadedd



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
