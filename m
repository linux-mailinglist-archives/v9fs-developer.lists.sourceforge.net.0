Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DF8288AFC
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQo-0007tD-73; Fri, 09 Oct 2020 14:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQg-0007ql-0M
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9pnCDQD7BT3wSOEmQ/ujAa+Hm2ir7A48RB79T7IxK0Q=; b=Vv0OoPv/bPI3fSnnWXkCEKc/7y
 KEaqjrxWIvigIdbcod7IyqUwrT69FtKZjXhb2UBj4/7w2bwrJH+T6dAWDvvFOO1rtYpB4CP2Bx9C1
 Rerl7hvUgrpwimMdgsAoOS7SO2tkhgcOTMuhEBd7Wuqbgx1FHmomxoPodxdhH+8LgGfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9pnCDQD7BT3wSOEmQ/ujAa+Hm2ir7A48RB79T7IxK0Q=; b=JXHqGwnaXFGtT368oKSeD981dk
 jKRCbCGs52pSTR/JuGAE8ON2rSJtCBBctGFKmOrXFHXKcgTkWZI0Pdf7UsMU7nrmkKK0IjvlkJ4hR
 FKYqs66Pk+mUnIXsyx0heAFgN3JMEcI+RB9N6OwzQM4ku1QjVDaj+vlKr2SEPmY/jtFY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQY-004Iq5-Su
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=9pnCDQD7BT3wSOEmQ/ujAa+Hm2ir7A48RB79T7IxK0Q=; b=OpgwA4h4sqP1jU/IETGKZCdM+Q
 i2z3mUNTVaNMrPcKu/kIEUukM1dt974qFSZx4F1PJP3u9M1SgxVKgcIonjd/aNrK8oJYJJN4oHRk1
 obdU0/M9Ik9JMH/nzkWE8D3yho4lKnaBpftYWxPJpDwLQo52xiQnfV7kpYc8EtYGLGmDorJ9y8V5N
 CJcX+ugzQELTPBZdvOkJejfwb3L1y6UeR3FiWZL/sICMMOlGRRiA2qGYtu0wV9jkbIzwzA2oq/dOd
 H5aqicfp9nwOgncn7C7ET7kxAk5rWlkDprT8RSZwKu9U+B7N0o7spekfqopBUVo/2X+R5nO4vA99R
 nxNxhJxw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQI-0005uX-P8; Fri, 09 Oct 2020 14:31:06 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:50 +0100
Message-Id: <20201009143104.22673-3-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20201009143104.22673-1-willy@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQtQY-004Iq5-Su
Subject: [V9fs-developer] [PATCH v2 02/16] mm: Inline wait_on_page_read into
 its one caller
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Having this code inline helps the function read more easily.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 mm/filemap.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/mm/filemap.c b/mm/filemap.c
index 95b68ec1f22c..0ef06d515532 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -2834,18 +2834,6 @@ EXPORT_SYMBOL(filemap_page_mkwrite);
 EXPORT_SYMBOL(generic_file_mmap);
 EXPORT_SYMBOL(generic_file_readonly_mmap);
 
-static struct page *wait_on_page_read(struct page *page)
-{
-	if (!IS_ERR(page)) {
-		wait_on_page_locked(page);
-		if (!PageUptodate(page)) {
-			put_page(page);
-			page = ERR_PTR(-EIO);
-		}
-	}
-	return page;
-}
-
 static struct page *do_read_cache_page(struct address_space *mapping,
 				pgoff_t index,
 				int (*filler)(void *, struct page *),
@@ -2876,7 +2864,10 @@ static struct page *do_read_cache_page(struct address_space *mapping,
 			err = mapping->a_ops->readpage(data, page);
 		if (err == AOP_UPDATED_PAGE) {
 			unlock_page(page);
-			goto out;
+		} else if (!err) {
+			wait_on_page_locked(page);
+			if (!PageUptodate(page))
+				err = -EIO;
 		}
 
 		if (err < 0) {
@@ -2884,9 +2875,6 @@ static struct page *do_read_cache_page(struct address_space *mapping,
 			return ERR_PTR(err);
 		}
 
-		page = wait_on_page_read(page);
-		if (IS_ERR(page))
-			return page;
 		goto out;
 	}
 	if (PageUptodate(page))
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
