Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA95564B3E
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 03:43:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8B74-0001jm-Cn; Mon, 04 Jul 2022 01:42:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8B72-0001jf-Ql
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 01:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W+zHT5jRR8HXuSY9qedCWZxOgxUoZg3wMQgKUyUgMPU=; b=AOONJfLtzjVXelztWvAqkZ7Ikj
 YN20QF/nIauYL2ed8KBWcbSDrq5VwXua+wPYHy0d8o56zW0btx4DZoAHTvqG1lieNwLTAeQXCd4E6
 dbf27BsFKilAnJ2dOezx6zTCKZijaRginrwafAMrHWBwXlbHoKQDqoOpVllAeIbwNQAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W+zHT5jRR8HXuSY9qedCWZxOgxUoZg3wMQgKUyUgMPU=; b=AnDQ3Dwc8aD/ehStJ1MkHW4eNf
 LgRbWpvBay91RK+TO/aA69NTDuFxqDKx33NqaKv4jG+yQ0vLlBm64/kZjSIEPIiZZqY8ITeY4tDSB
 AP/6iUcpYATnEsyZVGpHxk98IwmPL22CP0y+A7Eu8Y1dAXo8ucfOZRDa++WQmE4UHU2I=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8B71-006WaY-KE
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 01:42:56 +0000
Received: by mail-qt1-f180.google.com with SMTP id x1so8096907qtv.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 18:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W+zHT5jRR8HXuSY9qedCWZxOgxUoZg3wMQgKUyUgMPU=;
 b=HofjIljn3kbRD4Wm6VdmjRIZ4ODPV2hxrp/AxGfJPB9DDixm6wqF+1PZRoel29qQXW
 Bl8YlLWbvRuva/wvaSeb3dJgJrVXpfCAOdcLkjJNRag9LHOFQdZRZQgXw7XHgLtpRiNi
 QDaq6NJzLh2MK5Kvyy5rhdMgrajy2do5vHpOAJNzPoc/c82K8S1RDYSmLRbnHF4lPj0h
 ETsAR9IWHevBzhNkFpK4An/JGUpFstMNC31CRVzjb9wCZnLjDkK/0oumWh2DYb32nm+n
 /kM2oED+PAGh5tt4s40c1i+bhlr9MaMwBffj++RW8cODdID7B5LL6lh91XYrd1ZvOApu
 rrKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W+zHT5jRR8HXuSY9qedCWZxOgxUoZg3wMQgKUyUgMPU=;
 b=ZYcNex8LIY4loowVSZfWiAJPnvsImVMxvs6IJKRpS1dWte9pKOIHktmbw0SRcBc6rQ
 /xht+xjHhCAVOOfk3ubWOFEUtEHcyeMy8oRrnaUU8/ZJrrOlceZSLr/a/yqPAAvvIWcJ
 tOnrSYso/VnRkeBF264stsOu5Rj/VY2njyBUfiDbgp8FoutTu8C2SuFhmb0E1vsjwsJj
 Y+UpGDiXFXdkCTftSm5uY+VPbcUQQ72Ka5pDwbLm8ziwVeWgCCOdq1TP+2BreHX3v8wL
 xhRAvg4uHTwjWAZX6eYqiRpsTNeUIla+advls59n/hBAUzMeAZClST3qqKPxwZHtBH5o
 HrOw==
X-Gm-Message-State: AJIora+/ZGmb3WSTTbEMNLcFZIXLKOBWM0aWD7bP9NBbBmt4O9xT7QQ2
 quhgmDZKUGfRso+w+8H/fA==
X-Google-Smtp-Source: AGRyM1udPMH1B+N5yMLKzjTYqVyENfEMU/tSF9yN+0/kL1ClqABivF+69COLnpXDogM/t66IlXtXBA==
X-Received: by 2002:a05:622a:1213:b0:319:13fa:3a4f with SMTP id
 y19-20020a05622a121300b0031913fa3a4fmr21868211qtx.379.1656898969863; 
 Sun, 03 Jul 2022 18:42:49 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 de4-20020a05620a370400b006b253a6dd1fsm7284265qkb.125.2022.07.03.18.42.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 18:42:49 -0700 (PDT)
From: Kent Overstreet <kent.overstreet@gmail.com>
To: linux-kernel@vger.kernel.org
Date: Sun,  3 Jul 2022 21:42:42 -0400
Message-Id: <20220704014243.153050-2-kent.overstreet@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220704014243.153050-1-kent.overstreet@gmail.com>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704014243.153050-1-kent.overstreet@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is to aid in adding mempools,
 in the next patch. Signed-off-by:
 Kent Overstreet Cc: Eric Van Hensbergen Cc: Latchesar Ionkov Cc: Dominique
 Martinet --- include/net/9p/client.h | 2 +- net/9p/client.c | 12 ++++++------
 net/9p/trans_fd.c | 12 + [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.180 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o8B71-006WaY-KE
Subject: [V9fs-developer] [PATCH 2/3] 9p: Add client parameter to
 p9_req_put()
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is to aid in adding mempools, in the next patch.

Signed-off-by: Kent Overstreet <kent.overstreet@gmail.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
---
 include/net/9p/client.h |  2 +-
 net/9p/client.c         | 12 ++++++------
 net/9p/trans_fd.c       | 12 ++++++------
 net/9p/trans_rdma.c     |  2 +-
 net/9p/trans_virtio.c   |  4 ++--
 net/9p/trans_xen.c      |  2 +-
 6 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index c038c2d73d..cb78e0e333 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -235,7 +235,7 @@ static inline int p9_req_try_get(struct p9_req_t *r)
 	return refcount_inc_not_zero(&r->refcount);
 }
 
-int p9_req_put(struct p9_req_t *r);
+int p9_req_put(struct p9_client *c, struct p9_req_t *r);
 
 void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status);
 
diff --git a/net/9p/client.c b/net/9p/client.c
index 0ee48e8b72..a36a40137c 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -341,7 +341,7 @@ struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
 		if (!p9_req_try_get(req))
 			goto again;
 		if (req->tc.tag != tag) {
-			p9_req_put(req);
+			p9_req_put(c, req);
 			goto again;
 		}
 	}
@@ -367,10 +367,10 @@ static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 	spin_lock_irqsave(&c->lock, flags);
 	idr_remove(&c->reqs, tag);
 	spin_unlock_irqrestore(&c->lock, flags);
-	return p9_req_put(r);
+	return p9_req_put(c, r);
 }
 
-int p9_req_put(struct p9_req_t *r)
+int p9_req_put(struct p9_client *c, struct p9_req_t *r)
 {
 	if (refcount_dec_and_test(&r->refcount)) {
 		p9_fcall_fini(&r->tc);
@@ -423,7 +423,7 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 
 	wake_up(&req->wq);
 	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
-	p9_req_put(req);
+	p9_req_put(c, req);
 }
 EXPORT_SYMBOL(p9_client_cb);
 
@@ -706,7 +706,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 reterr:
 	p9_tag_remove(c, req);
 	/* We have to put also the 2nd reference as it won't be used */
-	p9_req_put(req);
+	p9_req_put(c, req);
 	return ERR_PTR(err);
 }
 
@@ -743,7 +743,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	err = c->trans_mod->request(c, req);
 	if (err < 0) {
 		/* write won't happen */
-		p9_req_put(req);
+		p9_req_put(c, req);
 		if (err != -ERESTARTSYS && err != -EFAULT)
 			c->status = Disconnected;
 		goto recalc_sigpending;
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 8f8f95e39b..007c3f45fe 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -378,7 +378,7 @@ static void p9_read_work(struct work_struct *work)
 		m->rc.sdata = NULL;
 		m->rc.offset = 0;
 		m->rc.capacity = 0;
-		p9_req_put(m->rreq);
+		p9_req_put(m->client, m->rreq);
 		m->rreq = NULL;
 	}
 
@@ -492,7 +492,7 @@ static void p9_write_work(struct work_struct *work)
 	m->wpos += err;
 	if (m->wpos == m->wsize) {
 		m->wpos = m->wsize = 0;
-		p9_req_put(m->wreq);
+		p9_req_put(m->client, m->wreq);
 		m->wreq = NULL;
 	}
 
@@ -695,7 +695,7 @@ static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
 	if (req->status == REQ_STATUS_UNSENT) {
 		list_del(&req->req_list);
 		req->status = REQ_STATUS_FLSHD;
-		p9_req_put(req);
+		p9_req_put(client, req);
 		ret = 0;
 	}
 	spin_unlock(&client->lock);
@@ -722,7 +722,7 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 	list_del(&req->req_list);
 	req->status = REQ_STATUS_FLSHD;
 	spin_unlock(&client->lock);
-	p9_req_put(req);
+	p9_req_put(client, req);
 
 	return 0;
 }
@@ -883,12 +883,12 @@ static void p9_conn_destroy(struct p9_conn *m)
 	p9_mux_poll_stop(m);
 	cancel_work_sync(&m->rq);
 	if (m->rreq) {
-		p9_req_put(m->rreq);
+		p9_req_put(m->client, m->rreq);
 		m->rreq = NULL;
 	}
 	cancel_work_sync(&m->wq);
 	if (m->wreq) {
-		p9_req_put(m->wreq);
+		p9_req_put(m->client, m->wreq);
 		m->wreq = NULL;
 	}
 
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 88e5638266..d817d37452 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -350,7 +350,7 @@ send_done(struct ib_cq *cq, struct ib_wc *wc)
 			    c->busa, c->req->tc.size,
 			    DMA_TO_DEVICE);
 	up(&rdma->sq_sem);
-	p9_req_put(c->req);
+	p9_req_put(client, c->req);
 	kfree(c);
 }
 
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index b24a4fb0f0..147972bf2e 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -199,7 +199,7 @@ static int p9_virtio_cancel(struct p9_client *client, struct p9_req_t *req)
 /* Reply won't come, so drop req ref */
 static int p9_virtio_cancelled(struct p9_client *client, struct p9_req_t *req)
 {
-	p9_req_put(req);
+	p9_req_put(client, req);
 	return 0;
 }
 
@@ -523,7 +523,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	kvfree(out_pages);
 	if (!kicked) {
 		/* reply won't come */
-		p9_req_put(req);
+		p9_req_put(client, req);
 	}
 	return err;
 }
diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 77883b6788..4cf0c78d4d 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -163,7 +163,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
 	ring->intf->out_prod = prod;
 	spin_unlock_irqrestore(&ring->lock, flags);
 	notify_remote_via_irq(ring->irq);
-	p9_req_put(p9_req);
+	p9_req_put(client, p9_req);
 
 	return 0;
 }
-- 
2.36.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
