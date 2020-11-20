Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0BF2BAD7E
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:21:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8ER-0002bg-4d; Fri, 20 Nov 2020 15:21:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg84b-0002By-M1
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IdLhA7VYog4RsBFw7uKM9fTPMB0xRkDtxQls62wnyb0=; b=eMoULU3T8khcuWF71tulfm1ZPN
 Q+bMZpx20MAcQz1QjR5dIXsgPQqeED6Ld3wx1ysyTdgudjBT2cmZ6MxL2O/CSzlosUtbYqNdDcovl
 rgfAWDUlxNNw3w9z035xvyn1p7rdjG/fsM8t9cDAr0O7gXAivimN+XSZapb8TGRaTMVw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IdLhA7VYog4RsBFw7uKM9fTPMB0xRkDtxQls62wnyb0=; b=R5LZOGqswtLcYwZ1K0SZucszqV
 2uth8KD6HLTiW5aCdc3vpfG5hPG10sVDc2bVd1RMbFo3QBa7l4WRx65hc02rK6JdELI0CjSKRPdDt
 jGr6Z2cZpYLSsLxbc7AC+gRVfOmvTpNLQASu9+f0FiH3Qzhwsc0t/0Is2n7e0e42UU2U=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg84Z-003Bd6-NU
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885086;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IdLhA7VYog4RsBFw7uKM9fTPMB0xRkDtxQls62wnyb0=;
 b=HXWVcK+lNQluOybj1T1koPQBvQpPBEa3KrrGj0d/ZuxTQ91Xr8/TCScM/wlJwYO0JKW7A6
 nQmVDPTlTEO9bp61NrwBJ5qIcPUJOu30AEllOdPb3WjXgnXC3stFbZ/VhzmUaXDJlxRhWU
 u5SKOm74QnouZvP3fAitzdcJs5v+mHg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-Kgvq3fUrM7yZsfcOzCDFQw-1; Fri, 20 Nov 2020 10:11:23 -0500
X-MC-Unique: Kgvq3fUrM7yZsfcOzCDFQw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2864F1835A00;
 Fri, 20 Nov 2020 15:11:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4081F60BD8;
 Fri, 20 Nov 2020 15:11:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:11:14 +0000
Message-ID: <160588507445.3465195.10709245323383602461.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg84Z-003Bd6-NU
Subject: [V9fs-developer] [RFC PATCH 40/76] cachefiles: Merge object->backer
 into object->dentry
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Merge the object->backer pointer into the object->dentry pointer and assume
that data objects are always going to be just regular files.

object->dentry can then more easily be overridden later by invalidation
without having two different things to update the xattrs on.

object->old maintains a pointer to the old file so that we can unlink the
it later.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c |   35 +++++++++++++++++------------------
 fs/cachefiles/internal.h  |    2 +-
 fs/cachefiles/io.c        |    4 ++--
 fs/cachefiles/namei.c     |    4 +++-
 4 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index dc8c875223bb..7e8940a7fb55 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -171,16 +171,16 @@ static void cachefiles_update_object(struct fscache_object *_object)
 	cachefiles_begin_secure(cache, &saved_cred);
 
 	object_size = object->fscache.cookie->object_size;
-	if (i_size_read(d_inode(object->backer)) > object_size) {
+	if (i_size_read(d_inode(object->dentry)) > object_size) {
 		struct path path = {
 			.mnt	= cache->mnt,
-			.dentry	= object->backer
+			.dentry	= object->dentry
 		};
-		_debug("trunc %llx -> %llx", i_size_read(d_inode(object->backer)), object_size);
+		_debug("trunc %llx -> %llx", i_size_read(d_inode(object->dentry)), object_size);
 		ret = vfs_truncate(&path, object_size);
 		if (ret < 0) {
 			cachefiles_io_error_obj(object, "Trunc-to-size failed");
-			cachefiles_remove_object_xattr(cache, object->backer);
+			cachefiles_remove_object_xattr(cache, object->dentry);
 			goto out;
 		}
 	}
@@ -219,9 +219,8 @@ static void cachefiles_clean_up_object(struct cachefiles_object *object,
 		fput(object->backing_file);
 	object->backing_file = NULL;
 
-	if (object->backer != object->dentry)
-		dput(object->backer);
-	object->backer = NULL;
+	dput(object->old);
+	object->old = NULL;
 
 	cachefiles_unmark_inode_in_use(object, object->dentry);
 	dput(object->dentry);
@@ -295,7 +294,7 @@ static void cachefiles_put_object(struct fscache_object *_object,
 	if (u == 0) {
 		_debug("- kill object OBJ%x", object->fscache.debug_id);
 
-		ASSERTCMP(object->backer, ==, NULL);
+		ASSERTCMP(object->old, ==, NULL);
 		ASSERTCMP(object->dentry, ==, NULL);
 		ASSERTCMP(object->fscache.n_children, ==, 0);
 
@@ -360,17 +359,17 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 	if (ni_size == object->i_size)
 		return 0;
 
-	if (!object->backer)
+	if (!object->dentry)
 		return -ENOBUFS;
 
-	ASSERT(d_is_reg(object->backer));
+	ASSERT(d_is_reg(object->dentry));
 
-	oi_size = i_size_read(d_backing_inode(object->backer));
+	oi_size = i_size_read(d_backing_inode(object->dentry));
 	if (oi_size == ni_size)
 		return 0;
 
 	cachefiles_begin_secure(cache, &saved_cred);
-	inode_lock(d_inode(object->backer));
+	inode_lock(d_inode(object->dentry));
 
 	/* if there's an extension to a partial page at the end of the backing
 	 * file, we need to discard the partial page so that we pick up new
@@ -379,17 +378,17 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 		_debug("discard tail %llx", oi_size);
 		newattrs.ia_valid = ATTR_SIZE;
 		newattrs.ia_size = oi_size & PAGE_MASK;
-		ret = notify_change(object->backer, &newattrs, NULL);
+		ret = notify_change(object->dentry, &newattrs, NULL);
 		if (ret < 0)
 			goto truncate_failed;
 	}
 
 	newattrs.ia_valid = ATTR_SIZE;
 	newattrs.ia_size = ni_size;
-	ret = notify_change(object->backer, &newattrs, NULL);
+	ret = notify_change(object->dentry, &newattrs, NULL);
 
 truncate_failed:
-	inode_unlock(d_inode(object->backer));
+	inode_unlock(d_inode(object->dentry));
 	cachefiles_end_secure(cache, saved_cred);
 
 	if (ret == -EIO) {
@@ -422,10 +421,10 @@ static bool cachefiles_invalidate_object(struct fscache_object *_object)
 	_enter("{OBJ%x},[%llu]",
 	       object->fscache.debug_id, (unsigned long long)ni_size);
 
-	if (object->backer) {
-		ASSERT(d_is_reg(object->backer));
+	if (object->dentry) {
+		ASSERT(d_is_reg(object->dentry));
 
-		path.dentry = object->backer;
+		path.dentry = object->dentry;
 		path.mnt = cache->mnt;
 
 		cachefiles_begin_secure(cache, &saved_cred);
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index caa6dfbaf333..2dab3ee386ad 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -35,7 +35,7 @@ extern unsigned cachefiles_debug;
 struct cachefiles_object {
 	struct fscache_object		fscache;	/* fscache handle */
 	struct dentry			*dentry;	/* the file/dir representing this object */
-	struct dentry			*backer;	/* backing file */
+	struct dentry			*old;		/* backing file */
 	struct file			*backing_file;	/* File open on backing storage */
 	loff_t				i_size;		/* object size */
 	atomic_t			usage;		/* object usage count */
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index f1d5976aa28c..2d406d681597 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -57,11 +57,11 @@ bool cachefiles_open_object(struct cachefiles_object *object)
 	struct path path;
 
 	path.mnt = cache->mnt;
-	path.dentry = object->backer;
+	path.dentry = object->dentry;
 
 	file = open_with_fake_path(&path,
 				   O_RDWR | O_LARGEFILE | O_DIRECT,
-				   d_backing_inode(object->backer),
+				   d_backing_inode(object->dentry),
 				   cache->cache_cred);
 	if (IS_ERR(file))
 		goto error;
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 4b515054d92e..9f6c91cff55d 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -486,7 +486,7 @@ bool cachefiles_walk_to_object(struct cachefiles_object *parent,
 				goto check_error;
 			}
 
-			object->backer = object->dentry;
+			object->old = dget(object->dentry);
 		} else {
 			BUG(); // TODO: open file in data-class subdir
 		}
@@ -521,7 +521,9 @@ bool cachefiles_walk_to_object(struct cachefiles_object *parent,
 		cachefiles_unmark_inode_in_use(object, object->dentry);
 	cachefiles_mark_object_inactive(cache, object);
 	dput(object->dentry);
+	dput(object->old);
 	object->dentry = NULL;
+	object->old = NULL;
 	goto error_out;
 
 lookup_error:




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
