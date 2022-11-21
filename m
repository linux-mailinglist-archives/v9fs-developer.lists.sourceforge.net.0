Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D37B63310C
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 00:56:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxGeL-000724-1r;
	Mon, 21 Nov 2022 23:56:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <5b4019594a93bc77b0e3298457c3d9ec0e08fbb5@lizzy.crudebyte.com>)
 id 1oxGeJ-00071w-4M for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:56:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tgnR9mH97CXxQYgNtREObSMAVVccFgQyvaAQftuBqys=; b=g28FKbe32BBe1sAqHPEG1FNOwV
 QTdFNWK7eIPmosB87fFWPeMEZ+ZhOWnjRdEvG+JzggXkPFCAVQVPaL2aLmby9D3g+RvUa5ZAgcTtl
 0X2+/g+eBvtfS4mOH2bIyqkfa8N4ceH0ZWhzZdF6r2Wld3lSWEb9PJSIlZyENWMB4SBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tgnR9mH97CXxQYgNtREObSMAVVccFgQyvaAQftuBqys=; b=MDEAjH8G0CainE7lEKkWhU0F+V
 iOHr/e9wRzhZbbTyloJIj8o0zGkfkSkh+AR5jUpQgEH0Uq7HFi/DcDWCQ70Gta5N3DmXDQfhW1AWa
 YPgt4tKlpzUPcl3N4Tohcbg18UHNQDz9+A64eiNFCQ43Z0k51RLGSTAWrnz1FcibYymw=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxGeG-0001Qu-1Q for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:56:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=tgnR9mH97CXxQYgNtREObSMAVVccFgQyvaAQftuBqys=; b=E9Yu+
 lHkliZDAoyYvYAD6jturTuDXX+OCItfkoQ9Us5KZk7bSgBReREC3t2Bpcr6UkKd9ETiChHrPGOwe7
 iQS2thSmpmd9V/g5fuDg7AMtf5Q57oO1hhwBYvemFEoPKAhRJIn2bEHWfa0sAtxCPsDZy86YeWprr
 QTS3qy4ysHe2yTIoxz1pTXzQSdpnHGyJdR1GF0nszCwYRXlcng+Zf68ouQGuhrtLlxG8sOA9CoMaq
 a83gUSLgLXcojhlsPYAYwdmbh+yHprDhY0T3KqXq56VMeMuNrz+is5VOehP8KHl5NwGLBJIMkAArk
 45P4UsYoQ0jEBTmuMGC3dgI7k94YA==;
Message-Id: <5b4019594a93bc77b0e3298457c3d9ec0e08fbb5.1669072186.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1669072186.git.linux_oss@crudebyte.com>
References: <cover.1669072186.git.linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 00:03:58 +0100
To: Dominique Martinet <asmadeus@codewreck.org>,
 Stefano Stabellini <sstabellini@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Christian Schoenebeck
 <linux_oss@crudebyte.com>
 --- include/net/9p/9p.h | 2 ++ net/9p/client.c | 4 ++++ 2 files changed,
 6 insertions(+) diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h index
 13abe013af21..b0a6dec20b92 100644 --- a/include/net/9p/9p.h +++
 b/include/net/9p/9p.h
 @@ -530,6 +530,7 @@ struct p9_rstatfs { * @tag: trans [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oxGeG-0001Qu-1Q
Subject: [V9fs-developer] [PATCH 1/2] net/9p: distinguish zero-copy requests
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 include/net/9p/9p.h | 2 ++
 net/9p/client.c     | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 13abe013af21..b0a6dec20b92 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -530,6 +530,7 @@ struct p9_rstatfs {
  * @tag: transaction id of the request
  * @offset: used by marshalling routines to track current position in buffer
  * @capacity: used by marshalling routines to track total malloc'd capacity
+ * @zc: whether zero-copy is used
  * @sdata: payload
  *
  * &p9_fcall represents the structure for all 9P RPC
@@ -546,6 +547,7 @@ struct p9_fcall {
 
 	size_t offset;
 	size_t capacity;
+	bool zc;
 
 	struct kmem_cache *cache;
 	u8 *sdata;
diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..30dd82f49b28 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -680,6 +680,8 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	if (IS_ERR(req))
 		return req;
 
+	req->tc.zc = req->rc.zc = false;
+
 	if (signal_pending(current)) {
 		sigpending = 1;
 		clear_thread_flag(TIF_SIGPENDING);
@@ -778,6 +780,8 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	if (IS_ERR(req))
 		return req;
 
+	req->tc.zc = req->rc.zc = true;
+
 	if (signal_pending(current)) {
 		sigpending = 1;
 		clear_thread_flag(TIF_SIGPENDING);
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
