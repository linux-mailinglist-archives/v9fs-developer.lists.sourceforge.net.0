Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B529C282C42
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8Ng-0002F5-AW; Sun, 04 Oct 2020 18:05:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Nd-0002Ex-K0
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NrJVJoU7OMcJTi9hemuonuG11U70LFwuvk1JhdPC5Fs=; b=hzWH6zeyY1kB46yyBy8nvhJIH0
 uCJOYeAQeVInvN4rBRDERHW9B+Ep4a6VvkltHwXtvtwuxG8dLAnq7//TuIt7JRgiFHKvBAHnQzb/C
 guPWprQxuaxtjcUw41sFrFFMMJO7d6/wU2af6iBqfGSZh08x6d2dkieiPB3LLfwfldFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NrJVJoU7OMcJTi9hemuonuG11U70LFwuvk1JhdPC5Fs=; b=IZY20kDhI1mnqmuCkZAMDsBpFO
 ujWuLnOr0npfE/LTrP9QbrTjMesC9zz6HjtKkC7OV0tzZCrd4sjYOgGOKu9fEWrTJ6zhb90904C9F
 vrE0p8VozJiI2Db60opqQjSWft2Mm1rcMRNaS6kohXO7C+dGXgjpz0FKFOsIf5rs+MQY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8NY-002Ta0-5W
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=NrJVJoU7OMcJTi9hemuonuG11U70LFwuvk1JhdPC5Fs=; b=HgdhaaLkSWbHyStH+GfRtwmrjD
 zS+k9uEIcP9s39jdejViPI1JvnhxyzwZPpVJKU1j5iBxZ4ih/AyNUB1QLTnnWokEIJfLCHiP5EUa1
 JcPctgY13Hxx7EAOYy6dcJcPaM1neGdFw71nzv9yVKq3gz2mtjN5PQ4WdtEpW8tiNpNQU4srjSzMt
 bxFsQ6DkBQd2iSJ/TykKd8P5kIuE66LPRjburFcXQVv+MGhOT5PHySwIkGireyH5e8FRbwOhT98ZP
 Bb/NARhnYvMRRfVaKlUWmfFOUpbPwVMG7gNLDfxH26OdknC+b0xqdDaG756OSNgKtJ6SfGhfUa0aG
 WCHHvbow==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N5-0003mk-R4; Sun, 04 Oct 2020 18:04:31 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:25 +0100
Message-Id: <20201004180428.14494-5-willy@infradead.org>
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
X-Headers-End: 1kP8NY-002Ta0-5W
Subject: [V9fs-developer] [PATCH 4/7] ocfs2: Promote to unsigned long long
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
Fixes: 35edec1d52c0 ("ocfs2: update truncate handling of partial clusters")
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ocfs2/alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ocfs2/alloc.c b/fs/ocfs2/alloc.c
index 4c1b90442d6f..26eff79ecb50 100644
--- a/fs/ocfs2/alloc.c
+++ b/fs/ocfs2/alloc.c
@@ -6867,7 +6867,7 @@ static void ocfs2_zero_cluster_pages(struct inode *inode, loff_t start,
 		ocfs2_map_and_dirty_page(inode, handle, from, to, page, 1,
 					 &phys);
 
-		start = (page->index + 1) << PAGE_SHIFT;
+		start = (page->index + 1ULL) << PAGE_SHIFT;
 	}
 out:
 	if (pages)
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
