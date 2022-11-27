Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD9639B71
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Nov 2022 15:47:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozIvu-0006jz-JL;
	Sun, 27 Nov 2022 14:47:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1ozIvt-0006jl-BP
 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 14:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PvTSIRS1SvtRt1LGpp54iqJ2bCAo1BGE54zkZFJw4kg=; b=QqNS5/4noKrrskHU4ImZZoGO37
 Q7SXw5WEep93o0OWINlqTMz9ur7ymz/BHjpGSR2TyP0nS7r4hOhS2N6FdksA/w3tajX8Ywr93/r09
 ANadEQR2Syg3k/kLRoIrBK0PQnSjrB9inrxo1UrCP0aAyHVu3ywTN5UIcgE6F6Wv6ZhY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PvTSIRS1SvtRt1LGpp54iqJ2bCAo1BGE54zkZFJw4kg=; b=H
 bGCumYkxZp2Bdd89FpO9Vz6/wHK8aqYwHcG0eMu8F/TQFORhwzU5jsW2kUXP/qzCGGcfn48CI6fuT
 zxmdQR2xf6QTwPipSZJRQDyQyAtMnmWYFfRqyxHGzwRimsRT4169hA2yvWXa/srnNEqUvleiKHnLY
 n5YjAQpL0Yj97oa8=;
Received: from smtp-24.smtpout.orange.fr ([80.12.242.24]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ozIvn-00031N-M6 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 14:47:01 +0000
Received: from pop-os.home ([86.243.100.34]) by smtp.orange.fr with ESMTPA
 id zIveos02xGPMszIveoBAEd; Sun, 27 Nov 2022 15:46:49 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 27 Nov 2022 15:46:49 +0100
X-ME-IP: 86.243.100.34
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sun, 27 Nov 2022 15:46:45 +0100
Message-Id: <9e386018601d7e4a9e5d7da8fc3e9555ebb25c87.1669560387.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The 9p net files don't use IDR or IDA functionalities. So
 there is no point in including <linux/idr.h>. Remove it. Signed-off-by:
 Christophe
 JAILLET <christophe.jaillet@wanadoo.fr> --- net/9p/trans_fd.c | 1 -
 net/9p/trans_rdma.c
 | 1 - net/9p/trans_virtio.c | 1 - 3 files changed, 3 deletions(-) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.24 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ozIvn-00031N-M6
Subject: [V9fs-developer] [PATCH] 9p: Remove unneeded idr.h #include in the
 net/9p directory
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The 9p net files don't use IDR or IDA functionalities. So there is no point
in including <linux/idr.h>.
Remove it.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 net/9p/trans_fd.c     | 1 -
 net/9p/trans_rdma.c   | 1 -
 net/9p/trans_virtio.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index eeea0a6a75b6..06ec9f7d3318 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -20,7 +20,6 @@
 #include <linux/un.h>
 #include <linux/uaccess.h>
 #include <linux/inet.h>
-#include <linux/idr.h>
 #include <linux/file.h>
 #include <linux/parser.h>
 #include <linux/slab.h>
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 6ff706760676..33a9ac6f2d55 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -21,7 +21,6 @@
 #include <linux/un.h>
 #include <linux/uaccess.h>
 #include <linux/inet.h>
-#include <linux/idr.h>
 #include <linux/file.h>
 #include <linux/parser.h>
 #include <linux/semaphore.h>
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index e757f0601304..19bccfa0d593 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -22,7 +22,6 @@
 #include <linux/un.h>
 #include <linux/uaccess.h>
 #include <linux/inet.h>
-#include <linux/idr.h>
 #include <linux/file.h>
 #include <linux/highmem.h>
 #include <linux/slab.h>
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
