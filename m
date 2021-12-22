Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D8F47DA8F
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:24:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0Axs-0005Ii-Kz; Wed, 22 Dec 2021 23:24:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0Axr-0005Ic-Co
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:24:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RMbLmvjn0rfNITFKuvek+r6NV0EeqYTPjLA4qXtDYtE=; b=DOFDasU5rRaQVTCxgmXKm8TtE3
 sWCgj8e0tVlg0wlFXx2JWnxw4lfnBA1KAW4jaa91Fvy+k6oLLN+mpA36CYV4c6gL1oqag2G3x/rVD
 YLLtF92qRC3fRLuGQIRv3d90r2VoWFVxt2d9fq1qXLdIWZtwLYORkMuKb9XY73TNmMMA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RMbLmvjn0rfNITFKuvek+r6NV0EeqYTPjLA4qXtDYtE=; b=gBVpAaZDShImNpBCNxRgeLF58U
 e36MImbTa55Qo6K49EWi4CNMqdSrR5G5HuSnVVr8XbOpMMAjhLmyx1AgkAY18H4mzQPAlCKESRd49
 wdal4PkBT2MhJtreZhgq38g36YGLV151wTEeRnCwVuINop30yMZbY5jR71gOXWJb4Lu4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Axq-006hu6-BX
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:24:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215440;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RMbLmvjn0rfNITFKuvek+r6NV0EeqYTPjLA4qXtDYtE=;
 b=Gzi8bsqH2x4Ghtucy1p62C13UbZrO92kWLJArwXdfjDQOPxbn+nkPrC5rSzJ54IkGuehzN
 GGn4w88qOz7v7crVFztMJTkZmIlZfVRFMGMMTOMkRctQp86qL48piiwTrQTUBm6zUNrPze
 IezPc0ze9pHny331IZ9u1hhrc5XGfgc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-0m_oijp3MYGu7dd2-6M97Q-1; Wed, 22 Dec 2021 18:23:56 -0500
X-MC-Unique: 0m_oijp3MYGu7dd2-6M97Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7970080BCAB;
 Wed, 22 Dec 2021 23:23:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 82A4C7EFC3;
 Wed, 22 Dec 2021 23:23:42 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:23:41 +0000
Message-ID: <164021542169.640689.18266858945694357839.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Implement a function to get/create structural directories
 in the cache. This is used for setting up a cache and creating volume
 substructures.
 The directory in memory are marked with the S_KERNEL_FILE [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0Axq-006hu6-BX
Subject: [V9fs-developer] [PATCH v4 39/68] cachefiles: Implement a function
 to get/create a directory in the cache
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
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

Implement a function to get/create structural directories in the cache.
This is used for setting up a cache and creating volume substructures.  The
directory in memory are marked with the S_KERNEL_FILE inode flag whilst
they're in use to tell rmdir to reject attempts to remove them.

Changes
=======
ver #3:
 - Return an indication as to whether the directory was freshly created.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819631182.215744.3322471539523262619.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906933130.143852.962088616746509062.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967141952.1823006.7832985646370603833.stgit@warthog.procyon.org.uk/ # v3
---

 fs/cachefiles/internal.h |    9 +++
 fs/cachefiles/namei.c    |  141 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 150 insertions(+)

diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 3783a3e01027..48768a3ab105 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -125,6 +125,15 @@ static inline int cachefiles_inject_remove_error(void)
 	return cachefiles_error_injection_state & 2 ? -EIO : 0;
 }
 
+/*
+ * namei.c
+ */
+extern struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
+					       struct dentry *dir,
+					       const char *name,
+					       bool *_is_new);
+extern void cachefiles_put_directory(struct dentry *dir);
+
 /*
  * security.c
  */
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 913f83f1c900..11a33209ab5f 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/fs.h>
+#include <linux/namei.h>
 #include "internal.h"
 
 /*
@@ -41,3 +42,143 @@ static void __cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
 	inode->i_flags &= ~S_KERNEL_FILE;
 	trace_cachefiles_mark_inactive(object, inode);
 }
+
+/*
+ * get a subdirectory
+ */
+struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
+					struct dentry *dir,
+					const char *dirname,
+					bool *_is_new)
+{
+	struct dentry *subdir;
+	struct path path;
+	int ret;
+
+	_enter(",,%s", dirname);
+
+	/* search the current directory for the element name */
+	inode_lock_nested(d_inode(dir), I_MUTEX_PARENT);
+
+retry:
+	ret = cachefiles_inject_read_error();
+	if (ret == 0)
+		subdir = lookup_one_len(dirname, dir, strlen(dirname));
+	else
+		subdir = ERR_PTR(ret);
+	if (IS_ERR(subdir)) {
+		trace_cachefiles_vfs_error(NULL, d_backing_inode(dir),
+					   PTR_ERR(subdir),
+					   cachefiles_trace_lookup_error);
+		if (PTR_ERR(subdir) == -ENOMEM)
+			goto nomem_d_alloc;
+		goto lookup_error;
+	}
+
+	_debug("subdir -> %pd %s",
+	       subdir, d_backing_inode(subdir) ? "positive" : "negative");
+
+	/* we need to create the subdir if it doesn't exist yet */
+	if (d_is_negative(subdir)) {
+		ret = cachefiles_has_space(cache, 1, 0);
+		if (ret < 0)
+			goto mkdir_error;
+
+		_debug("attempt mkdir");
+
+		path.mnt = cache->mnt;
+		path.dentry = dir;
+		ret = security_path_mkdir(&path, subdir, 0700);
+		if (ret < 0)
+			goto mkdir_error;
+		ret = cachefiles_inject_write_error();
+		if (ret == 0)
+			ret = vfs_mkdir(&init_user_ns, d_inode(dir), subdir, 0700);
+		if (ret < 0) {
+			trace_cachefiles_vfs_error(NULL, d_inode(dir), ret,
+						   cachefiles_trace_mkdir_error);
+			goto mkdir_error;
+		}
+
+		if (unlikely(d_unhashed(subdir))) {
+			cachefiles_put_directory(subdir);
+			goto retry;
+		}
+		ASSERT(d_backing_inode(subdir));
+
+		_debug("mkdir -> %pd{ino=%lu}",
+		       subdir, d_backing_inode(subdir)->i_ino);
+		if (_is_new)
+			*_is_new = true;
+	}
+
+	/* Tell rmdir() it's not allowed to delete the subdir */
+	inode_lock(d_inode(subdir));
+	inode_unlock(d_inode(dir));
+
+	if (!__cachefiles_mark_inode_in_use(NULL, subdir))
+		goto mark_error;
+
+	inode_unlock(d_inode(subdir));
+
+	/* we need to make sure the subdir is a directory */
+	ASSERT(d_backing_inode(subdir));
+
+	if (!d_can_lookup(subdir)) {
+		pr_err("%s is not a directory\n", dirname);
+		ret = -EIO;
+		goto check_error;
+	}
+
+	ret = -EPERM;
+	if (!(d_backing_inode(subdir)->i_opflags & IOP_XATTR) ||
+	    !d_backing_inode(subdir)->i_op->lookup ||
+	    !d_backing_inode(subdir)->i_op->mkdir ||
+	    !d_backing_inode(subdir)->i_op->rename ||
+	    !d_backing_inode(subdir)->i_op->rmdir ||
+	    !d_backing_inode(subdir)->i_op->unlink)
+		goto check_error;
+
+	_leave(" = [%lu]", d_backing_inode(subdir)->i_ino);
+	return subdir;
+
+check_error:
+	cachefiles_put_directory(subdir);
+	_leave(" = %d [check]", ret);
+	return ERR_PTR(ret);
+
+mark_error:
+	inode_unlock(d_inode(subdir));
+	dput(subdir);
+	return ERR_PTR(-EBUSY);
+
+mkdir_error:
+	inode_unlock(d_inode(dir));
+	dput(subdir);
+	pr_err("mkdir %s failed with error %d\n", dirname, ret);
+	return ERR_PTR(ret);
+
+lookup_error:
+	inode_unlock(d_inode(dir));
+	ret = PTR_ERR(subdir);
+	pr_err("Lookup %s failed with error %d\n", dirname, ret);
+	return ERR_PTR(ret);
+
+nomem_d_alloc:
+	inode_unlock(d_inode(dir));
+	_leave(" = -ENOMEM");
+	return ERR_PTR(-ENOMEM);
+}
+
+/*
+ * Put a subdirectory.
+ */
+void cachefiles_put_directory(struct dentry *dir)
+{
+	if (dir) {
+		inode_lock(dir->d_inode);
+		__cachefiles_unmark_inode_in_use(NULL, dir);
+		inode_unlock(dir->d_inode);
+		dput(dir);
+	}
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
