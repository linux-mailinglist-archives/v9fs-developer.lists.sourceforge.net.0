Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 768125769D5
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:23:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTiL-00038d-5P; Fri, 15 Jul 2022 22:23:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <79d24310226bc4eb037892b5c097ec4ad4819a03@lizzy.crudebyte.com>)
 id 1oCTiJ-00038X-T6
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l7nuWYxWUVjm0xFc+FYu5FtE4ko865NXIUjDmd1KE7k=; b=c2HHDAoBMxuMXrw7krMEhnOdUT
 VW6V0BBjMP6oBUe7LhWMM5XWNey4wnJ1kUYR69O7uaWhDZdOULGMwwFpkpscBsBYg25NGloMnFQxQ
 hAutrE+S1VBYYQr6nFuiWA6RKRpEcbWFsiDOBRxtFaPmKV4kyFJOOQVEhgTa4DPTS1wk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l7nuWYxWUVjm0xFc+FYu5FtE4ko865NXIUjDmd1KE7k=; b=fO6vk2ljcK4USXpnlyq+KSpymb
 q5de8gLLij5v5WG6n/rCAyV4I10Pc4yAze9dE7VyW/3AqYMPS33f2rVUTiEa+OZJAcrtW2l0ZEXRq
 LpFY+c1Or23Wi26RoshfGe7Feu2ImWGmaUxpZL+8j3HAkqD7XdDfPtETe3/KbBX+yb9s=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTiJ-0000oL-TP
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=l7nuWYxWUVjm0xFc+FYu5FtE4ko865NXIUjDmd1KE7k=; b=Xjhw3
 PWfy8PH+g/wF6G0m0ESFeDBNMWHRfUUJZz3snzevmakUa5jsGmyrWCJjSvo84gJrzlTsmFp7LR73V
 d3SPyxmTMJ6ZRvJqyrHp+cKXZjd5sMCKOKN5RoAdiR+liKNPdk2N9THnK4BQuscMeCdSmXK+1y+ji
 OMw3Umg47NTppEhX8V3lpAmIRPs0zooGDeOJ3Hj+Vfpn7RTDMp2vVEwkVWmTO0rNEkknGFVVcSLra
 hKaU8WERWqpXJSr2tqqnOCG4VznQMOKmyjWQm0snDDgP2xqPxU1XkWJNlfjZG9RuB/KKZUQzzH/0E
 XqYdCA4krtoSqxTfEc0wTdRDyFI3Q==;
Message-Id: <79d24310226bc4eb037892b5c097ec4ad4819a03.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:33:09 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is a preparatory change for the subsequent patch: the
 RDMA transport pulls the buffers for its 9p response messages from a shared
 pool. [1] So this case has to be considered when choosing an appr [...] 
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
X-Headers-End: 1oCTiJ-0000oL-TP
Subject: [V9fs-developer] [PATCH v6 10/11] net/9p: add 'pooled_rbuffers'
 flag to struct p9_trans_module
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

This is a preparatory change for the subsequent patch: the RDMA
transport pulls the buffers for its 9p response messages from a
shared pool. [1] So this case has to be considered when choosing
an appropriate response message size in the subsequent patch.

Link: https://lore.kernel.org/all/Ys3jjg52EIyITPua@codewreck.org/ [1]
Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 include/net/9p/transport.h | 5 +++++
 net/9p/trans_fd.c          | 1 +
 net/9p/trans_rdma.c        | 1 +
 net/9p/trans_virtio.c      | 1 +
 net/9p/trans_xen.c         | 1 +
 5 files changed, 9 insertions(+)

diff --git a/include/net/9p/transport.h b/include/net/9p/transport.h
index ff842f963071..766ec07c9599 100644
--- a/include/net/9p/transport.h
+++ b/include/net/9p/transport.h
@@ -19,6 +19,10 @@
  * @list: used to maintain a list of currently available transports
  * @name: the human-readable name of the transport
  * @maxsize: transport provided maximum packet size
+ * @pooled_rbuffers: currently only set for RDMA transport which pulls the
+ *                   response buffers from a shared pool, and accordingly
+ *                   we're less flexible when choosing the response message
+ *                   size in this case
  * @def: set if this transport should be considered the default
  * @create: member function to create a new connection on this transport
  * @close: member function to discard a connection on this transport
@@ -38,6 +42,7 @@ struct p9_trans_module {
 	struct list_head list;
 	char *name;		/* name of transport */
 	int maxsize;		/* max message size of transport */
+	bool pooled_rbuffers;
 	int def;		/* this transport should be default */
 	struct module *owner;
 	int (*create)(struct p9_client *client,
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 8f8f95e39b03..eecbb5332bea 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -1081,6 +1081,7 @@ p9_fd_create(struct p9_client *client, const char *addr, char *args)
 static struct p9_trans_module p9_tcp_trans = {
 	.name = "tcp",
 	.maxsize = MAX_SOCK_BUF,
+	.pooled_rbuffers = false,
 	.def = 0,
 	.create = p9_fd_create_tcp,
 	.close = p9_fd_close,
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 88e563826674..24f287baee70 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -739,6 +739,7 @@ rdma_create_trans(struct p9_client *client, const char *addr, char *args)
 static struct p9_trans_module p9_rdma_trans = {
 	.name = "rdma",
 	.maxsize = P9_RDMA_MAXSIZE,
+	.pooled_rbuffers = true,
 	.def = 0,
 	.owner = THIS_MODULE,
 	.create = rdma_create_trans,
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 52d00cb3c105..d47b28b3f02a 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -1011,6 +1011,7 @@ static struct p9_trans_module p9_virtio_trans = {
 	 */
 	.maxsize = PAGE_SIZE *
 		((VIRTQUEUE_SG_NSGL_DEFAULT * SG_USER_PAGES_PER_LIST) - 3),
+	.pooled_rbuffers = false,
 	.def = 1,
 	.owner = THIS_MODULE,
 };
diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 833cd3792c51..3434a080abfa 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -246,6 +246,7 @@ static irqreturn_t xen_9pfs_front_event_handler(int irq, void *r)
 static struct p9_trans_module p9_xen_trans = {
 	.name = "xen",
 	.maxsize = 1 << (XEN_9PFS_RING_ORDER + XEN_PAGE_SHIFT - 2),
+	.pooled_rbuffers = false,
 	.def = 1,
 	.create = p9_xen_create,
 	.close = p9_xen_close,
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
