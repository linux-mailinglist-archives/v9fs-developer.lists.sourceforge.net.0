Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C4A5769CF
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:22:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCThp-00036J-QV; Fri, 15 Jul 2022 22:22:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ebca00c2659755411269303881aad5da8590eefe@lizzy.crudebyte.com>)
 id 1oCTho-00036D-IH
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=03PxLEg7NiaMvhSBPzBFP/XCwo9SFsyuKqJNcoKWY/4=; b=PHumvcH+o0vm+AjpkZurfbSRdP
 VvuuN49s2dIPL2pOj9bAo+3ncLit8oCe0ayEkXvm12CGD/XBtv+ufHvHDpSMnaz1YBfa+NvYkM6zx
 i7nRdTDadveyp+aUG86SJiqlNsjAtN2JRlbxpSNhjnwKGoFgLQ+VHfpu9rjV7pWpDLnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=03PxLEg7NiaMvhSBPzBFP/XCwo9SFsyuKqJNcoKWY/4=; b=B0OlA2E16QFUuOPTgPJbdZ7eDi
 iyr9THLRSs1hOW3072AtHtcTBjTzaM37sz8ApIFZZ8rADeIJn8WkDAEQmaP6bpTAtd1nGctLfGHNC
 4U6CBGgWAYlA3RK55mq3gYZlSj66wpub6rcNwVh1+4eRxRhhOgFmqHnHc8bgg5WDh+yw=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTho-0000mA-FL
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=03PxLEg7NiaMvhSBPzBFP/XCwo9SFsyuKqJNcoKWY/4=; b=FNoOh
 ADE4Hg8xvSWs3nC3arwY3n/D4KpC24+zbudVWzCQzQ9Jt44t0D4LfPFv3WNSlveHgFc6/KI89jp4e
 LC0pEv1M5mVVRvKv+N7xBo9IjLpOl+pyG+ci+ZFb00tI3deorUKHOt6ymu9Zazq4QzWQsBXP3PhGF
 2FTl5gNBAbd+9kOPgN6LEW+UHH9eTFypF8WmTbSoX4MxMbEAU7uZO4++cR3Fb04edNhHoWl3J/WaW
 qzP1rvKlrtZ2sASOR7SA6QFTOU6CcyuZMfLSKmYNzTLM2CprP6GhQJR9/AXSBVavTNCZgOZ7RWKrJ
 xLhnwIfB3xkgI3w00xTLP83GSiuGw==;
Message-Id: <ebca00c2659755411269303881aad5da8590eefe.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:32:22 +0200
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
 by resizing the amount of scatter/gather lists if required. To be more precise,
 for the moment this patch increases the 'msize' limit for the virtio transport
 to slightly below 4 MB, virtio transport actually supports much more (tested
 successfully with an exp [...] 
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
X-Headers-End: 1oCTho-0000mA-FL
Subject: [V9fs-developer] [PATCH v6 05/11] 9p/trans_virtio: support larger
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The virtio transport supports by default a 9p 'msize' of up to
approximately 500 kB. This patch adds support for larger 'msize'
values by resizing the amount of scatter/gather lists if required.

To be more precise, for the moment this patch increases the 'msize'
limit for the virtio transport to slightly below 4 MB, virtio
transport actually supports much more (tested successfully with an
experimental QEMU version and some dirty 9p Linux client hacks up
to msize=128MB), but client still uses linear buffers, which in
turn are limited to KMALLOC_MAX_SIZE (4M).

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---

I am not sure if it is safe the way SG lists are resized here. I "think"
Dominique said before there should be no concurrency here, but probably
deserves a revisit.

 net/9p/trans_virtio.c | 79 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 5ac533f83322..921caa022570 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -36,6 +36,16 @@
 #include <linux/virtio_9p.h>
 #include "trans_common.h"
 
+/*
+ * Maximum amount of virtio descriptors allowed per virtio round-trip
+ * message.
+ *
+ * This effectively limits msize to (slightly below) 4M, virtio transport
+ * actually supports much more, but client still uses linear buffers, which
+ * in turn are limited to KMALLOC_MAX_SIZE (4M).
+ */
+#define VIRTIO_MAX_DESCRIPTORS 1024
+
 /**
  * struct virtqueue_sg - (chained) scatter gather lists for virtqueue data
  * transmission
@@ -203,6 +213,31 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
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
@@ -774,6 +809,10 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
 	struct virtio_chan *chan;
 	int ret = -ENOENT;
 	int found = 0;
+#if !defined(CONFIG_ARCH_NO_SG_CHAIN)
+	size_t npages;
+	size_t nsgl;
+#endif
 
 	if (devname == NULL)
 		return -EINVAL;
@@ -796,6 +835,46 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
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
+		if (npages > VIRTIO_MAX_DESCRIPTORS)
+			npages = VIRTIO_MAX_DESCRIPTORS;
+		if (npages > chan->p9_max_pages) {
+			npages = chan->p9_max_pages;
+			pr_info("limiting 'msize' as it would exceed the max. "
+				"of %lu pages allowed on this system\n",
+				chan->p9_max_pages);
+		}
+		nsgl = DIV_ROUND_UP(npages, SG_USER_PAGES_PER_LIST);
+		if (nsgl > chan->vq_sg->nsgl) {
+			/*
+			 * if resize fails, no big deal, then just continue with
+			 * whatever we got
+			 */
+			if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
+				/*
+				 * decrement 2 pages as both 9p request and 9p reply have
+				 * to fit into the virtio round-trip message
+				 */
+				client->trans_maxsize =
+					PAGE_SIZE *
+					clamp_t(int,
+						(nsgl * SG_USER_PAGES_PER_LIST) - 2,
+						0, VIRTIO_MAX_DESCRIPTORS - 2);
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
