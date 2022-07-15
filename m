Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B385769D1
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:22:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTi2-00037T-Va; Fri, 15 Jul 2022 22:22:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <9431a25fe4b37fd12cecbd715c13af71f701f220@lizzy.crudebyte.com>)
 id 1oCTi2-00037M-1A
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=adbnppDOpR2pSf1fyqV1a5+XH92C5PMB+isbfy2BuqQ=; b=mlx4WNH/GRgaOHLF4T1T0RdjXm
 U+swB+P3MSdxQ4NUgXXw6sR96mO/R7i6R/8oJbDDL5l/zBhLdnbQXE1bHW0QrF7ZdGk4CfetTdj8g
 UoQeBghbqTnqD+GVol4up3Ht0P1KTrdi4MgEQnpjPhRGVc5pv/KffshuWjiWZJBeJiWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=adbnppDOpR2pSf1fyqV1a5+XH92C5PMB+isbfy2BuqQ=; b=KgycAO2F4zPd0x/+qttcI6cmmv
 MAA0fpElQ+/t8MV09K7YgBOAbDgdOzw3bwaDak3QID3/+kYw7TNZARecUrqCz6hFcOT8whzZJBhd1
 YeylmeLjXNBvLnUkMomWZ9L+7AV/rUIbRUdZytCnj2vccntChaE29IGkf5qhQluVhOVM=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTi1-0000nD-Sk
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=adbnppDOpR2pSf1fyqV1a5+XH92C5PMB+isbfy2BuqQ=; b=Tqw+g
 CSA1qb5rguxXuXVt9wQ2I2zXlCt4HioQBdMLlpd9xiFP16I54x0aW/I8nFhdFfZgcnF/emsENsmNH
 BoGHuh69xK9abgrSEb8gJVVXhi7CQgVjDBl/uQgxmXD3FqaOXbkBDZZtAIFnKi6ZxZ5ENhu39oJjm
 gKr2Xa0Uw2Qz36sYveGRICY/FcxeTelIjQIVkOM0GiVOZ8TH+3Dz6sTSEq/dv9TRN3+LqZQ2eWWyU
 CA0bwghwvr1UK0ZP0RUkx+ZKg1ZqrJkLNRos9Fbd9fPoTci35t9q4hKm3kzPmYzuFvv6+NTTpBhss
 kwv5x0yHY83M5pGzn2BWJaet+Fcag==;
Message-Id: <9431a25fe4b37fd12cecbd715c13af71f701f220.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:32:28 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Refactor 'max_size' argument of p9_tag_alloc() and 'req_size'
 argument of p9_client_prepare_req() both into a pair of arguments 't_size'
 and 'r_size' respectively to allow handling the buffer size for [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oCTi1-0000nD-Sk
Subject: [V9fs-developer] [PATCH v6 07/11] net/9p: split message size
 argument into 't_size' and 'r_size' pair
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Refactor 'max_size' argument of p9_tag_alloc() and 'req_size' argument
of p9_client_prepare_req() both into a pair of arguments 't_size' and
'r_size' respectively to allow handling the buffer size for request and
reply separately from each other.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 20054addd81b..32a8f2f43479 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -255,24 +255,26 @@ static struct kmem_cache *p9_req_cache;
  * p9_tag_alloc - Allocate a new request.
  * @c: Client session.
  * @type: Transaction type.
- * @max_size: Maximum packet size for this request.
+ * @t_size: Buffer size for holding this request.
+ * @r_size: Buffer size for holding server's reply on this request.
  *
  * Context: Process context.
  * Return: Pointer to new request.
  */
 static struct p9_req_t *
-p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
+p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size)
 {
 	struct p9_req_t *req = kmem_cache_alloc(p9_req_cache, GFP_NOFS);
-	int alloc_msize = min(c->msize, max_size);
+	int alloc_tsize = min(c->msize, t_size);
+	int alloc_rsize = min(c->msize, r_size);
 	int tag;
 
 	if (!req)
 		return ERR_PTR(-ENOMEM);
 
-	if (p9_fcall_init(c, &req->tc, alloc_msize))
+	if (p9_fcall_init(c, &req->tc, alloc_tsize))
 		goto free_req;
-	if (p9_fcall_init(c, &req->rc, alloc_msize))
+	if (p9_fcall_init(c, &req->rc, alloc_rsize))
 		goto free;
 
 	p9pdu_reset(&req->tc);
@@ -678,7 +680,7 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
 }
 
 static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
-					      int8_t type, int req_size,
+					      int8_t type, uint t_size, uint r_size,
 					      const char *fmt, va_list ap)
 {
 	int err;
@@ -694,7 +696,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 	if (c->status == BeginDisconnect && type != P9_TCLUNK)
 		return ERR_PTR(-EIO);
 
-	req = p9_tag_alloc(c, type, req_size);
+	req = p9_tag_alloc(c, type, t_size, r_size);
 	if (IS_ERR(req))
 		return req;
 
@@ -731,7 +733,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	struct p9_req_t *req;
 
 	va_start(ap, fmt);
-	req = p9_client_prepare_req(c, type, c->msize, fmt, ap);
+	req = p9_client_prepare_req(c, type, c->msize, c->msize, fmt, ap);
 	va_end(ap);
 	if (IS_ERR(req))
 		return req;
@@ -829,7 +831,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	/* We allocate a inline protocol data of only 4k bytes.
 	 * The actual content is passed in zero-copy fashion.
 	 */
-	req = p9_client_prepare_req(c, type, P9_ZC_HDR_SZ, fmt, ap);
+	req = p9_client_prepare_req(c, type, P9_ZC_HDR_SZ, P9_ZC_HDR_SZ, fmt, ap);
 	va_end(ap);
 	if (IS_ERR(req))
 		return req;
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
