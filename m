Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B4D601E42
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Oct 2022 02:08:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1okaA0-0003PW-Fc;
	Tue, 18 Oct 2022 00:08:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1oka9y-0003P8-IK
 for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 00:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3XZjl9ISxMpTQAri461jngd6DIVv0N2mmpsmMi9uHxY=; b=NzHBg2R3yEnD4kwG+Tcct6ZCem
 Ms/mu9mbS5TI3HKNnjuZsEZBSu79Qb0X/3+M1Lj+tf+VhGQ82RRvbjQY/DtjI2BNbG5l1kfdWyZ5b
 bRlegVSFlgShwbBm+JHAwvwN1RMgVIkHX3JwwhJUsDecQomnN4edNks0/rMl1e/ugCMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3XZjl9ISxMpTQAri461jngd6DIVv0N2mmpsmMi9uHxY=; b=PXJh0RIzrQIWIB9OsuoGYeEWBc
 DqwkJxqT5++vO+CF5YUnTVe4whQQYd21/M94+/LMlECf1HgTCmpWTRvqEhnmTsvJiD/bDI3cyRaG2
 IUwCpTJK6I2I+B9G7KX8NuVTECtJ2ReiWm/xHVAOQ/TJ0gAMN4uX17ny+TKsB5MjwbXM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oka9w-000203-K5 for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 00:08:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 65FED61336;
 Tue, 18 Oct 2022 00:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5D42C43142;
 Tue, 18 Oct 2022 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666051715;
 bh=dNz2SZIpX7ivFCRXW1DUMw0Nbs8Gdkuuccw+VgLpZjw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZbJrnLQgiZCI54Dd19lRLOF2uD5NzUJmaVRf39skki54U++bNfXfEfjN/eOqego41
 J+PuEcds2BGStYWnlWA62vZVHXswAcZNe5l1DstVKejcqvt12fvmYkBiKa2ybZ2aNl
 nEmeXEYCt87AS7p6ORpz0IteTkOzQUDe38Ph7OYvwxY4OPYLTANkvtQNECgQqGk6zG
 Z+rTGbsyxtuDNfAZxA/BUkbhnFzqaVN4Or/wS+IARnZIrjPwRjMH/2VTWJ0P9+l1sb
 t3WIqgKJR3sxryd8W1U1jnXiHlazFlN86sQN+99wkgysXWjGKBWYBhXmUeggLUfI/h
 Y7W3uZZ7eORHA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 17 Oct 2022 20:07:27 -0400
Message-Id: <20221018000729.2730519-30-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221018000729.2730519-1-sashal@kernel.org>
References: <20221018000729.2730519-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dominique Martinet <asmadeus@codewreck.org> [ Upstream
 commit 296ab4a813841ba1d5f40b03190fd1bd8f25aab0 ] Shamelessly copying the
 explanation from Tetsuo Handa's suggested patch[1] (slightly reworded): syzbot
 is reporting inconsistent lock state in p9_req_put()[2], for p9_tag_remove()
 from p9_req_put() fr [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oka9w-000203-K5
Subject: [V9fs-developer] [PATCH AUTOSEL 6.0 30/32] net/9p: use a dedicated
 spinlock for trans_fd
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
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, ericvh@gmail.com,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

[ Upstream commit 296ab4a813841ba1d5f40b03190fd1bd8f25aab0 ]

Shamelessly copying the explanation from Tetsuo Handa's suggested
patch[1] (slightly reworded):
syzbot is reporting inconsistent lock state in p9_req_put()[2],
for p9_tag_remove() from p9_req_put() from IRQ context is using
spin_lock_irqsave() on "struct p9_client"->lock but trans_fd
(not from IRQ context) is using spin_lock().

Since the locks actually protect different things in client.c and in
trans_fd.c, just replace trans_fd.c's lock by a new one specific to the
transport (client.c's protect the idr for fid/tag allocations,
while trans_fd.c's protects its own req list and request status field
that acts as the transport's state machine)

Link: https://lore.kernel.org/r/20220904112928.1308799-1-asmadeus@codewreck.org
Link: https://lkml.kernel.org/r/2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp [1]
Link: https://syzkaller.appspot.com/bug?extid=2f20b523930c32c160cc [2]
Reported-by: syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>
Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/trans_fd.c | 41 +++++++++++++++++++++++++----------------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 90f8642a7cf3..0191f22d1ec3 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -91,6 +91,7 @@ struct p9_poll_wait {
  * @mux_list: list link for mux to manage multiple connections (?)
  * @client: reference to client instance for this connection
  * @err: error state
+ * @req_lock: lock protecting req_list and requests statuses
  * @req_list: accounting for requests which have been sent
  * @unsent_req_list: accounting for requests that haven't been sent
  * @rreq: read request
@@ -114,6 +115,7 @@ struct p9_conn {
 	struct list_head mux_list;
 	struct p9_client *client;
 	int err;
+	spinlock_t req_lock;
 	struct list_head req_list;
 	struct list_head unsent_req_list;
 	struct p9_req_t *rreq;
@@ -189,10 +191,10 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 
 	p9_debug(P9_DEBUG_ERROR, "mux %p err %d\n", m, err);
 
-	spin_lock(&m->client->lock);
+	spin_lock(&m->req_lock);
 
 	if (m->err) {
-		spin_unlock(&m->client->lock);
+		spin_unlock(&m->req_lock);
 		return;
 	}
 
@@ -205,7 +207,7 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 		list_move(&req->req_list, &cancel_list);
 	}
 
-	spin_unlock(&m->client->lock);
+	spin_unlock(&m->req_lock);
 
 	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
 		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
@@ -360,7 +362,7 @@ static void p9_read_work(struct work_struct *work)
 	if ((m->rreq) && (m->rc.offset == m->rc.capacity)) {
 		p9_debug(P9_DEBUG_TRANS, "got new packet\n");
 		m->rreq->rc.size = m->rc.offset;
-		spin_lock(&m->client->lock);
+		spin_lock(&m->req_lock);
 		if (m->rreq->status == REQ_STATUS_SENT) {
 			list_del(&m->rreq->req_list);
 			p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);
@@ -369,14 +371,14 @@ static void p9_read_work(struct work_struct *work)
 			p9_debug(P9_DEBUG_TRANS,
 				 "Ignore replies associated with a cancelled request\n");
 		} else {
-			spin_unlock(&m->client->lock);
+			spin_unlock(&m->req_lock);
 			p9_debug(P9_DEBUG_ERROR,
 				 "Request tag %d errored out while we were reading the reply\n",
 				 m->rc.tag);
 			err = -EIO;
 			goto error;
 		}
-		spin_unlock(&m->client->lock);
+		spin_unlock(&m->req_lock);
 		m->rc.sdata = NULL;
 		m->rc.offset = 0;
 		m->rc.capacity = 0;
@@ -454,10 +456,10 @@ static void p9_write_work(struct work_struct *work)
 	}
 
 	if (!m->wsize) {
-		spin_lock(&m->client->lock);
+		spin_lock(&m->req_lock);
 		if (list_empty(&m->unsent_req_list)) {
 			clear_bit(Wworksched, &m->wsched);
-			spin_unlock(&m->client->lock);
+			spin_unlock(&m->req_lock);
 			return;
 		}
 
@@ -472,7 +474,7 @@ static void p9_write_work(struct work_struct *work)
 		m->wpos = 0;
 		p9_req_get(req);
 		m->wreq = req;
-		spin_unlock(&m->client->lock);
+		spin_unlock(&m->req_lock);
 	}
 
 	p9_debug(P9_DEBUG_TRANS, "mux %p pos %d size %d\n",
@@ -589,6 +591,7 @@ static void p9_conn_create(struct p9_client *client)
 	INIT_LIST_HEAD(&m->mux_list);
 	m->client = client;
 
+	spin_lock_init(&m->req_lock);
 	INIT_LIST_HEAD(&m->req_list);
 	INIT_LIST_HEAD(&m->unsent_req_list);
 	INIT_WORK(&m->rq, p9_read_work);
@@ -670,10 +673,10 @@ static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
 	if (m->err < 0)
 		return m->err;
 
-	spin_lock(&client->lock);
+	spin_lock(&m->req_lock);
 	req->status = REQ_STATUS_UNSENT;
 	list_add_tail(&req->req_list, &m->unsent_req_list);
-	spin_unlock(&client->lock);
+	spin_unlock(&m->req_lock);
 
 	if (test_and_clear_bit(Wpending, &m->wsched))
 		n = EPOLLOUT;
@@ -688,11 +691,13 @@ static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
 
 static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
 {
+	struct p9_trans_fd *ts = client->trans;
+	struct p9_conn *m = &ts->conn;
 	int ret = 1;
 
 	p9_debug(P9_DEBUG_TRANS, "client %p req %p\n", client, req);
 
-	spin_lock(&client->lock);
+	spin_lock(&m->req_lock);
 
 	if (req->status == REQ_STATUS_UNSENT) {
 		list_del(&req->req_list);
@@ -700,21 +705,24 @@ static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
 		p9_req_put(client, req);
 		ret = 0;
 	}
-	spin_unlock(&client->lock);
+	spin_unlock(&m->req_lock);
 
 	return ret;
 }
 
 static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 {
+	struct p9_trans_fd *ts = client->trans;
+	struct p9_conn *m = &ts->conn;
+
 	p9_debug(P9_DEBUG_TRANS, "client %p req %p\n", client, req);
 
-	spin_lock(&client->lock);
+	spin_lock(&m->req_lock);
 	/* Ignore cancelled request if message has been received
 	 * before lock.
 	 */
 	if (req->status == REQ_STATUS_RCVD) {
-		spin_unlock(&client->lock);
+		spin_unlock(&m->req_lock);
 		return 0;
 	}
 
@@ -723,7 +731,8 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 	 */
 	list_del(&req->req_list);
 	req->status = REQ_STATUS_FLSHD;
-	spin_unlock(&client->lock);
+	spin_unlock(&m->req_lock);
+
 	p9_req_put(client, req);
 
 	return 0;
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
