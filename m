Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0220C532A86
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 May 2022 14:41:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntTrC-0003BS-Ch; Tue, 24 May 2022 12:41:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jgross@suse.com>) id 1ntTrA-0003BL-Ms
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 12:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nq8e6f4kvt4191MArCN5QGRmiKuJD49xJ37K0fCPnN8=; b=UKEj2bdgRZ2tl1U993EsDsmnPf
 dQ/1Ei2JUWmU1iZbpYw0uUZcICeIyDpNS7y+bFTI7jBV88IYwbzimPUm8ZyCb00bVAFW+XbpNDEFq
 mc1Y1lr/LDKIGSJKOjPVfvLaQjsopvpWzMqB2CLZNqlWXV1w8lTk6scjro8AAaUSCOxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nq8e6f4kvt4191MArCN5QGRmiKuJD49xJ37K0fCPnN8=; b=L
 NPefPsrL9CYyYeYX/Q5NGCELnG3YV8o6nXR+ISMNrGLIY2cJdGvx/YnO/6A1SDvEEMBcH6lf2YFy8
 JI+pEb8NdJPOWFBLglrOS+3cQe6AgB49q7XHhkpryKHsFzELVmgmW5XOP1NtsgEn2gWsDAMCzENKs
 ZsOOiCPpN5mjAjy8=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1ntTr7-00036o-OG
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 12:41:47 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 638751F91B;
 Tue, 24 May 2022 12:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1653396099; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Nq8e6f4kvt4191MArCN5QGRmiKuJD49xJ37K0fCPnN8=;
 b=mr4YLtsg9QoC4R9USdVqdIMnC8BnrPfzLohdM5yiGV7fDP2brJD9ab0LBDZLqW/4pe6Tct
 heXdZ4mhGSPCvH/D7UBEHaZYl9W5VEg67tRVFPWkl2rLNysqvxrTJ8K7EIkZWPj2aL8WSU
 mcItI6WDNehrbAlw08k94g4b/Y9u/R4=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D158713AE3;
 Tue, 24 May 2022 12:41:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id STa9MYLSjGIsYQAAMHmgww
 (envelope-from <jgross@suse.com>); Tue, 24 May 2022 12:41:38 +0000
To: xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 netdev@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Date: Tue, 24 May 2022 14:41:37 +0200
Message-Id: <20220524124137.10021-1-jgross@suse.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Instead of a virtual kernel address use a pointer of the
 associated
 struct page as second parameter of gnttab_end_foreign_access(). Most users
 have that pointer available already and are creating the virtual address
 from it, risking problems in case the memory is located in highmem. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ntTr7-00036o-OG
Subject: [V9fs-developer] [PATCH] xen: switch gnttab_end_foreign_access() to
 take a struct page pointer
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
From: Juergen Gross via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Juergen Gross <jgross@suse.com>
Cc: Juergen Gross <jgross@suse.com>, Jens Axboe <axboe@kernel.dk>,
 Stefano Stabellini <sstabellini@kernel.org>, Jan Beulich <jbeulich@suse.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Jakub Kicinski <kuba@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?q?Roger=20Pau=20Monn=C3=A9?= <roger.pau@citrix.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Instead of a virtual kernel address use a pointer of the associated
struct page as second parameter of gnttab_end_foreign_access().

Most users have that pointer available already and are creating the
virtual address from it, risking problems in case the memory is
located in highmem.

gnttab_end_foreign_access() itself won't need to get the struct page
from the address again.

Suggested-by: Jan Beulich <jbeulich@suse.com>
Signed-off-by: Juergen Gross <jgross@suse.com>
---
 drivers/block/xen-blkfront.c        | 6 +++---
 drivers/input/misc/xen-kbdfront.c   | 4 ++--
 drivers/net/xen-netfront.c          | 7 +++----
 drivers/xen/gntalloc.c              | 9 +++------
 drivers/xen/gntdev-dmabuf.c         | 2 +-
 drivers/xen/grant-table.c           | 8 ++++----
 drivers/xen/pvcalls-front.c         | 6 +++---
 drivers/xen/xen-front-pgdir-shbuf.c | 2 +-
 drivers/xen/xenbus/xenbus_client.c  | 2 +-
 include/xen/grant_table.h           | 6 +++---
 net/9p/trans_xen.c                  | 8 ++++----
 11 files changed, 28 insertions(+), 32 deletions(-)

diff --git a/drivers/block/xen-blkfront.c b/drivers/block/xen-blkfront.c
index 55e004d03ced..a88ce4426400 100644
--- a/drivers/block/xen-blkfront.c
+++ b/drivers/block/xen-blkfront.c
@@ -1221,7 +1221,7 @@ static void blkif_free_ring(struct blkfront_ring_info *rinfo)
 			list_del(&persistent_gnt->node);
 			if (persistent_gnt->gref != INVALID_GRANT_REF) {
 				gnttab_end_foreign_access(persistent_gnt->gref,
-							  0UL);
+							  NULL);
 				rinfo->persistent_gnts_c--;
 			}
 			if (info->feature_persistent)
@@ -1244,7 +1244,7 @@ static void blkif_free_ring(struct blkfront_ring_info *rinfo)
 		       rinfo->shadow[i].req.u.rw.nr_segments;
 		for (j = 0; j < segs; j++) {
 			persistent_gnt = rinfo->shadow[i].grants_used[j];
-			gnttab_end_foreign_access(persistent_gnt->gref, 0UL);
+			gnttab_end_foreign_access(persistent_gnt->gref, NULL);
 			if (info->feature_persistent)
 				__free_page(persistent_gnt->page);
 			kfree(persistent_gnt);
@@ -1259,7 +1259,7 @@ static void blkif_free_ring(struct blkfront_ring_info *rinfo)
 
 		for (j = 0; j < INDIRECT_GREFS(segs); j++) {
 			persistent_gnt = rinfo->shadow[i].indirect_grants[j];
-			gnttab_end_foreign_access(persistent_gnt->gref, 0UL);
+			gnttab_end_foreign_access(persistent_gnt->gref, NULL);
 			__free_page(persistent_gnt->page);
 			kfree(persistent_gnt);
 		}
diff --git a/drivers/input/misc/xen-kbdfront.c b/drivers/input/misc/xen-kbdfront.c
index 1fc9b3e7007f..8d8ebdc2039b 100644
--- a/drivers/input/misc/xen-kbdfront.c
+++ b/drivers/input/misc/xen-kbdfront.c
@@ -481,7 +481,7 @@ static int xenkbd_connect_backend(struct xenbus_device *dev,
  error_evtchan:
 	xenbus_free_evtchn(dev, evtchn);
  error_grant:
-	gnttab_end_foreign_access(info->gref, 0UL);
+	gnttab_end_foreign_access(info->gref, NULL);
 	info->gref = -1;
 	return ret;
 }
@@ -492,7 +492,7 @@ static void xenkbd_disconnect_backend(struct xenkbd_info *info)
 		unbind_from_irqhandler(info->irq, info);
 	info->irq = -1;
 	if (info->gref >= 0)
-		gnttab_end_foreign_access(info->gref, 0UL);
+		gnttab_end_foreign_access(info->gref, NULL);
 	info->gref = -1;
 }
 
diff --git a/drivers/net/xen-netfront.c b/drivers/net/xen-netfront.c
index 65ab907aca5a..8c0b9546d5a2 100644
--- a/drivers/net/xen-netfront.c
+++ b/drivers/net/xen-netfront.c
@@ -1386,7 +1386,7 @@ static void xennet_release_tx_bufs(struct netfront_queue *queue)
 		queue->tx_skbs[i] = NULL;
 		get_page(queue->grant_tx_page[i]);
 		gnttab_end_foreign_access(queue->grant_tx_ref[i],
-					  (unsigned long)page_address(queue->grant_tx_page[i]));
+					  queue->grant_tx_page[i]);
 		queue->grant_tx_page[i] = NULL;
 		queue->grant_tx_ref[i] = INVALID_GRANT_REF;
 		add_id_to_list(&queue->tx_skb_freelist, queue->tx_link, i);
@@ -1418,8 +1418,7 @@ static void xennet_release_rx_bufs(struct netfront_queue *queue)
 		 * foreign access is ended (which may be deferred).
 		 */
 		get_page(page);
-		gnttab_end_foreign_access(ref,
-					  (unsigned long)page_address(page));
+		gnttab_end_foreign_access(ref, page);
 		queue->grant_rx_ref[id] = INVALID_GRANT_REF;
 
 		kfree_skb(skb);
@@ -1760,7 +1759,7 @@ static void xennet_end_access(int ref, void *page)
 {
 	/* This frees the page as a side-effect */
 	if (ref != INVALID_GRANT_REF)
-		gnttab_end_foreign_access(ref, (unsigned long)page);
+		gnttab_end_foreign_access(ref, virt_to_page(page));
 }
 
 static void xennet_disconnect_backend(struct netfront_info *info)
diff --git a/drivers/xen/gntalloc.c b/drivers/xen/gntalloc.c
index 55acb32842a3..a15729beb9d1 100644
--- a/drivers/xen/gntalloc.c
+++ b/drivers/xen/gntalloc.c
@@ -175,8 +175,6 @@ static int add_grefs(struct ioctl_gntalloc_alloc_gref *op,
 
 static void __del_gref(struct gntalloc_gref *gref)
 {
-	unsigned long addr;
-
 	if (gref->notify.flags & UNMAP_NOTIFY_CLEAR_BYTE) {
 		uint8_t *tmp = kmap_local_page(gref->page);
 		tmp[gref->notify.pgoff] = 0;
@@ -190,10 +188,9 @@ static void __del_gref(struct gntalloc_gref *gref)
 	gref->notify.flags = 0;
 
 	if (gref->gref_id) {
-		if (gref->page) {
-			addr = (unsigned long)page_to_virt(gref->page);
-			gnttab_end_foreign_access(gref->gref_id, addr);
-		} else
+		if (gref->page)
+			gnttab_end_foreign_access(gref->gref_id, gref->page);
+		else
 			gnttab_free_grant_reference(gref->gref_id);
 	}
 
diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
index 91073b4e4a20..940e5e9e8a54 100644
--- a/drivers/xen/gntdev-dmabuf.c
+++ b/drivers/xen/gntdev-dmabuf.c
@@ -524,7 +524,7 @@ static void dmabuf_imp_end_foreign_access(u32 *refs, int count)
 
 	for (i = 0; i < count; i++)
 		if (refs[i] != INVALID_GRANT_REF)
-			gnttab_end_foreign_access(refs[i], 0UL);
+			gnttab_end_foreign_access(refs[i], NULL);
 }
 
 static void dmabuf_imp_free_storage(struct gntdev_dmabuf *gntdev_dmabuf)
diff --git a/drivers/xen/grant-table.c b/drivers/xen/grant-table.c
index 1a1aec0a88a1..1b9b28bc3228 100644
--- a/drivers/xen/grant-table.c
+++ b/drivers/xen/grant-table.c
@@ -430,13 +430,13 @@ int gnttab_try_end_foreign_access(grant_ref_t ref)
 }
 EXPORT_SYMBOL_GPL(gnttab_try_end_foreign_access);
 
-void gnttab_end_foreign_access(grant_ref_t ref, unsigned long page)
+void gnttab_end_foreign_access(grant_ref_t ref, struct page *page)
 {
 	if (gnttab_try_end_foreign_access(ref)) {
-		if (page != 0)
-			put_page(virt_to_page(page));
+		if (page)
+			put_page(page);
 	} else
-		gnttab_add_deferred(ref, page ? virt_to_page(page) : NULL);
+		gnttab_add_deferred(ref, page);
 }
 EXPORT_SYMBOL_GPL(gnttab_end_foreign_access);
 
diff --git a/drivers/xen/pvcalls-front.c b/drivers/xen/pvcalls-front.c
index e254ed19488f..1826e8e67125 100644
--- a/drivers/xen/pvcalls-front.c
+++ b/drivers/xen/pvcalls-front.c
@@ -238,8 +238,8 @@ static void pvcalls_front_free_map(struct pvcalls_bedata *bedata,
 	spin_unlock(&bedata->socket_lock);
 
 	for (i = 0; i < (1 << PVCALLS_RING_ORDER); i++)
-		gnttab_end_foreign_access(map->active.ring->ref[i], 0);
-	gnttab_end_foreign_access(map->active.ref, 0);
+		gnttab_end_foreign_access(map->active.ring->ref[i], NULL);
+	gnttab_end_foreign_access(map->active.ref, NULL);
 	free_page((unsigned long)map->active.ring);
 
 	kfree(map);
@@ -1117,7 +1117,7 @@ static int pvcalls_front_remove(struct xenbus_device *dev)
 		}
 	}
 	if (bedata->ref != -1)
-		gnttab_end_foreign_access(bedata->ref, 0);
+		gnttab_end_foreign_access(bedata->ref, NULL);
 	kfree(bedata->ring.sring);
 	kfree(bedata);
 	xenbus_switch_state(dev, XenbusStateClosed);
diff --git a/drivers/xen/xen-front-pgdir-shbuf.c b/drivers/xen/xen-front-pgdir-shbuf.c
index b6433761d42c..bef8d72a6ca6 100644
--- a/drivers/xen/xen-front-pgdir-shbuf.c
+++ b/drivers/xen/xen-front-pgdir-shbuf.c
@@ -135,7 +135,7 @@ void xen_front_pgdir_shbuf_free(struct xen_front_pgdir_shbuf *buf)
 
 		for (i = 0; i < buf->num_grefs; i++)
 			if (buf->grefs[i] != INVALID_GRANT_REF)
-				gnttab_end_foreign_access(buf->grefs[i], 0UL);
+				gnttab_end_foreign_access(buf->grefs[i], NULL);
 	}
 	kfree(buf->grefs);
 	kfree(buf->directory);
diff --git a/drivers/xen/xenbus/xenbus_client.c b/drivers/xen/xenbus/xenbus_client.c
index d6fdd2d209d3..d5f3f763717e 100644
--- a/drivers/xen/xenbus/xenbus_client.c
+++ b/drivers/xen/xenbus/xenbus_client.c
@@ -439,7 +439,7 @@ void xenbus_teardown_ring(void **vaddr, unsigned int nr_pages,
 
 	for (i = 0; i < nr_pages; i++) {
 		if (grefs[i] != INVALID_GRANT_REF) {
-			gnttab_end_foreign_access(grefs[i], 0);
+			gnttab_end_foreign_access(grefs[i], NULL);
 			grefs[i] = INVALID_GRANT_REF;
 		}
 	}
diff --git a/include/xen/grant_table.h b/include/xen/grant_table.h
index 7d0f2f0037b8..527c9907f99c 100644
--- a/include/xen/grant_table.h
+++ b/include/xen/grant_table.h
@@ -101,10 +101,10 @@ int gnttab_end_foreign_access_ref(grant_ref_t ref);
  * Eventually end access through the given grant reference, and once that
  * access has been ended, free the given page too.  Access will be ended
  * immediately iff the grant entry is not in use, otherwise it will happen
- * some time later.  page may be 0, in which case no freeing will occur.
+ * some time later.  page may be NULL, in which case no freeing will occur.
  * Note that the granted page might still be accessed (read or write) by the
  * other side after gnttab_end_foreign_access() returns, so even if page was
- * specified as 0 it is not allowed to just reuse the page for other
+ * specified as NULL it is not allowed to just reuse the page for other
  * purposes immediately. gnttab_end_foreign_access() will take an additional
  * reference to the granted page in this case, which is dropped only after
  * the grant is no longer in use.
@@ -112,7 +112,7 @@ int gnttab_end_foreign_access_ref(grant_ref_t ref);
  * gnttab_end_foreign_access() are done via alloc_pages_exact() (and freeing
  * via free_pages_exact()) in order to avoid high order pages.
  */
-void gnttab_end_foreign_access(grant_ref_t ref, unsigned long page);
+void gnttab_end_foreign_access(grant_ref_t ref, struct page *page);
 
 /*
  * End access through the given grant reference, iff the grant entry is
diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 77883b6788cd..833cd3792c51 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -279,13 +279,13 @@ static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
 				grant_ref_t ref;
 
 				ref = priv->rings[i].intf->ref[j];
-				gnttab_end_foreign_access(ref, 0);
+				gnttab_end_foreign_access(ref, NULL);
 			}
 			free_pages_exact(priv->rings[i].data.in,
 				   1UL << (priv->rings[i].intf->ring_order +
 					   XEN_PAGE_SHIFT));
 		}
-		gnttab_end_foreign_access(priv->rings[i].ref, 0);
+		gnttab_end_foreign_access(priv->rings[i].ref, NULL);
 		free_page((unsigned long)priv->rings[i].intf);
 	}
 	kfree(priv->rings);
@@ -353,10 +353,10 @@ static int xen_9pfs_front_alloc_dataring(struct xenbus_device *dev,
 out:
 	if (bytes) {
 		for (i--; i >= 0; i--)
-			gnttab_end_foreign_access(ring->intf->ref[i], 0);
+			gnttab_end_foreign_access(ring->intf->ref[i], NULL);
 		free_pages_exact(bytes, 1UL << (order + XEN_PAGE_SHIFT));
 	}
-	gnttab_end_foreign_access(ring->ref, 0);
+	gnttab_end_foreign_access(ring->ref, NULL);
 	free_page((unsigned long)ring->intf);
 	return ret;
 }
-- 
2.35.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
