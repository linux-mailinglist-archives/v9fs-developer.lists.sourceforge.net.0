Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B558F282C47
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8Nj-0002Fo-GY; Sun, 04 Oct 2020 18:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Ng-0002FD-MA
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hHXBNNh8GCwSgw+uPZ85Ci+XmbkQmu/k8o+h/hk98Kk=; b=GxouMoSwr01KmKxXGPBOjLZRRK
 D3EI/0XIi/bDs2KgqGUmRuTgmZxGxSEL4Zu8hgwHBKHZ1OZxieGdSA20AcwNJbgz6uEmAnGOlyBXe
 SkJB0oaQ4SnuCAPBIu+SFNe73NG/e4sqcqeFJhniovpex8W9roBsyzybhOAPlFK3aHRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hHXBNNh8GCwSgw+uPZ85Ci+XmbkQmu/k8o+h/hk98Kk=; b=hfH7wzXrxwmI5br+tjRqL2sQkU
 8oJt2qtvABlZgGDYo7Pz/bLc5OD6p/WJlbCE8IoIZrifv4GS5Q+/lOQZ7Ok+NY1ip1BKFySAXYC/b
 OfrhSfxuCbA5pQ0SjzHCPZOsRDBJdARyFaCKdYpPDw+0RZECABnaMzp7CXjaS4hDf9aw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8Na-00GVaB-Gb
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=hHXBNNh8GCwSgw+uPZ85Ci+XmbkQmu/k8o+h/hk98Kk=; b=veCC9HEDjh1aEb0xwCHniSsssK
 rxoZwcQQR7/1Hyhy5c7fkwubS/QkfkYDbMuBtLeD9o7N9JnFTFsOtp9F3XgzHAGBAEF35J5LOgyIm
 SERnTO9t4KYd9RvIkC5YFKxnmQlOlH6iI1D7T4fbXO17ITNDsLipSH4XDHbiNjq+KEIxBhG4Dcz4o
 2HMLC++nnLuDoAO3hl7tujf4tne5grK0gXIMVabNUxlf+0penSe+Gl3tmCm9t0rx0PDDUZeHm4CCq
 UAAN9j58nGQegRS5QPKK3xDC83Z5Z/XXcN+iJIslIUfzQdppF4VVzrHWt8nHSR/9CqzX5d2yBJCUG
 alkw/zdg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N6-0003mw-Dx; Sun, 04 Oct 2020 18:04:32 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:28 +0100
Message-Id: <20201004180428.14494-8-willy@infradead.org>
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
X-Headers-End: 1kP8Na-00GVaB-Gb
Subject: [V9fs-developer] [PATCH 7/7] btrfs: Promote to unsigned long long
 before multiplying
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

On 32-bit systems, these shifts will overflow for files larger than 4GB.
Add helper functions to avoid this problem coming back.

Cc: stable@vger.kernel.org
Fixes: 73ff61dbe5ed ("Btrfs: fix device replace of a missing RAID 5/6 device")
Fixes: be50a8ddaae1 ("Btrfs: Simplify scrub_setup_recheck_block()'s argument")
Fixes: ff023aac3119 ("Btrfs: add code to scrub to copy read data to another disk")
Fixes: b5d67f64f9bc ("Btrfs: change scrub to support big blocks")
Fixes: a2de733c78fa ("btrfs: scrub")
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/btrfs/scrub.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/fs/btrfs/scrub.c b/fs/btrfs/scrub.c
index 354ab9985a34..ccbaf9c6e87a 100644
--- a/fs/btrfs/scrub.c
+++ b/fs/btrfs/scrub.c
@@ -1262,12 +1262,17 @@ static inline void scrub_stripe_index_and_offset(u64 logical, u64 map_type,
 	}
 }
 
+static u64 sblock_length(struct scrub_block *sblock)
+{
+	return (u64)sblock->page_count * PAGE_SIZE;
+}
+
 static int scrub_setup_recheck_block(struct scrub_block *original_sblock,
 				     struct scrub_block *sblocks_for_recheck)
 {
 	struct scrub_ctx *sctx = original_sblock->sctx;
 	struct btrfs_fs_info *fs_info = sctx->fs_info;
-	u64 length = original_sblock->page_count * PAGE_SIZE;
+	u64 length = sblock_length(original_sblock);
 	u64 logical = original_sblock->pagev[0]->logical;
 	u64 generation = original_sblock->pagev[0]->generation;
 	u64 flags = original_sblock->pagev[0]->flags;
@@ -1610,6 +1615,11 @@ static void scrub_write_block_to_dev_replace(struct scrub_block *sblock)
 	}
 }
 
+static u64 sbio_length(struct scrub_bio *sbio)
+{
+	return (u64)sbio->page_count * PAGE_SIZE;
+}
+
 static int scrub_write_page_to_dev_replace(struct scrub_block *sblock,
 					   int page_num)
 {
@@ -1659,10 +1669,9 @@ static int scrub_add_page_to_wr_bio(struct scrub_ctx *sctx,
 		bio->bi_iter.bi_sector = sbio->physical >> 9;
 		bio->bi_opf = REQ_OP_WRITE;
 		sbio->status = 0;
-	} else if (sbio->physical + sbio->page_count * PAGE_SIZE !=
+	} else if (sbio->physical + sbio_length(sbio) !=
 		   spage->physical_for_dev_replace ||
-		   sbio->logical + sbio->page_count * PAGE_SIZE !=
-		   spage->logical) {
+		   sbio->logical + sbio_length(sbio) != spage->logical) {
 		scrub_wr_submit(sctx);
 		goto again;
 	}
@@ -2005,10 +2014,8 @@ static int scrub_add_page_to_rd_bio(struct scrub_ctx *sctx,
 		bio->bi_iter.bi_sector = sbio->physical >> 9;
 		bio->bi_opf = REQ_OP_READ;
 		sbio->status = 0;
-	} else if (sbio->physical + sbio->page_count * PAGE_SIZE !=
-		   spage->physical ||
-		   sbio->logical + sbio->page_count * PAGE_SIZE !=
-		   spage->logical ||
+	} else if (sbio->physical + sbio_length(sbio) != spage->physical ||
+		   sbio->logical + sbio_length(sbio) != spage->logical ||
 		   sbio->dev != spage->dev) {
 		scrub_submit(sctx);
 		goto again;
@@ -2094,7 +2101,7 @@ static void scrub_missing_raid56_pages(struct scrub_block *sblock)
 {
 	struct scrub_ctx *sctx = sblock->sctx;
 	struct btrfs_fs_info *fs_info = sctx->fs_info;
-	u64 length = sblock->page_count * PAGE_SIZE;
+	u64 length = sblock_length(sblock);
 	u64 logical = sblock->pagev[0]->logical;
 	struct btrfs_bio *bbio = NULL;
 	struct bio *bio;
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
