Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C26411CFE
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 19:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I1XyWJYgW1pI9lhq8OW2cNOGE+c2u7Sn85XxVyXkNUo=; b=gzdPiTKmMpcm6dQZBjl6ez7ujf
	2nTe6+ugnf/Gd1emcU8V3hSVn+2mR1fkOAiF7faDWaTzXWxq3SAE5cE3mWz4zYcOXoqeGSyDB2y/2
	QzB9WpqE9gRalHOI45RqAgaIMgSlxyERBcaW8hBTMJynkLkHYSTOxd1jpiJthnr1gCjc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSMre-0004Bl-QD; Mon, 20 Sep 2021 17:13:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <2298f2588316a652c531bd849a6846167996f3ca@lizzy.crudebyte.com>)
 id 1mSMrd-0004BT-G8
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c43qkPKZ3owcWwHt3qMx8G3o1c4XciboiEemqoGFbCI=; b=aaq9gvH7P7JQMoQl9T8JtOskF
 gh2nENB60l3F/lmkLjhTq+nWL0H/O1QoI1feF65IddeVBoY7spO6wcgNVdmz0sYnT+MwjG0qOgAep
 +POkaC7i8cUW2MERHQ5tR2vbutbg5JFTsrFanWqah2mUu36MlIZDppU5bEe2fwPhOJg/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c43qkPKZ3owcWwHt3qMx8G3o1c4XciboiEemqoGFbCI=; b=Dfe3k41gsuwxfLxiSslqcuRH/w
 8zXVDsUoeIJkDYGQEUQCEurziUGiDLbgcMYSINVf0roD5Yhjhtz5Xtf0XuoLPnMMsPPPvjLiYbjmg
 X1ZlT5JqNsdq1SC9vAkN8LDSP7o9flxb1H9cgFClK4QZHmvL2QKU/8oKAv9+334R9BXE=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSMrb-00H8DU-FH
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=c43qkPKZ3owcWwHt3qMx8G3o1c4XciboiEemqoGFbCI=; b=EnCBi
 LDCnzVUr+fel9+8laob0INN8orT8rgphgF5j1CZqP2AI7oetiqFG004STxWN7CexNcf20Ab/Hhxol
 9sRtZV3dKgqliCZdthVQiG05zTrqXlCag4v3UOK7QQX8FwGB3VylKI4krgSeTq22qjXaU+vLN+UkV
 hKnhIa7ZZyVsyPlWxmp2g2Yx4VbfjoCXJKDTiKN0/O0g1oKFsFCso1Xxr28nXCKvYMuhHE3NP8Z2K
 dDrQ1JxzKNGvhyKamvu3rXifmf5vWxLP3d1lxCzIw+0Q5TXtaL+EtC7lsLf/tgYxv4f2hTjBvKudi
 l+7jY/A3AQvrpF/3++ne+t4aW9J3Q==;
Message-Id: <2298f2588316a652c531bd849a6846167996f3ca.1632156835.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
Date: Mon, 20 Sep 2021 18:43:53 +0200
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSMrb-00H8DU-FH
Subject: [V9fs-developer] [PATCH v2 3/7] 9p/trans_virtio: turn amount of sg
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
