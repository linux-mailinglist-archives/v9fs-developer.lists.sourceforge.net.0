Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 400492D13D2
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Dec 2020 15:35:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kmHbl-000288-Ta; Mon, 07 Dec 2020 14:35:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@mykernel.net>) id 1kmHbi-000280-Ho
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 14:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qAszKcLYs9jvnFBEg3/CMi/T/+x65cdwThphUbpHziw=; b=XiG5L00vUwTZ7vewvHiMxq/eEt
 gdFi9pJe7EkStL+kLeTQQLO+zXZMdsDTHUJi3QJiO1B+tWaJItpqhOGkkcvnCBqHiH9SPt75ftOZd
 WjiXurKkly6DWDFP+etBRkCjwEMiB33/PQnK1FwY6/rCKxKRxV1CggBOIroSN5wu+FsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qAszKcLYs9jvnFBEg3/CMi/T/+x65cdwThphUbpHziw=; b=Pih9jxpAlzACAViiw7OoGE4GGo
 w92uRU9B4hgMqrsG23Fn9BqEz0/ZCQdGTqyisIUx7CPpnCdlyle65PP8LqW4bmxl7WNDuAio9rzjl
 /I5jgCQpIUaLSWMRkIlwGy+IliCPkux9ch6n/rCTYBS7N4vV/ORw1g/HFtLhINzgWOVw=;
Received: from sender2-op-o12.zoho.com.cn ([163.53.93.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kmHbW-005Raj-N5
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 14:35:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1607351632; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=YIBQJTwK0P3P0O06iqP9RoOLLaL7I0s38rXyqtZ3FREMhcy7N7WIB8WC6UFYRg+ntrjBHsXQedtiRsSB7FbxIDH8CjiqFx3Tc5k+NNkXmq/FJNW+sLpORTNMDFO0nQhl8KBsPp/DG0l1gYbTMCzyOc8zkGWLVanj2cBBH+Yn61Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1607351632;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=qAszKcLYs9jvnFBEg3/CMi/T/+x65cdwThphUbpHziw=; 
 b=m7Y8iGDX+2yJwHy7Cvwk9SJ8uKBpQet+FYjkPGdd/7OPPuwCtPPSiv2IHhB2v9lhnL214Yn470oMo3KngUSZLr1nB1dVdTA4UUx2+6NHyKhko7wSfGuk9eoLKjjub3I4LZBVFfWUK6L6B4SzSuyq5LQEZ6qZWQxiBd2v37ej7NU=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=mykernel.net;
 spf=pass  smtp.mailfrom=cgxu519@mykernel.net;
 dmarc=pass header.from=<cgxu519@mykernel.net>
 header.from=<cgxu519@mykernel.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1607351632; 
 s=zohomail; d=mykernel.net; i=cgxu519@mykernel.net;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=qAszKcLYs9jvnFBEg3/CMi/T/+x65cdwThphUbpHziw=;
 b=dj/a+CSIz45qDn8p0Ub+rUaJ31aAS1GSCCT7f+nrgyPUD0yke/zCwNLbGt+fGVue
 YXl9RC1HctKwEcPvkn769WyDSlxZg3VTk3zGEfnDc+IYZALL2EzJGpvY1Zb2I/PQrya
 C0slcU83tOd7uTeHpwL1mOfAjMDIfjEKUG0fpeTE=
Received: from localhost.localdomain (113.116.158.77 [113.116.158.77]) by
 mx.zoho.com.cn with SMTPS id 16073516292831021.863935117984;
 Mon, 7 Dec 2020 22:33:49 +0800 (CST)
From: Chengguang Xu <cgxu519@mykernel.net>
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Message-ID: <20201207143329.32730-1-cgxu519@mykernel.net>
Date: Mon,  7 Dec 2020 22:33:29 +0800
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [163.53.93.243 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mykernel.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kmHbW-005Raj-N5
Subject: [V9fs-developer] [PATCH v2] 9p: create writeback fid on shared
 writable mmap
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
Cc: Chengguang Xu <cgxu519@mykernel.net>, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If vma is shared and the file was opened for writing,
we should also create writeback fid because vma may be
mprotected writable even if now readonly.

Signed-off-by: Chengguang Xu <cgxu519@mykernel.net>
---
 fs/9p/vfs_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index b177fd3b1eb3..e4256dbcb754 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -517,7 +517,7 @@ v9fs_mmap_file_mmap(struct file *filp, struct vm_area_struct *vma)
 	mutex_lock(&v9inode->v_mutex);
 	if (!v9inode->writeback_fid &&
 	    (vma->vm_flags & VM_SHARED) &&
-	    (vma->vm_flags & VM_WRITE)) {
+	    (vma->vm_flags & VM_MAYWRITE)) {
 		/*
 		 * clone a fid and add it to writeback_fid
 		 * we do it during mmap instead of
-- 
2.26.2




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
