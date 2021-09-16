Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EED740EA8F
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Sep 2021 21:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eg2t77ThNzV8SdLlENf5e/DLbKb/ejPYNMo39nzQW1s=; b=ONdRSFmFM4erjLKZZmU9VVs2ES
	CvJzRSVnpJ1ZeetcQpvHm6n+e8DJ0muWzkFn+IelFWMmb32rZroZAgG3qYoPI9FchRyq42lL2fPI2
	held+gmru8SR/qaifGz045EqZsEKuEgID+1cHHcpvRCmYsM8xXZQ/W2FjSt6Pd0JGfbE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQwfB-0002JY-13; Thu, 16 Sep 2021 19:03:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <634f2aabd957966c7e576d769ad6bb96dbd4bfae@lizzy.crudebyte.com>)
 id 1mQwf9-0002JQ-8z
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MalCTXy4Amqsr7Q1glzzLRVpX1FSq0ykfLndkSutSgY=; b=EktIIMJIlYGmwDihkGnXpgYSs
 LrffUVG3R9uEPy7NsNB4uCrGV4nW3ZHSNGaGPeY7QHpr495Pi2sRRaPPdkaNzEy0igiUXegX3Dy05
 /rE2l/ksFqmPFfo0M9vfPH6Jt8hsxRCPl3elfeAAp1Ux3mzI9GTSdyETIhC8yv+E+DTyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MalCTXy4Amqsr7Q1glzzLRVpX1FSq0ykfLndkSutSgY=; b=Q+NvLjVHgwv8odjnLdw0SCg7vy
 rcU8Zga30r8sIEtcXjZdMvHEd0h7XBVNz9xVT12HTuuKVjoor+oG/499pFiwcb0Y5WshumltfbGxO
 9+C3GQUn1xD8X6WeW8ePbaaT2+uuMrqsDyWdvZGlODp3SCru/Dhk3pXr/QBoh45rvgNM=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQwf8-00D4ps-OX
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=MalCTXy4Amqsr7Q1glzzLRVpX1FSq0ykfLndkSutSgY=; b=ICtcv
 jh7xonqeY0f6VKo0Ad/xKiz+lX7IjK3Gcr0mOBRKDlXIbZ/RWIuD79IQZ95yhNjw+lBuvk3/UA4R6
 qQHHmHvSxF9V0VKY6Z8r0tWbMCOuYuhqSbNffCCsh17dZwCn2gsmUgqj1GFIGNAckA0c2/J8amZai
 88mYNWCh3wAanqDIzcWIomMnzOtMHmoRKztNIcgPmu2BBKlym1jTE1ktY7PLClRbX2NB/vGG4VWSg
 pFfQ/W6atIHiCR4EoX0DGoaBTSeNyoVfaAE6KMzRwuwlcfPNs/wEws3T87rSOMWo4AfKePzCR18S9
 vL6fVsFkGa1O+U33LD9TzK9c5erhg==;
Message-Id: <634f2aabd957966c7e576d769ad6bb96dbd4bfae.1631816768.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1631816768.git.linux_oss@crudebyte.com>
References: <cover.1631816768.git.linux_oss@crudebyte.com>
Date: Thu, 16 Sep 2021 20:25:10 +0200
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mQwf8-00D4ps-OX
Subject: [V9fs-developer] [PATCH 5/7] net/9p: add trans_maxsize to struct
 p9_client
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
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
index e1c308d8d288..e48c4cdf9be0 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -89,6 +89,7 @@ struct p9_req_t {
  * struct p9_client - per client instance state
  * @lock: protect @fids and @reqs
  * @msize: maximum data size negotiated by protocol
+ * @trans_maxsize: actual maximum msize supported by transport channel
  * @proto_version: 9P protocol version to use
  * @trans_mod: module API instantiated with this client
  * @status: connection state
@@ -103,6 +104,7 @@ struct p9_req_t {
 struct p9_client {
 	spinlock_t lock;
 	unsigned int msize;
+	unsigned int trans_maxsize;
 	unsigned char proto_version;
 	struct p9_trans_module *trans_mod;
 	enum p9_trans_status status;
diff --git a/net/9p/client.c b/net/9p/client.c
index fa2afeaf1394..6e699ede069e 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1037,6 +1037,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
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
 
@@ -1044,8 +1052,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto put_trans;
 
-	if (clnt->msize > clnt->trans_mod->maxsize) {
-		clnt->msize = clnt->trans_mod->maxsize;
+	if (clnt->msize > clnt->trans_maxsize) {
+		clnt->msize = clnt->trans_maxsize;
 		p9_debug(P9_DEBUG_ERROR,
 			 "Limiting 'msize' to %d as this is the maximum "
 			 "supported by transport %s\n",
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
