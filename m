Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DF5571EB7
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 17:17:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBHdT-0008Oa-2k; Tue, 12 Jul 2022 15:17:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <3f9c6da94f466743feffdba407ae2be313c47c93@lizzy.crudebyte.com>)
 id 1oBHdP-0008OE-F2
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HRgmsvyQc5R1HqZKiatrCeJDIA/6CkbTdpYiY2zKJhY=; b=Tj1gEPMv3teK6WsqlZcCUR5TaW
 MGBJo+YEmELB1EE/H06B1VMrV41c9sUZLhj0d5xqfdtVmnwl74RD2gLFr78+hhDifWpPUjkb9O+Pa
 tWU//T7Q/mOG0PsTE9nd4haAOctvscpwNFiArhlOEnm9UnRpAOBVXOjOtE2CrqqJ+kLk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HRgmsvyQc5R1HqZKiatrCeJDIA/6CkbTdpYiY2zKJhY=; b=TYvrkhbnV2KBXcSKyEoAsfz8Jg
 euvBrunixKxRAk0innp9Sa6sJkuPwzMnVlvhYnjKxQaNPJJuXQFqTkC8odyRC4AOZrO7M1lkmf2w7
 eb8ArViVzLZktuP3MRtLnyMO06Cfl6kqgbutfhiMv0v6EF+ytSt5tt+Gn9O8TyBRXg34=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBHdO-00Epq1-N5
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=HRgmsvyQc5R1HqZKiatrCeJDIA/6CkbTdpYiY2zKJhY=; b=ISm0U
 6toqo+pRL+qZTAPrXM7f+INHAl5w800kZIlSnKC/6fnQX1+utojn0cKjLfCv++fVYNn5doiJ9cVYN
 rWz6Xz9RT9tSmphWW271a8D3cWlbC+5DD9hVl73LdyxarRabFmpVnSYSTGM7E09Pt4hu3/xEooNX7
 t6sPy1fCftAPAGfbrr6BiA7iKYoWw5roCRJoaAvQfU2TEA/921OdXio4L1TziTlB54kiHkPdcK7EX
 nLGNYsPgQdLY1YQgtFcC25EGwcCHOVkbIDVEP0cxMYFUfByJGNF3aJuW3/tlJjkSaoyH4HX5nid3Y
 uq6Dx1aryTr2GQxTKN0tvXpaI5eTg==;
Message-Id: <3f9c6da94f466743feffdba407ae2be313c47c93.1657636554.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657636554.git.linux_oss@crudebyte.com>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
Date: Tue, 12 Jul 2022 16:31:19 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This new field 'trans_maxsize' optionally allows transport
 to update it to reflect the actual maximum msize supported by allocated
 transport
 channel. Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com> ---
 include/net/9p/client.h | 2 ++ net/9p/client.c | 12 ++++++++++-- 2 files
 changed, 12 insertions(+), 2 deletions(-) 
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
X-Headers-End: 1oBHdO-00Epq1-N5
Subject: [V9fs-developer] [PATCH v5 04/11] net/9p: add trans_maxsize to
 struct p9_client
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

This new field 'trans_maxsize' optionally allows transport to
update it to reflect the actual maximum msize supported by
allocated transport channel.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 include/net/9p/client.h |  2 ++
 net/9p/client.c         | 12 ++++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index ec1d1706f43c..f5718057fca4 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -87,6 +87,7 @@ struct p9_req_t {
  * struct p9_client - per client instance state
  * @lock: protect @fids and @reqs
  * @msize: maximum data size negotiated by protocol
+ * @trans_maxsize: actual maximum msize supported by transport channel
  * @proto_version: 9P protocol version to use
  * @trans_mod: module API instantiated with this client
  * @status: connection state
@@ -101,6 +102,7 @@ struct p9_req_t {
 struct p9_client {
 	spinlock_t lock;
 	unsigned int msize;
+	unsigned int trans_maxsize;
 	unsigned char proto_version;
 	struct p9_trans_module *trans_mod;
 	enum p9_trans_status status;
diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf975..20054addd81b 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1031,6 +1031,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		goto free_client;
 	}
 
+	/*
+	 * transport will get a chance to increase trans_maxsize (if
+	 * necessary) and it may update trans_maxsize in create() function
+	 * below accordingly to reflect the actual maximum size supported by
+	 * the allocated transport channel
+	 */
+	clnt->trans_maxsize = clnt->trans_mod->maxsize;
+
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
 		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
 
@@ -1038,8 +1046,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto put_trans;
 
-	if (clnt->msize > clnt->trans_mod->maxsize) {
-		clnt->msize = clnt->trans_mod->maxsize;
+	if (clnt->msize > clnt->trans_maxsize) {
+		clnt->msize = clnt->trans_maxsize;
 		pr_info("Limiting 'msize' to %d as this is the maximum "
 			"supported by transport %s\n",
 			clnt->msize, clnt->trans_mod->name
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
