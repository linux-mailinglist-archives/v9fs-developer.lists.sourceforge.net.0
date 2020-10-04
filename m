Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D28282C46
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8Nj-0003oo-28; Sun, 04 Oct 2020 18:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Ng-0003o0-NV
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lcDrPyve8ZGqJ4GdFbmYERQ0EctUPUpm2VwVCWrS8pU=; b=mv0uMjzYlRgNORhcLqu6yTahha
 lRDPeUu7PoizuLUN49cnI1tyausUTOIBBwZXrrggiXPj85iQJm0F+RmqKHCB4jAUZ0/Gp/kXweYZm
 Rqdu/kEgWrSSWxuGAq9ivBCYPlvI7LQZdL5A5GHfUSPpn1YqFzkmco//9Pzh/P5ef8Gk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lcDrPyve8ZGqJ4GdFbmYERQ0EctUPUpm2VwVCWrS8pU=; b=MVuVFP/Bb+ahv1G/WWRg9oRIIw
 m4UbrNLK+zUo4ewayCYK+cFjwSIMVtdaugILv1DKWlceeVzWmEO3ONqdhEoTCkI7fFiN0kTnlnA7N
 0sf7S4Il1lUchYUelWfA88XHw9cfra6xzaKw3Ku+YPH8s2v76dz0fSgyB9iRnVAPQBOo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8Na-00GVaA-DI
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=lcDrPyve8ZGqJ4GdFbmYERQ0EctUPUpm2VwVCWrS8pU=; b=b/hQUZP816I2ZPcyTtYJrK0hPU
 eTT6yKyUGxFh7cmzFamPce4SyXe30LGUt/w2KAnHF4rWLPsDPz8qLwoSZihNO4XGJ225/rAL9xCPp
 eJT3Hw5qpYqLVINHcgEZEPjKCvuMYoTcdJp3VKRm2OVr4YjlY4vrGvPOuWRnw9PHt32Bp//fi7Dzb
 PvCfP5kaSZXNQAoYhUAtkkrE3t1AzsweMP5UROoIeF71zOfo1kQoHfYts7prtHfRLVFCx2/hKVDuy
 S70qOhDWnAi0pZzDyNBy4V2Ivu9/nA75VcvlC/styaN6bzFWKDrsAystUNHqLn6AHosJiPwxNLG5K
 sMNpzx4g==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N5-0003mY-6K; Sun, 04 Oct 2020 18:04:31 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:22 +0100
Message-Id: <20201004180428.14494-2-willy@infradead.org>
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
X-Headers-End: 1kP8Na-00GVaA-DI
Subject: [V9fs-developer] [PATCH 1/7] 9P: Cast to loff_t before multiplying
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

On 32-bit systems, this multiplication will overflow for files larger
than 4GB.

Cc: stable@vger.kernel.org
Fixes: fb89b45cdfdc ("9P: introduction of a new cache=mmap model.")
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/9p/vfs_file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 3576123d8299..6d97b6b4d34b 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -612,9 +612,9 @@ static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
 	struct writeback_control wbc = {
 		.nr_to_write = LONG_MAX,
 		.sync_mode = WB_SYNC_ALL,
-		.range_start = vma->vm_pgoff * PAGE_SIZE,
+		.range_start = (loff_t)vma->vm_pgoff * PAGE_SIZE,
 		 /* absolute end, byte at end included */
-		.range_end = vma->vm_pgoff * PAGE_SIZE +
+		.range_end = (loff_t)vma->vm_pgoff * PAGE_SIZE +
 			(vma->vm_end - vma->vm_start - 1),
 	};
 
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
