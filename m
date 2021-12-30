Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2521E481CDD
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Dec 2021 15:13:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n2wB7-0006PA-NK; Thu, 30 Dec 2021 14:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <92bbeadaf5c6a0615b970bd01d6f51c455d6d988@lizzy.crudebyte.com>)
 id 1n2wB6-0006P3-7B
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bdokaC3xBdXiPGVcGW4l+R/dzrRmqhrBfDvrmO2qQhE=; b=ZpYHnr0xkPH2Utw2HP9Vi3oZw
 sHU+OQanh4wPJkUPHlfzxY1MP1/7izFr6dv8NqPKqyEnLuBxKPfOuZDaGpItxItTLM4wXGbZ41S2A
 RS8N9RcEKhlOPz9c8q5auFHvLP51Z1Ik2+fjq/YGWtOipOdrB5WKMUFgbxpI9zY5XWRWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bdokaC3xBdXiPGVcGW4l+R/dzrRmqhrBfDvrmO2qQhE=; b=UP/fFrwu8Ba3USMIsizx4/wXLt
 v1T5564BF9CD3Wzc1cUzvFOc56pPsik4rVVMj+TL9jX+T9G7jB+NZPHMkV7NRuEM3iUwUOFRV9Aej
 Qnz4jq3oh55t7qx6JxiE+4winyau9X0kmM++IpPbDSbqf7MSTYP3gLkmw+zjIQrUUS/8=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n2wB2-00DrKR-0b
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=bdokaC3xBdXiPGVcGW4l+R/dzrRmqhrBfDvrmO2qQhE=; b=IQYKQ
 LRfXvc+RGAFpseYHoK9IeYTuFF2M02Cm6iu4dHZ4HrDXp42O1fyRmPNzP7XrWKmupHfrPpRlhVxf+
 XKjurLAWcpAAVd1W7YxnRrAn8NmbBy2qBqBuugeyI5QiSjru+kTc/Uos+8rI/V8MlI07pLuWXIrvB
 YE4AyuK4u+cjDnz/f/XNyE4dnZAt3BZ+G3Dk8yfz1QjdNo4tGGXORZjezWNvGrjg7ey13sY+THO8Y
 +mpR+obQnLrNyreh+ed3raM1R3IVOIG5rK88Oz8AZo4xACRqDJd1NZDGh/RtJGpU1mQNz89F4zV4j
 IuHrZIp3q/2q9QvjyWyw7MPRQoKKw==;
Message-Id: <92bbeadaf5c6a0615b970bd01d6f51c455d6d988.1640870037.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1640870037.git.linux_oss@crudebyte.com>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
Date: Thu, 30 Dec 2021 14:23:18 +0100
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The virtio transport supports by default a 9p 'msize' of up
 to approximately 500 kB. This patch adds support for larger 'msize' values
 by resizing the amount of scatter/gather lists if required. Signed-off-by:
 Christian Schoenebeck <linux_oss@crudebyte.com> --- net/9p/trans_virtio.c
 | 61 +++++++++++++++++++++++++++++++++++++++++++ 1 file changed,
 61 insertions(+)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n2wB2-00DrKR-0b
Subject: [V9fs-developer] [PATCH v4 06/12] 9p/trans_virtio: support larger
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
 Nikolay Kichukov <nikolay@oldum.net>, Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The virtio transport supports by default a 9p 'msize' of up to
approximately 500 kB. This patch adds support for larger 'msize'
values by resizing the amount of scatter/gather lists if required.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/trans_virtio.c | 61 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 656562a66f06..a02050c9742a 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -203,6 +203,31 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
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
@@ -774,6 +799,10 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
 	struct virtio_chan *chan;
 	int ret = -ENOENT;
 	int found = 0;
+#if !defined(CONFIG_ARCH_NO_SG_CHAIN)
+	size_t npages;
+	size_t nsgl;
+#endif
 
 	if (devname == NULL)
 		return -EINVAL;
@@ -796,6 +825,38 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
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
+		if (npages > chan->p9_max_pages) {
+			npages = chan->p9_max_pages;
+			pr_info("limiting 'msize' as it would exceed the max. "
+				"of %lu pages allowed on this system\n",
+				chan->p9_max_pages);
+		}
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
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
