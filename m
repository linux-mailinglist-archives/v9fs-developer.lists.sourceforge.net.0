Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54918487E93
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jan 2022 22:53:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5xAi-0000II-Ci; Fri, 07 Jan 2022 21:53:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n5xAg-0000IB-7x
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jan 2022 21:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XE+COevnknBiqtTCdliOhVLkvJM1YbFotdDrkwCoLZg=; b=FruExybiZvfZfUKxiptUFLdJyY
 QHTg40kwAUtTa8TqfvKkzOlKuin0E1yHLa04qTumeB/xqv6TSVqWZ03mlEG69eCieqmZrSn7znN+8
 Xq74yHLWoeQtbh2QZOBqj0g9GGwaE0uDbP4uxBdWn6MsS2ADhl2gf9qovsz5W8NomkDw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XE+COevnknBiqtTCdliOhVLkvJM1YbFotdDrkwCoLZg=; b=YursDGZ1lJ4jPPt7kBwjlwAPNc
 s36sr3qf5BI8hmQuxXKXKLpf1zufEcsA5BLYwxKCwpgKx2nqW6CBYL8M2jhR+tYrQpx0iVivGDzn2
 T6J7h3zqwS5J3FChTWVRYdu1BE5K+4sZuNeZWLh6+6EKl86k25h59F2DOZb4ypS7oHLs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5xAY-0003Ed-GX
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jan 2022 21:53:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641592380;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XE+COevnknBiqtTCdliOhVLkvJM1YbFotdDrkwCoLZg=;
 b=Jr3tLjZRPXxCa/gEIYSGp6S9/b5s/CVfEqwMHTFo8hWhdRcqbzgHF9qdYuwrTLE/wEUn6Q
 Vy+9joAKbsSz14UznSjNXsNrIBEMPMBXPlWIEJ4EMC35C79ic9zQwxPLmzlvute2S33q92
 zcxLHJyz6W2xBJOG6/AT2swwUpEzlm8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-18-cVBOfAqEOUKkdaO58wPH6g-1; Fri, 07 Jan 2022 16:52:57 -0500
X-MC-Unique: cVBOfAqEOUKkdaO58wPH6g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1332801AAB;
 Fri,  7 Jan 2022 21:52:54 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD776519D5;
 Fri,  7 Jan 2022 21:52:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <164021579335.640689.2681324337038770579.stgit@warthog.procyon.org.uk>
References: <164021579335.640689.2681324337038770579.stgit@warthog.procyon.org.uk>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
To: linux-cachefs@redhat.com, Steve French <sfrench@samba.org>
MIME-Version: 1.0
Content-ID: <3419812.1641592362.1@warthog.procyon.org.uk>
Date: Fri, 07 Jan 2022 21:52:42 +0000
Message-ID: <3419813.1641592362@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch isn't quite right and needs a fix. The attached
 patch fixes it. I'll fold that in and post a v5 of this patch. David ---
 cifs: Fix the fscache cookie management Fix the fscache cookie management
 in cifs in the following ways: 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n5xAY-0003Ed-GX
Subject: Re: [V9fs-developer] [PATCH v4 63/68] cifs: Support fscache
 indexing rewrite (untested)
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This patch isn't quite right and needs a fix.  The attached patch fixes it.
I'll fold that in and post a v5 of this patch.

David
---
cifs: Fix the fscache cookie management

Fix the fscache cookie management in cifs in the following ways:

 (1) The cookie should be released in cifs_evict_inode() after it has been
     unused from being pinned by cifs_set_page_dirty().

 (2) The cookie shouldn't be released in cifsFileInfo_put_final().  That's
     dealing with closing a file, not getting rid of an inode.  The cookie
     needs to persist beyond the last file close because writepages may
     happen after closure.

 (3) The cookie needs to be used in cifs_atomic_open() to match
     cifs_open().  As yet unknown files being opened for writing seem to go
     by the former route rather than the latter.

This can be triggered by something like:

        # systemctl start cachefilesd
        # mount //carina/test /xfstest.test -o user=shares,pass=xxxx.fsc
        # bash 5</xfstest.test/bar
        # echo hello >/xfstest.test/bar

The key is to open the file R/O and then open it R/W and write to it whilst
it's still open for R/O.  A cookie isn't acquired if it's just opened R/W
as it goes through the atomic_open method rather than the open method.

Signed-off-by: David Howells <dhowells@redhat.com>
---
 fs/cifs/cifsfs.c |    8 ++++++++
 fs/cifs/dir.c    |    4 ++++
 fs/cifs/file.c   |    2 --
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
index d3f3acf340f1..26cf2193c9a2 100644
--- a/fs/cifs/cifsfs.c
+++ b/fs/cifs/cifsfs.c
@@ -398,6 +398,7 @@ cifs_evict_inode(struct inode *inode)
 	truncate_inode_pages_final(&inode->i_data);
 	if (inode->i_state & I_PINNING_FSCACHE_WB)
 		cifs_fscache_unuse_inode_cookie(inode, true);
+	cifs_fscache_release_inode_cookie(inode);
 	clear_inode(inode);
 }
 
@@ -722,6 +723,12 @@ static int cifs_show_stats(struct seq_file *s, struct dentry *root)
 }
 #endif
 
+static int cifs_write_inode(struct inode *inode, struct writeback_control *wbc)
+{
+	fscache_unpin_writeback(wbc, cifs_inode_cookie(inode));
+	return 0;
+}
+
 static int cifs_drop_inode(struct inode *inode)
 {
 	struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
@@ -734,6 +741,7 @@ static int cifs_drop_inode(struct inode *inode)
 static const struct super_operations cifs_super_ops = {
 	.statfs = cifs_statfs,
 	.alloc_inode = cifs_alloc_inode,
+	.write_inode	= cifs_write_inode,
 	.free_inode = cifs_free_inode,
 	.drop_inode	= cifs_drop_inode,
 	.evict_inode	= cifs_evict_inode,
diff --git a/fs/cifs/dir.c b/fs/cifs/dir.c
index 6e8e7cc26ae2..6186824b366e 100644
--- a/fs/cifs/dir.c
+++ b/fs/cifs/dir.c
@@ -22,6 +22,7 @@
 #include "cifs_unicode.h"
 #include "fs_context.h"
 #include "cifs_ioctl.h"
+#include "fscache.h"
 
 static void
 renew_parental_timestamps(struct dentry *direntry)
@@ -509,6 +510,9 @@ cifs_atomic_open(struct inode *inode, struct dentry *direntry,
 		rc = -ENOMEM;
 	}
 
+	fscache_use_cookie(cifs_inode_cookie(file_inode(file)),
+			   file->f_mode & FMODE_WRITE);
+
 out:
 	cifs_put_tlink(tlink);
 out_free_xid:
diff --git a/fs/cifs/file.c b/fs/cifs/file.c
index d872f6fe8e7d..44da7646f789 100644
--- a/fs/cifs/file.c
+++ b/fs/cifs/file.c
@@ -376,8 +376,6 @@ static void cifsFileInfo_put_final(struct cifsFileInfo *cifs_file)
 	struct cifsLockInfo *li, *tmp;
 	struct super_block *sb = inode->i_sb;
 
-	cifs_fscache_release_inode_cookie(inode);
-
 	/*
 	 * Delete any outstanding lock records. We'll lose them when the file
 	 * is closed anyway.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
