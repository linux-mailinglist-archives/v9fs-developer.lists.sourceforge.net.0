Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A55E1692F39
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 08:51:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQkf1-0004Iq-3S;
	Sat, 11 Feb 2023 07:51:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQkez-0004IO-At
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UfsDrit7eLpVkZZfZcRzk8BZOU6gKynjWaH0yapJsnY=; b=lYxZYjS8gbo044axQGrJRjvtqZ
 Z80+5HoxCSThhDmLogndFsAXE14ulWtK+2I23yejRir/NCJCKanYtbfwGtqwG3Z9vOPCaltZQnfMm
 nyDtmKslCuDtDJYmMaWvM4Wn6Hi6fDxwsc2WX3h35xFXwmAjXRlOK+fvYIFEMat3qQSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UfsDrit7eLpVkZZfZcRzk8BZOU6gKynjWaH0yapJsnY=; b=GoiuW2isXUUR9xbZu71UgnX+L9
 v3pdj9Nbjh3BIJAX3bXKqbZkiUbS/laNEQWx3mcsGbq6AU1ameZg57aSpaMZKFN2JYjab7QUmA9B9
 18zpY7xUWwXIWzAvmvcOr7Yh2oQt39jQNBU7h7KtX5XZYtxHpajgvOxnqT2xENJg/cB4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQkev-0001Bh-GG for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 8BD9AC009; Sat, 11 Feb 2023 08:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101874; bh=UfsDrit7eLpVkZZfZcRzk8BZOU6gKynjWaH0yapJsnY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GBM2t+sS5avUYvRjF5rsRwgVGggc9u9dqiKiC5icg2O6vsFE3kcuoL0LOV/SgASNs
 jLR/49+n5k5SExlQXpUt955wZuPAfpyqh6NXvGhcP3y2wTErD34R9XoN/8nO7mimtM
 yRdHraNzyNHO+y50M93xQGUXRO3ItL7Tq/rxHRwgKkGd6zSNbWY5GW8Iyd0u9e6ea0
 s2RMYNMTxusmxsXDu5QVy6XoYTqQ+b07TFH57zBzemu0cFnLFL3owUehAjLorssump
 KL1vgktz2F5MKKj7Bw7QIh9OzmY6HzMObv0SZGW3N/rkhorTM42d0eHUOkZFoMAGh8
 qwajrNOhuYLZQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E1A88C01C;
 Sat, 11 Feb 2023 08:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101874; bh=UfsDrit7eLpVkZZfZcRzk8BZOU6gKynjWaH0yapJsnY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GBM2t+sS5avUYvRjF5rsRwgVGggc9u9dqiKiC5icg2O6vsFE3kcuoL0LOV/SgASNs
 jLR/49+n5k5SExlQXpUt955wZuPAfpyqh6NXvGhcP3y2wTErD34R9XoN/8nO7mimtM
 yRdHraNzyNHO+y50M93xQGUXRO3ItL7Tq/rxHRwgKkGd6zSNbWY5GW8Iyd0u9e6ea0
 s2RMYNMTxusmxsXDu5QVy6XoYTqQ+b07TFH57zBzemu0cFnLFL3owUehAjLorssump
 KL1vgktz2F5MKKj7Bw7QIh9OzmY6HzMObv0SZGW3N/rkhorTM42d0eHUOkZFoMAGh8
 qwajrNOhuYLZQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6bace919;
 Sat, 11 Feb 2023 07:50:43 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat, 11 Feb 2023 16:50:19 +0900
Message-Id: <20230211075023.137253-2-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230211075023.137253-1-asmadeus@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit containers no code change: - move p9_fid_* higher
 in code as p9_fid_destroy will be used in async callback - move
 p9_client_flush
 as it will no longer call p9_client_rpc and can simplify f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pQkev-0001Bh-GG
Subject: [V9fs-developer] [PATCH 1/5] 9p/net: move code in preparation of
 async rpc
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

This commit containers no code change:
 - move p9_fid_* higher in code as p9_fid_destroy will be used
in async callback
 - move p9_client_flush as it will no longer call p9_client_rpc
and can simplify forward declaration a bit later

This just simplifies the next commits to make diffs cleaner.

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/client.c | 198 ++++++++++++++++++++++++------------------------
 1 file changed, 99 insertions(+), 99 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 622ec6a586ee..53ebd07c36ee 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -428,6 +428,66 @@ static void p9_tag_cleanup(struct p9_client *c)
 	rcu_read_unlock();
 }
 
+static struct p9_fid *p9_fid_create(struct p9_client *clnt)
+{
+	int ret;
+	struct p9_fid *fid;
+
+	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
+	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
+	if (!fid)
+		return NULL;
+
+	fid->mode = -1;
+	fid->uid = current_fsuid();
+	fid->clnt = clnt;
+	refcount_set(&fid->count, 1);
+
+	idr_preload(GFP_KERNEL);
+	spin_lock_irq(&clnt->lock);
+	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
+			    GFP_NOWAIT);
+	spin_unlock_irq(&clnt->lock);
+	idr_preload_end();
+	if (!ret) {
+		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
+		return fid;
+	}
+
+	kfree(fid);
+	return NULL;
+}
+
+static void p9_fid_destroy(struct p9_fid *fid)
+{
+	struct p9_client *clnt;
+	unsigned long flags;
+
+	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
+	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
+	clnt = fid->clnt;
+	spin_lock_irqsave(&clnt->lock, flags);
+	idr_remove(&clnt->fids, fid->fid);
+	spin_unlock_irqrestore(&clnt->lock, flags);
+	kfree(fid->rdir);
+	kfree(fid);
+}
+
+/* We also need to export tracepoint symbols for tracepoint_enabled() */
+EXPORT_TRACEPOINT_SYMBOL(9p_fid_ref);
+
+void do_trace_9p_fid_get(struct p9_fid *fid)
+{
+	trace_9p_fid_ref(fid, P9_FID_REF_GET);
+}
+EXPORT_SYMBOL(do_trace_9p_fid_get);
+
+void do_trace_9p_fid_put(struct p9_fid *fid)
+{
+	trace_9p_fid_ref(fid, P9_FID_REF_PUT);
+}
+EXPORT_SYMBOL(do_trace_9p_fid_put);
+
 /**
  * p9_client_cb - call back from transport to client
  * @c: client state
@@ -570,6 +630,45 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
 	return err;
 }
 
+static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
+					      int8_t type, uint t_size, uint r_size,
+					      const char *fmt, va_list ap)
+{
+	int err;
+	struct p9_req_t *req;
+	va_list apc;
+
+	p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);
+
+	/* we allow for any status other than disconnected */
+	if (c->status == Disconnected)
+		return ERR_PTR(-EIO);
+
+	/* if status is begin_disconnected we allow only clunk request */
+	if (c->status == BeginDisconnect && type != P9_TCLUNK)
+		return ERR_PTR(-EIO);
+
+	va_copy(apc, ap);
+	req = p9_tag_alloc(c, type, t_size, r_size, fmt, apc);
+	va_end(apc);
+	if (IS_ERR(req))
+		return req;
+
+	/* marshall the data */
+	p9pdu_prepare(&req->tc, req->tc.tag, type);
+	err = p9pdu_vwritef(&req->tc, c->proto_version, fmt, ap);
+	if (err)
+		goto reterr;
+	p9pdu_finalize(c, &req->tc);
+	trace_9p_client_req(c, type, req->tc.tag);
+	return req;
+reterr:
+	p9_req_put(c, req);
+	/* We have to put also the 2nd reference as it won't be used */
+	p9_req_put(c, req);
+	return ERR_PTR(err);
+}
+
 static struct p9_req_t *
 p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...);
 
@@ -613,45 +712,6 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
 	return 0;
 }
 
-static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
-					      int8_t type, uint t_size, uint r_size,
-					      const char *fmt, va_list ap)
-{
-	int err;
-	struct p9_req_t *req;
-	va_list apc;
-
-	p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);
-
-	/* we allow for any status other than disconnected */
-	if (c->status == Disconnected)
-		return ERR_PTR(-EIO);
-
-	/* if status is begin_disconnected we allow only clunk request */
-	if (c->status == BeginDisconnect && type != P9_TCLUNK)
-		return ERR_PTR(-EIO);
-
-	va_copy(apc, ap);
-	req = p9_tag_alloc(c, type, t_size, r_size, fmt, apc);
-	va_end(apc);
-	if (IS_ERR(req))
-		return req;
-
-	/* marshall the data */
-	p9pdu_prepare(&req->tc, req->tc.tag, type);
-	err = p9pdu_vwritef(&req->tc, c->proto_version, fmt, ap);
-	if (err)
-		goto reterr;
-	p9pdu_finalize(c, &req->tc);
-	trace_9p_client_req(c, type, req->tc.tag);
-	return req;
-reterr:
-	p9_req_put(c, req);
-	/* We have to put also the 2nd reference as it won't be used */
-	p9_req_put(c, req);
-	return ERR_PTR(err);
-}
-
 /**
  * p9_client_rpc - issue a request and wait for a response
  * @c: client session
@@ -838,66 +898,6 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	return ERR_PTR(safe_errno(err));
 }
 
-static struct p9_fid *p9_fid_create(struct p9_client *clnt)
-{
-	int ret;
-	struct p9_fid *fid;
-
-	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
-	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
-	if (!fid)
-		return NULL;
-
-	fid->mode = -1;
-	fid->uid = current_fsuid();
-	fid->clnt = clnt;
-	refcount_set(&fid->count, 1);
-
-	idr_preload(GFP_KERNEL);
-	spin_lock_irq(&clnt->lock);
-	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
-			    GFP_NOWAIT);
-	spin_unlock_irq(&clnt->lock);
-	idr_preload_end();
-	if (!ret) {
-		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
-		return fid;
-	}
-
-	kfree(fid);
-	return NULL;
-}
-
-static void p9_fid_destroy(struct p9_fid *fid)
-{
-	struct p9_client *clnt;
-	unsigned long flags;
-
-	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
-	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
-	clnt = fid->clnt;
-	spin_lock_irqsave(&clnt->lock, flags);
-	idr_remove(&clnt->fids, fid->fid);
-	spin_unlock_irqrestore(&clnt->lock, flags);
-	kfree(fid->rdir);
-	kfree(fid);
-}
-
-/* We also need to export tracepoint symbols for tracepoint_enabled() */
-EXPORT_TRACEPOINT_SYMBOL(9p_fid_ref);
-
-void do_trace_9p_fid_get(struct p9_fid *fid)
-{
-	trace_9p_fid_ref(fid, P9_FID_REF_GET);
-}
-EXPORT_SYMBOL(do_trace_9p_fid_get);
-
-void do_trace_9p_fid_put(struct p9_fid *fid)
-{
-	trace_9p_fid_ref(fid, P9_FID_REF_PUT);
-}
-EXPORT_SYMBOL(do_trace_9p_fid_put);
-
 static int p9_client_version(struct p9_client *c)
 {
 	int err = 0;
-- 
2.39.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
