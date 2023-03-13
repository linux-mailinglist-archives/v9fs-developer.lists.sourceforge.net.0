Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC486B7AB3
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 15:45:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbjQ0-0001up-Ka;
	Mon, 13 Mar 2023 14:44:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zyytlz.wz@163.com>) id 1pbjPr-0001uh-QM
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XUkM4tC9qgJ8JI69+mwuIdhC3T7dE6qVZKBv5HYpx0Y=; b=E4s+LXDpVIXkc/1g4biZb0fRvL
 RMfbBxxOKTWz6tsdsq7QDRTMZtaSipPnUJtAVO+CuOSj7DzHCAt4FlZ8VM2fXLdWlKb8E0XyysLRV
 8AggdRXKi9cFjpe6ZS2stW/y2KORy9arR+RikntOYobgmPUnHlGzglFADwmY5ciV4RwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XUkM4tC9qgJ8JI69+mwuIdhC3T7dE6qVZKBv5HYpx0Y=; b=C
 gaJPvT8ZcZDe8eGqr2ILPOnV02A8EMmwyfUzGnxwY+oh0kktK4PiAjtSdwqSsIBaM6HA+7PrTebfv
 LAkIs6PnXIazqnjVvKFxegOThyAAKd1korO/mZFsWv2iwxXezZpXE9bUD0JVFJ8UT1GtZvNAFMLAa
 ByEZE9ZObay0QK4E=;
Received: from m12.mail.163.com ([220.181.12.214])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pbjPn-0002TG-J6 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=XUkM4
 tC9qgJ8JI69+mwuIdhC3T7dE6qVZKBv5HYpx0Y=; b=qKXWjSSmM3koMhRB8d27B
 I4aKIwSo/UP2YwU1X4xtHvKEsTelVQmhZsOkvZ6aVQU3K3gO/N9s+gw4UPzDlNdq
 SSzb597sWD7A4f8SIs7IbaqB3GXzBUobt6GYj6KY1detxJL9OLL93I1VLObOw4GO
 PqLqX7u7g6yAXc+kfUTxbs=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
 by zwqz-smtp-mta-g1-3 (Coremail) with SMTP id _____wD3_7OONg9khOEOAA--.14012S2;
 Mon, 13 Mar 2023 22:43:26 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: ericvh@gmail.com
Date: Mon, 13 Mar 2023 22:43:25 +0800
Message-Id: <20230313144325.3622082-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_7OONg9khOEOAA--.14012S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tF15Cw48JFy5Kr1kWF4DJwb_yoW8XrW8pa
 nakF45CFyUAF10yFsYy3WxJ3WFyw48Gr1Iga12kw4fJr98Zry8XFZ5t34Yga4UAr4YqF4r
 Cw1UXFWDJFWDAw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zE6pBkUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiGhcxU1aEEjbiJwAAsc
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In xen_9pfs_front_probe,
 it calls xen_9pfs_front_alloc_dataring
 to init priv->rings and bound &ring->work with p9_xen_response. When it calls
 xen_9pfs_front_event_handler to handle IRQ requests, it will finally call
 schedule_work to start the work. 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [220.181.12.214 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [220.181.12.214 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zyytlz.wz[at]163.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pbjPn-0002TG-J6
Subject: [V9fs-developer] [PATCH net v3] 9p/xen : Fix use after free bug in
 xen_9pfs_front_remove due to race condition
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
Cc: lucho@ionkov.net, alex000young@gmail.com, Zheng Wang <zyytlz.wz@163.com>,
 1395428693sheep@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, hackerzheng666@gmail.com,
 v9fs-developer@lists.sourceforge.net, edumazet@google.com, kuba@kernel.org,
 michal.swiatkowski@linux.intel.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In xen_9pfs_front_probe, it calls xen_9pfs_front_alloc_dataring
to init priv->rings and bound &ring->work with p9_xen_response.

When it calls xen_9pfs_front_event_handler to handle IRQ requests,
it will finally call schedule_work to start the work.

When we call xen_9pfs_front_remove to remove the driver, there
may be a sequence as follows:

Fix it by finishing the work before cleanup in xen_9pfs_front_free.

Note that, this bug is found by static analysis, which might be
false positive.

CPU0                  CPU1

                     |p9_xen_response
xen_9pfs_front_remove|
  xen_9pfs_front_free|
kfree(priv)          |
//free priv          |
                     |p9_tag_lookup
                     |//use priv->client

Fixes: 71ebd71921e4 ("xen/9pfs: connect to the backend")
Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
---
v3:
- remove unnecessary comment and move definition to the
for loop suggested by Michal Swiatkowski

v2:
- fix type error of ring found by kernel test robot
---
 net/9p/trans_xen.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index c64050e839ac..df467ffb52d0 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -280,6 +280,10 @@ static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
 	write_unlock(&xen_9pfs_lock);
 
 	for (i = 0; i < priv->num_rings; i++) {
+		struct xen_9pfs_dataring *ring = &priv->rings[i];
+
+		cancel_work_sync(&ring->work);
+
 		if (!priv->rings[i].intf)
 			break;
 		if (priv->rings[i].irq > 0)
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
