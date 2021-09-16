Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDD340EAD5
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Sep 2021 21:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9AGdENlog4W15jwhasrnNgZYJDGHw06df04szxZamOA=; b=YX6cuwhexsMPq4PgR1bBNlcwXW
	XqcL0lTyHX4wijVFmvO/YOz/jNrMJ08ACokZFwyu8tJqUe/FaDpZlSsOrCmfIh8D8/SZ/5ykbF30n
	xLpUQ7tb+HWTmm41mhH0gualM1ZK5bBeWx3NWp/N4URCiuyogVUSG/3WVoWjZbnGMLIA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQx5b-00061y-Bp; Thu, 16 Sep 2021 19:30:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <a98a002b61d399078ef5ff3c3d66de67adc8854f@lizzy.crudebyte.com>)
 id 1mQx5a-00061s-Ay
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nIctL8Cr0+i6axbSnzbk1KOppeRbmHlrFSxlt6imueg=; b=IAuvM9ifD99qrrxI5ShA8l23E
 iFwW1hE/eRupzjK80rvI1hJANZRpeVHKd48vqWLIJ1Q9WR3OLIRkCiNKB10J2y2xZcfZNgvLeCgmI
 HE553YzxXsX+6eB/oT3YHCu42tXj3TW9gdVz530EfyOssnp/Bl7CXnAzI75TJB8GDtyqw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nIctL8Cr0+i6axbSnzbk1KOppeRbmHlrFSxlt6imueg=; b=Ii0ZIcTLMzX5fTya3ZldcQ4iRu
 3yV8tMDH7AnFMOAFwdxPQNPtu9EH5JDozvGJjEtSjznTdIgB5O/CbJoy3VaYoUQN/NHhs0I3w/VNw
 ORWyLi7EnudomLD7M5Luhn7zYeVhFhJ/wedcHUEcUUO5UyhCwqcZicwGRTz2zRQBgTEE=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQx5Z-00D5g7-Pt
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=nIctL8Cr0+i6axbSnzbk1KOppeRbmHlrFSxlt6imueg=; b=DUREi
 DnHVKyOJyI3Auzc1ueMeuwfjpVQ/DesfFAIffdmQnFi1cI2UUYYBvPmt86N/COdb4K65SLqS/TbFU
 4PoMuA42fX3hlVRt/vg+fNkkscqL7proufcQPMnqKvHmSGEZuR4nOui+m743yyfCVQ48iioLdOo/X
 ALsTZdG3iBtmz9mvxP296739J5ssN06T5cYlQ8MBWIzBaduU50bphr7tBR4AE8umdeC1kpBToDhX4
 e/w3f0bCnZziePzGjB0MfO2Ytot/1TZuSaH5FkgRWmyz6PTpeQ/ZuEsmnfn3ojjJ6FwER0SDe2vmK
 V4NdRyYjhxZ2OTeV0+r85DfBIE5hA==;
Message-Id: <a98a002b61d399078ef5ff3c3d66de67adc8854f.1631816768.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1631816768.git.linux_oss@crudebyte.com>
References: <cover.1631816768.git.linux_oss@crudebyte.com>
Date: Thu, 16 Sep 2021 20:25:23 +0200
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
 new sg lists size, or it did not resize at all. The problem with this is
 if a user supplies a very large msize value, resize would simply fail and
 the user would stick to the default maximum msize supported by the virtio
 transport. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mQx5Z-00D5g7-Pt
Subject: [V9fs-developer] [PATCH 7/7] 9p/trans_virtio: resize sg lists to
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
the requested new sg lists size, or it did not resize at all.

The problem with this is if a user supplies a very large msize
value, resize would simply fail and the user would stick to
the default maximum msize supported by the virtio transport.

To resolve this potential issue, change vq_sg_resize() to resize
the passed sg list to whatever is possible on the machine.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/trans_virtio.c | 64 +++++++++++++++++++++++++++++++++++++------
 1 file changed, 55 insertions(+), 9 deletions(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 1f9a0283d7b8..d81c0be475ba 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -200,23 +200,66 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
  * list blocks.
  * @_vq_sg: scatter/gather lists to be resized
  * @nsgl: new amount of scatter/gather list blocks
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
 	*_vq_sg = vq_sg;
-	return 0;
+	return ret;
 }
 
 /**
@@ -829,13 +872,16 @@ p9_virtio_create(struct p9_client *client, const char *devname, char *args)
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
 #endif /* !defined(CONFIG_ARCH_NO_SG_CHAIN) */
 	}
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
