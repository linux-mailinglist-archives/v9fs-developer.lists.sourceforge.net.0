Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB64414E50
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Sep 2021 18:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U5julhbsheGnN9nKI5vs0ZWdofCxxTmP+nDIywvCtIY=; b=C4Ssd4bUf77VRbUF/f6jIyR1Ll
	T2cG5dSSwEZXJyZp67zKmst0tZQsunNe+kx3UuofB6zcteVZXKiYVjHAZ7siUqAUx4z03xbn36OO6
	yPVWTpUq1csL8FCM3w7YavE9gIJhx2RdIw5VKM6muO+0fPXCDV5aLN+t3lVPbSEalV8U=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mT5Np-0006CJ-F8; Wed, 22 Sep 2021 16:46:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <36abf4c1ed348b1ef8ed38655f875942e0103d7f@lizzy.crudebyte.com>)
 id 1mT5Nm-0006CA-Ib
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dg1gjIRekS8zgEvTByPnswl6ttfsf5eNF+Ja+K6B/K4=; b=hQl6UpgrS3XZjXSfm5G4m0OnO
 eiOTs/plZCh2ycAoRkZAX3mUDVxsfIbaCbk3x/fHJGMJHG/BfLOgAFmTX3rmahw6Ed5DV+GuPW2dg
 QvjT67cm8XaaS4uunn3Ri22HKpA3Sg4/52ExoDlqzHbhgnL6Pjjh8QQOPB9BlGgAi0yYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dg1gjIRekS8zgEvTByPnswl6ttfsf5eNF+Ja+K6B/K4=; b=a3getbMBnL/mpbTeTAjBD4J0O9
 Br6wHSZAkH7Tu3/NkKKOlPBBglZDz99bLdqwSS7tUTy7H0f3gq+gyunC+LsbNZV8pTJbxY7kr5qrF
 /6m9gC7GrnCxSb3dlLCrQmOYPUCC/IQ7hY58V27Z1DpG81q9JX87kxuA864SlVEqkgnM=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mT5Nm-0000vl-2J
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=Dg1gjIRekS8zgEvTByPnswl6ttfsf5eNF+Ja+K6B/K4=; b=B70xc
 uz9FsxzNWTVlK0LqahSpPkrSpaIVnDtzCLAqdxK11Yay5C42weL1/WPTVnEeseH45GHOpjBPm5XUm
 UHLlX2GoMGIbSTchqd++dnpyaFByccQt8bYIs+tmqFWKPfIh0zeJoLSM9GZAR2YoP/Xf2tHOATPK+
 znZwDGcgwBo4BWxyCwEyrZUXdfJ3LRfCAt2ICWDIigoNtb+UyRLVKzDpcTEHnDP+kgDM8I9jezhxq
 Gx4JzCxMR2rgWMXkBqTGOsYE/65RIsjSCUWVqMnfF4e8Z0a3RDH1dNAFZL5yOO5Y8sE9ih2IB8ofY
 s10h6YlbIn2z3P1QbOj/2CrNrhiAA==;
Message-Id: <36abf4c1ed348b1ef8ed38655f875942e0103d7f.1632327421.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632327421.git.linux_oss@crudebyte.com>
References: <cover.1632327421.git.linux_oss@crudebyte.com>
Date: Wed, 22 Sep 2021 18:00:24 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mT5Nm-0000vl-2J
Subject: [V9fs-developer] [PATCH v3 2/7] 9p/trans_virtio: separate
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
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
index 490a4c900339..1dbe2e921bb8 100644
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
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
