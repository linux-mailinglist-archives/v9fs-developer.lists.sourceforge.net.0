Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3CD288AEC
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQf-0002gs-G4; Fri, 09 Oct 2020 14:31:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQZ-0002gI-Nl
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wff0t85oZfmMq4nKnDr8r5OGugvLiUKKANRhHeeeqKg=; b=TFp9zL/VApWlYRKKVWpy9yW5lG
 YnA4dZSQdBZH9ybT9XNv/fB4egu8slf8xEBnePqGt4kqKT0B+ILiHPUPJbFryNMNwCE4CmnneJP9f
 ACI7KvIks9HPBOdn/D7vHnfRYKxf/RutIaSJACoS1TyepY0l/qBVvH2XRETlCTuK3HTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wff0t85oZfmMq4nKnDr8r5OGugvLiUKKANRhHeeeqKg=; b=PJdE0ISKInLvdlEy35luNKInZA
 1ZGTfdQ+seitiWeJ4xBB70+OVr4BRMelEfQeiPYGbeBx5gH3KwFwc49m2Vho+pZ9NlPfNBIazsmTq
 VwvRrz7lEwgee2qEpj4sZE9tzQ66Ws7lZp56cCrCf6kl8Gq+OSJ6m4IZWklDwX8f7xgM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQT-004Ipv-T9
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Wff0t85oZfmMq4nKnDr8r5OGugvLiUKKANRhHeeeqKg=; b=iTjT9cVAzxL+HFNND4c7bTUm0A
 cQ7Q4cFEOiMwm5k+E3zByW3wLYo8zhN1erCYDFphc6nSzwQFSCSY9aglC6iI982T0s/d0f/InI8Xc
 BkhHIhCxeR7X9pLeAJZjiST+9Rv9Ed07YRJR5hbvVbvJxPLXiBTCi/0LoJ1lDLESkSvegZM04Vi6J
 vxEvMWz/FS9p7kQDYoZygU55D4p2locN/Kpyv89PI0Qy+EzoBXlbKi/sgLQUJzUqXMZ31/BHuA1rQ
 tZEH+hHAfbpg/8SiWVjUEEBfd/E3hxwSBkmGn+O3Vkm31KMJv6lBqQiLNLp5drW2utVo1jYw6zZAs
 e6KzRXJA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQJ-0005ul-7N; Fri, 09 Oct 2020 14:31:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:52 +0100
Message-Id: <20201009143104.22673-5-willy@infradead.org>
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
X-Headers-End: 1kQtQT-004Ipv-T9
Subject: [V9fs-developer] [PATCH v2 04/16] afs: Tell the VFS that readpage
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The afs readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/afs/file.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 371d1488cc54..4aa2ad3bea6a 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -367,7 +367,8 @@ int afs_page_filler(void *data, struct page *page)
 			BUG_ON(PageFsCache(page));
 		}
 #endif
-		unlock_page(page);
+		_leave(" = AOP_UPDATED_PAGE");
+		return AOP_UPDATED_PAGE;
 	}
 
 	_leave(" = 0");
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
