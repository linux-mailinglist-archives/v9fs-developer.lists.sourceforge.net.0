Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 590A2411D0A
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 19:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eQDXJFGiSFq0/D391GjGPO8yc+jn4edE2JmUTUp5Dec=; b=PNVA+YqCsKg4zSeMmSXofOO3Sc
	oqXPiItWFUAALOJqBCdd4yPXe8KqNxpo0ndaUU/VUchJCfTWZGXrPnu2iFZQ5UIV6AJ7zdyxPYxgH
	ZVU29DZOklazf5hsvIFMTbTGyvy7zWTpFX7aHN8ydHrooa+0bdXzXp3+Y7uFOp77cl9Y=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSMrz-0003b7-4d; Mon, 20 Sep 2021 17:14:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <f31e80bc67774d08f8d3bfb7ca0a970eeb369ca5@lizzy.crudebyte.com>)
 id 1mSMrx-0003av-Ch
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AuJ5hr0gnWIg/NdbJCQWTWfTcbwFQxBzQzHJmsLKNkU=; b=Vzc/gMxepPa+Jt28djTCtLH0o
 4E0apc+BVYNx74Bx69Tyay5sfBNMchB3ukkg6JxvNxnm+BNOQqz0acQpT4dNqTY6vGPKZS6hcnOFF
 wSTJfMZTh7K5kwQ2N5Vian+vLVVRmsmPxlQAkSoAHpBMrWxG6OhP0InmtsRj1UeS4xqFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AuJ5hr0gnWIg/NdbJCQWTWfTcbwFQxBzQzHJmsLKNkU=; b=HbumyM5OZUy3vrnWkdCPSppdEq
 Ca6ywrYFeBPpRUmwfVULojFIfs71yvI5YE1lcLPDRdBn71q/qyOL0UXa8Ztlb6PJCi92zIaKvwqVy
 P9EuMx+KPUuAjvOmALnVQzH0Z8nCcFpWlN0JR0juAa5KdubTPE5B6qDHXnJ4mWHITnsc=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSMrw-0002Ul-Qr
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=AuJ5hr0gnWIg/NdbJCQWTWfTcbwFQxBzQzHJmsLKNkU=; b=Gipxv
 WHjXGjCxE1DMtU8p4Fqc5T5PYUKCcKy99SantXEC9sp53FCzxaJZI0kvDfSJ+yv6jylRLaKTsSRGy
 ArDr2Ac5qHNnTIWdSgcU5yPCZAUvl4qCTiCu0HUlRTaTxogwa0PaOdlQgXguCTEmPVL5KqN87qqiB
 R0qcSqo0Bli2QypgLV9z08WP9oNHij+fYof8mWVZtGUfBTx5vZEl+eNbiNIlh8V/hGASGCwZYk2Wg
 FO8E7LjTazbuvqT7/wiaFPG+0hy7LOGwQWVrEa37aipqX7Nzri2+JMv6YbUe+QENy9LFlBnEUG8Ui
 ZeCSoVQ1gIHQ6vTZY6JTGHQ/uHecg==;
Message-Id: <f31e80bc67774d08f8d3bfb7ca0a970eeb369ca5.1632156835.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
Date: Mon, 20 Sep 2021 18:44:13 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The virtio transport supports by default a 9p 'msize' of up
 to approximately 500 kB. This patch adds support for larger 'msize' values
 by resizing the amount of scatter/gather lists if required. Signed-off-by:
 Christian Schoenebeck <linux_oss@crudebyte.com> --- net/9p/trans_virtio.c
 | 57 +++++++++++++++++++++++++++++++++++++++++++ 1 file changed,
 57 insertions(+)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSMrw-0002Ul-Qr
Subject: [V9fs-developer] [PATCH v2 6/7] 9p/trans_virtio: support larger
 msize values
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The virtio transport supports by default a 9p 'msize' of up to
approximately 500 kB. This patch adds support for larger 'msize'
values by resizing the amount of scatter/gather lists if required.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/trans_virtio.c | 57 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 0db8de84bd51..4cb75f45aa15 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -200,6 +200,31 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
 	return vq_sg;
 }
 
+/**
+ * vq_sg_resize - resize passed virtqueue scatter/gather lists to the passed
+ * amount of lists
+ * @_vq_sg: scatter/gather lists to be resized
+ * @nsgl: new amount of scatter/gather lists
+ */
+static int vq_sg_resize(struct virtqueue_sg **_vq_sg, unsigned int nsgl)
+{
+	struct virtqueue_sg *vq_sg;
+
+	BUG_ON(!_vq_sg || !nsgl);
+	vq_sg = *_vq_sg;
+	if (vq_sg->nsgl == nsgl)
+		return 0;
+
+	/* lazy resize implementation for now */
+	vq_sg = vq_sg_alloc(nsgl);
+	if (!vq_sg)
+		return -ENOMEM;
+
+	kfree(*_vq_sg);
+	*_vq_sg = vq_sg;
+	return 0;
+}
+
 /**
  * p9_virtio_close - reclaim resources of a channel
  * @client: client instance
@@ -771,6 +796,10 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
 	struct virtio_chan *chan;
 	int ret = -ENOENT;
 	int found = 0;
+#if !defined(CONFIG_ARCH_NO_SG_CHAIN)
+	size_t npages;
+	size_t nsgl;
+#endif
 
 	if (devname == NULL)
 		return -EINVAL;
@@ -793,6 +822,34 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
 		return ret;
 	}
 
+	/*
+	 * if user supplied an 'msize' option that's larger than what this
+	 * transport supports by default, then try to allocate more sg lists
+	 */
+	if (client->msize > client->trans_maxsize) {
+#ifdef CONFIG_ARCH_NO_SG_CHAIN
+		pr_info("limiting 'msize' to %d because architecture does not "
+			"support chained scatter gather lists\n",
+			client->trans_maxsize);
+#else
+		npages = DIV_ROUND_UP(client->msize, PAGE_SIZE);
+		if (npages > chan->p9_max_pages)
+			npages = chan->p9_max_pages;
+		nsgl = DIV_ROUND_UP(npages, SG_USER_PAGES_PER_LIST);
+		if (nsgl > chan->vq_sg->nsgl) {
+			/*
+			 * if resize fails, no big deal, then just
+			 * continue with default msize instead
+			 */
+			if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
+				client->trans_maxsize =
+					PAGE_SIZE *
+					((nsgl * SG_USER_PAGES_PER_LIST) - 3);
+			}
+		}
+#endif /* CONFIG_ARCH_NO_SG_CHAIN */
+	}
+
 	client->trans = (void *)chan;
 	client->status = Connected;
 	chan->client = client;
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
