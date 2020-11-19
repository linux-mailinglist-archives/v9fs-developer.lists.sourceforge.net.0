Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C28D2B974A
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Nov 2020 17:07:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfmTF-0001Ge-1Y; Thu, 19 Nov 2020 16:07:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kfmT8-0001Fm-MX
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Nov 2020 16:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eK6/Q/abk4MPm5E1E9fU+K69kfbIstGf/YUDyuJZEG0=; b=FVCLkNjN4COLbkgV8x00q+L+Qb
 S4RARo0ggG2YIMYXYzYc+jUNpGTtTZ7vCRmHeUKdGltMT8RDCyLnKf9p1aAd0mSzgjWpwenfFfSEi
 MIQsBIV4FVjUB12rj2oPjRG4q5Qk8jiD+aB7i3hnQzchPXK5x7x6pGImTLsTRmBo1a5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eK6/Q/abk4MPm5E1E9fU+K69kfbIstGf/YUDyuJZEG0=; b=SV4AZRAv/dB+7R7HLVXCoBcwbe
 fERE6XHmhpkLgcbKd+tnjOQ6OTNrDbaxHES1dQY4q2O3ZMTQ8HNbvQiuenStha5crZf5cYK3dZemH
 U3cA6jTsALQX6nFQmmAWvWlZAjucMuej3E2OVBqAxk9TBaPf1sqZESwypDQOJAj+JeYk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfmSz-007jZq-6X
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Nov 2020 16:07:34 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id E42A7C01B; Thu, 19 Nov 2020 17:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1605802038; bh=eK6/Q/abk4MPm5E1E9fU+K69kfbIstGf/YUDyuJZEG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MqbGoote7pDVzt+aCgVzGUEojP1xi9hk+JdvrMw6yr+451nTk80Nt+DnBs5e+IbC7
 r8FIRiCE/TJOPXgv7OSuzIW5GvKyFDFQe18RJpSKPXVLCbRuOXcMlEbAj0SLwUTdfM
 BS9tsAXx5puT04bx0YSfIBWn7MSwuX5XHZTIdyHPxmYi3d1VWXGjkKasFj9K5t96ge
 /LmKup1BqrOjKs7iv5XCCy8YLXC3Exly515Y+FpJvUpBpaXxZIlVyVacicOad/e+Xi
 7Lja1p76du44tIaL5wvbYX9N1aCaEJO/mDDRFm8mnrw3/hoOeKpD8TgEkAylAX5z5H
 muS8ALvu6vGUQ==
From: Dominique Martinet <asmadeus@codewreck.org>
To: 
Date: Thu, 19 Nov 2020 17:06:52 +0100
Message-Id: <1605802012-31133-3-git-send-email-asmadeus@codewreck.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1605802012-31133-1-git-send-email-asmadeus@codewreck.org>
References: <20201103104116.GA19587@nautica>
 <1605802012-31133-1-git-send-email-asmadeus@codewreck.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kfmSz-007jZq-6X
Subject: [V9fs-developer] [PATCH 2/2] 9p: Fix writeback fid incorrectly
 being attached to dentry
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, qemu_oss@crudebyte.com, groug@kaod.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v9fs_dir_release needs fid->ilist to have been initialized for filp's
fid, not the inode's writeback fid's.

With refcounting this can be improved on later but this appears to fix
null deref issues.

Fixes: xxx ("fs/9p: track open fids")
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
(note: fixes tag can't be filled here, will be corrected later)
 fs/9p/vfs_file.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index b0ef225cecd0..c5e49c88688d 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -46,7 +46,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 	int err;
 	struct v9fs_inode *v9inode;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid;
+	struct p9_fid *fid, *writeback_fid;
 	int omode;
 
 	p9_debug(P9_DEBUG_VFS, "inode: %p file: %p\n", inode, file);
@@ -85,13 +85,13 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 		 * because we want write after unlink usecase
 		 * to work.
 		 */
-		fid = v9fs_writeback_fid(file_dentry(file));
+		writeback_fid = v9fs_writeback_fid(file_dentry(file));
 		if (IS_ERR(fid)) {
 			err = PTR_ERR(fid);
 			mutex_unlock(&v9inode->v_mutex);
 			goto out_error;
 		}
-		v9inode->writeback_fid = (void *) fid;
+		v9inode->writeback_fid = (void *) writeback_fid;
 	}
 	mutex_unlock(&v9inode->v_mutex);
 	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
