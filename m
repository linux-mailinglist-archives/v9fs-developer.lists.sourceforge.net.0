Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BCE5769D9
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:23:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTiT-0007ue-NT; Fri, 15 Jul 2022 22:23:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <3f51590535dc96ed0a165b8218c57639cfa5c36c@lizzy.crudebyte.com>)
 id 1oCTiS-0007uX-Le
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gw/5dTt+zFJer6MtkKY4HaQ+BoasfQwu/DcrdqeK2lI=; b=JhVleIdqWfeq4/6YPftW0BSrUI
 3nW9n7VbPfYH3HIsl3S/allJ0Krq8mzwuBqPcH2KkBphwTFcqAEurFWhrvacmp9r7gqX3QbZLohi3
 qZ93bEkxivqQENkJVTXI36bGzH7/xNZUeZ3xq4eBkEbq6dtFYrJH95764pgL0E7ucNrU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gw/5dTt+zFJer6MtkKY4HaQ+BoasfQwu/DcrdqeK2lI=; b=NdXfQtCoeFFObihnt3z7kU6hVo
 6I5ExzyTLgDNbnYCkHGZsKpvKOW6SQd42eNjBCTCol0G3X2jkbHElpyA4JV3BR9NZW0IdDsqQfEZW
 uE/mjQlwiT6z3J/M7psu2m/UiHF/YcnJY3YSX9FD6TLwo1gmMXb1EJPff1dZcSSRClv4=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTiQ-000WfS-Bm
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=gw/5dTt+zFJer6MtkKY4HaQ+BoasfQwu/DcrdqeK2lI=; b=Y+u4p
 eVFmiPv7PPxsK5HwO9/FxSp5ivNhCpn4ajIyLeA10WIMFAvGxsyMmyKLCge0UeL6A3+M5X1z7ptAe
 jqErQJDA+9B8uqI7E87MGcmWm3ebi/ahlj+ovcEpyBI9sVh2rPcnR6qWWfL208zWub2rgHDrsMopJ
 F8c3t1qBT5nI2gtpF5cTUqV0RK2UIxe0BNtczX9Ed6Xqw5JbNNaAfiuB0uUaSqx1vPnJHG948x0zb
 +/Px3qUmJc4gv+hMZlH1CVPLrQWZDOGmqqkwJgb1rth9PzuzB5sMBB2BzIHl/FZZlDG5X9BVytfI0
 HzLav/lYqeBU3q25HUgLq5SPfgMxQ==;
Message-Id: <3f51590535dc96ed0a165b8218c57639cfa5c36c.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:33:56 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oCTiQ-000WfS-Bm
Subject: [V9fs-developer] [PATCH v6 11/11] net/9p: allocate appropriate
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

Only exception: RDMA transport is currently excluded from this message
size optimization - for its response buffers that is - as RDMA transport
would not cope with it, due to its response buffers being pulled from a
shared pool. [1]

Link: https://lore.kernel.org/all/Ys3jjg52EIyITPua@codewreck.org/ [1]
Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 42 +++++++++++++++++++++++++++++++++++-------
 1 file changed, 35 insertions(+), 7 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 32a8f2f43479..f068f4b656b5 100644
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
 
@@ -731,9 +750,18 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	int sigpending, err;
 	unsigned long flags;
 	struct p9_req_t *req;
+	/* Passing zero for tsize/rsize to p9_client_prepare_req() tells it to
+	 * auto determine an appropriate (small) request/response size
+	 * according to actual message data being sent. Currently RDMA
+	 * transport is excluded from this response message size optimization,
+	 * as it would not cope with it, due to its pooled response buffers
+	 * (using an optimized request size for RDMA as well though).
+	 */
+	const uint tsize = 0;
+	const uint rsize = c->trans_mod->pooled_rbuffers ? c->msize : 0;
 
 	va_start(ap, fmt);
-	req = p9_client_prepare_req(c, type, c->msize, c->msize, fmt, ap);
+	req = p9_client_prepare_req(c, type, tsize, rsize, fmt, ap);
 	va_end(ap);
 	if (IS_ERR(req))
 		return req;
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
