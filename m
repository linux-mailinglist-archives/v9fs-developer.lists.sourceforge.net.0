Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA44226DF37
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 17:11:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIvZ9-00026Y-NX; Thu, 17 Sep 2020 15:11:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIvZ3-00025n-08
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TQBRqWssafAKvwIvR7lzoo8RTexMgQj7fs6uGmXDbG8=; b=JbYRtjxAQGFCKpcpdpgCyksmzK
 cAWdCF0F/utlpFYgSRz7ex+v5EsUUjMplO0dVAWxp1GnMoRnY4jXz3dgviXvcdHpuDn/6okq2ngfo
 gy+gTPSzuQNjtlig2QP2k44Qhl2G+53E7zW2q6i3bvocI9esoYefH1UoOzyz399yo698=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TQBRqWssafAKvwIvR7lzoo8RTexMgQj7fs6uGmXDbG8=; b=TWi2u7RUF1lsWleq6eNZjKA2y0
 sNUFxT6jHpteeWFE4vaAUVHyuQu4hbrUT9jzD1m76itY890VtPbOB9U6B+eaW+Au4Sdyo29E0DYKT
 TbDn87nbqGcgY0bK3F4duzNlw4G/lml6tiHGD7RbDHiPP0dlHwNH3Ri/Gd9oTlFaV09E=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIvYx-00EHfH-F6
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=TQBRqWssafAKvwIvR7lzoo8RTexMgQj7fs6uGmXDbG8=; b=PWcESTBi2QdFaDtr4Kt4N/34ol
 BZucpvpLRkXa8ZU6jmD4/MNNLdyhI6jq5RGlNTI+7cnzljsph3vSv41tMVFaVCuJIHKVGvhq55luG
 VlKI5YbiFVjYmZ/qgUqOPSk4Yl0dl1Ln9m5wBGeqTKDvgoCPiT+zzvkxueQRDkSyz3EC1K9dn47WL
 kL6JV4gWpaD8ac6bg11qRxZ0MfeMh/aZXfmsm2qLkzbMN63JIgC+PaZTertM1qoVbnCZcRj8jkGpj
 mbA7mK4MZ+XfiRsIEsh0b5A1JSx6Be74RHIPWHSYBJAeBWSiDibZWQB0PH34/c3NQ3vpisiBqN2aV
 nyhyeVyQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIvYk-0001QZ-Ok; Thu, 17 Sep 2020 15:10:54 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 16:10:48 +0100
Message-Id: <20200917151050.5363-12-willy@infradead.org>
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
X-Headers-End: 1kIvYx-00EHfH-F6
Subject: [V9fs-developer] [PATCH 11/13] ubifs: Tell the VFS that readpage
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

The ubifs readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ubifs/file.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/fs/ubifs/file.c b/fs/ubifs/file.c
index b77d1637bbbc..82633509c45e 100644
--- a/fs/ubifs/file.c
+++ b/fs/ubifs/file.c
@@ -772,7 +772,6 @@ static int ubifs_do_bulk_read(struct ubifs_info *c, struct bu_info *bu,
 	if (err)
 		goto out_warn;
 
-	unlock_page(page1);
 	ret = 1;
 
 	isize = i_size_read(inode);
@@ -892,11 +891,16 @@ static int ubifs_bulk_read(struct page *page)
 
 static int ubifs_readpage(struct file *file, struct page *page)
 {
-	if (ubifs_bulk_read(page))
-		return 0;
-	do_readpage(page);
-	unlock_page(page);
-	return 0;
+	int err;
+
+	err = ubifs_bulk_read(page);
+	if (err == 0)
+		err = do_readpage(page);
+	if (err < 0) {
+		unlock_page(page);
+		return err;
+	}
+	return AOP_UPDATED_PAGE;
 }
 
 static int do_writepage(struct page *page, int len)
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
