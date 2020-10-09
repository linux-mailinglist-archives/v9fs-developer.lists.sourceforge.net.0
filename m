Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3397F288AF8
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQn-0007sM-Ux; Fri, 09 Oct 2020 14:31:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQZ-0007pF-NU
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HQZhweg8a+1Qpo+qFNQoqVI2WIjKy37atq+XWcCiXOA=; b=OpgVon/Iqktx+C5lMfKH81NUsE
 eD0fUaLq2dUpTWJRtybE7EVZ/jPFakY0E6B0nwCHwCSsjdiGctHlAvA9njQF0qZNbXUS/Ebbd2vgH
 WMQ3ZqU08GFgSdLu+nfb/QYzD+j+rWmvT86cPAtSVTJ1uCh+px8iO04+vHPnjvH4QVbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HQZhweg8a+1Qpo+qFNQoqVI2WIjKy37atq+XWcCiXOA=; b=aQ7UhooaUn5HRmGqwjnlg2MvBw
 JkX+Id/b5x+qKYlgzVrzzLuJNu9dLyphXDSaThfU56zFIbafH0ZKfcDyhhypk0DWm1TMSTfpSydiH
 jVc9y/UmjaaxuyB0oW8ZIzwNGg2X/AS+XI5UQOkT9TD3W6SgqXPG9bJuiOyacwQR9cDM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQT-004Ipx-TA
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=HQZhweg8a+1Qpo+qFNQoqVI2WIjKy37atq+XWcCiXOA=; b=geZDyx9zxwDAZMT1kXigMN/NeL
 y6/HNpoOVZM17yr4WSs7XuzAzLshwq8rV9NK+/vsXt6jsWTQxWhH+vHhc4/DVRZcalbVZPc8Yy/NL
 f52u9USjrpHt2Vdpc+Q0yu7uJPyz8uUxtZPaio2gMRZcZuowPskJmHiL6fAeHi6Ajcfh9e9cwrHSI
 TmB+0AFd9Z/t0TIdJXWLWd91z7Pp6JIf5hnIB/SWa+Yy6dCtUU2PL/k26ExALlqokhxxVICHxEv59
 UQBenExGSJ+MvxSnlfXVcMDO3ia2WBU5dNBvo9LboGyaLuY3yZn4ZfDYK8obdEN6KwtUtXt74EgUi
 H+Jfrfig==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQI-0005ub-VP; Fri, 09 Oct 2020 14:31:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:51 +0100
Message-Id: <20201009143104.22673-4-willy@infradead.org>
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
X-Headers-End: 1kQtQT-004Ipx-TA
Subject: [V9fs-developer] [PATCH v2 03/16] 9p: Tell the VFS that readpage
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

The 9p readpage implementation was already synchronous, so use
AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/vfs_addr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index cce9ace651a2..506ca0ba2ec7 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -65,7 +65,7 @@ static int v9fs_fid_readpage(void *data, struct page *page)
 	SetPageUptodate(page);
 
 	v9fs_readpage_to_fscache(inode, page);
-	retval = 0;
+	return AOP_UPDATED_PAGE;
 
 done:
 	unlock_page(page);
@@ -280,6 +280,10 @@ static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
 		goto out;
 
 	retval = v9fs_fid_readpage(v9inode->writeback_fid, page);
+	if (retval == AOP_UPDATED_PAGE) {
+		retval = 0;
+		goto out;
+	}
 	put_page(page);
 	if (!retval)
 		goto start;
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
