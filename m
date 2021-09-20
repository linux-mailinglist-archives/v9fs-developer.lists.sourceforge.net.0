Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB4D412297
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 20:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VoQHhvUN2I2uVOIkg+4/dr696E7EumL5fJBQ/JNtCYA=; b=jeFhXfbpd8qx+irK7zGkCp+wpV
	CfS7ccmNLoDXRGKMQkoJEcwEBYyzhCoNIjDS+FJMqly3s/uk+bkcKtJf8FsczwChDf+nM8qF5h/+o
	+fNkbuEdrGXTSpLaEzEAvhvZKVgEAS4zEl95oWr6eeEBkMWAX3sqbyEKZxQ/Nvo08Y8A=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSNp3-00034C-Dt; Mon, 20 Sep 2021 18:15:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <0a2c16b9acf580a679f38354b5d60a68c5fb6c99@lizzy.crudebyte.com>)
 id 1mSNot-00033Q-9m
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 18:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ePbeAywu/lY42TIL8si/nKq6WPM1V/jO+mL9Ww5/new=; b=i6nKIpr9IlUyQvrqdW+tyCBCJ
 xnMly393aqrLLUHUTMko2DrMhQJdZJipSBdDXY2DHnNr/aRwAvDHDLlRhhv7hIzNtgf2V7lozKMxS
 NDnaUJ0FT19KtvPzFd+5p7uiq9cq13XfeRt1rQdaQpLFeirYbrcBJlUGza2J0+tShnulk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ePbeAywu/lY42TIL8si/nKq6WPM1V/jO+mL9Ww5/new=; b=V3R/ZA7B7OwAMFSSfIhfdNbuqR
 5ogfpJ/+0OZ0FyKeEHKC1q1kTMFYMdXXrowkm4KRz4+7Pyu5A/bJxaFjyH1NjXQk2OIzOH1kOJrd6
 ZPLHP9Agf1Eo+x+DHp536JdeITP89tFodEpB7IcuzIDKebXQTTtH4+7ZfvUltShYEnY8=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSNos-00052c-Hr
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 18:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=ePbeAywu/lY42TIL8si/nKq6WPM1V/jO+mL9Ww5/new=; b=MbwlD
 X4dDCdWuky707UY47kJQkOgqtqEUYEQnJmwp7/03ZtMNBzCeUEg59cBGkT+q+TKRTNNqH6Y+KsjFY
 ZKNm9h1o7JSKQQu9HpTXSGocK3sro9fFp9HsR9LoAPvU72ixDkjG2Xgf+cu4ZEdjx5nwkeNN0pwt5
 2iZC9wm3jcOJ8E3Pdrx+3LR3B8RsLFYRfYBQBx7yQTNePujiPP7QAMzXpzlNWnUqD+H9risWMky3v
 Q97bnyBjEF29zs3gkP1isdrfbLxZg8eYqQaa9OuAqRMxeEkAAl1QTeA341kpgPJYy79NKERrz9aZD
 nkOgMWmMIZmq008e7NXQjvf7L6tBw==;
Message-Id: <0a2c16b9acf580a679f38354b5d60a68c5fb6c99.1632156835.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
Date: Mon, 20 Sep 2021 18:44:20 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSNos-00052c-Hr
Subject: [V9fs-developer] [PATCH v2 7/7] 9p/trans_virtio: resize sg lists to
 whatever is possible
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
 net/9p/trans_virtio.c | 65 ++++++++++++++++++++++++++++++++++++-------
 1 file changed, 55 insertions(+), 10 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 4cb75f45aa15..b9bab7ed2768 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -205,24 +205,66 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
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
 
-	kfree(*_vq_sg);
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
 	*_vq_sg = vq_sg;
-	return 0;
+	return ret;
 }
 
 /**
@@ -839,13 +881,16 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
 		if (nsgl > chan->vq_sg->nsgl) {
 			/*
 			 * if resize fails, no big deal, then just
-			 * continue with default msize instead
+			 * continue with whatever we got
 			 */
-			if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
-				client->trans_maxsize =
-					PAGE_SIZE *
-					((nsgl * SG_USER_PAGES_PER_LIST) - 3);
-			}
+			vq_sg_resize(&chan->vq_sg, nsgl);
+			/*
+			 * actual allocation size might be less than
+			 * requested, so use vq_sg->nsgl instead of nsgl
+			 */
+			client->trans_maxsize =
+				PAGE_SIZE * ((chan->vq_sg->nsgl *
+				SG_USER_PAGES_PER_LIST) - 3);
 		}
 #endif /* CONFIG_ARCH_NO_SG_CHAIN */
 	}
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
