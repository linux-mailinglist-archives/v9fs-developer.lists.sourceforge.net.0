Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B150288AF9
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQo-0007sU-0h; Fri, 09 Oct 2020 14:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQa-0007pN-17
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jmv1iA6ONHdhBCtewTigT8o0CWZcxoZXOX5KqmVgnTU=; b=INGSQOQjt3uEJK1U7rvnejt2+z
 xRjADtd/xVh0rDUdX1qkJbJFzGNcZKcBNX6mc6tiypxSYyEZRW1fwlB22+pp+R1k1I7uAZnMKEOnV
 2dmcIK/s9zW9Wmy0S/6vrv3wrZAq5cK+XXr33hjZtTecL8H8xXW0RwNRX6ibdgepmNdU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jmv1iA6ONHdhBCtewTigT8o0CWZcxoZXOX5KqmVgnTU=; b=huMa8qOuUeTluFlHXr9Opo7EvO
 AUaFEV9ubIxGTGNjQIHEP8kV/Av80y0DN1dEq7d95wT2i+D7yVZFJ+fYwiCvLZdcBUZ2YKYZfXizp
 doM/SBGj+N/VDFfsZmw/vlU137sMgMv1+eiWpAUC0l27xcqujWhqC0QUwrWJeIZzLcR0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQU-008YJk-3n
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jmv1iA6ONHdhBCtewTigT8o0CWZcxoZXOX5KqmVgnTU=; b=XNzZbSwQBr1O0Cq9RqMvPhd6Th
 3/cZhq8AKMqNDl+YLfIMFJ16Mi8FFxIl13HW+TS4wCj+ArkMasaZPuF0/mGpLKUUXuYxafLrMqSHb
 GoxSJfWliAqjmPOnj3b0ZKft/67A6g9Fr10aR4luuXWMrQ2NR4t8PS/XdVIMXeE1ZS0NxTBE7GnuS
 4nljrczeHw39ur1ALlok+R9tqGltRa9YMBoWceemPmxeu73aaHuzxMnScDcSq5wwPvWPo6mBaRDyp
 AcmBkgLjznHCcnIMJfCL6gB8B1l7faHSRU3ubSlA+JJl2CHNImoG5KSRQJ7ZwGlHs3l9m11pvBhVq
 Bu8cManA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQK-0005vD-9J; Fri, 09 Oct 2020 14:31:08 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:56 +0100
Message-Id: <20201009143104.22673-9-willy@infradead.org>
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
X-Headers-End: 1kQtQU-008YJk-3n
Subject: [V9fs-developer] [PATCH v2 08/16] ecryptfs: Tell the VFS that
 readpage was synchronous
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

The ecryptfs readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ecryptfs/mmap.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/fs/ecryptfs/mmap.c b/fs/ecryptfs/mmap.c
index 019572c6b39a..dee35181d789 100644
--- a/fs/ecryptfs/mmap.c
+++ b/fs/ecryptfs/mmap.c
@@ -219,12 +219,13 @@ static int ecryptfs_readpage(struct file *file, struct page *page)
 		}
 	}
 out:
-	if (rc)
-		ClearPageUptodate(page);
-	else
-		SetPageUptodate(page);
-	ecryptfs_printk(KERN_DEBUG, "Unlocking page with index = [0x%.16lx]\n",
+	ecryptfs_printk(KERN_DEBUG, "Returning page with index = [0x%.16lx]\n",
 			page->index);
+	if (!rc) {
+		SetPageUptodate(page);
+		return AOP_UPDATED_PAGE;
+	}
+	ClearPageUptodate(page);
 	unlock_page(page);
 	return rc;
 }
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
