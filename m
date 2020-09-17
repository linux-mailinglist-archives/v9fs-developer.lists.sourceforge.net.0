Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D5826DF32
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 17:11:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIvZ6-0006pm-2K; Thu, 17 Sep 2020 15:11:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIvZ3-0006p2-Io
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=On43e4GnGO79fh9MGOiH3t2swuO0c44z7mV7G3PjPdg=; b=GsXE2eaDi0se99or70mSBvbN58
 kvvW2UjH26825CwLgWAlW+PjKaIqwDBrgxlydzCSXxKR81FSDwy6zoQWcF2/+LV08t8RsjiHLCzL4
 yOE5kgVb3+iQ/dMtR5ZzyxRd90jdqlciUYWKeau2bNTeG+gmLm+VJeOm1u4O5VJmAQig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=On43e4GnGO79fh9MGOiH3t2swuO0c44z7mV7G3PjPdg=; b=mFVo8R7bY+GWKXuRrfKZg6WkRc
 8VyGqg1QxtWkTVNSqMztzTwo8ciyPaDqPVKuk+0u/J7d/jSybbwlrQOWiQZznBp9kQv+dplscmHXQ
 K6SkYeTHBNUgLLkeGfMLZvMXlc7/GfH1lFXNTOKbeFbTkQ5bSDR3W/aqqVtlj1hYNA7g=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIvZ0-00EHfc-9j
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=On43e4GnGO79fh9MGOiH3t2swuO0c44z7mV7G3PjPdg=; b=JpgNMgAMtP37e2z1ODJoACSlyK
 ZQFRFUMyW6V2MeLhpTmyJAeub1VQHVFoEFbrpdAuEICFyc0AHXjewrnjzRXfMEuzWL7E+dyYGabyd
 A1RS7Tonh20I00pQtRnWsnK+nfLGfgwVuwmiwJCERV56YcrH+xTkJxvoSXyxbudjVRNVQZQPsJGDw
 /GSHYP46vWHoYPnjADmCSGZO9olC+ksUnB6Jcrds+VDufa4bFLZCIQpaFfLSIplfPdvT9nrFF6G4U
 PHAGD4QvI88MFyYVX2M35YIWXErf0ffDTV1XoWhrPUUGdig34Sj0jR3s2VZV69Z9EMEt8hjqRRV1T
 zvgKjiwA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIvYi-0001PW-ND; Thu, 17 Sep 2020 15:10:52 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 16:10:40 +0100
Message-Id: <20200917151050.5363-4-willy@infradead.org>
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
X-Headers-End: 1kIvZ0-00EHfc-9j
Subject: [V9fs-developer] [PATCH 03/13] afs: Tell the VFS that readpage was
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

The afs readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/afs/file.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 6f6ed1605cfe..8f15305b6574 100644
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
