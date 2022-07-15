Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D445769CC
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:22:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCThb-0000h6-J7; Fri, 15 Jul 2022 22:22:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <692c3018766fa2fbb8d2654abcb4e43790364a2c@lizzy.crudebyte.com>)
 id 1oCThY-0000gz-FI
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xq+qB+6LSBSIw4B37E9JgHNJIm1VN9v6g48FmouXfvs=; b=T6J6COmS6WrOntXe3mR5W6zh+m
 q2QF+t0mHmXAWJSt+PdU7QFFm0rNotBKO2D9hgtB3Zi3PBwuq2293zpdoqdyCqKpEPNvhkTYI4xYg
 /P0ak0uJzaDCeyqfa7PR5p8eXv/qlxVThxeM7RkZCn1i4gcddkY63lS+p7XSU8T4WHrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xq+qB+6LSBSIw4B37E9JgHNJIm1VN9v6g48FmouXfvs=; b=UcALE2NCZUlgWUqTnDQ5FLZcD2
 /IYHy8QrbkG9zWqfWO+s7bVpzILG8B2lRcoNWhd0v5cJqDTpykq4XUkDPvqOFpES6zSZvdqoT5yVV
 1ahm0J/J7A8rJb7VTYzcFvOKI4ebKagQeWbKlLqLsCTlP7zk/CjbdlA2fCEOnxLa37A0=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCThS-000WdH-Pf
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=xq+qB+6LSBSIw4B37E9JgHNJIm1VN9v6g48FmouXfvs=; b=PfR2R
 Mgcvo0wVAM8pQYMtGKaxu3eb+Anpl/ljkBpGDGBxS1YrgjsrtTWn+FCCeRt21TqMJGsdXKg+JvIyG
 wqK5pxbn7Dp6aSYvEIO9uedfa0+UZDjSa1m+HF/sh2hlCkA6WYUsjoVtwI3x1fR3xeDdPOMYGuazK
 ffLEMU0ebR2kqxn3QX5fZwR9WgWrS2XMh/uOkWUQSfS8HUB9iudGaUgAVyavXsA9jZOczO6TgLlPW
 Iqmc5g5GB1G3hlov3B0e33mH7MeBedxqNHKvYuYjjhvfvZRz7VkC9Dp+WZPjfsG7YvPL4e9BCQiAR
 hY3SDLjGb2Uqz7vyZ+BbV3HXqrCFQ==;
Message-Id: <692c3018766fa2fbb8d2654abcb4e43790364a2c.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:32:12 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The scatter gather list in struct virtio_chan currently
 resides
 as compile-time constant size array directly within the contiguous struct
 virtio_chan's memory space. Separate memory space and allocation of the
 scatter
 gather list from memory space and allocation of struct virtio_chan. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oCThS-000WdH-Pf
Subject: [V9fs-developer] [PATCH v6 01/11] 9p/trans_virtio: separate
 allocation of scatter gather list
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The scatter gather list in struct virtio_chan currently
resides as compile-time constant size array directly within the
contiguous struct virtio_chan's memory space.

Separate memory space and allocation of the scatter gather list
from memory space and allocation of struct virtio_chan.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/trans_virtio.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index b24a4fb0f0a2..2693e618080c 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -77,7 +77,7 @@ struct virtio_chan {
 	 */
 	unsigned long p9_max_pages;
 	/* Scatterlist: can be too big for stack. */
-	struct scatterlist sg[VIRTQUEUE_NUM];
+	struct scatterlist *sg;
 	/**
 	 * @tag: name to identify a mount null terminated
 	 */
@@ -574,6 +574,14 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 		goto fail;
 	}
 
+	chan->sg = kmalloc_array(VIRTQUEUE_NUM,
+				 sizeof(struct scatterlist), GFP_KERNEL);
+	if (!chan->sg) {
+		pr_err("Failed to allocate virtio 9P channel\n");
+		err = -ENOMEM;
+		goto out_free_chan_shallow;
+	}
+
 	chan->vdev = vdev;
 
 	/* We expect one virtqueue, for requests. */
@@ -635,6 +643,8 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 out_free_vq:
 	vdev->config->del_vqs(vdev);
 out_free_chan:
+	kfree(chan->sg);
+out_free_chan_shallow:
 	kfree(chan);
 fail:
 	return err;
@@ -728,6 +738,7 @@ static void p9_virtio_remove(struct virtio_device *vdev)
 	kobject_uevent(&(vdev->dev.kobj), KOBJ_CHANGE);
 	kfree(chan->tag);
 	kfree(chan->vc_wq);
+	kfree(chan->sg);
 	kfree(chan);
 
 }
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
