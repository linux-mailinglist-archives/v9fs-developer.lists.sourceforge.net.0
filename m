Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F71571EC6
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 17:17:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBHeA-0005qn-PF; Tue, 12 Jul 2022 15:17:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <5fb0bcc402e032cbc0779f428be5797cddfd291c@lizzy.crudebyte.com>)
 id 1oBHe8-0005qh-IY
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H+YFkN5zYmDJB9nb0gMFBm80RECXkAIY9geDJBmYEKU=; b=JCwaqclkmpuwSDcMZIQMGbVN39
 QWs99oCjC9U5LmrmS7ZtWw8i2QqwKb2HwLowI2wHDdrcyWpoxpBfwNT+6nhLlcfSthXUg17VS4Nor
 ANFbyJsCyBvWgAitmciCeP3bbJ0tJM8wHuuisPbfd00kT9bHj7JVGVTYWkIFMcPpc/74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H+YFkN5zYmDJB9nb0gMFBm80RECXkAIY9geDJBmYEKU=; b=faeaBPTDlwcKKdb2rIJHYvlSEg
 zFvD7hd07QqraGW/vswsrU9OPYSh2+9dHN4g0yO4bb1AX1fpkIq1M/hgjR0r86I+xuISZgvkYUed8
 fJk0CitIJ+Vx9YosWKPiJmBiPW2NtiumI9x63llQ/hTmZShxJT8SF1jXodIeSyk/I0lU=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBHe6-00EprW-IY
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=H+YFkN5zYmDJB9nb0gMFBm80RECXkAIY9geDJBmYEKU=; b=DbZR6
 6mJVSSQo4/g7zVqMaYjlTGpl1wkQbuLWnGu5dQ1AUY02znx2Q3nB0G48axQ8Wlw8Iyk4jAmS0mted
 cGN77eCvebPdm2P4yjm3sg2qpjvsw2zPdfG/x41MX1a1fO+tCX0SN+KpkJ14ebxXKhGx/TOHAsrz7
 Pp9VNjBXX1XVIDm8XdVAFW1GKYPbIjLyowx0h6pTeA1Wg8OnxgN1kPmwSayhpbEf6FFlj2APT9rwm
 1CJX/tuCZGPJscwAVjC3Ktt+vppMSiivzms7KYa2DQg8IsHkxyyEIfG8rpqSoPLe36S6zkkgoDA2r
 kp1zJzTLD1cID6P+7XEfZqZ03UdUg==;
Message-Id: <5fb0bcc402e032cbc0779f428be5797cddfd291c.1657636554.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657636554.git.linux_oss@crudebyte.com>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
Date: Tue, 12 Jul 2022 16:31:36 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  So far 'msize' was simply used for all 9p message types,
 which
 is far too much and slowed down performance tremendously with large values
 for user configurable 'msize' option. Let's stop this waste by using the
 new p9_msg_buf_size() function for allocating more appropriate, smaller buffers
 according to what is actually sent over the wire. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oBHe6-00EprW-IY
Subject: [V9fs-developer] [PATCH v5 11/11] net/9p: allocate appropriate
 reduced message buffers
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

So far 'msize' was simply used for all 9p message types, which is far
too much and slowed down performance tremendously with large values
for user configurable 'msize' option.

Let's stop this waste by using the new p9_msg_buf_size() function for
allocating more appropriate, smaller buffers according to what is
actually sent over the wire.

Only exception: RDMA transport is currently excluded from this, as
it would not cope with it. [1]

Link: https://lore.kernel.org/all/YkmVI6pqTuMD8dVi@codewreck.org/ [1]
Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---

Is the !strcmp(c->trans_mod->name, "rdma") check in this patch maybe a bit
too hack-ish? Should there rather be transport API extension instead?

 net/9p/client.c | 39 ++++++++++++++++++++++++++++++++-------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 56be1658870d..dc1a7b26fab4 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -255,19 +255,35 @@ static struct kmem_cache *p9_req_cache;
  * p9_tag_alloc - Allocate a new request.
  * @c: Client session.
  * @type: Transaction type.
- * @t_size: Buffer size for holding this request.
- * @r_size: Buffer size for holding server's reply on this request.
+ * @t_size: Buffer size for holding this request
+ * (automatic calculation by format template if 0).
+ * @r_size: Buffer size for holding server's reply on this request
+ * (automatic calculation by format template if 0).
+ * @fmt: Format template for assembling 9p request message
+ * (see p9pdu_vwritef).
+ * @ap: Variable arguments to be fed to passed format template
+ * (see p9pdu_vwritef).
  *
  * Context: Process context.
  * Return: Pointer to new request.
  */
 static struct p9_req_t *
-p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size)
+p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
+	      const char *fmt, va_list ap)
 {
 	struct p9_req_t *req = kmem_cache_alloc(p9_req_cache, GFP_NOFS);
-	int alloc_tsize = min(c->msize, t_size);
-	int alloc_rsize = min(c->msize, r_size);
+	int alloc_tsize;
+	int alloc_rsize;
 	int tag;
+	va_list apc;
+
+	va_copy(apc, ap);
+	alloc_tsize = min_t(size_t, c->msize,
+			    t_size ?: p9_msg_buf_size(c, type, fmt, apc));
+	va_end(apc);
+
+	alloc_rsize = min_t(size_t, c->msize,
+			    r_size ?: p9_msg_buf_size(c, type + 1, fmt, ap));
 
 	if (!req)
 		return ERR_PTR(-ENOMEM);
@@ -685,6 +701,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 {
 	int err;
 	struct p9_req_t *req;
+	va_list apc;
 
 	p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);
 
@@ -696,7 +713,9 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 	if (c->status == BeginDisconnect && type != P9_TCLUNK)
 		return ERR_PTR(-EIO);
 
-	req = p9_tag_alloc(c, type, t_size, r_size);
+	va_copy(apc, ap);
+	req = p9_tag_alloc(c, type, t_size, r_size, fmt, apc);
+	va_end(apc);
 	if (IS_ERR(req))
 		return req;
 
@@ -731,9 +750,15 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	int sigpending, err;
 	unsigned long flags;
 	struct p9_req_t *req;
+	/* Passing zero to p9_client_prepare_req() tells it to auto determine an
+	 * appropriate (small) request/response size according to actual message
+	 * data being sent. Currently RDMA transport is excluded from this message
+	 * size optimization, as it would not be able to cope with it.
+	 */
+	const uint max_size = !strcmp(c->trans_mod->name, "rdma") ? c->msize : 0;
 
 	va_start(ap, fmt);
-	req = p9_client_prepare_req(c, type, c->msize, c->msize, fmt, ap);
+	req = p9_client_prepare_req(c, type, max_size, max_size, fmt, ap);
 	va_end(ap);
 	if (IS_ERR(req))
 		return req;
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
