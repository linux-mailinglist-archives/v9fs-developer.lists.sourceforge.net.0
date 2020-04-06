Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C07EA19FB3A
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 19:20:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLVPh-0007JK-C7; Mon, 06 Apr 2020 17:19:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jLVPg-0007J3-3c
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J+Y9L70e16lKhDcwGZfPAxg2BDPW05TrhY2Z4iCYrmA=; b=DeKXs5hWGE15fH18UAjOkyGIyh
 IPyIzyVt9buAf5sBP0qS0MCyvBmN/n9xVoflGqCLJ93cRlN4eZRih276bRfel8ZP78EgOVuddm92u
 lEi4PVvek4JhVPRx+17afz8UeHvIrYbDkucXVo3sEEUmoRj+hYkZxXBJ3D78mp49XdyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J+Y9L70e16lKhDcwGZfPAxg2BDPW05TrhY2Z4iCYrmA=; b=FmZcICsmzzR2g7O3KDtLRUsSiU
 EIea5Ppzp9yZoImgahJKcb6gM4Q8JBpLDjySzdVtF3+okRRpAWkm22mHaQMhS/9lqmtAGAOtr3yws
 ca54k5N1jImn7hVo4XX0JhdJ73ImgIBXxSfAlvook2/teF769lXgYldYA37Fq2ok3FIw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLVPe-004fA4-8i
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:19:56 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 9E6C7C01D; Mon,  6 Apr 2020 19:19:47 +0200 (CEST)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net, Sergey Alirzaev <l29ah@cock.li>,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon,  6 Apr 2020 19:19:32 +0200
Message-Id: <1586193572-1375-1-git-send-email-asmadeus@codewreck.org>
X-Mailer: git-send-email 1.7.10.4
X-Spam-Score: -0.0 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLVPe-004fA4-8i
Subject: [V9fs-developer] [PATCH] 9p: document short read behaviour with
 O_NONBLOCK
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
Cc: Dominique Martinet <dominique.martinet@cea.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <dominique.martinet@cea.fr>

Regular files opened with O_NONBLOCK allow read to return after a single
round-trip with the server instead of trying to fill buffer.
Add a few lines in 9p documentation to describe that.

Signed-off-by: Dominique Martinet <dominique.martinet@cea.fr>
---
 Documentation/filesystems/9p.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/filesystems/9p.txt b/Documentation/filesystems/9p.txt
index fec7144e817c..3fb780ffdf23 100644
--- a/Documentation/filesystems/9p.txt
+++ b/Documentation/filesystems/9p.txt
@@ -133,6 +133,16 @@ OPTIONS
 		cache tags for existing cache sessions can be listed at
 		/sys/fs/9p/caches. (applies only to cache=fscache)
 
+BEHAVIOR
+========
+
+This section aims at describing 9p 'quirks' that can be different
+from a local filesystem behaviors.
+
+ - Setting O_NONBLOCK on a file will make client reads return as early
+   as the server returns some data instead of trying to fill the read
+   buffer with the requested amount of bytes or end of file is reached.
+
 RESOURCES
 =========
 
-- 
2.26.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
