Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6865A6A0
	for <lists+v9fs-developer@lfdr.de>; Sat, 31 Dec 2022 21:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pBi6t-0004TI-St;
	Sat, 31 Dec 2022 20:05:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1pBi6q-0004TB-PB
 for v9fs-developer@lists.sourceforge.net;
 Sat, 31 Dec 2022 20:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zHRRcYHIlqWbMvOf3H5se2x2t3/r9N3zStMwrssq5Vk=; b=W+wy1jo3iupm0Ksg6CbVDHdjxW
 trX6RO2oO/RWz2eKcvtBc+PHQjzxSTIstbKo86Oxrx/9cr5SC+KFh6ETZ+jEZ5Igyx47nWnVQiTNh
 JjxsaPmdwUJB9d+ZYqn5rxLOa0SfIwkzyHDbCb+X+A4TQU29WPxjiayg00rG4+vYg4fs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zHRRcYHIlqWbMvOf3H5se2x2t3/r9N3zStMwrssq5Vk=; b=OdvEgeDDVpj6TMPZ3piUO1peoh
 KpnvjtypYhCOmN/KpdgfLCeSZuQbIeDelaqVpRjEy3Ykj0Xf8gAqxoQ2SrtcNiK6SBWVK0pdWYJAL
 61amiv/QLxuGRatvyBX9/1/mU9IRYzbv+eykDixHmNC+MCIEwyvrzj5f75iICsbop85k=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pBi6o-000jK6-Oe for v9fs-developer@lists.sourceforge.net;
 Sat, 31 Dec 2022 20:05:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7D98260C2C;
 Sat, 31 Dec 2022 20:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73251C433EF;
 Sat, 31 Dec 2022 20:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672517127;
 bh=Oj1EzYPUxyFQYEQCQ/phFjRTaNJ8SQLrGDQmo7lNRo0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZdxhXwmpmnLvk2q6pZLedf9EC5gnx/XIunbQSyNl41ooUMXb5dCh9NdC3FHbXdV0q
 uazg7DbBp+fH5IZVf9/LhQdwAf/1DCHFPDaCygRRjJUvUe/kFtjgaAx3Wj6MsqO9/w
 ZoHnUKe2I8cav+HrkJnrijGMxDeFJlMpdEhYUk9/GTxZv7Km2ZbstZF3HIx0R09jzB
 96P9veHkRrFKOhP0TFCAwdhdSXS3WexXKSZRTFYmt8gLJrzNqoILKEFisHx6vdogSX
 3pjvOm2XzQdoyWStGF5BuVp2VAoGIU+tteINGfoyYaQgVGhXQxrXvR6GS8f7e4R/Ah
 FzWRDE46CvXVw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 31 Dec 2022 15:04:57 -0500
Message-Id: <20221231200502.1748784-2-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221231200502.1748784-1-sashal@kernel.org>
References: <20221231200502.1748784-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dominique Martinet <asmadeus@codewreck.org> [ Upstream
 commit 1a4f69ef15ec29b213e2b086b2502644e8ef76ee ] KCSAN reported a race
 between
 writing req->status in p9_client_cb and accessing it in p9_client_rpc's
 wait_event.
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pBi6o-000jK6-Oe
Subject: [V9fs-developer] [PATCH AUTOSEL 6.0 2/7] 9p/client: fix data race
 on req->status
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
Cc: Sasha Levin <sashal@kernel.org>, lucho@ionkov.net,
 Marco Elver <elver@google.com>, ericvh@gmail.com, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, davem@davemloft.net,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

[ Upstream commit 1a4f69ef15ec29b213e2b086b2502644e8ef76ee ]

KCSAN reported a race between writing req->status in p9_client_cb and
accessing it in p9_client_rpc's wait_event.

Accesses to req itself is protected by the data barrier (writing req
fields, write barrier, writing status // reading status, read barrier,
reading other req fields), but status accesses themselves apparently
also must be annotated properly with WRITE_ONCE/READ_ONCE when we
access it without locks.

Follows:
 - error paths writing status in various threads all can notify
p9_client_rpc, so these all also need WRITE_ONCE
 - there's a similar read loop in trans_virtio for zc case that also
needs READ_ONCE
 - other reads in trans_fd should be protected by the trans_fd lock and
lists state machine, as corresponding writers all are within trans_fd
and should be under the same lock. If KCSAN complains on them we likely
will have something else to fix as well, so it's better to leave them
unmarked and look again if required.

Link: https://lkml.kernel.org/r/20221205124756.426350-1-asmadeus@codewreck.org
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Suggested-by: Marco Elver <elver@google.com>
Acked-by: Marco Elver <elver@google.com>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/client.c       | 15 ++++++++-------
 net/9p/trans_fd.c     | 12 ++++++------
 net/9p/trans_rdma.c   |  4 ++--
 net/9p/trans_virtio.c |  9 +++++----
 net/9p/trans_xen.c    |  4 ++--
 5 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 0a6110e15d0f..937571193179 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -420,7 +420,7 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 	 * the status change is visible to another thread
 	 */
 	smp_wmb();
-	req->status = status;
+	WRITE_ONCE(req->status, status);
 
 	wake_up(&req->wq);
 	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
@@ -582,7 +582,7 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
 	/* if we haven't received a response for oldreq,
 	 * remove it from the list
 	 */
-	if (oldreq->status == REQ_STATUS_SENT) {
+	if (READ_ONCE(oldreq->status) == REQ_STATUS_SENT) {
 		if (c->trans_mod->cancelled)
 			c->trans_mod->cancelled(c, oldreq);
 	}
@@ -667,7 +667,8 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	}
 again:
 	/* Wait for the response */
-	err = wait_event_killable(req->wq, req->status >= REQ_STATUS_RCVD);
+	err = wait_event_killable(req->wq,
+				  READ_ONCE(req->status) >= REQ_STATUS_RCVD);
 
 	/* Make sure our req is coherent with regard to updates in other
 	 * threads - echoes to wmb() in the callback
@@ -681,7 +682,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 		goto again;
 	}
 
-	if (req->status == REQ_STATUS_ERROR) {
+	if (READ_ONCE(req->status) == REQ_STATUS_ERROR) {
 		p9_debug(P9_DEBUG_ERROR, "req_status error %d\n", req->t_err);
 		err = req->t_err;
 	}
@@ -694,7 +695,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 			p9_client_flush(c, req);
 
 		/* if we received the response anyway, don't signal error */
-		if (req->status == REQ_STATUS_RCVD)
+		if (READ_ONCE(req->status) == REQ_STATUS_RCVD)
 			err = 0;
 	}
 recalc_sigpending:
@@ -763,7 +764,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 		if (err != -ERESTARTSYS)
 			goto recalc_sigpending;
 	}
-	if (req->status == REQ_STATUS_ERROR) {
+	if (READ_ONCE(req->status) == REQ_STATUS_ERROR) {
 		p9_debug(P9_DEBUG_ERROR, "req_status error %d\n", req->t_err);
 		err = req->t_err;
 	}
@@ -776,7 +777,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 			p9_client_flush(c, req);
 
 		/* if we received the response anyway, don't signal error */
-		if (req->status == REQ_STATUS_RCVD)
+		if (READ_ONCE(req->status) == REQ_STATUS_RCVD)
 			err = 0;
 	}
 recalc_sigpending:
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 080b5de3e1ed..a2eb1363d293 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -202,11 +202,11 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 
 	list_for_each_entry_safe(req, rtmp, &m->req_list, req_list) {
 		list_move(&req->req_list, &cancel_list);
-		req->status = REQ_STATUS_ERROR;
+		WRITE_ONCE(req->status, REQ_STATUS_ERROR);
 	}
 	list_for_each_entry_safe(req, rtmp, &m->unsent_req_list, req_list) {
 		list_move(&req->req_list, &cancel_list);
-		req->status = REQ_STATUS_ERROR;
+		WRITE_ONCE(req->status, REQ_STATUS_ERROR);
 	}
 
 	spin_unlock(&m->req_lock);
@@ -467,7 +467,7 @@ static void p9_write_work(struct work_struct *work)
 
 		req = list_entry(m->unsent_req_list.next, struct p9_req_t,
 			       req_list);
-		req->status = REQ_STATUS_SENT;
+		WRITE_ONCE(req->status, REQ_STATUS_SENT);
 		p9_debug(P9_DEBUG_TRANS, "move req %p\n", req);
 		list_move_tail(&req->req_list, &m->req_list);
 
@@ -676,7 +676,7 @@ static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
 		return m->err;
 
 	spin_lock(&m->req_lock);
-	req->status = REQ_STATUS_UNSENT;
+	WRITE_ONCE(req->status, REQ_STATUS_UNSENT);
 	list_add_tail(&req->req_list, &m->unsent_req_list);
 	spin_unlock(&m->req_lock);
 
@@ -703,7 +703,7 @@ static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
 
 	if (req->status == REQ_STATUS_UNSENT) {
 		list_del(&req->req_list);
-		req->status = REQ_STATUS_FLSHD;
+		WRITE_ONCE(req->status, REQ_STATUS_FLSHD);
 		p9_req_put(client, req);
 		ret = 0;
 	}
@@ -732,7 +732,7 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 	 * remove it from the list.
 	 */
 	list_del(&req->req_list);
-	req->status = REQ_STATUS_FLSHD;
+	WRITE_ONCE(req->status, REQ_STATUS_FLSHD);
 	spin_unlock(&m->req_lock);
 
 	p9_req_put(client, req);
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index d817d3745238..d8b0a6f3b15e 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -507,7 +507,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	 * because doing if after could erase the REQ_STATUS_RCVD
 	 * status in case of a very fast reply.
 	 */
-	req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 	err = ib_post_send(rdma->qp, &wr, NULL);
 	if (err)
 		goto send_error;
@@ -517,7 +517,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 
  /* Handle errors that happened during or while preparing the send: */
  send_error:
-	req->status = REQ_STATUS_ERROR;
+	WRITE_ONCE(req->status, REQ_STATUS_ERROR);
 	kfree(c);
 	p9_debug(P9_DEBUG_ERROR, "Error %d in rdma_request()\n", err);
 
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index b84d35cf6899..947c038a0470 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -263,7 +263,7 @@ p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
 
 	p9_debug(P9_DEBUG_TRANS, "9p debug: virtio request\n");
 
-	req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 req_retry:
 	spin_lock_irqsave(&chan->lock, flags);
 
@@ -469,7 +469,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 			inlen = n;
 		}
 	}
-	req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 req_retry_pinned:
 	spin_lock_irqsave(&chan->lock, flags);
 
@@ -532,9 +532,10 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	spin_unlock_irqrestore(&chan->lock, flags);
 	kicked = 1;
 	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
-	err = wait_event_killable(req->wq, req->status >= REQ_STATUS_RCVD);
+	err = wait_event_killable(req->wq,
+			          READ_ONCE(req->status) >= REQ_STATUS_RCVD);
 	// RERROR needs reply (== error string) in static data
-	if (req->status == REQ_STATUS_RCVD &&
+	if (READ_ONCE(req->status) == REQ_STATUS_RCVD &&
 	    unlikely(req->rc.sdata[4] == P9_RERROR))
 		handle_rerror(req, in_hdr_len, offs, in_pages);
 
diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 0f862d5a5960..a103aed85465 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -157,7 +157,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
 			      &masked_prod, masked_cons,
 			      XEN_9PFS_RING_SIZE(ring));
 
-	p9_req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(p9_req->status, REQ_STATUS_SENT);
 	virt_wmb();			/* write ring before updating pointer */
 	prod += size;
 	ring->intf->out_prod = prod;
@@ -212,7 +212,7 @@ static void p9_xen_response(struct work_struct *work)
 			dev_warn(&priv->dev->dev,
 				 "requested packet size too big: %d for tag %d with capacity %zd\n",
 				 h.size, h.tag, req->rc.capacity);
-			req->status = REQ_STATUS_ERROR;
+			WRITE_ONCE(req->status, REQ_STATUS_ERROR);
 			goto recv_error;
 		}
 
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
