Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C05726DF30
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 17:11:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIvZ4-0004Cn-GB; Thu, 17 Sep 2020 15:11:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIvZ3-0004C2-JF
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VYle+Dy78vGTLJwXqjetxI7H6ckJt5lDFPp8DD2uNGg=; b=dbk82iyO1JQIw/gFbyBHbCS0sM
 CgTdCoFXvoQMjaGNeB4/Qr4N/WiMCxF0tg7LcLD2mromN89hlhErwblWfxmaNh6C3B7OkCCrtjTdA
 rKInEaujhMaoPvSavsi361XBafUgwrDjGhTzQrqyHpveV4RE6ZbjwkkiaG10IIfq0LsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VYle+Dy78vGTLJwXqjetxI7H6ckJt5lDFPp8DD2uNGg=; b=jK5nCjdKXzYZkMLNVPRD2agZN0
 6XFzF582hNvr7ogkm7M/Tl70J4YiZyav2oBts1G72rI9EfIk1CzVAkxb1SDHM924DbrB20gRI8BZK
 jRZ48TOlFnwHYKGtZ9U496aAsRFzub2bYDJgjL74fa9Y4f39lv7On1dnpzOhtaFILJ1M=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIvYw-00D5fi-Se
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=VYle+Dy78vGTLJwXqjetxI7H6ckJt5lDFPp8DD2uNGg=; b=V0mCKcOWAD8LZwIpL8pYZJAODz
 ks+ksIQuf2jXnakiEJa2r+1ydB3o4OV0U8IbKATo2l/9ikpsHf1fkR+V3rxyB66/wQOUhBaLbMdLj
 6ndjrHb5ife/voKvoE6tbqaARAJh8rBEPWbqNhl4pM+DcKaPCG+C1d+1eawTVjva18TxCLbTbPxvN
 VlX+BF7sHG36BMaf3mqJvTuHegLCTJaT1VK/d0j1mqUuF6P2GH1tGCTjYNgYtaAh9FTNOwnYoIozA
 P+PcpgZmeJGFJRA/lFJknTpeXa2yh/EVHrCtzQ9dV1oP9s1Oc75pRO5fPsB43W7ntB/iyA0nyqwco
 DGNIOLZA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIvYl-0001Qk-4V; Thu, 17 Sep 2020 15:10:55 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 16:10:49 +0100
Message-Id: <20200917151050.5363-13-willy@infradead.org>
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
X-Headers-End: 1kIvYw-00D5fi-Se
Subject: [V9fs-developer] [PATCH 12/13] udf: Tell the VFS that readpage was
 synchronous
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

The udf inline data readpage implementation was already synchronous,
so use AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/udf/file.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/udf/file.c b/fs/udf/file.c
index 628941a6b79a..52bbe92d7c43 100644
--- a/fs/udf/file.c
+++ b/fs/udf/file.c
@@ -61,9 +61,8 @@ static int udf_adinicb_readpage(struct file *file, struct page *page)
 {
 	BUG_ON(!PageLocked(page));
 	__udf_adinicb_readpage(page);
-	unlock_page(page);
 
-	return 0;
+	return AOP_UPDATED_PAGE;
 }
 
 static int udf_adinicb_writepage(struct page *page,
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
