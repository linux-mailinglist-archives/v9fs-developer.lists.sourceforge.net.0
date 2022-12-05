Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B94806428C3
	for <lists+v9fs-developer@lfdr.de>; Mon,  5 Dec 2022 13:50:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p2AvP-0008UA-Ow;
	Mon, 05 Dec 2022 12:50:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p2AvJ-0008Ty-Ks
 for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 12:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QAarV8Ja9R/8Y4UMPRKfOUajmT0qSFp0zvjj/2ewzDY=; b=D1zstY3E00ONav71TPMZpmi7n2
 MWKUKdmsfcDAAeS5UvSc7Qccad1DFyk8IxoaEiJmlOeCZ2ltTFiJPMlALhKZ5SSoKtIrEAEe1FGLw
 pRvBoqn8TH4cOP9WkxsNtkOvaSZQfYkHwcBSyNasZMhSm8PGEJHe9XVlpJQexoL7d8nU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QAarV8Ja9R/8Y4UMPRKfOUajmT0qSFp0zvjj/2ewzDY=; b=Z
 s5wmG9zBgNrSrdTMs/Zk+G44C0kYYh3WRvGOFoBmmYL8DTTISRgNyStdluMuOmVpCEnXK7Pq22VNL
 Bovan1NEg+iSSTgUguBgbdD4/JRUOWkS1iyRKbv7wNCMliQL6e0mS1T7AU0BcUM/R3AdaA4T7ZUlA
 C4W/cXQiCWZXUkRc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p2AvE-0001Go-DW for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 12:50:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 72A2AC01C; Mon,  5 Dec 2022 13:50:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670244614; bh=QAarV8Ja9R/8Y4UMPRKfOUajmT0qSFp0zvjj/2ewzDY=;
 h=From:To:Cc:Subject:Date:From;
 b=RtwGd8XR8Z5/w0h6crEF9J92Oe2RmSA3ulzY0qCrJw5/ODEQDREjxUQuc8nnDqJea
 U98QN6vco+SqN0Pzj6qP9J67N3fr1qLaxhQhm73bcg0L/b8SttxH7hcyEsI+OXXFi4
 9opTns4ZOY8RvFWnnbzLx2zqz7pH2UcenabXCvNuvXTuB1QgNiP3TwRStolc6+Wixi
 DttsZQeZtA5kZBvMBztNUTo4zZR0RtBZGa5zCl65NDMFyAN6OdzviJBE5VnDf/9wPa
 vNg9d39+hj/iMv67qYgjimxSjLUg0IqjQKkXWxbAT6nk+38L0YgcEkjfjYrJO8ww5q
 lBVbVAdY+Db6Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 92A6AC009;
 Mon,  5 Dec 2022 13:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670244612; bh=QAarV8Ja9R/8Y4UMPRKfOUajmT0qSFp0zvjj/2ewzDY=;
 h=From:To:Cc:Subject:Date:From;
 b=fQtfg3kVsl0stuZeDf9FXvXNFqKzaEwDb4f0fCssgVSR0lAd72E/qvJKh8b3z1fak
 NBmw66VfeWBc2jMg3CFrK7t6PjVDMbTkjF4w8ngiYf4/6G8jhr19BxAZanRGurXq54
 aJvoe4s5BmPacYlhts4om4CnElAbChxNmMA5Xd3XRUJTVSsSFVtRmFzksasCvSD/9+
 vYIRuvXctD5++EZ8o7d8a8oQqEA4S5Fg3uFvEwQJhDyF3RQ05ZL88D3cOF2EM3HGsq
 ljoPxbmsnmzOaNBx+9Y8IRLEsaX/lRroLQTp+hvrQ0x2DoD+jmF/oIiXAQ9Rf6baxZ
 cLlhRK8UpUx2g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d7825266;
 Mon, 5 Dec 2022 12:49:58 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Mon,  5 Dec 2022 21:47:56 +0900
Message-Id: <20221205124756.426350-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: KCSAN reported a race between writing req->status in
 p9_client_cb
 and accessing it in p9_client_rpc's wait_event. Accesses to req itself is
 protected by the data barrier (writing req fields, write barrier, writing
 status // reading status, read barrier, reading other req fields), but status
 accesses themselves ap [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p2AvE-0001Go-DW
Subject: [V9fs-developer] [PATCH] 9p/client: fix data race on req->status
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
Cc: v9fs-developer@lists.sourceforge.net, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org, Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

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

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Suggested-by: Marco Elver <elver@google.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/client.c       | 15 ++++++++-------
 net/9p/trans_fd.c     | 12 ++++++------
 net/9p/trans_rdma.c   |  4 ++--
 net/9p/trans_virtio.c |  9 +++++----
 net/9p/trans_xen.c    |  4 ++--
 5 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index b554f8357f96..b5aa25f82b78 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -443,7 +443,7 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 	 * the status change is visible to another thread
 	 */
 	smp_wmb();
-	req->status = status;
+	WRITE_ONCE(req->status, status);
 
 	wake_up(&req->wq);
 	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
@@ -605,7 +605,7 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
 	/* if we haven't received a response for oldreq,
 	 * remove it from the list
 	 */
-	if (oldreq->status == REQ_STATUS_SENT) {
+	if (READ_ONCE(oldreq->status) == REQ_STATUS_SENT) {
 		if (c->trans_mod->cancelled)
 			c->trans_mod->cancelled(c, oldreq);
 	}
@@ -702,7 +702,8 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	}
 again:
 	/* Wait for the response */
-	err = wait_event_killable(req->wq, req->status >= REQ_STATUS_RCVD);
+	err = wait_event_killable(req->wq,
+				  READ_ONCE(req->status) >= REQ_STATUS_RCVD);
 
 	/* Make sure our req is coherent with regard to updates in other
 	 * threads - echoes to wmb() in the callback
@@ -716,7 +717,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 		goto again;
 	}
 
-	if (req->status == REQ_STATUS_ERROR) {
+	if (READ_ONCE(req->status) == REQ_STATUS_ERROR) {
 		p9_debug(P9_DEBUG_ERROR, "req_status error %d\n", req->t_err);
 		err = req->t_err;
 	}
@@ -729,7 +730,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 			p9_client_flush(c, req);
 
 		/* if we received the response anyway, don't signal error */
-		if (req->status == REQ_STATUS_RCVD)
+		if (READ_ONCE(req->status) == REQ_STATUS_RCVD)
 			err = 0;
 	}
 recalc_sigpending:
@@ -798,7 +799,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 		if (err != -ERESTARTSYS)
 			goto recalc_sigpending;
 	}
-	if (req->status == REQ_STATUS_ERROR) {
+	if (READ_ONCE(req->status) == REQ_STATUS_ERROR) {
 		p9_debug(P9_DEBUG_ERROR, "req_status error %d\n", req->t_err);
 		err = req->t_err;
 	}
@@ -811,7 +812,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 			p9_client_flush(c, req);
 
 		/* if we received the response anyway, don't signal error */
-		if (req->status == REQ_STATUS_RCVD)
+		if (READ_ONCE(req->status) == REQ_STATUS_RCVD)
 			err = 0;
 	}
 recalc_sigpending:
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 06ec9f7d3318..f8899745571c 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -201,11 +201,11 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 
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
@@ -466,7 +466,7 @@ static void p9_write_work(struct work_struct *work)
 
 		req = list_entry(m->unsent_req_list.next, struct p9_req_t,
 			       req_list);
-		req->status = REQ_STATUS_SENT;
+		WRITE_ONCE(req->status, REQ_STATUS_SENT);
 		p9_debug(P9_DEBUG_TRANS, "move req %p\n", req);
 		list_move_tail(&req->req_list, &m->req_list);
 
@@ -675,7 +675,7 @@ static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
 		return m->err;
 
 	spin_lock(&m->req_lock);
-	req->status = REQ_STATUS_UNSENT;
+	WRITE_ONCE(req->status, REQ_STATUS_UNSENT);
 	list_add_tail(&req->req_list, &m->unsent_req_list);
 	spin_unlock(&m->req_lock);
 
@@ -702,7 +702,7 @@ static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
 
 	if (req->status == REQ_STATUS_UNSENT) {
 		list_del(&req->req_list);
-		req->status = REQ_STATUS_FLSHD;
+		WRITE_ONCE(req->status, REQ_STATUS_FLSHD);
 		p9_req_put(client, req);
 		ret = 0;
 	}
@@ -731,7 +731,7 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 	 * remove it from the list.
 	 */
 	list_del(&req->req_list);
-	req->status = REQ_STATUS_FLSHD;
+	WRITE_ONCE(req->status, REQ_STATUS_FLSHD);
 	spin_unlock(&m->req_lock);
 
 	p9_req_put(client, req);
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 33a9ac6f2d55..83f9100d46bf 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -506,7 +506,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	 * because doing if after could erase the REQ_STATUS_RCVD
 	 * status in case of a very fast reply.
 	 */
-	req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 	err = ib_post_send(rdma->qp, &wr, NULL);
 	if (err)
 		goto send_error;
@@ -516,7 +516,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 
  /* Handle errors that happened during or while preparing the send: */
  send_error:
-	req->status = REQ_STATUS_ERROR;
+	WRITE_ONCE(req->status, REQ_STATUS_ERROR);
 	kfree(c);
 	p9_debug(P9_DEBUG_ERROR, "Error %d in rdma_request()\n", err);
 
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 19bccfa0d593..3c27ffb781e3 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -262,7 +262,7 @@ p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
 
 	p9_debug(P9_DEBUG_TRANS, "9p debug: virtio request\n");
 
-	req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 req_retry:
 	spin_lock_irqsave(&chan->lock, flags);
 
@@ -468,7 +468,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 			inlen = n;
 		}
 	}
-	req->status = REQ_STATUS_SENT;
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
 req_retry_pinned:
 	spin_lock_irqsave(&chan->lock, flags);
 
@@ -531,9 +531,10 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
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
index aaa5fd364691..cf1b89ba522b 100644
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
2.38.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
