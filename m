Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AE15EE888
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 23:44:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oderP-0005ut-Nw;
	Wed, 28 Sep 2022 21:44:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oderN-0005ui-R4
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:44:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B52/mFabXVyZkWM6X1umFbbhvQzlpiRJF9pARLLSDwc=; b=aq2NJ4LayZ6qv7Iv5DG8ZM1xQ/
 I/lCED+krm296qN4DnlLxTRtjgHl7vdKD7KUzrrK4BG7KdSXejqPU5hUroPa/al+FcU5yJ3+rrSMM
 UFytiFOH1s96PLzq7i+w2E+2wkqjU4sGz6m2gah+57foZ94k0NNNiJFBmWtti4DjS7/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B52/mFabXVyZkWM6X1umFbbhvQzlpiRJF9pARLLSDwc=; b=k+I322GIUnU6YwaiNovjXk1wYP
 drSf8HMO28EgIE23pf6wkbh+6q2XqYGRlbe1IyCSBVPIyqaiCngVyqMc92mJJ4E/PDMV0PExNpACc
 YRLXgbo9NRNvvO831SIEpxytEKIFQApIqSSKM51bReF188Q2CfcV00+x0heHw98e3mKk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oderL-005wEa-PR for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:44:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AA60BC009; Wed, 28 Sep 2022 23:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664401478; bh=B52/mFabXVyZkWM6X1umFbbhvQzlpiRJF9pARLLSDwc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RKsaER1TSz6n0eV+uMs7nT7c/m9mdyIn2BXDs2vMqjO43OH95d+6tc0Y8yvtGMPso
 ojNc2QCUPrANTJ9US3wHM1N5I8MlaaWXu2GOF2rc3oYrKz+S+xzAanciQlfUgPzcL9
 MytmctiDVca/hSpYDNivV5EgIrLqM7TXbTq0n9LBJkkdMAtotB4PksHP2s8Xb2UMyo
 PJf2phCoE1O2IBCd8kbzMaL1boKcMEy4zJc5wvSZr7Bs7fQjQzCeT44o0itTF3B/21
 XDKJo1bD4lgV/XQ/76cCg9myRmh5d6tw+G4RXEaFqHldVFaAjCdd6LkHuqjK2mC+Yv
 R/HawAtsJv7mw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 55700C01A;
 Wed, 28 Sep 2022 23:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664401478; bh=B52/mFabXVyZkWM6X1umFbbhvQzlpiRJF9pARLLSDwc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RKsaER1TSz6n0eV+uMs7nT7c/m9mdyIn2BXDs2vMqjO43OH95d+6tc0Y8yvtGMPso
 ojNc2QCUPrANTJ9US3wHM1N5I8MlaaWXu2GOF2rc3oYrKz+S+xzAanciQlfUgPzcL9
 MytmctiDVca/hSpYDNivV5EgIrLqM7TXbTq0n9LBJkkdMAtotB4PksHP2s8Xb2UMyo
 PJf2phCoE1O2IBCd8kbzMaL1boKcMEy4zJc5wvSZr7Bs7fQjQzCeT44o0itTF3B/21
 XDKJo1bD4lgV/XQ/76cCg9myRmh5d6tw+G4RXEaFqHldVFaAjCdd6LkHuqjK2mC+Yv
 R/HawAtsJv7mw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f0a11f89;
 Wed, 28 Sep 2022 21:44:34 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 06:44:17 +0900
Message-Id: <20220928214417.1749609-2-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220928214417.1749609-1-asmadeus@codewreck.org>
References: <YzQc2yaDufjp+rHc@unreal>
 <20220928214417.1749609-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  fcall cache was init'd last for some reason, but we actually
 allocate some requests for the version check before that. Moving the cache
 creation towards the start also makes p9_client_destroy's order [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oderL-005wEa-PR
Subject: [V9fs-developer] [PATCH 2/2] 9p: client_create: init fcall_cache
 earlier
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
Cc: linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, Leon Romanovsky <leon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

fcall cache was init'd last for some reason, but we actually allocate
some requests for the version check before that.
Moving the cache creation towards the start also makes p9_client_destroy's
order match the allocation order, which might be easier to think about

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/client.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 40b59431a566..1ea326e6e271 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -977,6 +977,17 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err < 0)
 		goto out;
 
+	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
+	 * followed by data accessed from userspace by read
+	 * Note we do not check for failure here because the cache is
+	 * optional; warning will be issued on dmesg for failure.
+	 */
+	clnt->fcall_cache =
+		kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
+					   0, 0, P9_HDRSZ + 4,
+					   clnt->msize - (P9_HDRSZ + 4),
+					   NULL);
+
 	if (!clnt->trans_mod)
 		clnt->trans_mod = v9fs_get_default_trans();
 
@@ -1016,15 +1027,6 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto out;
 
-	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
-	 * followed by data accessed from userspace by read
-	 */
-	clnt->fcall_cache =
-		kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
-					   0, 0, P9_HDRSZ + 4,
-					   clnt->msize - (P9_HDRSZ + 4),
-					   NULL);
-
 	return clnt;
 
 out:
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
