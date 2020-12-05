Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E01522CFB6C
	for <lists+v9fs-developer@lfdr.de>; Sat,  5 Dec 2020 14:26:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1klXZo-0008QT-Fn; Sat, 05 Dec 2020 13:26:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@mykernel.net>) id 1klXZm-0008QK-Dr
 for v9fs-developer@lists.sourceforge.net; Sat, 05 Dec 2020 13:26:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tHxG5co5xvuUjGQ5Eh70UR6wHrLHoiLCPbQX5DiQRrY=; b=A9vkZ6POwWiw5yZ+0+IQ8baNSl
 Kz/qZJ0wDvXILMIeU/iwAyBX9twzWA4LK5oEYbbSvQFIC9l2KPzSTkwqrauYYCf4Ssa5dNFJhM0oh
 aG0Zkv2Nd5FPLOaFgFhgzWtVmqXMOZRfoiG+5xjN8LkQL1XMR2b/tLez8AcUq0OQ6l1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tHxG5co5xvuUjGQ5Eh70UR6wHrLHoiLCPbQX5DiQRrY=; b=AJVYbtBEmszzxfnKeB9gLHlun0
 KejywPB2sHvdHMmZ5adiNTnn/cgL6zk5A2UeutqV68I3gYDFosbmpaPK73HD5AtgIFvm5hsKay4c1
 asUnTgwEp7rpmYrpbdTjSZExIPfBQ/kZFbITJyVr8QlpvJT2EgRUuvkuBSTH2XyOzx1Q=;
Received: from sender2-op-o12.zoho.com.cn ([163.53.93.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1klXZS-0039jl-Cj
 for v9fs-developer@lists.sourceforge.net; Sat, 05 Dec 2020 13:26:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1607173756; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=Fa5o5qvaV3+NAcvHEK9/sD7Gt2+TEJvCTssVhm9qwqM1/SAM0cfg27F7uQxp9rTZvAlZsM0BwRZ4rqCe2bQ8XKUk4M07cCVNkiZuiO19/66yXuyj8qBdXi8j5NHWVwq1N56OVD/RTv+ob5CV4jSi/jFUI9N78+YFsWadJqGyMYY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1607173756;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=tHxG5co5xvuUjGQ5Eh70UR6wHrLHoiLCPbQX5DiQRrY=; 
 b=GudFEi8NTdFPYfbPhjgU4Q63vwdxmupFNfTfoX62CpVWhfqa+p6kaSKC++MGzsSoEi2hMo3DxMIYxAVKtEQict5IKF2S+jv58bo5tE6WLHWs4LDQt2gL9s47Hg1eRaRgSdy3lO4UOqc0XLyGfaOzs+zHNz+Rbxxx3SB0tBJEmpI=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=mykernel.net;
 spf=pass  smtp.mailfrom=cgxu519@mykernel.net;
 dmarc=pass header.from=<cgxu519@mykernel.net>
 header.from=<cgxu519@mykernel.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1607173756; 
 s=zohomail; d=mykernel.net; i=cgxu519@mykernel.net;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=tHxG5co5xvuUjGQ5Eh70UR6wHrLHoiLCPbQX5DiQRrY=;
 b=ZcjEWzaY6FIh68kUQhmOmpeB9GXZcBzOvKzuBjgx7FnyJm56OVzoQ6tG32JMqvDx
 5HoqCnpjq/7g2IKUHIzJnjlRA8GXnUyTa4CxYsQOBQErUjj6m6DcZthn9v8z0KozTTW
 FJAsJu0Kzaz+DxmHH0R9j3ZZOoeM+KlfyBOZsO1o=
Received: from localhost.localdomain (113.87.90.239 [113.87.90.239]) by
 mx.zoho.com.cn with SMTPS id 1607173753136251.15710636560402;
 Sat, 5 Dec 2020 21:09:13 +0800 (CST)
From: Chengguang Xu <cgxu519@mykernel.net>
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Message-ID: <20201205130904.518104-1-cgxu519@mykernel.net>
Date: Sat,  5 Dec 2020 21:09:04 +0800
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [163.53.93.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1klXZS-0039jl-Cj
Subject: [V9fs-developer] [RFC PATCH] 9p: create writeback fid on shared mmap
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
Caveat: Only compile tested.

 fs/9p/vfs_file.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index b177fd3b1eb3..791839c2dd5c 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -516,8 +516,7 @@ v9fs_mmap_file_mmap(struct file *filp, struct vm_area_struct *vma)
 	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
 	if (!v9inode->writeback_fid &&
-	    (vma->vm_flags & VM_SHARED) &&
-	    (vma->vm_flags & VM_WRITE)) {
+	    mapping_writably_mapped(filp->f_mapping)) {
 		/*
 		 * clone a fid and add it to writeback_fid
 		 * we do it during mmap instead of
-- 
2.26.2




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
