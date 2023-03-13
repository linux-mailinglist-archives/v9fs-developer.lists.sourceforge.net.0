Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E418A6B6E55
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 05:14:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbZaK-0007Sf-OV;
	Mon, 13 Mar 2023 04:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zyytlz.wz@163.com>) id 1pbZaJ-0007SY-6u
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 04:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SHitx/p2v515lWIUtrn7VLSosh3Eis87AfBcSEwzhzA=; b=KrVrNDV+apsdk6eU9Jt/8ojt2i
 c3yIxpIWEEgscIxlL8F00SONJ9lLo334GBlMgKV6w/SF5Bt0g1kXn+eLpeQqnmO03L5DtckrpmNq0
 2ZFV1BW59DvwnBS/zC7yjKOtaoU40IdX9yoo91lFVT2ZU0Fo1ycPe8M1f53Cgfu9k+lQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SHitx/p2v515lWIUtrn7VLSosh3Eis87AfBcSEwzhzA=; b=n
 VP+byXC+ExMZh+QySzr7qTYQ23KZ9Er+EQsBqw/9qH6CJXripGsZK6HDsU0/QGUiMbK3jnWZCB5/a
 TeT9HdDNaFwlseO0E/q1b9cYIyjrSHuzLPzDHTwhjAyjcJ9gQnoXYW4kBG7G8u1KB/9lAOJ9Ywb8P
 XBGBokwmupkQVadI=;
Received: from m12.mail.163.com ([220.181.12.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pbZaD-00018J-D3 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 04:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=SHitx
 /p2v515lWIUtrn7VLSosh3Eis87AfBcSEwzhzA=; b=jxU/5wgcfYNdDyK7u6Hjc
 DjkHb77etGnELIsNQN/ri/2VB+L9s/MYXYheXz0Ie/NKcr0oPNGpYrCMCrYdSea0
 eK9QeazJYKHM0Ig3giywQfJpnz36lEWQR2jw08WBNSaWKG2YaWNnlLzlPGeR+lLX
 FYeMbjn3pEWORK8silVnt8=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
 by zwqz-smtp-mta-g4-0 (Coremail) with SMTP id _____wBXdh_Rog5kJ4YGAA--.1868S2; 
 Mon, 13 Mar 2023 12:13:05 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: ericvh@gmail.com
Date: Mon, 13 Mar 2023 12:13:03 +0800
Message-Id: <20230313041303.3158458-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wBXdh_Rog5kJ4YGAA--.1868S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tF15Cw48JFy5tr1xuF45Wrg_yoW8WF4Upa
 1Skrn5AFyqya1YyFsYy3WxJ3WYkw4rGr1Iga12kw4fJr98Ary8XrZ5tr1Yg34UAr4YqF4r
 Gw1DXa98JFZrAw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziaZXrUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiXQ8xU1WBo41K9wABs2
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In xen_9pfs_front_probe,
 it calls xen_9pfs_front_alloc_dataring
 to init priv->rings and bound &ring->work with p9_xen_response. When it calls
 xen_9pfs_front_event_handler to handle IRQ requests, it will finally call
 schedule_work to start the work. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [220.181.12.197 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zyytlz.wz[at]163.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pbZaD-00018J-D3
Subject: [V9fs-developer] [PATCH net] 9p/xen : Fix use after free bug in
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
 netdev@vger.kernel.org, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 hackerzheng666@gmail.com, 1395428693sheep@gmail.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
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
 net/9p/trans_xen.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index c64050e839ac..60adb3aadd63 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -274,16 +274,21 @@ static const struct xenbus_device_id xen_9pfs_front_ids[] = {
 static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
 {
 	int i, j;
+	struct xen_9pfs_dataring *ring = NULL;
 
 	write_lock(&xen_9pfs_lock);
 	list_del(&priv->list);
 	write_unlock(&xen_9pfs_lock);
 
 	for (i = 0; i < priv->num_rings; i++) {
+		ring = priv->rings[i];
 		if (!priv->rings[i].intf)
 			break;
 		if (priv->rings[i].irq > 0)
 			unbind_from_irqhandler(priv->rings[i].irq, priv->dev);
+
+		cancel_work_sync(&ring->work);
+
 		if (priv->rings[i].data.in) {
 			for (j = 0;
 			     j < (1 << priv->rings[i].intf->ring_order);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
