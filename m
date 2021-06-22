Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBE53B0B39
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Jun 2021 19:13:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvjxy-0000zB-1H; Tue, 22 Jun 2021 17:13:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1lvjxw-0000z3-FH
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 17:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tdLraN26AJmikOf9cCVnkJCdq/46SM04tSpwRtDPI0E=; b=KLkN+qeWYe4St6+RP2JgjjEskQ
 hJgFAsbUx69sA9qr3v9gC4HbGmqNkYf7jGXczzduPVksFsW7tKhWaQxqqFxCXgmb46u5YbOy2qRSh
 39D712RltxBVM3mYKrYCwbSDt47QW49A+/yP8X+/NBlTLrz5y9E+3RmN5EmY2tsqFR4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tdLraN26AJmikOf9cCVnkJCdq/46SM04tSpwRtDPI0E=; b=ILqkPLaIJ4JMRYbRlhLtjGrTx8
 CflKjtNd9ljAtAXEVrelb0lkr5K9d+OaVWiV39HJ/T6wNjO3hSDR2eCZ2Hp9dd0RN84E5XEyMjChz
 +u6O9DV0Zgl5bNPJuKzORkruOPGZux1uNL/NZJRRhIsun9If+AbmF8/HYY6Mt8Tjg2tE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvjxh-007a7c-SL
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 17:13:38 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AFFACC01D; Tue, 22 Jun 2021 19:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1624381993; bh=tdLraN26AJmikOf9cCVnkJCdq/46SM04tSpwRtDPI0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pPD0vIhjEgIK/7VLyfIEKk+KgzZcyvhboSKraCCTRRI0u5zXjARYCd7mfzzMxXiCM
 ZbuZh+1dbGSLpxLQKkRRdBHoC3TEcjaPDD5bHT04KSY112Qu3NSAWOC7ai5M73PCVZ
 ZX/Nz9kcn1A92OV7Vj1PjLRhEzjwgetsxBJNZRKiBiSnROivuXq5xHmFf1CTdvQNDz
 0Om35vyKwALuIqFJnBDsdkjT3+OSoroUEFnXqlG8BxYZDN24vo4YJoKawBC8qzbY8c
 K70kFLKCQ0X5QTv9Le7g93jruuzp1sh72eic1o08ARNTmsY8x3CSRCED8S+KH0Fvoh
 NeBWH8oXbFgLw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B4B08C009;
 Tue, 22 Jun 2021 19:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1624381993; bh=tdLraN26AJmikOf9cCVnkJCdq/46SM04tSpwRtDPI0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pPD0vIhjEgIK/7VLyfIEKk+KgzZcyvhboSKraCCTRRI0u5zXjARYCd7mfzzMxXiCM
 ZbuZh+1dbGSLpxLQKkRRdBHoC3TEcjaPDD5bHT04KSY112Qu3NSAWOC7ai5M73PCVZ
 ZX/Nz9kcn1A92OV7Vj1PjLRhEzjwgetsxBJNZRKiBiSnROivuXq5xHmFf1CTdvQNDz
 0Om35vyKwALuIqFJnBDsdkjT3+OSoroUEFnXqlG8BxYZDN24vo4YJoKawBC8qzbY8c
 K70kFLKCQ0X5QTv9Le7g93jruuzp1sh72eic1o08ARNTmsY8x3CSRCED8S+KH0Fvoh
 NeBWH8oXbFgLw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5de002b9;
 Tue, 22 Jun 2021 17:13:09 +0000 (UTC)
Date: Wed, 23 Jun 2021 02:12:54 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: jim.cromie@gmail.com
Message-ID: <YNIaFnfnZPGVd1t3@codewreck.org>
References: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6SucSdJFMdQFulNL"
Content-Disposition: inline
In-Reply-To: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lvjxh-007a7c-SL
Subject: Re: [V9fs-developer] KCSAN BUG report on p9_client_cb /
 p9_client_rpc
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
Cc: v9fs-developer@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


--6SucSdJFMdQFulNL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

jim.cromie@gmail.com wrote on Tue, Jun 22, 2021 at 10:42:58AM -0600:
> I got this on rc7 + my hacks ( not near p9 )
> ISTM someone here will know what it means.
> If theres anything else i can do to help,
> (configs, drop my patches and retry)
>  please let me know

Thanks for the report!

> [   14.904783] ==================================================================
> [   14.905848] BUG: KCSAN: data-race in p9_client_cb / p9_client_rpc

hm, this code hasn't changed in ages (unless someone merged code behind
my back :D)

I had assumed the p9_req_put() in p9_client_cb would protect the tag,
but that doesn't appear to be true -- could you try this patch if this
is reproductible to you?

The tag is actually reclaimed in the woken up p9_client_rpc thread so
that would be a good match (reset in the other thread vs. read here),
caching the value is good enough but that is definitely not obvious...

-- 
Dominique

--6SucSdJFMdQFulNL
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment;
	filename="0001-9p-net-cache-tag-in-p9_client_cb.patch"

From 1135d60baa5d743e8a123812428a342b101e290e Mon Sep 17 00:00:00 2001
From: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 23 Jun 2021 02:12:20 +0900
Subject: [PATCH] 9p net: cache tag in p9_client_cb

req->tc.tag is not safe to access after status has been set,
because tag is reclaimed by p9_client_rpc and not by the p9_req_put
below as one might think.

Reported-by: jim.cromie@gmail.com
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/client.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index b7b958f61faf..3e95a56ead80 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -419,7 +419,8 @@ static void p9_tag_cleanup(struct p9_client *c)
  */
 void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 {
-	p9_debug(P9_DEBUG_MUX, " tag %d\n", req->tc.tag);
+	u16 tag = req->tc.tag;
+	p9_debug(P9_DEBUG_MUX, " tag %d\n", tag);
 
 	/*
 	 * This barrier is needed to make sure any change made to req before
@@ -429,7 +430,8 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 	req->status = status;
 
 	wake_up(&req->wq);
-	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
+	/* req->tc.tag is not safe to access after status has been set */
+	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", tag);
 	p9_req_put(req);
 }
 EXPORT_SYMBOL(p9_client_cb);
-- 
2.31.1


--6SucSdJFMdQFulNL
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--6SucSdJFMdQFulNL
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--6SucSdJFMdQFulNL--

