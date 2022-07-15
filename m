Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 227265769D0
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:22:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCThw-0000ic-NE; Fri, 15 Jul 2022 22:22:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <006266b4ef857c8218b517b83db5835b4908ebe3@lizzy.crudebyte.com>)
 id 1oCThw-0000iW-01
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RZjBSUb81N+yJRTwiRNL5/W/pr19dZwDiM2ueBOpRVE=; b=P+enBWtLVJbhhELb6IQxGPg6Mx
 LFk6j9HjIYxgUJEEKvtRu3pffGINvQxdJUa/SzlSef1l+/LAzml64hRi1mBSluam11fJgIbDoWE3T
 M0RJXI+4liZUO6pcMje45fI7uAWlPhU29ITta6uc3pVzvjrehf2zqEVV3FbjagXznRf4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RZjBSUb81N+yJRTwiRNL5/W/pr19dZwDiM2ueBOpRVE=; b=HVRAH19QF1ydu07PT5/0Gh0Y40
 5AymRDJ+5IUpsUEUYlMVd6SusLdgKLBM4kICbnd1/83COYKIu0mlCj/5S74eIVdtvP40V5LJk+wg1
 HjRYBXytEmJ59lUbSbPzQHqaxPPUsuslFVXUC7/8gV/OtQkmELBn8Asq8eNu0i2GvFoI=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCThv-000WeL-4Z
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=RZjBSUb81N+yJRTwiRNL5/W/pr19dZwDiM2ueBOpRVE=; b=L/yyu
 D0A+4p87Zus6SXcq23d2tfpLD4mIu6FsarA91Xzi3wJwCS8oqxAkOvHsxkuqItYO6pdQx+eukfKH6
 Jw9pau/Hy5Dcyjh+MSE7XUdN2fz5YKZFrKgwqJqysxvupHKEiccj1Vl2DABzV0cwkuEIPH+gtmOe1
 wSzetu+b46C3jRzve4he/wJ1tqoeN7Nt41KzAinwaglqp5qB6f0mo2Cak5wR4WSUnIYo4yoZRfElB
 Xue5BZuGjjVgcWGmgkkiXfHCqwwOdmJ2036/tE6cKaezeW2+HzV+JHH9Nm4mAJ30ET8cj9dwrmbpk
 s3wvoU7jpiMswsU4l+4gVra3W0nNw==;
Message-Id: <006266b4ef857c8218b517b83db5835b4908ebe3.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:32:25 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Right now vq_sg_resize() used a lazy implementation following
 the all-or-nothing princible. So it either resized exactly to the requested
 new amount of sg lists, or it did not resize at all. The problem with this
 is if a user supplies a very large msize value, resize would simply fail
 and the user would stick to the default maximum msize supported by the virtio
 transport. 
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
X-Headers-End: 1oCThv-000WeL-4Z
Subject: [V9fs-developer] [PATCH v6 06/11] 9p/trans_virtio: resize sg lists
 to whatever is possible
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

Right now vq_sg_resize() used a lazy implementation following
the all-or-nothing princible. So it either resized exactly to
the requested new amount of sg lists, or it did not resize at
all.

The problem with this is if a user supplies a very large msize
value, resize would simply fail and the user would stick to
the default maximum msize supported by the virtio transport.

To resolve this potential issue, change vq_sg_resize() to resize
the passed sg list to whatever is possible on the machine.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---

As previously discussed in v5, this patch could probably be dropped.

 net/9p/trans_virtio.c | 76 +++++++++++++++++++++++++++++++++++--------
 1 file changed, 63 insertions(+), 13 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 921caa022570..52d00cb3c105 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -218,24 +218,67 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
  * amount of lists
  * @_vq_sg: scatter/gather lists to be resized
  * @nsgl: new amount of scatter/gather lists
+ *
+ * Old scatter/gather lists are retained. Only growing the size is supported.
+ * If the requested amount cannot be satisfied, then lists are increased to
+ * whatever is possible.
  */
 static int vq_sg_resize(struct virtqueue_sg **_vq_sg, unsigned int nsgl)
 {
 	struct virtqueue_sg *vq_sg;
+	unsigned int i;
+	size_t sz;
+	int ret = 0;
 
 	BUG_ON(!_vq_sg || !nsgl);
 	vq_sg = *_vq_sg;
+	if (nsgl > VIRTQUEUE_SG_NSGL_MAX)
+		nsgl = VIRTQUEUE_SG_NSGL_MAX;
 	if (vq_sg->nsgl == nsgl)
 		return 0;
+	if (vq_sg->nsgl > nsgl)
+		return -ENOTSUPP;
+
+	vq_sg = kzalloc(sizeof(struct virtqueue_sg) +
+			nsgl * sizeof(struct scatterlist *),
+			GFP_KERNEL);
 
-	/* lazy resize implementation for now */
-	vq_sg = vq_sg_alloc(nsgl);
 	if (!vq_sg)
 		return -ENOMEM;
 
+	/* copy over old scatter gather lists */
+	sz = sizeof(struct virtqueue_sg) +
+		(*_vq_sg)->nsgl * sizeof(struct scatterlist *);
+	memcpy(vq_sg, *_vq_sg, sz);
+
+	vq_sg->nsgl = nsgl;
+
+	for (i = (*_vq_sg)->nsgl; i < nsgl; ++i) {
+		vq_sg->sgl[i] = kmalloc_array(
+			SG_MAX_SINGLE_ALLOC, sizeof(struct scatterlist),
+			GFP_KERNEL
+		);
+		/*
+		 * handle failed allocation as soft error, we take whatever
+		 * we get
+		 */
+		if (!vq_sg->sgl[i]) {
+			ret = -ENOMEM;
+			vq_sg->nsgl = nsgl = i;
+			break;
+		}
+		sg_init_table(vq_sg->sgl[i], SG_MAX_SINGLE_ALLOC);
+		if (i) {
+			/* chain the lists */
+			sg_chain(vq_sg->sgl[i - 1], SG_MAX_SINGLE_ALLOC,
+				 vq_sg->sgl[i]);
+		}
+	}
+	sg_mark_end(&vq_sg->sgl[nsgl - 1][SG_MAX_SINGLE_ALLOC - 1]);
+
 	kfree(*_vq_sg);
 	*_vq_sg = vq_sg;
-	return 0;
+	return ret;
 }
 
 /**
@@ -860,16 +903,23 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
 			 * if resize fails, no big deal, then just continue with
 			 * whatever we got
 			 */
-			if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
-				/*
-				 * decrement 2 pages as both 9p request and 9p reply have
-				 * to fit into the virtio round-trip message
-				 */
-				client->trans_maxsize =
-					PAGE_SIZE *
-					clamp_t(int,
-						(nsgl * SG_USER_PAGES_PER_LIST) - 2,
-						0, VIRTIO_MAX_DESCRIPTORS - 2);
+			vq_sg_resize(&chan->vq_sg, nsgl);
+			/*
+			 * actual allocation size might be less than requested, so use
+			 * vq_sg->nsgl instead of nsgl, and decrement 2 pages as both
+			 * 9p request and 9p reply have to fit into the virtio
+			 * round-trip message
+			 */
+			client->trans_maxsize =
+				PAGE_SIZE *
+				clamp_t(int,
+					(chan->vq_sg->nsgl * SG_USER_PAGES_PER_LIST) - 2,
+					0, VIRTIO_MAX_DESCRIPTORS - 2);
+			if (nsgl > chan->vq_sg->nsgl) {
+				pr_info("limiting 'msize' to %d as only %d "
+					"of %zu SG lists could be allocated",
+					client->trans_maxsize,
+					chan->vq_sg->nsgl, nsgl);
 			}
 		}
 #endif /* CONFIG_ARCH_NO_SG_CHAIN */
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
