Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62225400D8B
	for <lists+v9fs-developer@lfdr.de>; Sun,  5 Sep 2021 01:32:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mMf9B-00056B-Kb; Sat, 04 Sep 2021 23:32:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mMf99-000565-I6
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 23:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nOfaWTYwk98KF6mMTmqMhyfAnFyeQo6SqpTGB9sKYnY=; b=fTZF29oRjBIco9KDKIz/a9HaYh
 q1EjE+G735z5C9M175uEXZE2ytlYADHjNgGc3qJsKhuHEflscByY8UboF1jxO9UZneKyMrpOmmXY/
 xWYHy87+4cwFaPyan+nMMP/g8gTG7qg0XcNmCWWAX7uCVb+eo1f9SDvYg21apbKzGbng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nOfaWTYwk98KF6mMTmqMhyfAnFyeQo6SqpTGB9sKYnY=; b=Y5xXBEWCvcAgBbMPLfteZXb3Pl
 QsdRD/gDUWjQMjvU7hqpHtVbkXjsf6jqweEv8LwuR8VUShnUkzKbD5sdytK8Ljcq7w8qzSfnwgwC+
 13zdTZxz7vnO441/GaloJES5mQTosIsFKK+hK7UQDdxNwZCVVvb5gC1xt5UHxGc1B0mc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMf96-00F3sR-GF
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 23:32:27 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D7249C009; Sun,  5 Sep 2021 01:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1630798333; bh=nOfaWTYwk98KF6mMTmqMhyfAnFyeQo6SqpTGB9sKYnY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aVE99f9lL9ydrG28zmuY3MUXvmNPSDU7Dw20bIJylpzDMQmAhoARIwrfKBu1h/A/f
 Xpszba4tSIycA6+Ao1GVaQYiKKN7NG+Pa7BYxDyN2yegTZj1Nijwg9M+8kW7coCpye
 Hi8ETrrd9v/JTOqeIdmCVJBtXO3Jml+PhyGz6wZUwVN48lKbYa+BvOazATehghTi7P
 4f9K922jcSTpVs/5DQpe+yR4YT8iTWu83Lv5QC4ukkc+3MFPddR6hW/uHsYe/22J3R
 q0t+GcbBM6Ke81REjylG6debeFnT5HaqwRGfasQTtawyOh0xNx4aZ+4p9t15ByVgi7
 q2/wCrm7zXd4g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B927CC009;
 Sun,  5 Sep 2021 01:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1630798331; bh=nOfaWTYwk98KF6mMTmqMhyfAnFyeQo6SqpTGB9sKYnY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m1GP+jpVhXBucISDFwez0aHyZH5QL+VB6S217+VepD9NUYLtFen8m9XVgvAE8irL1
 yxrXpWsPyhNqOYRtNQ3YF/gNOXWUXUTzciRlCUV8+xYp7MKuxgMyQkrYxntuO4RvMN
 lnYfs0zIXGPtg9prE3iJ4aod75ngvulh6gd5u8oNW6F6cvzJq4235buUaAPZ+6xF9X
 07EcT5gP5PVdE8a1T4O7m2fxpABpC4Ah1Gr/fEpHRhxoWIRQI6DyzsBKH+GSRgUMtr
 tONuY3UIUytuDo7xpf2Yzef/mPZh0PK9q5lp5oSgG3rJD3f4EbLwLpyIcrGC0ihLXR
 lD/LDYNymGThg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3ff36f2b;
 Sat, 4 Sep 2021 23:32:06 +0000 (UTC)
Date: Sun, 5 Sep 2021 08:31:50 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YTQB5jCbvhmCWzNd@codewreck.org>
References: <cover.1630770829.git.linux_oss@crudebyte.com>
 <61ea0f0faaaaf26dd3c762eabe4420306ced21b9.1630770829.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61ea0f0faaaaf26dd3c762eabe4420306ced21b9.1630770829.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Christian, thanks for the follow up, this has been on my
 todolist forever and despite how simple it is I never took the time for it...
 I've applied both patches to my -next branch... We're a bit tight for this
 merge window (v5.15) but I'll send it to linux mid next week anyway. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mMf96-00F3sR-GF
Subject: Re: [V9fs-developer] [PATCH 2/2] net/9p: increase default msize to
 128k
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, Greg Kurz <groug@kaod.org>,
 Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Christian,

thanks for the follow up, this has been on my todolist forever and
despite how simple it is I never took the time for it...


I've applied both patches to my -next branch... We're a bit tight for
this merge window (v5.15) but I'll send it to linux mid next week anyway.


I've also added this patch (sorry for laziness) for TCP, other transports
are OK iirc:

From 657e35583c70bed86526cb8eb207abe3d55ea4ea Mon Sep 17 00:00:00 2001
From: Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 5 Sep 2021 08:29:22 +0900
Subject: [PATCH] net/9p: increase tcp max msize to 1MB

Historically TCP has been limited to 64K buffers, but increasing msize provides
huge performance benefits especially as latency increase so allow for bigger buffers.

Ideally further improvements could change the allocation from the current contiguous chunk
in slab (kmem_cache) to some scatter-gather compatible API...

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index f4dd0456beaf..007bbcc68010 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -34,7 +34,7 @@
 #include <linux/syscalls.h> /* killme */
 
 #define P9_PORT 564
-#define MAX_SOCK_BUF (64*1024)
+#define MAX_SOCK_BUF (1024*1024)
 #define MAXPOLLWADDR   2
 
 static struct p9_trans_module p9_tcp_trans;
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
