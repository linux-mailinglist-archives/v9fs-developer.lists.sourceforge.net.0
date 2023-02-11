Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9189692F3C
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 08:51:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQkfC-0004JL-Ew;
	Sat, 11 Feb 2023 07:51:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQkfA-0004JD-SX
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Awb21O0vXpVV+2crD+UEksVt5c15/VZc1nIv355OlHo=; b=WLQTw2hFc9loNTV0o1t4nYCRY5
 VKf108u1QYMDnXuVjcjy37nhkaA5CjGOdiywsEaAkVGaajDeaQTasVVGy++4UMe1/Vgeao95tGHDE
 pqmLKW0DiM1X8SisW+C7AqZJlLkX1Y28RWSy6nYAtpCj/shlh3opMxOBtBq1e+B1BGek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Awb21O0vXpVV+2crD+UEksVt5c15/VZc1nIv355OlHo=; b=L+Mtj1e4og47bxtFpkxGv26QoT
 kmpNXF8y+AoPBRudVcwA6w9m+WoxGiFSR/ZnsUZ302wOTN9li6pxoAnOqLf/g7DZX9Hu/fOTncBAZ
 XuH4LvQcll5Vmdd3KnqUiXZpqdM5/Mbaj9hmBmd/veJ9RJgYe3ujC0oxaK4yV4xZISKk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQkf7-000XWl-JM for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:51:10 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DD684C025; Sat, 11 Feb 2023 08:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101885; bh=Awb21O0vXpVV+2crD+UEksVt5c15/VZc1nIv355OlHo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gEwyd+AijqA0MHHAbhFzM4e8RDCnU1rLbTTZsiH0b2Yhf9EX1R2BcrGXCbAMWMk+u
 0qiWFYpdVHy0McpU2Ba3KzRkP9YrCP0fX83eu1R3gXGz7Ho+ymkj447aBsQAE6UaqQ
 N0CTIw/NFlt0Ql+qSOXHQSh+mOoyeRLCA1hMISjN6UTJTUuXGBoodtKgDn7xJhp0Bg
 lLSKpfPzISyog8Vro8chVBGhfukPYJ4HD6CeR88x07IpYVmNYN2s7f0pkmDrdUKOdC
 8kTtu6gp1GyjGsn5Fj1pWYd3cXqf+owasqe092LOUgFkTdrFxR/9eZhZrJEgOpS5W8
 sYSV6AEND3gGQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 28B5AC01B;
 Sat, 11 Feb 2023 08:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101884; bh=Awb21O0vXpVV+2crD+UEksVt5c15/VZc1nIv355OlHo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hBDLiok5J97wnV0H5zWJEcW2GYHKuGikXzDPe/NfEX/AtWDbRLsRn9Xc9jDr9vrt4
 BQg+udlqJgkQxFy0l8P7QpLcx0MjT7bczG3Ol2eUgMFifO4AGSc6pV+kefLATJV4g3
 3wkmNXKzkFZ0EQr4RsSMH/2gBqbCupE5lx3U74JQu85cBwA3Tdcn5wl1fs0Iwq3GqD
 3Ol9ZTUKcvqKu1igt7yP13gk9Nwrz6bcapRQZPCCI+DOaZ9Y9nbExVNqRhaTZGDPO5
 NNW+b+hojqQx0wE7Es5mKWiQDbQ6Juh95RtM9OZAg7bbFnr1jg9BDRzl8HQhtV7TWb
 V64HpXvohmZvg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6c15f3d7;
 Sat, 11 Feb 2023 07:50:47 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat, 11 Feb 2023 16:50:22 +0900
Message-Id: <20230211075023.137253-5-asmadeus@codewreck.org>
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
 Content preview:  clunks in 9p are absolute: once the request is sent to the
 server, the local end should consider the fid freed. Unfortunately our retry
 logic is hazardous at best, if we got ERESTARTSYS and we call p9_client_rpc
 again odds are we'll just notice the same signal is pending again and fail,
 leaking the fd. 
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
X-Headers-End: 1pQkf7-000XWl-JM
Subject: [V9fs-developer] [PATCH 4/5] 9p/net: add async clunk for retries
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

clunks in 9p are absolute: once the request is sent to the server,
the local end should consider the fid freed.

Unfortunately our retry logic is hazardous at best, if we got
ERESTARTSYS and we call p9_client_rpc again odds are we'll just
notice the same signal is pending again and fail, leaking the fd.

This used to work, because we never actually got to second retry with
the flush logic, as most servers ignore the flush request and send the
clunk reply first, in which case p9_client_rpc() will return
successfully even if it got interrupted.

Once async flush come into play we will start leaking fids everytime a
task is interrupted, avoid this by resending the flush and handling it
asynchronously.
Note that it's possible that the server got the clunk twice, but it will
be a clunk for a fid that is not used (client controls fid number
allocation), and the async cb does not consider the client return value.

We do not make all clunks asynchronous because some tests failed when
this was tried in [1] ; clunk in 9p should not act like a barrier like
close() does (e.g. flushing contents) but I have no time to debug.
This might still be a problem with the retries, but we are still better
than the current code which gives up and leaks the fid.

What should probably be done next is to make all calls to p9_fid_put
check for errors, at which point the failed clunk can be returned as an
error to userspace which could then notice the error. (Not like most
programs check for close() return value in the first place...)

Link: http://lkml.kernel.org/r/1544532108-21689-2-git-send-email-asmadeus@codewreck.org [1]
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 include/net/9p/client.h |  4 +++
 net/9p/client.c         | 58 ++++++++++++++++++++++++++++++++---------
 2 files changed, 49 insertions(+), 13 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index 348ea191ac66..dd493f7b8059 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -74,6 +74,7 @@ enum p9_req_status_t {
  * @rc: the response fcall structure
  * @req_list: link for transports to chain requests (used by trans_fd)
  * @async_list: link used to check on async requests
+ * @clunked_fid: for clunk, points to fid
  */
 struct p9_req_t {
 	int status;
@@ -84,6 +85,9 @@ struct p9_req_t {
 	struct p9_fcall rc;
 	struct list_head req_list;
 	struct list_head async_list;
+	union {
+		struct p9_fid *clunked_fid;
+	};
 };
 
 /**
diff --git a/net/9p/client.c b/net/9p/client.c
index 3235543c1884..f4b85c33c465 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -509,7 +509,13 @@ static void p9_client_async_cb(struct p9_client *c, struct p9_req_t *req)
 	if (likely(list_empty(&req->async_list)))
 		return;
 
-	WARN(1, "Async request received with tc.id %d\n", req->tc.id);
+	if (req->tc.id == P9_TCLUNK) {
+		p9_debug(P9_DEBUG_MUX, "async destroying fid %d\n",
+			 req->clunked_fid->fid);
+		p9_fid_destroy(req->clunked_fid);
+	} else {
+		WARN(1, "Async request received with tc.id %d\n", req->tc.id);
+	}
 
 	spin_lock_irqsave(&c->async_req_lock, flags);
 	list_del(&req->async_list);
@@ -1497,16 +1503,35 @@ int p9_client_fsync(struct p9_fid *fid, int datasync)
 }
 EXPORT_SYMBOL(p9_client_fsync);
 
+static int p9_client_async_clunk(struct p9_fid *fid)
+{
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	p9_debug(P9_DEBUG_9P, ">>> async TCLUNK fid %d\n", fid->fid);
+	clnt = fid->clnt;
+
+	req = p9_client_async_rpc(clnt, P9_TCLUNK, "d", fid->fid);
+	if (IS_ERR(req)) {
+		/* leak fid until umount... */
+		return PTR_ERR(req);
+	}
+
+	req->clunked_fid = fid;
+	spin_lock_irq(&clnt->lock);
+	list_add(&req->async_list, &clnt->async_req_list);
+	spin_unlock_irq(&clnt->lock);
+
+	return 0;
+}
+
 int p9_client_clunk(struct p9_fid *fid)
 {
 	int err;
 	struct p9_client *clnt;
 	struct p9_req_t *req;
-	int retries = 0;
 
-again:
-	p9_debug(P9_DEBUG_9P, ">>> TCLUNK fid %d (try %d)\n",
-		 fid->fid, retries);
+	p9_debug(P9_DEBUG_9P, ">>> TCLUNK fid %d\n", fid->fid);
 	err = 0;
 	clnt = fid->clnt;
 
@@ -1520,16 +1545,23 @@ int p9_client_clunk(struct p9_fid *fid)
 
 	p9_req_put(clnt, req);
 error:
-	/* Fid is not valid even after a failed clunk
-	 * If interrupted, retry once then give up and
-	 * leak fid until umount.
+	/* Fid is not valid even after a failed clunk, but we do not
+	 * know if we successfully sent the request so send again
+	 * asynchronously ('err' cannot differentiate between:
+	 * failure on the client side before send, interrupted
+	 * before we sent the request, interrupted after we sent
+	 * the request and error from the server)
+	 * In doubt it's better to try to ask again (for the
+	 * 'interrupted before we sent the request' case), other
+	 * patterns will just ignore again.
+	 * Return the original error though.
 	 */
-	if (err == -ERESTARTSYS) {
-		if (retries++ == 0)
-			goto again;
-	} else {
-		p9_fid_destroy(fid);
+	if (err) {
+		p9_client_async_clunk(fid);
+		return err;
 	}
+
+	p9_fid_destroy(fid);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_clunk);
-- 
2.39.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
