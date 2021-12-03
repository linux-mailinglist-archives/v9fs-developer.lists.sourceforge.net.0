Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6578E467DA3
	for <lists+v9fs-developer@lfdr.de>; Fri,  3 Dec 2021 19:58:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mtDlU-0007ve-NL; Fri, 03 Dec 2021 18:58:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <arnd@kernel.org>) id 1mtDlT-0007u8-Fx
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Dec 2021 18:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EE+kuuoTzxOsOrZfDNY9HOxnNhhtGuzecaKDyXTXgkM=; b=M9f3EieKQ7+kDVr0a2+b3PL62Z
 nMVkf0edAnJoBDh+V30YL4RDdhh68vFyjaa1wStGc1MWi4U7hPg1gV+6JPwGAPAmZuHJLEVM5XdmU
 tugktQNs66aWqfjLN44DQtwDYYZ25OjnuD1PniofqOvXkGdzCDaLM2EFqFF4hcg0vgv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EE+kuuoTzxOsOrZfDNY9HOxnNhhtGuzecaKDyXTXgkM=; b=A
 ZoYrMJoYcbtLwXTvITMdmY9100VQIPg/Ovh/vKfnHotxl3Owlx0c8KlbMChI5JuVcxp80IvE/l0Ew
 qTThoFt2kdNKqeUYZ2tsVgShUBLu/eR+QC0ArcA5CXBJv+mmTqCTKsDe1PVqBLSoCOV9sQ5a8LQm+
 yju/Fk3wPg5S1MYo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mtDlP-0031zW-Hd
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Dec 2021 18:58:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 28CDE62CAB;
 Fri,  3 Dec 2021 18:58:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACBB6C53FAD;
 Fri,  3 Dec 2021 18:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638557901;
 bh=3f/h2EgdTQ3pBq+ISkyXCIN+i2CCECjmkpTjC7FXDQI=;
 h=From:To:Cc:Subject:Date:From;
 b=gR9Vb7m7yJVfWpxyNkdq+aDVBLOUz5MKE6MGmvNDXKsV6MCrEQk3WP+lunnOTRwHy
 X/nbY+F/xJGsy440Uq9Axgz3a29YiU4y6qGJb+82d76oTm3sZq2X2t34onAB/64I39
 EM7CajBMasWQpdjIT/MyNwq1iDnIEaov1bVMMA+mFn8pctmetzJBfGMb6HGuNuUjvQ
 FMZC2i6/ucyBUp4zR/GcNQmx31EcKfZD8iUfGUPtonJaTy49kpv9RcBSIHUqS3OJFe
 wjPQi3KJohdzALvQTKYMk+K9UihYn8f6zcbzTsESxgQ9nH/j1lzm5z5lqbXV8K+FGK
 CmR517097ePow==
From: Arnd Bergmann <arnd@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Fri,  3 Dec 2021 19:58:06 +0100
Message-Id: <20211203185816.796637-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Arnd Bergmann <arnd@arndb.de> The folio changes added
 a variable that is sometimes unused: fs/9p/vfs_addr.c: In function
 'v9fs_release_page':
 fs/9p/vfs_addr.c:140:23: error: unused variable 'inode'
 [-Werror=unused-variable]
 140 | struct inode *inode = folio_inode(folio); | ^~~~~ 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mtDlP-0031zW-Hd
Subject: [V9fs-developer] [PATCH] 9p: fix unused-variable warning
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Arnd Bergmann <arnd@arndb.de>,
 Eric Van Hensbergen <ericvh@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

The folio changes added a variable that is sometimes unused:

fs/9p/vfs_addr.c: In function 'v9fs_release_page':
fs/9p/vfs_addr.c:140:23: error: unused variable 'inode' [-Werror=unused-variable]
  140 |         struct inode *inode = folio_inode(folio);
      |                       ^~~~~

Make this clearer to the compiler by replacing the #ifdef
with an equivalent if(IS_ENABLED()) check.

Fixes: 78525c74d9e7 ("netfs, 9p, afs, ceph: Use folios")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/9p/vfs_addr.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 1279970e9157..82ac2ceff06e 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -141,14 +141,17 @@ static int v9fs_release_page(struct page *page, gfp_t gfp)
 
 	if (folio_test_private(folio))
 		return 0;
-#ifdef CONFIG_9P_FSCACHE
+
+	if (!IS_ENABLED(CONFIG_9P_FSCACHE))
+		return 1;
+
 	if (folio_test_fscache(folio)) {
 		if (!(gfp & __GFP_DIRECT_RECLAIM) || !(gfp & __GFP_FS))
 			return 0;
 		folio_wait_fscache(folio);
 	}
 	fscache_note_page_release(v9fs_inode_cookie(V9FS_I(inode)));
-#endif
+
 	return 1;
 }
 
-- 
2.29.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
