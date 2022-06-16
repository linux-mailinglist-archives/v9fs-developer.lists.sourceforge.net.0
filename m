Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6233754E286
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 15:53:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1pvz-0007Ii-0R; Thu, 16 Jun 2022 13:53:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1pvx-0007Ic-Lz
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 13:53:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4nSqo7I8x65gGtDiG32GUmCNchdtE9/QOARXVTfLdiY=; b=SSBzmZ7qqmkDWgs2aBcKi34W3s
 7scOj7YvZkmRAS1yoSD69QQ1Bg18G9DmodFRbcvWrxLSWmQrxlkAb2l776Pc/2Fjsa9y1I27KVGGH
 BqZ/OhtQY+5jroOyy+SlYuEFa+HZftcVvvTK9QZyCpVdTw3q/4M2N1S0PXmYaZ21RFCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4nSqo7I8x65gGtDiG32GUmCNchdtE9/QOARXVTfLdiY=; b=jn9zFxEYkMiAYynVNhOhA8p3GG
 gsvH2AAU/lVs+WYxfOcEBCU4X1Ru/6nYrWdKHwFC0iJ/iBM6LPcx4Bis6jpNjqgHRpgsu8Vq+mW7u
 8QXBTHsNIJ6qD7vB2W6tO9TAjKcf6Snfs1wZdYctw6N6DWvLbzhfmis93iwY3yib1IMU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1pvv-004CJY-Ap
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 13:53:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id F0D80C009; Thu, 16 Jun 2022 15:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655387587; bh=4nSqo7I8x65gGtDiG32GUmCNchdtE9/QOARXVTfLdiY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k57/XhKo9tUpFUuhpqwOCB2RHT9tUhhu1njN/0NozwWeiiH9fwY2+RqkXV/FMJHZU
 SmNekz5eNPwo4uGG6kdWjgU02Y1OVG9UFahh2hVF8RqPYS+wUt7o/TK9vJ4QI8p8Wt
 ZzNgqSeQTuRHS5JHdP+VHnrCaXYhFlM5R3us/KNUV7wRfjtuh/n1rdaMe5qBp26wdG
 LXkq3z7CkGFmdBwtX4wfomHMj0+MJfqwXzgbCS3mx+l5wQJsvRBrw7MvmI6IOfhhcA
 eHjwjRzWo6Hoxwg3obreXpJjht2BsAHkSFvesMtJ8RF6Y1o4h3hr3N9tQdCovAm4Qz
 xHvdHRH871/Ag==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 9ACA0C009;
 Thu, 16 Jun 2022 15:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655387587; bh=4nSqo7I8x65gGtDiG32GUmCNchdtE9/QOARXVTfLdiY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k57/XhKo9tUpFUuhpqwOCB2RHT9tUhhu1njN/0NozwWeiiH9fwY2+RqkXV/FMJHZU
 SmNekz5eNPwo4uGG6kdWjgU02Y1OVG9UFahh2hVF8RqPYS+wUt7o/TK9vJ4QI8p8Wt
 ZzNgqSeQTuRHS5JHdP+VHnrCaXYhFlM5R3us/KNUV7wRfjtuh/n1rdaMe5qBp26wdG
 LXkq3z7CkGFmdBwtX4wfomHMj0+MJfqwXzgbCS3mx+l5wQJsvRBrw7MvmI6IOfhhcA
 eHjwjRzWo6Hoxwg3obreXpJjht2BsAHkSFvesMtJ8RF6Y1o4h3hr3N9tQdCovAm4Qz
 xHvdHRH871/Ag==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 20e706e1;
 Thu, 16 Jun 2022 13:53:02 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>
Date: Thu, 16 Jun 2022 22:52:55 +0900
Message-Id: <20220616135256.1787252-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <22073313.PYDa2UxuuP@silver>
References: <22073313.PYDa2UxuuP@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  cached operations sometimes need to do invalid operations
 (e.g. read on a write only file) Historic fscache had added a "writeback fid"
 for this, but the conversion to new fscache somehow lost usage o [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1pvv-004CJY-Ap
Subject: [V9fs-developer] [PATCH v2] 9p: fix EBADF errors in cached mode
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cached operations sometimes need to do invalid operations (e.g. read
on a write only file)
Historic fscache had added a "writeback fid" for this, but the conversion
to new fscache somehow lost usage of it: use the writeback fid instead
of normal one.

Note that the way this works (writeback fid being linked to inode) means
we might use overprivileged fid for some operations, e.g. write as root
when we shouldn't.
Ideally we should keep both fids handy, and only use the writeback fid
when really required e.g. reads to a write-only file to fill in the page
cache (read-modify-write); but this is the situation we've always had
and this commit only fixes an issue we've had for too long.

Link: https://lkml.kernel.org/r/20220614033802.1606738-1-asmadeus@codewreck.org
Fixes: eb497943fa21 ("9p: Convert to using the netfs helper lib to do reads and caching")
Cc: stable@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>
Reported-By: Christian Schoenebeck <linux_oss@crudebyte.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/vfs_addr.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index a8f512b44a85..7f924e671e3e 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -58,7 +58,17 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
  */
 static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
 {
-	struct p9_fid *fid = file->private_data;
+	struct inode *inode = file_inode(file);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+	struct p9_fid *fid = v9inode->writeback_fid;
+
+	/* If there is no writeback fid this file only ever has had
+	 * read-only opens, so we can use file's fid which should
+	 * always be set instead */
+	if (!fid)
+		fid = file->private_data;
+
+	BUG_ON(!fid);
 
 	refcount_inc(&fid->count);
 	rreq->netfs_priv = fid;
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
