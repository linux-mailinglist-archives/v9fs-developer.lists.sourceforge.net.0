Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45846288AFA
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQo-0007sf-2A; Fri, 09 Oct 2020 14:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQc-0007pp-0C
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SoeUdKTgaEeumdsHlwEayshKcw/8MedETPawI1HuSQI=; b=FHR7fdd4diGY3/H7nqsmlBUOS3
 HKtEZdHWSAhfYn9v59NlE7DxPftBjgeDdiDLmnr91Y1/Yuogu+F6A8fS96zLmVPAMzExT3sPixXrp
 p9X0w4t5CobYcLz8pzVUDeNs9Xnp2syWHJo/KO4+AwCiTHO6az091RYgzQ3CkzV8TrVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SoeUdKTgaEeumdsHlwEayshKcw/8MedETPawI1HuSQI=; b=k+sVIk0sNwAPS3XDfVL9z+wimH
 qxOSIOqiZc0iQ2xahHJZEnoRB0JZ22awUPoC9TLmt4Sn8gXXNp/sVKO+EFT1/4AICtI2QnPOfoo35
 H4fLKHqhu3AcApgE61Kh3HudV2Iit8b2sLLjuMKC6k2xjwY0ORQa8bv5KUFZJPniUNCY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQV-004Iq2-2Q
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=SoeUdKTgaEeumdsHlwEayshKcw/8MedETPawI1HuSQI=; b=vWd51sgqlxnfp2VOy655iSPs7z
 O3YkCDgMjxBBloGOOAyS5rpH8ieyr5e2l00AoQXyAkQJcIgVPKmM8fw3iN+FOvohdpNNdF6z/0pqF
 bp8HoW5MuOgRmDF4wNnN9jL3xi01IwTUf2Tb6/HpU3NddbL2wVRj2jJkzDxTn1ZXZAlih7iR44Onz
 rMN0Q1O5nZdQHWhvkkADFCX0st7PTr2AThI5WXcAa/gjWkasoCrEA/9lZ6Z6LKADj4nYQn0KMq568
 ZmEdQ9R42qymHkjUJojR8GhpzZYfcFFaRC7tayMNDeFSp0hwGDpPiUJliLMgzyBK6kmXFjt7axxT3
 2I0MWCpA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQM-0005w1-KN; Fri, 09 Oct 2020 14:31:10 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:31:01 +0100
Message-Id: <20201009143104.22673-14-willy@infradead.org>
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
 for more information. [URIs: suse.cz]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQtQV-004Iq2-2Q
Subject: [V9fs-developer] [PATCH v2 13/16] udf: Tell the VFS that readpage
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
Cc: linux-cifs@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Richard Weinberger <richard@nod.at>, ecryptfs@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The udf inline data readpage implementation was already synchronous,
so use AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Jan Kara <jack@suse.cz>
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
