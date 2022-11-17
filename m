Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1D562D63D
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 10:15:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovazr-0004Te-3W;
	Thu, 17 Nov 2022 09:15:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovazW-0004TD-VY
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GL4OTJd4ooxFnxS/6x7qkKri1H08yN+M8/ewuw7+ZFM=; b=Efed9E9Jl7jPM3fFOi7v0eqKBw
 UbYTxNov5WYdyrach6FNRYV6OSASbvbqXjC3+MthCOimByOkqOkGGT6VqSngQ3MDOqLmu2MJ0XHfN
 CCiVgTXto2I08d6VFEzbtytfPy2lxZOXFSAphbPLAHfZS9a4Y+QKiCwYdFK/xH0QfJWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GL4OTJd4ooxFnxS/6x7qkKri1H08yN+M8/ewuw7+ZFM=; b=dJC8tx+lnRRozx0Xt9ZaTqTuZ3
 PJed9Ob6FR/woZnGP4et4V/aVhg+T2G9p6/8xebyUgZRmtDF9+hx5ctZabwJb6IPBspl4YS/j0KXf
 fbNhLB7shT/0ogtaVYiWkpVMxJdQCqDjNAD9ywNDLjm6KtC7ogTaSvdKX3bgg3ApfZZo=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovazW-0004ER-03 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 09:15:26 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.56])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NCZ0f2QtDzqSWZ;
 Thu, 17 Nov 2022 17:11:30 +0800 (CST)
Received: from huawei.com (10.67.175.31) by dggpemm500024.china.huawei.com
 (7.185.36.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 17 Nov
 2022 17:15:19 +0800
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>
Date: Thu, 17 Nov 2022 17:11:59 +0800
Message-ID: <20221117091159.31533-4-guozihua@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221117091159.31533-1-guozihua@huawei.com>
References: <20221117091159.31533-1-guozihua@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The m->rc.offset here actually represents the header size
 of a p9 message. So instead we use P9_HDRSZ directly. At the mean time, update
 all header sizes as well. Fixes: 3da2e34b64cd ("9p: Fix write overflow in
 p9_read_work") Signed-off-by: GUO Zihua <guozihua@huawei.com> ---
 net/9p/trans_fd.c
 | 8 ++++---- 1 file changed, 4 insertions(+), 4 deletions(-) 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ovazW-0004ER-03
Subject: [V9fs-developer] [PATCH 3/3 v2] 9p: Use P9_HDRSZ for header size
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
From: GUO Zihua via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: GUO Zihua <guozihua@huawei.com>
Cc: netdev@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The m->rc.offset here actually represents the header size of a p9
message. So instead we use P9_HDRSZ directly. At the mean time, update
all header sizes as well.

Fixes: 3da2e34b64cd ("9p: Fix write overflow in p9_read_work")
Signed-off-by: GUO Zihua <guozihua@huawei.com>
---
 net/9p/trans_fd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 4ba602438550..89a51fcc831d 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -120,7 +120,7 @@ struct p9_conn {
 	struct list_head unsent_req_list;
 	struct p9_req_t *rreq;
 	struct p9_req_t *wreq;
-	char tmp_buf[7];
+	char tmp_buf[P9_HDRSZ];
 	struct p9_fcall rc;
 	int wpos;
 	int wsize;
@@ -291,7 +291,7 @@ static void p9_read_work(struct work_struct *work)
 	if (!m->rc.sdata) {
 		m->rc.sdata = m->tmp_buf;
 		m->rc.offset = 0;
-		m->rc.capacity = 7; /* start by reading header */
+		m->rc.capacity = P9_HDRSZ; /* start by reading header */
 	}
 
 	clear_bit(Rpending, &m->wsched);
@@ -314,7 +314,7 @@ static void p9_read_work(struct work_struct *work)
 		p9_debug(P9_DEBUG_TRANS, "got new header\n");
 
 		/* Header size */
-		m->rc.size = 7;
+		m->rc.size = P9_HDRSZ;
 		err = p9_parse_header(&m->rc, &m->rc.size, NULL, NULL, 0);
 		if (err) {
 			p9_debug(P9_DEBUG_ERROR,
@@ -334,7 +334,7 @@ static void p9_read_work(struct work_struct *work)
 			goto error;
 		}
 
-		if (m->rc.size > m->rreq->rc.capacity - m->rc.offset) {
+		if (m->rc.size > m->rreq->rc.capacity - P9_HDRSZ) {
 			p9_debug(P9_DEBUG_ERROR,
 				 "requested packet size too big: %d for tag %d with capacity %zd\n",
 				 m->rc.size, m->rc.tag, m->rreq->rc.capacity);
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
