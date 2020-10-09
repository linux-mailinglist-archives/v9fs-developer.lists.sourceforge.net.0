Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E58C288B04
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQq-0002dU-D7; Fri, 09 Oct 2020 14:31:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQc-0002cV-QD
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nImj1bKEnn8BNhzAOdfSeoUsHCGKAl8C4xu8gKbAVdY=; b=QkiM2DAvXR7IcW2QRphoOBEbYY
 nNZfU30JOtT9teNtANMjl5w/ANUzpo53aBQooCzdB7QG3ewwVaIKoZi+oE6itMqo9asUEqCsvcq2r
 2+OuADKCKz0UgEQOlmMhPj1kTS9bO6R+G2V7UYlDskhEwIg1nySfC+Lr54OnwxkkxYQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nImj1bKEnn8BNhzAOdfSeoUsHCGKAl8C4xu8gKbAVdY=; b=OsD44EItKhvrLSvm2uokNsZgfK
 ugWqI+VXQYjMK2vI6G1AUFzg0ggVUpMUJDAuCa8G6Utthi4d4qzqqHhVvNlvjR9hOEfFvMWitUTG4
 UrrL0kwPGD8vCd1Wy9ekmdwOG4fj+MwRQ/2zK5EWZgzr7OWbKergvffNrhFSJXjGbFnI=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQV-004Iq3-SV
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=nImj1bKEnn8BNhzAOdfSeoUsHCGKAl8C4xu8gKbAVdY=; b=RXSD4Y3y1VdFBy17Ol83ILo5j4
 PTO9WjHf1kj+i3LgA1mNy4EbjzfgjS0N6FQecje43EctVoSoenXTtkxEw+pdNlWwCm8BR6ADWrCIA
 mnFVDJIxU2XLT8heg/WUg+nqj4WmoscRl4jCU97HaGgie7XSB2RUPeAoMPImN/8SdJJjnzOhT4QNS
 xglIypw9zIWbJZ4mgZcnuJZtNl9fnUqLIwebZVq5ZINFMI2qXAUDw31r8pl1UhnILmhEGt/4+kham
 9g1ILW71SDudRyFDHNiDTnj4sun2z0xnV5Wfab1g/k50SJfjbhpHe0FCP3IIQ7UUYwtFbVv1fWRdK
 CNdeSAOA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQN-0005wL-DD; Fri, 09 Oct 2020 14:31:11 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:31:03 +0100
Message-Id: <20201009143104.22673-16-willy@infradead.org>
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
X-Headers-End: 1kQtQV-004Iq3-SV
Subject: [V9fs-developer] [PATCH v2 15/16] iomap: Inline
 iomap_iop_set_range_uptodate into its one caller
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

iomap_set_range_uptodate() is the only caller of
iomap_iop_set_range_uptodate() and it makes future patches easier to
have it inline.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/iomap/buffered-io.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 8180061b9e16..e60f572e1590 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -141,8 +141,8 @@ iomap_adjust_read_range(struct inode *inode, struct iomap_page *iop,
 	*lenp = plen;
 }
 
-static void
-iomap_iop_set_range_uptodate(struct page *page, unsigned off, unsigned len)
+static void iomap_set_range_uptodate(struct page *page, unsigned off,
+		unsigned len)
 {
 	struct iomap_page *iop = to_iomap_page(page);
 	struct inode *inode = page->mapping->host;
@@ -150,6 +150,14 @@ iomap_iop_set_range_uptodate(struct page *page, unsigned off, unsigned len)
 	unsigned last = (off + len - 1) >> inode->i_blkbits;
 	unsigned long flags;
 
+	if (PageError(page))
+		return;
+
+	if (!iop) {
+		SetPageUptodate(page);
+		return;
+	}
+
 	spin_lock_irqsave(&iop->uptodate_lock, flags);
 	bitmap_set(iop->uptodate, first, last - first + 1);
 	if (bitmap_full(iop->uptodate, i_blocks_per_page(inode, page)))
@@ -157,18 +165,6 @@ iomap_iop_set_range_uptodate(struct page *page, unsigned off, unsigned len)
 	spin_unlock_irqrestore(&iop->uptodate_lock, flags);
 }
 
-static void
-iomap_set_range_uptodate(struct page *page, unsigned off, unsigned len)
-{
-	if (PageError(page))
-		return;
-
-	if (page_has_private(page))
-		iomap_iop_set_range_uptodate(page, off, len);
-	else
-		SetPageUptodate(page);
-}
-
 static void
 iomap_read_page_end_io(struct bio_vec *bvec, int error)
 {
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
