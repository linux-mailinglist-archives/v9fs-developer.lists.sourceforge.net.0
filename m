Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35186282C45
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8Nj-0003oh-10; Sun, 04 Oct 2020 18:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Ng-0003nz-N4
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WbC9hgAcg/kmSfhruAEKvz/UhCG0YVX9Mb6rUn6uioQ=; b=dAb+oVWOT8NOjdTafkfGKdp7cj
 Dn3glOjaapyk47jL++pqekFVXAYxv15kOtodfow5QbBBOL/aF5FyftxIDGmVy6Cm4FMyTrEQ7w+Ff
 tm07aChyy7AB2mC6oRMRbCAz17R6utVSmhSzDcz5xl2nTPXxpBAqeL59LezNWVhPUxN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WbC9hgAcg/kmSfhruAEKvz/UhCG0YVX9Mb6rUn6uioQ=; b=A/qL8IsQMtRNsIwaj+EacvQ3fD
 e59cRXVN7JlUqHCgg+I5OfctHp9KAylz+kzBZXdN4nRhsBEanvUnBC8pd176u+qQMKx7arazsy9Rk
 YL4EShHwu3sVhVnzFgvHJWZcm5RUcjrtV58ldFseWWHb1fFLJwC03BlKnfcFCH4DgaKI=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8Ne-00GVaP-Ez
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=WbC9hgAcg/kmSfhruAEKvz/UhCG0YVX9Mb6rUn6uioQ=; b=Sas70Pi87VyEThzdZtQqppqRFa
 r7ubnYnhYzuwIusGo49ix97K0EBn/xVxSpN375sGwlJiPpu0UDwrEBZG5FL9eAPEh2veW32n8NBQA
 F3Hop8U7b6l3GoiXeTRkDa0ea/HGXW9X9ky0sI9sSzqyYzHg/4UJWf2/qPTLkd79zhI/6QFjKEhKU
 Ezb2LYypVMi1nZzY49EFZEopszt4Tq1+Q70ZnAZs1oW8la6Z3m6vCkdEy9dP0wpBUntmJrM8JIWKX
 +Ad4cY6H0AFFZGjdbAjNME7za+4lRYqA1SEsUlT5H/3PoKj8xKRgPI49ALhozsg26ra0dIn6vtVtl
 zt9HlwvA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N6-0003ms-7z; Sun, 04 Oct 2020 18:04:32 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:27 +0100
Message-Id: <20201004180428.14494-7-willy@infradead.org>
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
X-Headers-End: 1kP8Ne-00GVaP-Ez
Subject: [V9fs-developer] [PATCH 6/7] btrfs: Promote to unsigned long long
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
Fixes: 53b381b3abeb ("Btrfs: RAID5 and RAID6")
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/btrfs/raid56.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
index 255490f42b5d..5ee0a53301bd 100644
--- a/fs/btrfs/raid56.c
+++ b/fs/btrfs/raid56.c
@@ -1089,7 +1089,7 @@ static int rbio_add_io_page(struct btrfs_raid_bio *rbio,
 	u64 disk_start;
 
 	stripe = &rbio->bbio->stripes[stripe_nr];
-	disk_start = stripe->physical + (page_index << PAGE_SHIFT);
+	disk_start = stripe->physical + ((loff_t)page_index << PAGE_SHIFT);
 
 	/* if the device is missing, just fail this stripe */
 	if (!stripe->dev->bdev)
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
