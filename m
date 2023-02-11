Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E13692F3E
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 08:51:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQkfE-0005f2-Pl;
	Sat, 11 Feb 2023 07:51:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQkfA-0005er-0T
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ZCkzS/1FJu9PN2kIb6WCyEHTHdTNKRX/Kb4Z8zBiuU=; b=Ge5kon695jR0XoIToOwGH4NrJY
 bGUu1Hj5EZikc6FZCYhxz8J2XAsgxwsxvNKQUdHpdftcoWDpjouzkq0tDFfCIUZea0eIpGUkcELEy
 OAy6T1hipXntGX1Nug/3GIXGs7iAtsnTyT9ClXFOk4LfJp1qh6oORl5jLSQ3NbzwEiTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1ZCkzS/1FJu9PN2kIb6WCyEHTHdTNKRX/Kb4Z8zBiuU=; b=TqAtWgOJSlYP8Hu6QYPELK2ZUP
 aUth8D7o8hw/86Uur0Zni9gW7CQmueeZrN4Yt4EbYXKBwa91hRsK8vkG6xCNb7tAZ68PjQQNRSIh2
 3+nD/oT6mB6LbhyKAUJ2CwkuGtvMfQLUqXEic2gv9i26Dhv39SYKxLeyCpYiwXab3W74=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQkf7-000XWk-JA for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:10 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E4DE0C021; Sat, 11 Feb 2023 08:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101884; bh=1ZCkzS/1FJu9PN2kIb6WCyEHTHdTNKRX/Kb4Z8zBiuU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FFfGekOYXnoh1WZXa8GR5ZRxScwZ+i9OleOFSOm2iWZemv1+QkL5IrvvGGeMFuphu
 /LhRlhAhNlrSSjUQ5ZHae6tqVuBFXHc0i16w9UhKVvDsDFfHoAdad3muomW2/iF0ac
 Ze/iBUw68o/08l+gajhuWXjEfK8SqP32G5WYebnK6anJGpRjhLphOY4FWkhVb1aGv/
 7+TZo+MjjWi/FS0+fPmgdF3KFzxlcnpzED81bEYc1o4lH7X0LrKVW8XeKOXPb558Ts
 uw0K13bun9feN9wTa2HJUt5XM+k8LHrQcVoOF03k+LhK+oQmEMdMoO6fEJT/u9ytkl
 UBg1TeVJZdl9g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1DE1DC01A;
 Sat, 11 Feb 2023 08:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101883; bh=1ZCkzS/1FJu9PN2kIb6WCyEHTHdTNKRX/Kb4Z8zBiuU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X4NQ6MeXwb+i+vda9m4Q9nZoPwdd0RNT2LU5zT2URgRjLPnX9aBfc9Hm3kzd9wAF3
 Fv7MrG6ZSh4ZGjXUtqP9OYbtO9Snyj7zauP5VPtEdnsv0/5uq72JvpUYGF/OsghjMD
 c5XPJKiDY2sfqwf8HKm3OJ7PuU2tomjh+sACG+Gk8TUu5UPMLVbJ2oOakHh6hdujgM
 ZlHJ9gt0VNDEjxnENVwqTD2MFjB2ZlfMPvPOzXIk9vItLemK8g+wF78dF4ukQgZIG9
 LNJNs5SMeQhIKaiBiea55MPHNDGNOx9xWZJkmN1nwBr1feRLngzG32TPyMqW7M/g8U
 pwi7+YwKK73ZA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6d213fc5;
 Sat, 11 Feb 2023 07:50:46 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat, 11 Feb 2023 16:50:21 +0900
Message-Id: <20230211075023.137253-4-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230211075023.137253-1-asmadeus@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add p9_client_async_rpc that will let us send an rpc without
 waiting for the reply, as well as an async callback hook. The callback is
 called,
 but nothing is ever put in the list at this point and p9_client_async_rpc()
 is unused. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pQkf7-000XWk-JA
Subject: [V9fs-developer] [PATCH 3/5] 9p/net: implement asynchronous rpc
 skeleton
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Pengfei Xu <pengfei.xu@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add p9_client_async_rpc that will let us send an rpc without waiting
for the reply, as well as an async callback hook.

The callback is called, but nothing is ever put in the list at this
point and p9_client_async_rpc() is unused.

Previous version of this patch here[1] used to implement the async check
separately from the callback, but we will want to be notified when flush
has been processed.

Link: http://lkml.kernel.org/r/1544532108-21689-1-git-send-email-asmadeus@codewreck.org (v1)
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 include/net/9p/client.h |  9 ++++-
 net/9p/client.c         | 76 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 1 deletion(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index 78ebcf782ce5..348ea191ac66 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -72,7 +72,8 @@ enum p9_req_status_t {
  * @wq: wait_queue for the client to block on for this request
  * @tc: the request fcall structure
  * @rc: the response fcall structure
- * @req_list: link for higher level objects to chain requests
+ * @req_list: link for transports to chain requests (used by trans_fd)
+ * @async_list: link used to check on async requests
  */
 struct p9_req_t {
 	int status;
@@ -82,6 +83,7 @@ struct p9_req_t {
 	struct p9_fcall tc;
 	struct p9_fcall rc;
 	struct list_head req_list;
+	struct list_head async_list;
 };
 
 /**
@@ -92,6 +94,9 @@ struct p9_req_t {
  * @trans_mod: module API instantiated with this client
  * @status: connection state
  * @trans: tranport instance state and API
+ * @fcall_cache: kmem cache for client request data (msize-specific)
+ * @async_req_lock: protects @async_req_list
+ * @async_req_list: list of requests waiting a reply
  * @fids: All active FID handles
  * @reqs: All active requests.
  * @name: node name used as client id
@@ -107,6 +112,8 @@ struct p9_client {
 	enum p9_trans_status status;
 	void *trans;
 	struct kmem_cache *fcall_cache;
+	spinlock_t async_req_lock;
+	struct list_head async_req_list;
 
 	union {
 		struct {
diff --git a/net/9p/client.c b/net/9p/client.c
index 4e5238db4a7a..3235543c1884 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -311,6 +311,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
 	refcount_set(&req->refcount, 0);
 	init_waitqueue_head(&req->wq);
 	INIT_LIST_HEAD(&req->req_list);
+	INIT_LIST_HEAD(&req->async_list);
 
 	idr_preload(GFP_NOFS);
 	spin_lock_irq(&c->lock);
@@ -495,6 +496,27 @@ void do_trace_9p_fid_put(struct p9_fid *fid)
 }
 EXPORT_SYMBOL(do_trace_9p_fid_put);
 
+/**
+ * p9_client_async_cb -- handle async requests in cb
+ * @c: client state
+ * @req: request received
+ */
+static void p9_client_async_cb(struct p9_client *c, struct p9_req_t *req)
+{
+	unsigned long flags;
+
+	/* Nothing to do for non-async requests */
+	if (likely(list_empty(&req->async_list)))
+		return;
+
+	WARN(1, "Async request received with tc.id %d\n", req->tc.id);
+
+	spin_lock_irqsave(&c->async_req_lock, flags);
+	list_del(&req->async_list);
+	spin_unlock_irqrestore(&c->async_req_lock, flags);
+	p9_tag_remove(c, req);
+}
+
 /**
  * p9_client_cb - call back from transport to client
  * @c: client state
@@ -506,6 +528,8 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 {
 	p9_debug(P9_DEBUG_MUX, " tag %d\n", req->tc.tag);
 
+	p9_client_async_cb(c, req);
+
 	/* This barrier is needed to make sure any change made to req before
 	 * the status change is visible to another thread
 	 */
@@ -676,6 +700,54 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 	return ERR_PTR(err);
 }
 
+static struct p9_req_t *
+p9_client_async_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
+{
+	va_list ap;
+	int err;
+	struct p9_req_t *req;
+
+	va_start(ap, fmt);
+	/* auto determine an appropriate request/response size */
+	req = p9_client_prepare_req(c, type, 0, 0, fmt, ap);
+	va_end(ap);
+	if (IS_ERR(req))
+		return req;
+
+	err = c->trans_mod->request(c, req);
+	if (err < 0) {
+		/* bail out without flushing... */
+		p9_req_put(c, req);
+		p9_tag_remove(c, req);
+		if (err != -ERESTARTSYS && err != -EFAULT)
+			c->status = Disconnected;
+		return ERR_PTR(safe_errno(err));
+	}
+
+	return req;
+}
+
+static void p9_client_cleanup_async(struct p9_client *c)
+{
+	struct p9_req_t *req, *nreq;
+	unsigned long flags;
+
+	spin_lock_irqsave(&c->async_req_lock, flags);
+	list_for_each_entry_safe(req, nreq, &c->async_req_list, async_list) {
+		if (req->status < REQ_STATUS_RCVD) {
+			p9_debug(P9_DEBUG_ERROR,
+				 "final async handler found req tag %d type %d status %d\n",
+				 req->tc.tag, req->tc.id, req->status);
+			if (c->trans_mod->cancelled)
+				c->trans_mod->cancelled(c, req);
+			/* won't receive reply now */
+			p9_req_put(c, req);
+		}
+		p9_client_async_cb(c, req);
+	}
+	spin_unlock_irqrestore(&c->async_req_lock, flags);
+}
+
 static struct p9_req_t *
 p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...);
 
@@ -983,6 +1055,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	memcpy(clnt->name, client_id, strlen(client_id) + 1);
 
 	spin_lock_init(&clnt->lock);
+	spin_lock_init(&clnt->async_req_lock);
+	INIT_LIST_HEAD(&clnt->async_req_list);
 	idr_init(&clnt->fids);
 	idr_init(&clnt->reqs);
 
@@ -1059,6 +1133,8 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	v9fs_put_trans(clnt->trans_mod);
 
+	p9_client_cleanup_async(clnt);
+
 	idr_for_each_entry(&clnt->fids, fid, id) {
 		pr_info("Found fid %d not clunked\n", fid->fid);
 		p9_fid_destroy(fid);
-- 
2.39.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
