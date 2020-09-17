Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB526DF2D
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 17:11:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIvZ4-0004Cg-EZ; Thu, 17 Sep 2020 15:11:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIvZ3-0004C4-Ib
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5bMB1AIyFb3Uo5KQX9JPM+gHHI0JgEg44Zm96s2wWSw=; b=GuQyIUJ+F4zOlP9a0xyrpGpeyP
 vvYpH3iinEmlp88c/pyYP1F6yMkULaWiJyFGBVZNsD1yeP+f6Vd6eoNINHugmDpnS7nhu2foQ2f/v
 HxYZB1VyZ6man2lbPfaHVGNnlaMjaNpjJdDG1LFK2y4Ev7Tk6m3GzBB8guN30j/01V7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5bMB1AIyFb3Uo5KQX9JPM+gHHI0JgEg44Zm96s2wWSw=; b=GMiNdzkvLA7RYWu86qi5dRXmWs
 vKrSOyFTPritV4HxJlXWa83rAnDSAHccJryxZfZ69crTi/ZyOZgdsJXNH9tmNL6b9bgLglJr40YU1
 piA+KcKM9Hb2xfzXmqZhNUzwpvB8W0vEubAxqJpuyFLKeZ3JT/POCOcAudwbGNDDx+j8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIvYw-00D5fd-UD
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5bMB1AIyFb3Uo5KQX9JPM+gHHI0JgEg44Zm96s2wWSw=; b=rBA3BEedGxTEi6jjWgdFgG9hWD
 rAtzju3sIMBKwrAld+mQATn7QaELiGbXVXmda93yYxh+yGS2+0GwA617L8+TIuo3Jk8ylfnIXk1LL
 H0TvouglbVTFDzhXbSrLLJR8GAx9F0XOhb7d7HXvbImpXSlYZ+WbfMfJ7KLJgKaDDRuyCUS26Oz12
 KxWnZX+HUeYpcjcOv6pJRJj8WdPq//IKqqm0bFb6zeal4AaAU3BZ/IPEj68NH4x1qS98+Qp9MtRPu
 cADf27TdVH4fZZTEQTThue/nS5onCBKmS8Q73H+9r1P8RaGh4WeCO+yzsvRmbQR5olV5anJvC0EkL
 rdhWhOtg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIvYk-0001QE-67; Thu, 17 Sep 2020 15:10:54 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 16:10:46 +0100
Message-Id: <20200917151050.5363-10-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200917151050.5363-1-willy@infradead.org>
References: <20200917151050.5363-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kIvYw-00D5fd-UD
Subject: [V9fs-developer] [PATCH 09/13] hostfs: Tell the VFS that readpage
 was synchronous
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The hostfs readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/hostfs/hostfs_kern.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/hostfs/hostfs_kern.c b/fs/hostfs/hostfs_kern.c
index c070c0d8e3e9..c49221c09c4b 100644
--- a/fs/hostfs/hostfs_kern.c
+++ b/fs/hostfs/hostfs_kern.c
@@ -455,6 +455,8 @@ static int hostfs_readpage(struct file *file, struct page *page)
  out:
 	flush_dcache_page(page);
 	kunmap(page);
+	if (!ret)
+		return AOP_UPDATED_PAGE;
 	unlock_page(page);
 	return ret;
 }
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
