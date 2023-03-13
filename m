Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0896B7EEB
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 18:11:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pblhO-0005Hc-5P;
	Mon, 13 Mar 2023 17:11:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zyytlz.wz@163.com>) id 1pblhN-0005HW-K3
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 17:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gp4+C4gCMjSOFnYU898NA74fjHaBuOlyPKxcR6f/MrM=; b=PzDy4jxJ/5OP2YObay75+8sAOf
 Y6WuOyLrTiWcPnz8gf2paNizcDyjN7EevhdQb0sYFL/mAKFygv5FJ21+Kad0zm3vVBDV22rHiB2Se
 CmJeDBNTUp32nmQlYcDN1Smx2VrGq4cCcFiihKKmvQLuGd5unGDUsGM/pT+hF6oVgK/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Gp4+C4gCMjSOFnYU898NA74fjHaBuOlyPKxcR6f/MrM=; b=T
 mT4AlaAjCWZl65eOYuUlMO9QNQNh1XQTt0V1AoUStGcXit0o3FMXb6INwkAtApDykHEXB0Cmwt/Am
 D2gjMQozTWQ9jvCuqdbkwNzQjaRO6p38n890gsDjwezaN+ajak624OcTDNTrCl8f3JXMdrScjgoMq
 WawVDKoCdyil04Mw=;
Received: from m12.mail.163.com ([123.126.96.234])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pblhK-0006pK-HN for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 17:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Gp4+C
 4gCMjSOFnYU898NA74fjHaBuOlyPKxcR6f/MrM=; b=Mwf+eTe2nN7fRcXTeJvog
 0A+1C9oC4RclkEh258y4fsai2vTmg/I3WbiEcIgKflUhdyJBWfePd2M+Nh8X83n5
 YUyXXDuMnkblAmkNrMN6VjIwbrxyAyLCws9eMUCp9mnP8V3A9R53dKnwnPobwIZp
 PnhnqQlFKpb4+70wZgarf0=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
 by smtp20 (Coremail) with SMTP id H91pCgAX2q4xVQ9knpkGHg--.37518S2;
 Tue, 14 Mar 2023 00:54:09 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: ericvh@gmail.com
Date: Tue, 14 Mar 2023 00:54:07 +0800
Message-Id: <20230313165407.3766584-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: H91pCgAX2q4xVQ9knpkGHg--.37518S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tF15Cw48JFy5Kr1kWF4DJwb_yoW8Xw1xpa
 nakFWrAFyUA3WjyFsYyas7G3WrCw4rGr1Iga12kw4fJr98Jry8XFZ5t34Yg345Ar4YqF1r
 Cw1UWFWDJFWDZw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zE6pBkUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/xtbBzhExU2I0XnvQXwAAsB
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.96.234 listed in list.dnswl.org]
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
X-Headers-End: 1pblhK-0006pK-HN
Subject: [V9fs-developer] [PATCH net v2] 9p/xen : Fix use after free bug in
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
v2:
- fix type error of ring found by kernel test robot
---
 net/9p/trans_xen.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index c64050e839ac..83764431c066 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -274,12 +274,17 @@ static const struct xenbus_device_id xen_9pfs_front_ids[] = {
 static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
 {
 	int i, j;
+	struct xen_9pfs_dataring *ring = NULL;
 
 	write_lock(&xen_9pfs_lock);
 	list_del(&priv->list);
 	write_unlock(&xen_9pfs_lock);
 
 	for (i = 0; i < priv->num_rings; i++) {
+		/*cancel work*/
+		ring = &priv->rings[i];
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
