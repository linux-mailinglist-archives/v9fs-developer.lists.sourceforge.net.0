Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BF534E848
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Mar 2021 15:03:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lRE1x-0008W2-3R; Tue, 30 Mar 2021 13:03:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yangyingliang@huawei.com>) id 1lRE1v-0008Vu-Qq
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 13:03:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BPJriUhKKIu7Y61zH56FK5X8efjXJBW2E2Tysvh5sXc=; b=UJy9j8b/pb8rF3Xk+xpP4lbPoF
 q2kwLz1P0tFQeW8xuwnRSO9ye1/ukgxu8XCf5/dXmzZk1cJae26AeEpOV5fO9E1Vakhw4NXCKs+nC
 DxwvlnVN7qOInHvTfTnCm68kip+kxTycbm5Sge3AgcpMxKKDyu5U88U6v6Jyz7pU121k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BPJriUhKKIu7Y61zH56FK5X8efjXJBW2E2Tysvh5sXc=; b=m
 2HL56PNc5guyOuVmDqJWU7rmVO+lZQdJCYG9yybJIgv9KM6+yHVFSUSbJq48o8WFV2mjK907fkVSO
 aLsRiBMIRztqMRG5bGa56oMAzV8vvVfYCT01w6ZiltlSShs3u4EWIE7EWG569jWqWSAl7f42UYpfA
 xMr4BjojMFAQTZ+0=;
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRE1q-00D24L-Fx
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 13:03:35 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4F8qLg16nczPmtb;
 Tue, 30 Mar 2021 21:00:43 +0800 (CST)
Received: from huawei.com (10.175.103.91) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.498.0; Tue, 30 Mar 2021
 21:03:15 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <v9fs-developer@lists.sourceforge.net>
Date: Tue, 30 Mar 2021 21:06:32 +0800
Message-ID: <20210330130632.1054357-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [45.249.212.191 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lRE1q-00D24L-Fx
Subject: [V9fs-developer] [PATCH -next] fs: 9p: fix wrong pointer passed to
 IS_ERR() and PTR_ERR()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IS_ERR() and PTR_ERR() use wrong pointer, it should be
writeback_fid, fix it.

Fixes: 5bfe97d7382b ("9p: Fix writeback fid incorrectly being attached to dentry")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 fs/9p/vfs_file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 649f04f112dc..59c32c9b799f 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -86,8 +86,8 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 		 * to work.
 		 */
 		writeback_fid = v9fs_writeback_fid(file_dentry(file));
-		if (IS_ERR(fid)) {
-			err = PTR_ERR(fid);
+		if (IS_ERR(writeback_fid)) {
+			err = PTR_ERR(writeback_fid);
 			mutex_unlock(&v9inode->v_mutex);
 			goto out_error;
 		}
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
