Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4694927C0
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:55:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9oxE-0004J9-PF; Tue, 18 Jan 2022 13:55:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9oxD-0004J3-TV
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nVXdBfar06aN8bLGcQhg3hoHTwA3zNmoM5BZNTP/YMg=; b=WN/PBEk+cJ1lAkIPwV5qd6xD6n
 SLVWYpFRZKXsA7VEUSXOkAVBmTdQ2VuFSIS7UwiqF8eF+oqhjPeTPFKa+eiEJAh78J8JH/17G1t4N
 rGF3MxgqILBy+4vqx+HTbUZoyR6ViqGkOK+59JDDKLA9uV/Nc4irIqW83pePP4SOejgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nVXdBfar06aN8bLGcQhg3hoHTwA3zNmoM5BZNTP/YMg=; b=TLGxAcX4V0FvXHgWVO+pZDmwBu
 Oo5+SucUTjnFDq5neZ9dKlyfXN+xMY6n4xDIexgR9XM6AppXrL6jatKY7BRmZbDySDrGVwX5qPCE6
 dyoLAOJOYtfwQ4YEQFojKgUHG6K/TwmqszCasD24P+3VIL+qIOU2RoFB0x8X3ybPlWJ4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9oxB-0026pt-1W
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642514111;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nVXdBfar06aN8bLGcQhg3hoHTwA3zNmoM5BZNTP/YMg=;
 b=H8J2TQ8G69thSAuWlcMMxbsd+i0VyJ/Vn9q0geuzWwQMS4bgf/MYUawDzZQZRtvRr+Q+6Z
 nyAzC9Tlz8q7ctiin4hd5RZpVzLvdILkD9ir85E/N12m4ORtwLRGQGgK6pUUqlzVwTkpo8
 qs13i6qd0tbipeRwh5oE1FBr2rFKGSY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-E2DiHj7XNe26-nTe-KwSqA-1; Tue, 18 Jan 2022 08:55:08 -0500
X-MC-Unique: E2DiHj7XNe26-nTe-KwSqA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EFDF18B9EA9;
 Tue, 18 Jan 2022 13:54:58 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 578142B6E9;
 Tue, 18 Jan 2022 13:54:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:54:54 +0000
Message-ID: <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode
 flag as is common practice for the other inode flags[1]. Suggested-by: Jeff
 Layton <jlayton@kernel.org> Signed-off-by: David Howells <dhowells@redhat.com>
 Reviewed-by: Jeff Layton <jlayton@kernel.org> cc: linux-cachefs@redhat.com
 Link: https://lore.kernel.o [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1n9oxB-0026pt-1W
Subject: [V9fs-developer] [PATCH 09/11] vfs,
 fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode flag as is
common practice for the other inode flags[1].

Suggested-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/88d7f8970dcc0fd0ead891b1f42f160b8d17d60e.camel@kernel.org/ [1]
---

 fs/cachefiles/namei.c |    6 +++---
 fs/namei.c            |    2 +-
 include/linux/fs.h    |    1 +
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index f256c8aff7bb..04563f759e99 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -20,7 +20,7 @@ static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
 	struct inode *inode = d_backing_inode(dentry);
 	bool can_use = false;
 
-	if (!(inode->i_flags & S_KERNEL_FILE)) {
+	if (!IS_KERNEL_FILE(inode)) {
 		inode->i_flags |= S_KERNEL_FILE;
 		trace_cachefiles_mark_active(object, inode);
 		can_use = true;
@@ -746,7 +746,7 @@ static struct dentry *cachefiles_lookup_for_cull(struct cachefiles_cache *cache,
 		goto lookup_error;
 	if (d_is_negative(victim))
 		goto lookup_put;
-	if (d_inode(victim)->i_flags & S_KERNEL_FILE)
+	if (IS_KERNEL_FILE(d_inode(victim)))
 		goto lookup_busy;
 	return victim;
 
@@ -793,7 +793,7 @@ int cachefiles_cull(struct cachefiles_cache *cache, struct dentry *dir,
 	/* check to see if someone is using this object */
 	inode = d_inode(victim);
 	inode_lock(inode);
-	if (inode->i_flags & S_KERNEL_FILE) {
+	if (IS_KERNEL_FILE(inode)) {
 		ret = -EBUSY;
 	} else {
 		/* Stop the cache from picking it back up */
diff --git a/fs/namei.c b/fs/namei.c
index d81f04f8d818..c2175ab3849d 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -3959,7 +3959,7 @@ int vfs_rmdir(struct user_namespace *mnt_userns, struct inode *dir,
 
 	error = -EBUSY;
 	if (is_local_mountpoint(dentry) ||
-	    (dentry->d_inode->i_flags & S_KERNEL_FILE))
+	    IS_KERNEL_FILE(dentry->d_inode))
 		goto out;
 
 	error = security_inode_rmdir(dir, dentry);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index f5d3bf5b69a6..227497793282 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -2216,6 +2216,7 @@ static inline bool sb_rdonly(const struct super_block *sb) { return sb->s_flags
 #define IS_ENCRYPTED(inode)	((inode)->i_flags & S_ENCRYPTED)
 #define IS_CASEFOLDED(inode)	((inode)->i_flags & S_CASEFOLD)
 #define IS_VERITY(inode)	((inode)->i_flags & S_VERITY)
+#define IS_KERNEL_FILE(inode)	((inode)->i_flags & S_KERNEL_FILE)
 
 #define IS_WHITEOUT(inode)	(S_ISCHR(inode->i_mode) && \
 				 (inode)->i_rdev == WHITEOUT_DEV)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
