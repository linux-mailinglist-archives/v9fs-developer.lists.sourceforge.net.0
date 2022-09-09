Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A585B355B
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Sep 2022 12:39:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oWbPo-0006sS-2y;
	Fri, 09 Sep 2022 10:39:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xiujianfeng@huawei.com>) id 1oWbPm-0006sM-GU
 for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Sep 2022 10:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ny6dmlYjrm7CGpbpsYYdOZ53oa+xuTXlA60+I5l31gU=; b=CyRhpLKPdpgks9aTAk4riKP6QO
 9/RCoMfmeJuit0NRne1bzBxwZsjOLpGJyvw0pfn9G04yDr+8vS0iNtU/z8jq2oe6BWipqMqXskhW3
 lsRoLFhqQ1mwjwQnpMmI8c8M3OjViAv2Bl9etuc/zlWo7NmqRB6BfYB4YRHjO0r1jOxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ny6dmlYjrm7CGpbpsYYdOZ53oa+xuTXlA60+I5l31gU=; b=e
 6vjXrJIkpor1F6kCmjt2B6TxqdBXPZ3ZJOpU4AlUWtB8d3owmHyTfGjQnvGepklNIAt0i11XmrL5z
 ejltSkAffeuHwllLLiUVnrAws9B7RPAc/kP6+kny7h7dZcxMtg4nwnJPdxtEogeCf2HjBROGGamV/
 OufsfAXNTjfuRp1U=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oWbPu-0036jt-8O for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Sep 2022 10:39:26 +0000
Received: from dggpeml500023.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MPC7G28dpzlVqs;
 Fri,  9 Sep 2022 18:35:22 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.58) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 18:39:13 +0800
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
Date: Fri, 9 Sep 2022 18:35:46 +0800
Message-ID: <20220909103546.73015-1-xiujianfeng@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.58]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add missing __init/__exit annotations to module init/exit
 funcs. Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com> ---
 net/9p/trans_xen.c | 4 ++-- 1 file changed, 2 insertions(+),
 2 deletions(-) diff --git a/net/9p/trans_xen.c
 b/net/9p/trans_xen.c index 41c57d40efb6..b15c64128c3e 100644 ---
 a/net/9p/trans_xen.c
 +++ b/net/9p/trans_xen.c @@ -511,7 +511,7 @@ static struct xenbus_driver
 xen_9pfs_ [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oWbPu-0036jt-8O
Subject: [V9fs-developer] [PATCH -next] net/9p: add __init/__exit
 annotations to module init/exit funcs
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
From: Xiu Jianfeng via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Xiu Jianfeng <xiujianfeng@huawei.com>
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add missing __init/__exit annotations to module init/exit funcs.

Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>
---
 net/9p/trans_xen.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 41c57d40efb6..b15c64128c3e 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -511,7 +511,7 @@ static struct xenbus_driver xen_9pfs_front_driver = {
 	.otherend_changed = xen_9pfs_front_changed,
 };
 
-static int p9_trans_xen_init(void)
+static int __init p9_trans_xen_init(void)
 {
 	int rc;
 
@@ -530,7 +530,7 @@ static int p9_trans_xen_init(void)
 module_init(p9_trans_xen_init);
 MODULE_ALIAS_9P("xen");
 
-static void p9_trans_xen_exit(void)
+static void __exit p9_trans_xen_exit(void)
 {
 	v9fs_unregister_trans(&p9_xen_trans);
 	return xenbus_unregister_driver(&xen_9pfs_front_driver);
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
