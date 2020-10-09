Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C5288B00
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQp-0002dG-9r; Fri, 09 Oct 2020 14:31:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQc-0002cL-4e
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DjEv8CInt3MYIbFFccwff33IuqhKVtai0GAjHHJ41BQ=; b=SxJbwJQNvj/ksRo/LNP/g7e1ln
 oKLAjO/nejt8BKFlWCiyUfFFhNglQAko7dJ0P3+2fr2iha4YC3eZuPzkvCHvoqkCD3kiQkTDwH6Uj
 JDE25/kBzaMfEcBMYX1Hx4BNwbXLAs5Bi5vFIvN3D4kcuLCGL/3JcovPx6yq5al/9OpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DjEv8CInt3MYIbFFccwff33IuqhKVtai0GAjHHJ41BQ=; b=h+fRFa9Z3l/+IMnHgjHb0ZpHno
 9kAjAnFj5eOqlJcxSW29rIfHf/vMZ5KjmsaqDwpmDgBIyNd74g2XfQF5xSUynf+PT2Sij82JyCHsl
 ZFtjBMhJeL1oDVILsIVAVDvj8QPpnuQaiXvX/Jan2tMAKqjzHOx1e0KV93MVJd7/ltBA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQU-008YJi-3n
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=DjEv8CInt3MYIbFFccwff33IuqhKVtai0GAjHHJ41BQ=; b=JW4Gc9od+Mrkhab3EyAvAknH83
 AW53PAKcYzPA+CmJOYzoLgQFQo8nB2vg+coN2AVXTs2hOHMwvd70FQFXDmM/k+fPp0HKyM8ybNI/H
 A6AtPZO/F1fJfyFd4J0Xgb3EihjJtXEZMWxkIVnmvAzE20VzfPz5n9/ZtrfZAAKpKkIePgVKo6v47
 rYrdHyLEraZ9rhUmB8oLmjgXf0Jdjs/2gFZqaAMmRgUGsSPTu0bLP/mIvlOyJuzJqyodO/39j9V7A
 /hWxXgMY8lCwtZ7kjj32duEzgvzfYEpQi0AcfUHgouHmYUSyFcDY2BYQwjNI/hssVp+UutS8wjCQ+
 TFqwUUmQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQJ-0005up-H7; Fri, 09 Oct 2020 14:31:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:53 +0100
Message-Id: <20201009143104.22673-6-willy@infradead.org>
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
X-Headers-End: 1kQtQU-008YJi-3n
Subject: [V9fs-developer] [PATCH v2 05/16] ceph: Tell the VFS that readpage
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
Cc: Jeff Layton <jlayton@kernel.org>, linux-cifs@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, ecryptfs@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The ceph readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
---
 fs/ceph/addr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index 6ea761c84494..b2bf8bf7a312 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -291,10 +291,11 @@ static int ceph_do_readpage(struct file *filp, struct page *page)
 static int ceph_readpage(struct file *filp, struct page *page)
 {
 	int r = ceph_do_readpage(filp, page);
-	if (r != -EINPROGRESS)
-		unlock_page(page);
-	else
-		r = 0;
+	if (r == -EINPROGRESS)
+		return 0;
+	if (r == 0)
+		return AOP_UPDATED_PAGE;
+	unlock_page(page);
 	return r;
 }
 
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
