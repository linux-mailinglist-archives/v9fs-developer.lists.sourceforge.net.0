Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 665685AC35C
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 09:56:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUkUN-0002DR-AD;
	Sun, 04 Sep 2022 07:56:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUkUA-0002DE-9h
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 07:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RSLgPrhQqbW72basg88SEZLdG8kXMwkENFlWHAvbrUE=; b=F+NnrxDAYVIkCwSV0I8kIJGC73
 /u7fGvat5GEUU4EIITvaew/XM8Np14jDVrwXTfOKPgcROYZ6ye/U1+TtvvW6TvH/4S6914P+hDxTS
 drM7TBjlOjEBqP3ocsSxgOXxYt+Kqnavc6ZGub7CRHUyD588bgMLGT+jHFiPkeGk89no=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RSLgPrhQqbW72basg88SEZLdG8kXMwkENFlWHAvbrUE=; b=Q
 XVBCN2QssWKNG4lAmrskSrU5AaUcSDTCXFydfbq84J/0EGBKeKee+TRkRQdz6rFhESCphDk1OG5/0
 an6+D/pxsb3scMGJMRElP9Y1O37APQOcTlyjnPrIy2kd93IH5fGAFJ0dyKfY8i9HBrqXQJ8L/2LhP
 ZVxQ/Jmkt8Py2BHI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUkU5-00Dcqn-3p for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 07:56:06 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 64826C020; Sun,  4 Sep 2022 09:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662278148; bh=RSLgPrhQqbW72basg88SEZLdG8kXMwkENFlWHAvbrUE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=UWzaMk8tLv9n/CyXVDy2918RAp9YPf1ZaRe8VBq2Klw/RptI7TEdlMRbb/9R7sbQr
 FaUePCS8r5yXsVwYpZSVdICH0gtls3asr7sYTB20lQrIH+kvmnMnp8sdSCZmJn7vHT
 ylYLFv6Obyxt7Jwas/xgOz5u5O57xJ88C5o6+SmIYKwRuewzQ56uCi3qSPg+RP+EZR
 7lW9W3mlU2kK0RskNEjpUktn84giIJeKNxZK6KrhvheYEGNkkKoO9qWjqQQdpwsOB/
 veKf6Gq3fmq9Nv/Ie8iA94X3UTvvv4IPziIw3A3jESqJZskgcGGvySQD9PSUZ129Uk
 uCwKrVVLerdtg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 76DABC009;
 Sun,  4 Sep 2022 09:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662278146; bh=RSLgPrhQqbW72basg88SEZLdG8kXMwkENFlWHAvbrUE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=BdzzO1zC0MC4Gjlvddo6jtCB1vDqaWavxnBobJwlwQd+UIErJe7MQPGGGny6lOIXi
 SdwhwPqtEkcgf/4EqwpIMycqx1NKBVZ36sdpLsXzsuI/DhdDUTjy/ilrn9gXW/9Fv/
 WXOrZ+Xwb+WL32+9mR1Y4n50n4OGxsVpS/LbMTSUklt8YZBwrwyL27q1YS3sM06alU
 PJ94ZUHmrKkhw22hhRI1YkF96Hgw+rZ2RptbEEi3czeLJF9ftmc7nnXN0A/CbjrhUQ
 xlSed6bI7voTF4K/EKZ47/wVUvzcmhR9XpDHMLNt8OlxLW2ROfIo6ftST/diIfMH3K
 oz+6FFijsjmFQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8d837fb6;
 Sun, 4 Sep 2022 07:55:42 +0000 (UTC)
Date: Sun, 4 Sep 2022 16:55:27 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YxRZ7xtcUiYcPaw0@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40f15366-6027-ec7a-e151-bcc108855cb8@I-love.SAKURA.ne.jp>
 <68540a56-6a5f-87e9-3c21-49c58758bfaf@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tetsuo Handa wrote on Sun, Sep 04, 2022 at 04:06:36PM +0900:
 > Changes in v2: > Make this spinlock per "struct p9_client", though I don't
 know how we > should update "@lock" when "@idr_lock" also prot [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oUkU5-00Dcqn-3p
Subject: Re: [V9fs-developer] [PATCH v2] net/9p: use a dedicated spinlock
 for modifying IDR
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tetsuo Handa wrote on Sun, Sep 04, 2022 at 04:06:36PM +0900:
> Changes in v2:
>   Make this spinlock per "struct p9_client", though I don't know how we
>   should update "@lock" when "@idr_lock" also protects @fids and @reqs...

Sorry for the trouble, this is not what I meant: this v2 makes 'lock'
being unused except for trans_fd, which isn't optimal for other
transports like e.g. virtio or rdma.

In hindsight it's probably faster to just send a diff... Happy to keep
you as author if you'd like, or sign off or whatever you prefer -- I
wouldn't have guessed what that report meant without you.

(Reply to your other mail after the diff chunk)

---
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index ef5760971f1e..5b4807411281 100644
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
@@ -670,10 +672,10 @@ static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
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
@@ -688,11 +690,13 @@ static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
 
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
@@ -700,21 +704,24 @@ static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
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
 
@@ -723,7 +730,8 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 	 */
 	list_del(&req->req_list);
 	req->status = REQ_STATUS_FLSHD;
-	spin_unlock(&client->lock);
+	spin_unlock(&m->req_lock);
+
 	p9_req_put(client, req);
 
 	return 0;
@@ -832,6 +840,7 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 
 	client->trans = ts;
 	client->status = Connected;
+	spin_lock_init(&ts->conn.req_lock);
 
 	return 0;
 
@@ -866,6 +875,7 @@ static int p9_socket_open(struct p9_client *client, struct socket *csocket)
 	p->wr = p->rd = file;
 	client->trans = p;
 	client->status = Connected;
+	spin_lock_init(&p->conn.req_lock);
 
 	p->rd->f_flags |= O_NONBLOCK;
 
---


Tetsuo Handa wrote on Sun, Sep 04, 2022 at 04:17:37PM +0900:
> On 2022/09/04 15:36, Dominique Martinet wrote:
> > We have an idr per client though so this is needlessly adding contention
> > between multiple 9p mounts.
> > 
> > That probably doesn't matter too much in the general case,
> 
> I thought this is not a hot operation where contention matters.

Each IO on the filesystem will take this lock, so while I assume idr
will likely be orders of magnitude faster than any network call we might
as well keep it as separate as possible.
I don't know.

> >                                                            but adding a
> > different lock per connection is cheap so let's do it the other way
> > around: could you add a lock to the p9_conn struct in net/9p/trans_fd.c
> > and replace c->lock by it there?
> 
> Not impossible, but may not be cheap for lockdep.

It's still a single lock per mount, for most syzcaller tests with a
single mount call it should be identical?

> > That should have identical effect as other transports don't use client's
> > .lock ; and the locking in trans_fd.c is to protect req's status and
> > trans_fd's own lists which is orthogonal to client's lock that protects
> > tag allocations. I agree it should work in theory.
> > 
> > (If you don't have time to do this this patch has been helpful enough and
> > I can do it eventually)
> 
> Sent as https://lkml.kernel.org/r/68540a56-6a5f-87e9-3c21-49c58758bfaf@I-love.SAKURA.ne.jp .
> 
> By the way, I think credit for the patch on
> https://syzkaller.appspot.com/bug?extid=50f7e8d06c3768dd97f3 goes to
> Hillf Danton...

Eh, with your link I'd agree, but I never got any mail from him.

Looking at the patch link, he dropped v9fs-developer, netdev and all the
maintainers from his patch (kept syzcaller, linux-kernel@vger and
syzbot) so I don't think I can realisticly be expected to know he
submitted a patch...

As a matter of fact I've implemented the exact same solution on Aug 17 a
week later, and another first time contributor sent another patch on
Sept 1st as I didn't send a separate mail for it either; this is a bit
ridiculous... Would have saved me time if he'd just kept the bare
minimum of Ccs :/


Well, I honestly don't care -- he was first so sure, if he speaks up I
can change the author, but I'm definitely not going to go out of my way
for someone who didn't help me; I already don't have enough time for
9p...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
