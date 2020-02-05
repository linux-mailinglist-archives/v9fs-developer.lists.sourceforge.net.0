Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6DF153AD8
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 23:19:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izT1N-0008Ei-DY; Wed, 05 Feb 2020 22:19:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1izT1L-0008Eb-HI
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 22:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uL2tQW2/JPQz/Y4Q1g7RlC+hPraOQwJLbr8Xkm7mHU0=; b=ZTT5v3/F7Qp3TCpdjqFbqhDOuX
 TiJKmB7/TvlLwjPV7dGh7Su37crvbflUzBctw70+AqGIv//BuUb5qi2B8YzmJ5vSycIGtTVR5jSG0
 VuIS9w+JNjCh/jEBYfxn/5Y95GgNTJ8WWFpG/Ma5v8b8ALIooFRZFRJzF1LEvreGcU0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uL2tQW2/JPQz/Y4Q1g7RlC+hPraOQwJLbr8Xkm7mHU0=; b=PmCW4b9i64QPIVvTZFFgjKjOJh
 6+yioLCwwaRDCPoaO/E0InO0qmVcoV/eQzM7//dpbHIBCyYs/79d2mfhTboKA/8C6rDLYYPrZVQ5t
 /M2Cy85yIfHZ3EGwHrm8BreuiRtZE9awnOvTBtv38lZB1NKaWtGNvxhL/QmGlTI6HFP0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izT1J-00BLkF-Tc
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 22:19:43 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 63E25C009; Wed,  5 Feb 2020 23:19:35 +0100 (CET)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Wed,  5 Feb 2020 23:19:12 +0100
Message-Id: <1580941152-12973-1-git-send-email-asmadeus@codewreck.org>
X-Mailer: git-send-email 1.7.10.4
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cea.fr]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izT1J-00BLkF-Tc
Subject: [V9fs-developer] [PATCH] net/9p: remove unused p9_req_t aux field
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <dominique.martinet@cea.fr>,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <dominique.martinet@cea.fr>

The p9_req_t field 'aux' has not been used in a very long time,
remove leftover field declaration

Signed-off-by: Dominique Martinet <dominique.martinet@cea.fr>
---
This has been sitting on my tree for a while, let's get some cleanup
in for next cycle!

 include/net/9p/client.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index acc60d8a3b3b..d32569755138 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -73,7 +73,6 @@ enum p9_req_status_t {
  * @wq: wait_queue for the client to block on for this request
  * @tc: the request fcall structure
  * @rc: the response fcall structure
- * @aux: transport specific data (provided for trans_fd migration)
  * @req_list: link for higher level objects to chain requests
  */
 struct p9_req_t {
@@ -83,7 +82,6 @@ struct p9_req_t {
 	wait_queue_head_t wq;
 	struct p9_fcall tc;
 	struct p9_fcall rc;
-	void *aux;
 	struct list_head req_list;
 };
 
-- 
2.24.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
