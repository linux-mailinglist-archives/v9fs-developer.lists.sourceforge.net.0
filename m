Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D432254A795
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 05:38:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0xO6-0008Ro-7c; Tue, 14 Jun 2022 03:38:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0xO4-0008Ri-Jc
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 03:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SKBy3DKVfNlrFaCP/8Dtym1Pjl7YP37RHZXiwxzpYsE=; b=gmMxi9kdlq6LAyPe/A9qq3MLZe
 YBnEmUbT6o780CgFyO0PZFNx6tdjEo1kVrZy8IAX0sKGUypbWJRqMjQxpGvqgWsMCiHVQvkzTFpLM
 Jawy84aGgL1fJ3k7DEW8iBt03p723oH4DlsdjS7fhpGXuuB158AaDdL/LYmGAzOqrYyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SKBy3DKVfNlrFaCP/8Dtym1Pjl7YP37RHZXiwxzpYsE=; b=D9jIyfdQGhi92US4d5RJxUEHfG
 Pk0yxix9XMu2VHAMP8APFH3kHCWs5bsmMcqSzJNAYQcWpqhcwzoxsDTh1LfFEsP43vCkkEgFIcH0l
 j2iGoxFRMZrMNmdmrK+WEs9mgGqBCYUbEja906gYNCWp/Ad2nkvo1EtVNqgFmM1EMvLA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0xO1-000nBg-5U
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 03:38:39 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2E62AC01D; Tue, 14 Jun 2022 05:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655177908; bh=SKBy3DKVfNlrFaCP/8Dtym1Pjl7YP37RHZXiwxzpYsE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ap0gj6B48RZcKFFmxmYZC0AquDtakpRgEkSaw8sKkeMA3q5n6pMpG8ahdr2+jzl05
 UJi5LgcfpbwVnjDlIJgwkcpdidczMBWgQnavTF1U3PU+7zqC4PHgY1MdSqtTu+c/mI
 8Qx5GyYnRKFXdWIfPjSlk/osSNQw6L4kIyy8lXCTd73dAVUwCqJEfd2aWbShrOeVOl
 tZ9hFnPwydpwi1ihNLQd+oOjJVRgR27NEtZ+fCVkAJuySJ+L4vZcrswQovm1pGv5BE
 EBfwiN4XuY05cEdQ/NhT/Rhww/pbAND0kO1YUJeFKH3EnVnIqbHrTLwy/4gn1rk59r
 SDt5O0vV+JKjQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7CF18C009;
 Tue, 14 Jun 2022 05:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655177907; bh=SKBy3DKVfNlrFaCP/8Dtym1Pjl7YP37RHZXiwxzpYsE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=28IXVq3l+ga1y/wE2URuxUhvPUE05ceTmaL7GDy231Ox0OX29px9rKrgeAi0HEJrz
 LQf4YfbacEydU9Ehx5Zq/FxHBNJb2zzS4f/7MyDDDhw0W+Geo3xygAuYnq36sy6lyE
 xZYwhxZXL/0sflI9HyADExseimgbP3zLrkNZls2HWSSSPbxnOQJo5Cwfgr+DymwmCw
 WVltr+R41SQlJlT8RmZXVrzexkVV/eM5ogjCjEesIXrhnzav9x3G3TjzH4WwUloyL2
 hwc9F6HWr64h1I+HtktO5RfygwDanmOZZ0UTff4T8G3+iq8TJ3kTI/e7fFWV+AsHkZ
 okHgqLmj0YE2A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a34bb87f;
 Tue, 14 Jun 2022 03:38:18 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>
Date: Tue, 14 Jun 2022 12:38:02 +0900
Message-Id: <20220614033802.1606738-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <YqW5s+GQZwZ/DP5q@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0xO1-000nBg-5U
Subject: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
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

Fixes: eb497943fa21 ("9p: Convert to using the netfs helper lib to do reads and caching")
Cc: stable@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>
Reported-By: Christian Schoenebeck <linux_oss@crudebyte.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
Ok so finally had time to look at this, and it's not a lot so this is
the most straight forward way to do: just reverting to how the old
fscache worked.

This appears to work from quick testing, Chiristian could you test it?

I think the warnings you added in p9_client_read/write that check
fid->mode might a lot of sense, if you care to resend it as
WARN_ON((fid->mode & ACCMODE) == O_xyz);
instead I'll queue that for 5.20


@Stable people, I've checked it applies to 5.17 and 5.18 so should be
good to grab once I submit it for inclusion (that commit was included in
5.16, which is no longer stable)


 fs/9p/vfs_addr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 7382c5227e94..262968d02f55 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -58,7 +58,11 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
  */
 static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
 {
-	struct p9_fid *fid = file->private_data;
+	struct inode *inode = file_inode(file);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+	struct p9_fid *fid = v9inode->writeback_fid;
+
+	BUG_ON(!fid);
 
 	p9_fid_get(fid);
 	rreq->netfs_priv = fid;
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
