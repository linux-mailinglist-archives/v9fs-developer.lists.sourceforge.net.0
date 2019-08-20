Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F06EE95BED
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Aug 2019 12:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8hW/G6811brUfb3BtyJfsKUAib8CyEGIeF3wmNvp8wM=; b=cRpuzAr/m7dR/m9O4eBXzICCQD
	1RVKNGjKXhDqgslQHzH1d6QVVPpeFVmQ2h6IndygY1T8n89F0bxbyrO94Be7fJ+x3vvj2cYD3Fg3f
	48fILL9Lx2z64QvQj/mAxQI155QDSpYNu9GXsZJWkCsIGSc8MG28HTae1NVcUcnTFWU4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i0109-0002ga-JQ; Tue, 20 Aug 2019 10:04:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@zoho.com.cn>) id 1i0108-0002gR-Ot
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Aug 2019 10:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qWDUnb9Mvb2aBEhtl+DI3fDd1UcOPYz2zkXQ59ewVy4=; b=JgCHruvrrJDyREtnn4REG6JQNz
 foVBO9AyzO3PAj2WqBmci39flKIpTXc8rpsj2nGbeP8ns2E1UZlmjOZ5UwibfOAgvURiSvT/1Psop
 bL24JG1Rme+v9PR9jhaLye2HZjVIyWiXq8xqKiXaP0Oo73m8LRbiIbg2DvhP2swkf5X4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qWDUnb9Mvb2aBEhtl+DI3fDd1UcOPYz2zkXQ59ewVy4=; b=LQ5XIRcKNc/6A5XbWdEMqLIc5c
 CHCvIRimzX3Pn452Q5Jp8C9yUzE9yRz7obAY2G0tzXpTtMN02gwoiiubZ4gEi44U+SsrHlf57vGzl
 vQdowOA0eFH4jqx9jm1QjTYm9IkrceMnsRfQBzfb7s8scAC+nIglnuKKJftTHJLTb77w=;
Received: from sender2-pp-o92.zoho.com.cn ([163.53.93.251])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1i0106-009HHM-ME
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Aug 2019 10:04:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1566295435; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=hG2OPW+QxI+5uVRsxmo8lbPUNQvqp2aT4uCT/zKQ8MZPlvCwTPk7kpxB2vyUOR81oD76XWTAy+2KvAFTOl/lJusnWvJ6tuHllKX8kQ2xJEFueCv971EX+C+7GE/Z7RT+2av/hrmdeLwveweiNfo4Z87gtg44eFYQDSEtJL+RCu4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1566295435;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=qWDUnb9Mvb2aBEhtl+DI3fDd1UcOPYz2zkXQ59ewVy4=; 
 b=quNOa9OSA6wqDL+7VzIL2bhP7wco1eXzY9HCFfGE+60tzb0R6NqfFNpX45mVLejGVeSULxONuL+334ezFtJNHPPzqu+3m8khw1si0RXBrToqL2+qbJlU371I3fMevKepbP7oogE3jdYJwo2UOhoUgq1BfivOp34Tj39wiW7778o=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=zoho.com.cn;
 spf=pass  smtp.mailfrom=cgxu519@zoho.com.cn;
 dmarc=pass header.from=<cgxu519@zoho.com.cn> header.from=<cgxu519@zoho.com.cn>
Received: from localhost.localdomain (218.18.229.179 [218.18.229.179]) by
 mx.zoho.com.cn with SMTPS id 156629543308886.05180690754912;
 Tue, 20 Aug 2019 18:03:53 +0800 (CST)
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Message-ID: <20190820100325.10313-1-cgxu519@zoho.com.cn>
Date: Tue, 20 Aug 2019 18:03:25 +0800
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [163.53.93.251 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zoho.com.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i0106-009HHM-ME
Subject: [V9fs-developer] [PATCH] 9p: avoid attaching writeback_fid on mmap
 with type PRIVATE
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
From: Chengguang Xu via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Chengguang Xu <cgxu519@zoho.com.cn>
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Chengguang Xu <cgxu519@zoho.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Currently on mmap cache policy, we always attach writeback_fid
whether mmap type is SHARED or PRIVATE. However, in the use case
of kata-container which combines 9p(Guest OS) with overlayfs(Host OS),
this behavior will trigger overlayfs' copy-up when excute command
inside container.

Signed-off-by: Chengguang Xu <cgxu519@zoho.com.cn>
---
 fs/9p/vfs_file.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 4cc966a31cb3..fe7f0bd2048e 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -513,6 +513,7 @@ v9fs_mmap_file_mmap(struct file *filp, struct vm_area_struct *vma)
 	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
 	if (!v9inode->writeback_fid &&
+	    (vma->vm_flags & VM_SHARED) &&
 	    (vma->vm_flags & VM_WRITE)) {
 		/*
 		 * clone a fid and add it to writeback_fid
@@ -614,6 +615,8 @@ static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
 			(vma->vm_end - vma->vm_start - 1),
 	};
 
+	if (!(vma->vm_flags & VM_SHARED))
+		return;
 
 	p9_debug(P9_DEBUG_VFS, "9p VMA close, %p, flushing", vma);
 
-- 
2.20.1





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
