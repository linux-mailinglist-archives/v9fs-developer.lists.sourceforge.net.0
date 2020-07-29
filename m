Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C84231BB8
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 10:57:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0huI-0000oQ-Dn; Wed, 29 Jul 2020 08:57:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <liheng40@huawei.com>) id 1k0huG-0000oJ-UF
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 08:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Tz85MgWOGQqDHYQqJ8tJqGYvVithjlpy2NNPgKkBu0=; b=LFJij9N9oJYEyyXPcaIvqfBq/B
 FEVuuVUfZCtvKZ4KDPqTSUopU7augSz2+NNL+87Jz10kXq3pzUsZC0/aq1/gn67KSfMUktYSe0WMM
 fmYJILae+y05lbXYUIqnxC0b98TTW8HENDrU+gPU13wn5pxWDXK3t0zbDi6cdzfaHGVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/Tz85MgWOGQqDHYQqJ8tJqGYvVithjlpy2NNPgKkBu0=; b=i
 CkH52IQjVUWLpBUcWle8boZfoGTz7mbAxawyM3i/GjYHo5ouWBoP9dB+u9pwHdpoNdWHQxzzO5h5S
 8ttwPYeS+hL9fOITwoFNyG9s+Nh+jldilyigOwFLPrzZgDGy2RHu6NzSjn6QM0H6OaJBteE42A9y2
 g3JWS7J2KTzJZIJQ=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0huF-00D9ba-1R
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 08:57:48 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DEB747C83FEAD6812F18;
 Wed, 29 Jul 2020 16:57:37 +0800 (CST)
Received: from huawei.com (10.175.104.57) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Wed, 29 Jul 2020
 16:57:36 +0800
From: Li Heng <liheng40@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>
Date: Wed, 29 Jul 2020 16:59:00 +0800
Message-ID: <1596013140-49744-1-git-send-email-liheng40@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.175.104.57]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0huF-00D9ba-1R
Subject: [V9fs-developer] [PATCH -next] 9p: Remove unneeded cast from memory
 allocation
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove casting the values returned by memory allocation function.

Coccinelle emits WARNING:

./fs/9p/vfs_inode.c:226:12-29: WARNING: casting value returned by memory allocation function to (struct v9fs_inode *) is useless.

Signed-off-by: Li Heng <liheng40@huawei.com>
---
 fs/9p/vfs_inode.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 0fd5bf2..ae0c38a 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -223,8 +223,7 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
 struct inode *v9fs_alloc_inode(struct super_block *sb)
 {
 	struct v9fs_inode *v9inode;
-	v9inode = (struct v9fs_inode *)kmem_cache_alloc(v9fs_inode_cache,
-							GFP_KERNEL);
+	v9inode = kmem_cache_alloc(v9fs_inode_cache, GFP_KERNEL);
 	if (!v9inode)
 		return NULL;
 #ifdef CONFIG_9P_FSCACHE
-- 
2.7.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
