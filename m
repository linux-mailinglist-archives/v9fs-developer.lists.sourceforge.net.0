Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A82B9414E51
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Sep 2021 18:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I1XyWJYgW1pI9lhq8OW2cNOGE+c2u7Sn85XxVyXkNUo=; b=Jd2U0TNTZSsHzD5/fUHuopNb4S
	aTQ7dei6l/c2dAUL011LqCxat8E5gyZqp0rNbDjo8UEoyWKVPYN0kx86Vr+qW01WhXaT2aHfSjnvj
	P18PYHXJDosVrWIiDvaL2BPa3cyJTxdwz2Y96i8wwZ3KGgNFF+VcJENjMrIy4VrQ5e6Y=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mT5Nu-0007u7-SG; Wed, 22 Sep 2021 16:46:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <61d32571f72d56de68c317c5be998c9e641c8acf@lizzy.crudebyte.com>)
 id 1mT5Nt-0007u1-Fk
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c43qkPKZ3owcWwHt3qMx8G3o1c4XciboiEemqoGFbCI=; b=iWO1mlc7rGMbQJIk5bbnK6vlU
 JUNB6uopEdSD8RAkZnbh6UtwooMjPGTql8xJ/JwWWTFmi5EKhWk3i5OepaQst0n+95QHmK8dpEyVr
 VS5bDl15SqeUaEi5JsurTP2K/i/B4j9fC1NtJGVMqX9vgHwRuVxzIXJDN7axnulilsghQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c43qkPKZ3owcWwHt3qMx8G3o1c4XciboiEemqoGFbCI=; b=WJ73pOCdNnjUZg1ndig2HjbVyv
 u+QMlEyN3cKiJFYLjCqc/7NXlPuKXEdRZppHXp10tVk+FOKppqFp/Su1fmy8DrRF/+SVLTaUm97aP
 IPEuQ0PjtkpYLNQYU8s10k6m0ctVGbQTwh5abqU/oqHx7E6mBmLOVmZtk12WOyOeCgRc=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mT5Ns-001q2Q-Ug
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=c43qkPKZ3owcWwHt3qMx8G3o1c4XciboiEemqoGFbCI=; b=AjxBR
 7ffE8IiDCOe+kqeCNnk5ipXxz0AV5Z3vhf6McQquZPPh6WGSOheX434sCEng/3U2v/+PbpkCrshPp
 Nq/Zulm0XBWqWmJnSPdhnpdgHR86Ad01qFyxAZ3WWJuR3XVNtUelc0oTr12XM0OVFVpxshuRuK0OJ
 cm24hQDCf4X3MzU+w5a8BinPsMXmk3sN4IHzgetm8pmzB9dRod4SaCqZcC6GYveCXJyae/m8kt8hr
 NaPUu6GS3ancMGRTUquGh5az1UqroBiKoBOs8PnpKl+GcdryyIJec4seKyKyb+uD9JSF21QfarC7m
 BY07FPN91cAcG+BVRaZgRjD7tZDQg==;
Message-Id: <61d32571f72d56de68c317c5be998c9e641c8acf.1632327421.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632327421.git.linux_oss@crudebyte.com>
References: <cover.1632327421.git.linux_oss@crudebyte.com>
Date: Wed, 22 Sep 2021 18:00:26 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The size of scatter/gather lists used by the virtio transport
 is currently hard coded. Refactor this to using a runtime variable.
 Signed-off-by:
 Christian Schoenebeck <linux_oss@crudebyte.com> --- net/9p/trans_virtio.c
 | 23 +++++++++++++ 1 file changed, 13 insertions(+), 10 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mT5Ns-001q2Q-Ug
Subject: [V9fs-developer] [PATCH v3 3/7] 9p/trans_virtio: turn amount of sg
 lists into runtime info
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

The size of scatter/gather lists used by the virtio transport is
currently hard coded. Refactor this to using a runtime variable.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/trans_virtio.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 1dbe2e921bb8..3347d35a5e6e 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -36,7 +36,7 @@
 #include <linux/virtio_9p.h>
 #include "trans_common.h"
 
-#define VIRTQUEUE_NUM	128
+#define VIRTQUEUE_DEFAULT_NUM	128
 
 /* a single mutex to manage channel initialization and attachment */
 static DEFINE_MUTEX(virtio_9p_lock);
@@ -54,6 +54,7 @@ static atomic_t vp_pinned = ATOMIC_INIT(0);
  * @vc_wq: wait queue for waiting for thing to be added to ring buf
  * @p9_max_pages: maximum number of pinned pages
  * @sg: scatter gather list which is used to pack a request (protected?)
+ * @sg_n: amount of elements in sg array
  * @chan_list: linked list of channels
  *
  * We keep all per-channel information in a structure.
@@ -78,6 +79,7 @@ struct virtio_chan {
 	unsigned long p9_max_pages;
 	/* Scatterlist: can be too big for stack. */
 	struct scatterlist *sg;
+	size_t sg_n;
 	/**
 	 * @tag: name to identify a mount null terminated
 	 */
@@ -270,12 +272,12 @@ p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
 	out_sgs = in_sgs = 0;
 	/* Handle out VirtIO ring buffers */
 	out = pack_sg_list(chan->sg, 0,
-			   VIRTQUEUE_NUM, req->tc.sdata, req->tc.size);
+			   chan->sg_n, req->tc.sdata, req->tc.size);
 	if (out)
 		sgs[out_sgs++] = chan->sg;
 
 	in = pack_sg_list(chan->sg, out,
-			  VIRTQUEUE_NUM, req->rc.sdata, req->rc.capacity);
+			  chan->sg_n, req->rc.sdata, req->rc.capacity);
 	if (in)
 		sgs[out_sgs + in_sgs++] = chan->sg + out;
 
@@ -447,14 +449,14 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 
 	/* out data */
 	out = pack_sg_list(chan->sg, 0,
-			   VIRTQUEUE_NUM, req->tc.sdata, req->tc.size);
+			   chan->sg_n, req->tc.sdata, req->tc.size);
 
 	if (out)
 		sgs[out_sgs++] = chan->sg;
 
 	if (out_pages) {
 		sgs[out_sgs++] = chan->sg + out;
-		out += pack_sg_list_p(chan->sg, out, VIRTQUEUE_NUM,
+		out += pack_sg_list_p(chan->sg, out, chan->sg_n,
 				      out_pages, out_nr_pages, offs, outlen);
 	}
 
@@ -466,13 +468,13 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	 * allocated memory and payload onto the user buffer.
 	 */
 	in = pack_sg_list(chan->sg, out,
-			  VIRTQUEUE_NUM, req->rc.sdata, in_hdr_len);
+			  chan->sg_n, req->rc.sdata, in_hdr_len);
 	if (in)
 		sgs[out_sgs + in_sgs++] = chan->sg + out;
 
 	if (in_pages) {
 		sgs[out_sgs + in_sgs++] = chan->sg + out + in;
-		in += pack_sg_list_p(chan->sg, out + in, VIRTQUEUE_NUM,
+		in += pack_sg_list_p(chan->sg, out + in, chan->sg_n,
 				     in_pages, in_nr_pages, offs, inlen);
 	}
 
@@ -574,13 +576,14 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 		goto fail;
 	}
 
-	chan->sg = kmalloc_array(VIRTQUEUE_NUM,
+	chan->sg = kmalloc_array(VIRTQUEUE_DEFAULT_NUM,
 				 sizeof(struct scatterlist), GFP_KERNEL);
 	if (!chan->sg) {
 		pr_err("Failed to allocate virtio 9P channel\n");
 		err = -ENOMEM;
 		goto out_free_chan_shallow;
 	}
+	chan->sg_n = VIRTQUEUE_DEFAULT_NUM;
 
 	chan->vdev = vdev;
 
@@ -593,7 +596,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 	chan->vq->vdev->priv = chan;
 	spin_lock_init(&chan->lock);
 
-	sg_init_table(chan->sg, VIRTQUEUE_NUM);
+	sg_init_table(chan->sg, chan->sg_n);
 
 	chan->inuse = false;
 	if (virtio_has_feature(vdev, VIRTIO_9P_MOUNT_TAG)) {
@@ -777,7 +780,7 @@ static struct p9_trans_module p9_virtio_trans = {
 	 * that are not at page boundary, that can result in an extra
 	 * page in zero copy.
 	 */
-	.maxsize = PAGE_SIZE * (VIRTQUEUE_NUM - 3),
+	.maxsize = PAGE_SIZE * (VIRTQUEUE_DEFAULT_NUM - 3),
 	.def = 1,
 	.owner = THIS_MODULE,
 };
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
