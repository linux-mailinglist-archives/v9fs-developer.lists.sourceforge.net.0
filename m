Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF93D288AED
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQg-0002hA-IM; Fri, 09 Oct 2020 14:31:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQZ-0002gJ-Nn
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Z59nl1ynYz7T8ZQQZFooEYzqOOLn6C4o6AlvTemzR0=; b=QEZr1nd/kwJPBxW/x53g6/FVuf
 CCV3IZ8OHAx6JMiVZNV3humc4BBkhVhRyrtJzmjB0pyNk3yrej7RoY6KRjglVq8LrF73LZerztOwp
 cDJ0egOXHrG3ungLQ/bQINSglziu829m0CxrPCCWURVN54OF7LkQhYr12p+QZGNByEP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Z59nl1ynYz7T8ZQQZFooEYzqOOLn6C4o6AlvTemzR0=; b=Vz0mVLpbnUUyf4aHD+jww4vt61
 zypdrAGMK/Sc7LLtEMqiOgAHVVIHegVHHPgNWc/d/aPSzCdAzwf94TNBMq+zupEaoZKT+MmG8bne9
 wUeEseh0dVu8LDoRDuxZlc1JI4E13ThAZG3Domx9hJ2RG9mAWXa1E7WzjqUaS2XKX6eE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQT-004Iq0-T8
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=8Z59nl1ynYz7T8ZQQZFooEYzqOOLn6C4o6AlvTemzR0=; b=e53+Uy/zWo55QNMz59Vn6a9Qfc
 3KNiqJ/4fxfkgBjsQQ4r2mpc73+bcP9cg17+hspZn9ShexhM2dovyqmcBMu5GaB8hA2To0wbbvBMJ
 /nlk4qgT+2ebDto7HC57yP5fJnXuCZUAXxxzEE4vVEPafRXpzNr/tQHoWRdIL4c4xof573b+opNyD
 hSsx/CG+200mJ/A6A9gJfZS+yIIsP9SVUfQbvdMxgqzXAy1DNre7fetC5eIsQUsYE4Vb2r9NUVgeu
 KUwbxXsDpGEnc6dlpYDLdcVdnQa9DE6RbCg8tEQLI01IkTcUFhfy4/FZVquDvGlMZ35Qj3kd8hE+6
 d1ybNPjg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQK-0005vJ-Ib; Fri, 09 Oct 2020 14:31:09 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:57 +0100
Message-Id: <20201009143104.22673-10-willy@infradead.org>
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
X-Headers-End: 1kQtQT-004Iq0-T8
Subject: [V9fs-developer] [PATCH v2 09/16] fuse: Tell the VFS that readpage
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

The fuse readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/fuse/file.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fuse/file.c b/fs/fuse/file.c
index 6611ef3269a8..7aa5626bc582 100644
--- a/fs/fuse/file.c
+++ b/fs/fuse/file.c
@@ -850,6 +850,8 @@ static int fuse_readpage(struct file *file, struct page *page)
 
 	err = fuse_do_readpage(file, page);
 	fuse_invalidate_atime(inode);
+	if (!err)
+		return AOP_UPDATED_PAGE;
  out:
 	unlock_page(page);
 	return err;
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
