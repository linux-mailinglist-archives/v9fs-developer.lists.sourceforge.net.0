Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6D6481CD5
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Dec 2021 15:12:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n2wAg-0000b2-SV; Thu, 30 Dec 2021 14:12:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <103e92cc446c58d459c034973481d2f763a7006e@lizzy.crudebyte.com>)
 id 1n2wAf-0000am-0b
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WP3n7tpB+D025yF74slHQQEWSBQcJ+0mlSqy58dljRg=; b=UNN3Q1fVloG1Iq7GCDCbRELV6
 b9gEOHM//z65NC6/k5STLI3mEzNi7YBG/+5sblJPhOxEBIijIMCtGhhxqujFkYX1dJxcnS7tFn4Yu
 Vyc7y7AbV/HdsOg3+Go+6dbfqOuGfPVRk7HymTqu6DkVfJ7JXxkuB3etd37ky3ze+H73w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WP3n7tpB+D025yF74slHQQEWSBQcJ+0mlSqy58dljRg=; b=mN6E/NBcUmg75nUX1dlo9Eha48
 WtW3Bfe0t7yj9wlEoMFv4RRu4FPp6k6SnRsaYvqX2j2F3AXMgrgWFhGtrlXNC+Ojlly/IZS6U8A49
 ICNNZ1fpyzvR5NYTaC9CRuqMW2bq2TlmYQ5yfa5aZdrWL0fSGixwNlp7qDLaFMK3R6VE=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n2wAe-00028A-Ux
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:12:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=WP3n7tpB+D025yF74slHQQEWSBQcJ+0mlSqy58dljRg=; b=mj+An
 VdLfCm7I8hkOEG8OaVBcxxclOtqULbLWn2iSvVIeFLqAJzH+K4L6Vcii703ZyKiHJgOu7cDxRq9VS
 5h4PIhoQq8+oiGBYIIhZnEpgQ9r4o5mUHIPXN8jSweWxz9eGuLB0CGeDnNdg5843g7LHn5wcD7/hf
 zEF2IunkwlavqyqpY0It3N83g2NBRjMoFBVolaiMa61Qw7g83J7tp3yPlcuDpqIE56Gh01Vf74QXh
 KUEJYBPL6F6FARJB5lJfzzwuGTmoVQCrHgomJSD1DeAle5yL4JTCxOUPvpQYA0OUD+S1ArNLPW/1V
 1vEDOpeXWqoXGJOmvyxMVqNq5uiuw==;
Message-Id: <103e92cc446c58d459c034973481d2f763a7006e.1640870037.git.linux_oss@crudebyte.com>
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
 Content preview:  The amount of elements in a scatter/gather list is limited
 to approximately 128 elements. To allow going beyond that limit with
 subsequent
 patches, pave the way by turning the one- dimensional sg list [...] 
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
X-Headers-End: 1n2wAe-00028A-Ux
Subject: [V9fs-developer] [PATCH v4 04/12] 9p/trans_virtio: introduce struct
 virtqueue_sg
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

The amount of elements in a scatter/gather list is limited to
approximately 128 elements. To allow going beyond that limit
with subsequent patches, pave the way by turning the one-
dimensional sg list array into a two-dimensional array, i.e:

  sg[128]

becomes

  sgl[nsgl][SG_MAX_SINGLE_ALLOC]

As the value of 'nsgl' is exactly (still) 1 in this commit
and the compile-time (compiler and architecture dependent)
value of 'SG_MAX_SINGLE_ALLOC' equals approximately the
previous hard coded 128 elements, this commit is therefore
more of a preparatory refactoring then actual behaviour
change.

A custom struct virtqueue_sg is defined instead of using
shared API struct sg_table, because the latter would not
allow to resize the table after allocation. sg_append_table
API OTOH would not fit either, because it requires a list
of pages beforehand upon allocation. And both APIs only
support all-or-nothing allocation.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/trans_virtio.c | 193 ++++++++++++++++++++++++++++++++----------
 1 file changed, 147 insertions(+), 46 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index d063c69b85b7..656562a66f06 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -36,7 +36,31 @@
 #include <linux/virtio_9p.h>
 #include "trans_common.h"
 
-#define VIRTQUEUE_DEFAULT_NUM	128
+/**
+ * struct virtqueue_sg - (chained) scatter gather lists for virtqueue data
+ * transmission
+ * @nsgl: amount of elements (in first dimension) of array field @sgl
+ * @sgl: two-dimensional array, i.e. sgl[nsgl][SG_MAX_SINGLE_ALLOC]
+ */
+struct virtqueue_sg {
+	unsigned int nsgl;
+	struct scatterlist *sgl[];
+};
+
+/*
+ * Default value for field nsgl in struct virtqueue_sg, which defines the
+ * initial virtio data transmission capacity when this virtio transport is
+ * probed.
+ */
+#define VIRTQUEUE_SG_NSGL_DEFAULT 1
+
+/* maximum value for field nsgl in struct virtqueue_sg */
+#define VIRTQUEUE_SG_NSGL_MAX						\
+	((PAGE_SIZE - sizeof(struct virtqueue_sg)) /			\
+	sizeof(struct scatterlist *))					\
+
+/* last entry per sg list is used for chaining (pointer to next list) */
+#define SG_USER_PAGES_PER_LIST	(SG_MAX_SINGLE_ALLOC - 1)
 
 /* a single mutex to manage channel initialization and attachment */
 static DEFINE_MUTEX(virtio_9p_lock);
@@ -53,8 +77,7 @@ static atomic_t vp_pinned = ATOMIC_INIT(0);
  * @ring_bufs_avail: flag to indicate there is some available in the ring buf
  * @vc_wq: wait queue for waiting for thing to be added to ring buf
  * @p9_max_pages: maximum number of pinned pages
- * @sg: scatter gather list which is used to pack a request (protected?)
- * @sg_n: amount of elements in sg array
+ * @vq_sg: table of scatter gather lists, which are used to pack a request
  * @chan_list: linked list of channels
  *
  * We keep all per-channel information in a structure.
@@ -77,9 +100,7 @@ struct virtio_chan {
 	 * will be placing it in each channel.
 	 */
 	unsigned long p9_max_pages;
-	/* Scatterlist: can be too big for stack. */
-	struct scatterlist *sg;
-	size_t sg_n;
+	struct virtqueue_sg *vq_sg;
 	/**
 	 * @tag: name to identify a mount null terminated
 	 */
@@ -96,6 +117,92 @@ static unsigned int rest_of_page(void *data)
 	return PAGE_SIZE - offset_in_page(data);
 }
 
+/**
+ * vq_sg_page - returns user page for given page index
+ * @vq_sg: scatter gather lists used by this transport
+ * @page: user page index across all scatter gather lists
+ */
+static struct scatterlist *vq_sg_page(struct virtqueue_sg *vq_sg, size_t page)
+{
+	unsigned int node = page / SG_USER_PAGES_PER_LIST;
+	unsigned int leaf = page % SG_USER_PAGES_PER_LIST;
+	BUG_ON(node >= VIRTQUEUE_SG_NSGL_MAX);
+	return &vq_sg->sgl[node][leaf];
+}
+
+/**
+ * vq_sg_npages - returns total number of individual user pages in passed
+ * scatter gather lists
+ * @vq_sg: scatter gather lists to be counted
+ */
+static size_t vq_sg_npages(struct virtqueue_sg *vq_sg)
+{
+	return vq_sg->nsgl * SG_USER_PAGES_PER_LIST;
+}
+
+/**
+ * vq_sg_free - free all memory previously allocated for @vq_sg
+ * @vq_sg: scatter gather lists to be freed
+ */
+static void vq_sg_free(struct virtqueue_sg *vq_sg)
+{
+	unsigned int i;
+
+	if (!vq_sg)
+		return;
+
+	for (i = 0; i < vq_sg->nsgl; ++i) {
+		kfree(vq_sg->sgl[i]);
+	}
+	kfree(vq_sg);
+}
+
+/**
+ * vq_sg_alloc - allocates and returns @nsgl scatter gather lists
+ * @nsgl: amount of scatter gather lists to be allocated
+ * If @nsgl is larger than one then chained lists are used if supported by
+ * architecture.
+ */
+static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
+{
+	struct virtqueue_sg *vq_sg;
+	unsigned int i;
+
+	BUG_ON(!nsgl || nsgl > VIRTQUEUE_SG_NSGL_MAX);
+#ifdef CONFIG_ARCH_NO_SG_CHAIN
+	if (WARN_ON_ONCE(nsgl > 1))
+		return NULL;
+#endif
+
+	vq_sg = kzalloc(sizeof(struct virtqueue_sg) +
+			nsgl * sizeof(struct scatterlist *),
+			GFP_KERNEL);
+
+	if (!vq_sg)
+		return NULL;
+
+	vq_sg->nsgl = nsgl;
+
+	for (i = 0; i < nsgl; ++i) {
+		vq_sg->sgl[i] = kmalloc_array(
+			SG_MAX_SINGLE_ALLOC, sizeof(struct scatterlist),
+			GFP_KERNEL
+		);
+		if (!vq_sg->sgl[i]) {
+			vq_sg_free(vq_sg);
+			return NULL;
+		}
+		sg_init_table(vq_sg->sgl[i], SG_MAX_SINGLE_ALLOC);
+		if (i) {
+			/* chain the lists */
+			sg_chain(vq_sg->sgl[i - 1], SG_MAX_SINGLE_ALLOC,
+				 vq_sg->sgl[i]);
+		}
+	}
+	sg_mark_end(&vq_sg->sgl[nsgl - 1][SG_MAX_SINGLE_ALLOC - 1]);
+	return vq_sg;
+}
+
 /**
  * p9_virtio_close - reclaim resources of a channel
  * @client: client instance
@@ -158,9 +265,8 @@ static void req_done(struct virtqueue *vq)
 
 /**
  * pack_sg_list - pack a scatter gather list from a linear buffer
- * @sg: scatter/gather list to pack into
+ * @vq_sg: scatter/gather lists to pack into
  * @start: which segment of the sg_list to start at
- * @limit: maximum segment to pack data to
  * @data: data to pack into scatter/gather list
  * @count: amount of data to pack into the scatter/gather list
  *
@@ -170,11 +276,12 @@ static void req_done(struct virtqueue *vq)
  *
  */
 
-static int pack_sg_list(struct scatterlist *sg, int start,
-			int limit, char *data, int count)
+static int pack_sg_list(struct virtqueue_sg *vq_sg, int start,
+			char *data, int count)
 {
 	int s;
 	int index = start;
+	size_t limit = vq_sg_npages(vq_sg);
 
 	while (count) {
 		s = rest_of_page(data);
@@ -182,13 +289,13 @@ static int pack_sg_list(struct scatterlist *sg, int start,
 			s = count;
 		BUG_ON(index >= limit);
 		/* Make sure we don't terminate early. */
-		sg_unmark_end(&sg[index]);
-		sg_set_buf(&sg[index++], data, s);
+		sg_unmark_end(vq_sg_page(vq_sg, index));
+		sg_set_buf(vq_sg_page(vq_sg, index++), data, s);
 		count -= s;
 		data += s;
 	}
 	if (index-start)
-		sg_mark_end(&sg[index - 1]);
+		sg_mark_end(vq_sg_page(vq_sg, index - 1));
 	return index-start;
 }
 
@@ -208,21 +315,21 @@ static int p9_virtio_cancelled(struct p9_client *client, struct p9_req_t *req)
 /**
  * pack_sg_list_p - Just like pack_sg_list. Instead of taking a buffer,
  * this takes a list of pages.
- * @sg: scatter/gather list to pack into
+ * @vq_sg: scatter/gather lists to pack into
  * @start: which segment of the sg_list to start at
- * @limit: maximum number of pages in sg list.
  * @pdata: a list of pages to add into sg.
  * @nr_pages: number of pages to pack into the scatter/gather list
  * @offs: amount of data in the beginning of first page _not_ to pack
  * @count: amount of data to pack into the scatter/gather list
  */
 static int
-pack_sg_list_p(struct scatterlist *sg, int start, int limit,
+pack_sg_list_p(struct virtqueue_sg *vq_sg, int start,
 	       struct page **pdata, int nr_pages, size_t offs, int count)
 {
 	int i = 0, s;
 	int data_off = offs;
 	int index = start;
+	size_t limit = vq_sg_npages(vq_sg);
 
 	BUG_ON(nr_pages > (limit - start));
 	/*
@@ -235,15 +342,16 @@ pack_sg_list_p(struct scatterlist *sg, int start, int limit,
 			s = count;
 		BUG_ON(index >= limit);
 		/* Make sure we don't terminate early. */
-		sg_unmark_end(&sg[index]);
-		sg_set_page(&sg[index++], pdata[i++], s, data_off);
+		sg_unmark_end(vq_sg_page(vq_sg, index));
+		sg_set_page(vq_sg_page(vq_sg, index++), pdata[i++], s,
+			    data_off);
 		data_off = 0;
 		count -= s;
 		nr_pages--;
 	}
 
 	if (index-start)
-		sg_mark_end(&sg[index - 1]);
+		sg_mark_end(vq_sg_page(vq_sg, index - 1));
 	return index - start;
 }
 
@@ -271,15 +379,13 @@ p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
 
 	out_sgs = in_sgs = 0;
 	/* Handle out VirtIO ring buffers */
-	out = pack_sg_list(chan->sg, 0,
-			   chan->sg_n, req->tc.sdata, req->tc.size);
+	out = pack_sg_list(chan->vq_sg, 0, req->tc.sdata, req->tc.size);
 	if (out)
-		sgs[out_sgs++] = chan->sg;
+		sgs[out_sgs++] = vq_sg_page(chan->vq_sg, 0);
 
-	in = pack_sg_list(chan->sg, out,
-			  chan->sg_n, req->rc.sdata, req->rc.capacity);
+	in = pack_sg_list(chan->vq_sg, out, req->rc.sdata, req->rc.capacity);
 	if (in)
-		sgs[out_sgs + in_sgs++] = chan->sg + out;
+		sgs[out_sgs + in_sgs++] = vq_sg_page(chan->vq_sg, out);
 
 	err = virtqueue_add_sgs(chan->vq, sgs, out_sgs, in_sgs, req,
 				GFP_ATOMIC);
@@ -448,16 +554,15 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	out_sgs = in_sgs = 0;
 
 	/* out data */
-	out = pack_sg_list(chan->sg, 0,
-			   chan->sg_n, req->tc.sdata, req->tc.size);
+	out = pack_sg_list(chan->vq_sg, 0, req->tc.sdata, req->tc.size);
 
 	if (out)
-		sgs[out_sgs++] = chan->sg;
+		sgs[out_sgs++] = vq_sg_page(chan->vq_sg, 0);
 
 	if (out_pages) {
-		sgs[out_sgs++] = chan->sg + out;
-		out += pack_sg_list_p(chan->sg, out, chan->sg_n,
-				      out_pages, out_nr_pages, offs, outlen);
+		sgs[out_sgs++] = vq_sg_page(chan->vq_sg, out);
+		out += pack_sg_list_p(chan->vq_sg, out, out_pages,
+				      out_nr_pages, offs, outlen);
 	}
 
 	/*
@@ -467,15 +572,14 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	 * Arrange in such a way that server places header in the
 	 * allocated memory and payload onto the user buffer.
 	 */
-	in = pack_sg_list(chan->sg, out,
-			  chan->sg_n, req->rc.sdata, in_hdr_len);
+	in = pack_sg_list(chan->vq_sg, out, req->rc.sdata, in_hdr_len);
 	if (in)
-		sgs[out_sgs + in_sgs++] = chan->sg + out;
+		sgs[out_sgs + in_sgs++] = vq_sg_page(chan->vq_sg, out);
 
 	if (in_pages) {
-		sgs[out_sgs + in_sgs++] = chan->sg + out + in;
-		in += pack_sg_list_p(chan->sg, out + in, chan->sg_n,
-				     in_pages, in_nr_pages, offs, inlen);
+		sgs[out_sgs + in_sgs++] = vq_sg_page(chan->vq_sg, out + in);
+		in += pack_sg_list_p(chan->vq_sg, out + in, in_pages,
+				     in_nr_pages, offs, inlen);
 	}
 
 	BUG_ON(out_sgs + in_sgs > ARRAY_SIZE(sgs));
@@ -576,14 +680,12 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 		goto fail;
 	}
 
-	chan->sg = kmalloc_array(VIRTQUEUE_DEFAULT_NUM,
-				 sizeof(struct scatterlist), GFP_KERNEL);
-	if (!chan->sg) {
+	chan->vq_sg = vq_sg_alloc(VIRTQUEUE_SG_NSGL_DEFAULT);
+	if (!chan->vq_sg) {
 		pr_err("Failed to allocate virtio 9P channel\n");
 		err = -ENOMEM;
 		goto out_free_chan_shallow;
 	}
-	chan->sg_n = VIRTQUEUE_DEFAULT_NUM;
 
 	chan->vdev = vdev;
 
@@ -596,8 +698,6 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 	chan->vq->vdev->priv = chan;
 	spin_lock_init(&chan->lock);
 
-	sg_init_table(chan->sg, chan->sg_n);
-
 	chan->inuse = false;
 	if (virtio_has_feature(vdev, VIRTIO_9P_MOUNT_TAG)) {
 		virtio_cread(vdev, struct virtio_9p_config, tag_len, &tag_len);
@@ -646,7 +746,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 out_free_vq:
 	vdev->config->del_vqs(vdev);
 out_free_chan:
-	kfree(chan->sg);
+	vq_sg_free(chan->vq_sg);
 out_free_chan_shallow:
 	kfree(chan);
 fail:
@@ -741,7 +841,7 @@ static void p9_virtio_remove(struct virtio_device *vdev)
 	kobject_uevent(&(vdev->dev.kobj), KOBJ_CHANGE);
 	kfree(chan->tag);
 	kfree(chan->vc_wq);
-	kfree(chan->sg);
+	vq_sg_free(chan->vq_sg);
 	kfree(chan);
 
 }
@@ -780,7 +880,8 @@ static struct p9_trans_module p9_virtio_trans = {
 	 * that are not at page boundary, that can result in an extra
 	 * page in zero copy.
 	 */
-	.maxsize = PAGE_SIZE * (VIRTQUEUE_DEFAULT_NUM - 3),
+	.maxsize = PAGE_SIZE *
+		((VIRTQUEUE_SG_NSGL_DEFAULT * SG_USER_PAGES_PER_LIST) - 3),
 	.def = 1,
 	.owner = THIS_MODULE,
 };
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
