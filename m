Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34398282C48
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8Nl-0004mo-07; Sun, 04 Oct 2020 18:05:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Ng-0004mJ-N5
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBzpd+ZwGINPndJww6tlDY0rtfFWrUcfW5HnCOvqMps=; b=AqnwNGZfUyzwoY22ihT/pI0q03
 vRekCTqA+TjJV1Nc6JDxBcyyJcnDG7OZLiqS6uqUNGP5l1Hf36ElmdmJqrbtwd4bS9Pt6hTC84yfn
 gAJB1zI4k7XGBoJfWMQuNUr1/YEFMWxcuoyi/h44OHPDSuMcqzCPH8f0WH34Wl9yYOGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pBzpd+ZwGINPndJww6tlDY0rtfFWrUcfW5HnCOvqMps=; b=AC4FsAIuKr8FwxCUdw7kjXrb6x
 3bSxeQ+oaas9idkvFXkeWRSxV5jzsFLJ9dFjYDsxPjhG1uJHcI8XDVYL7AnQac5ILpshRo7sozVen
 a4qX3lWMEw2LhXD3nznlHiRFPqRmZXXfECSKUUH6+etq4FPKPWxq+I854dt/156gs3KM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8Na-00GVa7-DK
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=pBzpd+ZwGINPndJww6tlDY0rtfFWrUcfW5HnCOvqMps=; b=HhKU5wBQQ0+KAkIw1hnOknJpey
 b+TM07EAXbH1BzLpr/tUIU6Zn7nHldnfw2dLBkS4z6MtoQnD3AAjPOkWyZZOu/Jr6aVZ0Cw5ktum2
 5rjXSksb901BlCVzzhiselxVyeUEGWOOPrd8+9nldrBw8W+QUdQRl7AMynVgT4dl7FqMGGLAz4MPp
 WJxO5XhcrH1qidqBSWiTtGhlnAVa1ZuoGcR32NQI48q1WbsygsXbRVU6XAKrsyhKOb4CKCU486nqP
 KNFJDJkYunqJevFpgyZjj/sGecsoaHR04EjI6+GDdt8LHtOLgV2YMnxRvy8yT5o4QNZnfm3hX91QT
 JGA1mwtw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N6-0003mo-1t; Sun, 04 Oct 2020 18:04:32 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:26 +0100
Message-Id: <20201004180428.14494-6-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20201004180428.14494-1-willy@infradead.org>
References: <20201004180428.14494-1-willy@infradead.org>
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
X-Headers-End: 1kP8Na-00GVa7-DK
Subject: [V9fs-developer] [PATCH 5/7] btrfs: Promote to unsigned long long
 before shifting
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
Cc: lucho@ionkov.net, stable@vger.kernel.org, clm@fb.com, ericvh@gmail.com,
 linux-btrfs@vger.kernel.org, mark@fasheh.com, jlayton@kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, josef@toxicpanda.com,
 joseph.qi@linux.alibaba.com, viro@zeniv.linux.org.uk, dsterba@suse.com,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 32-bit systems, this shift will overflow for files larger than 4GB.

Cc: stable@vger.kernel.org
Fixes: df480633b891 ("btrfs: extent-tree: Switch to new delalloc space reserve and release")
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/btrfs/ioctl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/btrfs/ioctl.c b/fs/btrfs/ioctl.c
index ac45f022b495..4d3b7e4ae53a 100644
--- a/fs/btrfs/ioctl.c
+++ b/fs/btrfs/ioctl.c
@@ -1277,7 +1277,7 @@ static int cluster_pages_for_defrag(struct inode *inode,
 	page_cnt = min_t(u64, (u64)num_pages, (u64)file_end - start_index + 1);
 
 	ret = btrfs_delalloc_reserve_space(BTRFS_I(inode), &data_reserved,
-			start_index << PAGE_SHIFT,
+			(loff_t)start_index << PAGE_SHIFT,
 			page_cnt << PAGE_SHIFT);
 	if (ret)
 		return ret;
@@ -1367,7 +1367,7 @@ static int cluster_pages_for_defrag(struct inode *inode,
 		btrfs_mod_outstanding_extents(BTRFS_I(inode), 1);
 		spin_unlock(&BTRFS_I(inode)->lock);
 		btrfs_delalloc_release_space(BTRFS_I(inode), data_reserved,
-				start_index << PAGE_SHIFT,
+				(loff_t)start_index << PAGE_SHIFT,
 				(page_cnt - i_done) << PAGE_SHIFT, true);
 	}
 
@@ -1395,7 +1395,7 @@ static int cluster_pages_for_defrag(struct inode *inode,
 		put_page(pages[i]);
 	}
 	btrfs_delalloc_release_space(BTRFS_I(inode), data_reserved,
-			start_index << PAGE_SHIFT,
+			(loff_t)start_index << PAGE_SHIFT,
 			page_cnt << PAGE_SHIFT, true);
 	btrfs_delalloc_release_extents(BTRFS_I(inode), page_cnt << PAGE_SHIFT);
 	extent_changeset_free(data_reserved);
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
