Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A30D47DB5F
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:31:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0B4V-0005Va-7E; Wed, 22 Dec 2021 23:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0B4T-0005VQ-A2
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IX6H3EVscll0Tp2UHOrUfPv7V53KkkSXNPmdUeCeeqc=; b=UcBM8Cl8WUA8oEzUtwa6/yPRAF
 iACLWLv03bS4x9oaTYBP7VCU6xexmwXW0Xsup79RlAjDyDyhbPuuSDIduQ/rpxmF2Vx23Qk0tPB1p
 qNT9lJ/D7P0M6aouq4pbfHI9pe2fwrO/jZ+vDvZlYDvBJdXbq/Z34reS25JkUOkkQbiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IX6H3EVscll0Tp2UHOrUfPv7V53KkkSXNPmdUeCeeqc=; b=QbLy5SBV9hEV1JFKPAOi5w3LxM
 u9c0E8hXZA1Wt0ZxzYe2KyQR4bp/jZBEequm9plOEWSkjxmIJj5POpgBeP/QhLUjMy/5bKLuFY+m4
 y+FY1XC2sMIYJI003QngMHTIFSbkTbIaxWlr2kkmJOVI8NFDyGhukN0670yeYuJGXEak=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0B4R-006iMt-Uf
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IX6H3EVscll0Tp2UHOrUfPv7V53KkkSXNPmdUeCeeqc=;
 b=bZea2vjKhnbAprJvhBQkgteQi17v30Yvk5dQfilQn7YZhD6vwYupSPIVBB11UVXXZkLNrK
 /++34A5hnRtMweS/XkLn0TA2PTPBUYC82AE4sL/6vJEx2AF0rGkk7VLeLXIntG6+hGcfKE
 ayP7an2lXnlnVnKyYRTr8zrFKlLZvbc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-Rlc1dVmyORyV0ryShEcdew-1; Wed, 22 Dec 2021 18:30:47 -0500
X-MC-Unique: Rlc1dVmyORyV0ryShEcdew-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFE191006AA6;
 Wed, 22 Dec 2021 23:30:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C61084768;
 Wed, 22 Dec 2021 23:30:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:30:14 +0000
Message-ID: <164021581427.640689.14128682147127509264.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jeff Layton <jlayton@kernel.org> Now that the fscache
 API has been reworked and simplified, change ceph over to use it. With the
 old API, we would only instantiate a cookie when the file was open for reads.
 Change it to instantiate the cookie when the inode is instantiated and call
 use/unuse when the file is opened/clo [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1n0B4R-006iMt-Uf
Subject: [V9fs-developer] [PATCH v4 64/68] ceph: conversion to new fscache
 API
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

From: Jeff Layton <jlayton@kernel.org>

Now that the fscache API has been reworked and simplified, change ceph
over to use it.

With the old API, we would only instantiate a cookie when the file was
open for reads. Change it to instantiate the cookie when the inode is
instantiated and call use/unuse when the file is opened/closed.

Also, ensure we resize the cached data on truncates, and invalidate the
cache in response to the appropriate events. This will allow us to
plumb in write support later.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/20211129162907.149445-2-jlayton@kernel.org/ # v1
Link: https://lore.kernel.org/r/20211207134451.66296-2-jlayton@kernel.org/ # v2
Link: https://lore.kernel.org/r/163906984277.143852.14697110691303589000.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967188351.1823006.5065634844099079351.stgit@warthog.procyon.org.uk/ # v3
---

 fs/ceph/Kconfig |    2 -
 fs/ceph/addr.c  |   34 +++++----
 fs/ceph/cache.c |  218 +++++++++++++++----------------------------------------
 fs/ceph/cache.h |   97 +++++++++++++++++-------
 fs/ceph/caps.c  |    3 +
 fs/ceph/file.c  |   13 +++
 fs/ceph/inode.c |   22 ++++--
 fs/ceph/super.c |   10 ---
 fs/ceph/super.h |    3 -
 9 files changed, 178 insertions(+), 224 deletions(-)

diff --git a/fs/ceph/Kconfig b/fs/ceph/Kconfig
index 61f123356c3e..94df854147d3 100644
--- a/fs/ceph/Kconfig
+++ b/fs/ceph/Kconfig
@@ -21,7 +21,7 @@ config CEPH_FS
 if CEPH_FS
 config CEPH_FSCACHE
 	bool "Enable Ceph client caching support"
-	depends on CEPH_FS=m && FSCACHE_OLD_API || CEPH_FS=y && FSCACHE_OLD_API=y
+	depends on CEPH_FS=m && FSCACHE || CEPH_FS=y && FSCACHE=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for Ceph clients using FS-Cache
diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index e53c8541f5b2..0ffc4c8d7c10 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -126,7 +126,7 @@ static int ceph_set_page_dirty(struct page *page)
 	BUG_ON(PagePrivate(page));
 	attach_page_private(page, snapc);
 
-	return __set_page_dirty_nobuffers(page);
+	return ceph_fscache_set_page_dirty(page);
 }
 
 /*
@@ -141,8 +141,6 @@ static void ceph_invalidatepage(struct page *page, unsigned int offset,
 	struct ceph_inode_info *ci;
 	struct ceph_snap_context *snapc;
 
-	wait_on_page_fscache(page);
-
 	inode = page->mapping->host;
 	ci = ceph_inode(inode);
 
@@ -153,28 +151,36 @@ static void ceph_invalidatepage(struct page *page, unsigned int offset,
 	}
 
 	WARN_ON(!PageLocked(page));
-	if (!PagePrivate(page))
-		return;
+	if (PagePrivate(page)) {
+		dout("%p invalidatepage %p idx %lu full dirty page\n",
+		     inode, page, page->index);
 
-	dout("%p invalidatepage %p idx %lu full dirty page\n",
-	     inode, page, page->index);
+		snapc = detach_page_private(page);
+		ceph_put_wrbuffer_cap_refs(ci, 1, snapc);
+		ceph_put_snap_context(snapc);
+	}
 
-	snapc = detach_page_private(page);
-	ceph_put_wrbuffer_cap_refs(ci, 1, snapc);
-	ceph_put_snap_context(snapc);
+	wait_on_page_fscache(page);
 }
 
 static int ceph_releasepage(struct page *page, gfp_t gfp)
 {
-	dout("%p releasepage %p idx %lu (%sdirty)\n", page->mapping->host,
-	     page, page->index, PageDirty(page) ? "" : "not ");
+	struct inode *inode = page->mapping->host;
+
+	dout("%llx:%llx releasepage %p idx %lu (%sdirty)\n",
+	     ceph_vinop(inode), page,
+	     page->index, PageDirty(page) ? "" : "not ");
+
+	if (PagePrivate(page))
+		return 0;
 
 	if (PageFsCache(page)) {
-		if (!(gfp & __GFP_DIRECT_RECLAIM) || !(gfp & __GFP_FS))
+		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
 			return 0;
 		wait_on_page_fscache(page);
 	}
-	return !PagePrivate(page);
+	ceph_fscache_note_page_release(inode);
+	return 1;
 }
 
 static void ceph_netfs_expand_readahead(struct netfs_read_request *rreq)
diff --git a/fs/ceph/cache.c b/fs/ceph/cache.c
index 457afda5498a..7d22850623ef 100644
--- a/fs/ceph/cache.c
+++ b/fs/ceph/cache.c
@@ -12,199 +12,99 @@
 #include "super.h"
 #include "cache.h"
 
-struct fscache_netfs ceph_cache_netfs = {
-	.name		= "ceph",
-	.version	= 0,
-};
-
-static DEFINE_MUTEX(ceph_fscache_lock);
-static LIST_HEAD(ceph_fscache_list);
-
-struct ceph_fscache_entry {
-	struct list_head list;
-	struct fscache_cookie *fscache;
-	size_t uniq_len;
-	/* The following members must be last */
-	struct ceph_fsid fsid;
-	char uniquifier[];
-};
-
-static const struct fscache_cookie_def ceph_fscache_fsid_object_def = {
-	.name		= "CEPH.fsid",
-	.type		= FSCACHE_COOKIE_TYPE_INDEX,
-};
-
-int __init ceph_fscache_register(void)
-{
-	return fscache_register_netfs(&ceph_cache_netfs);
-}
-
-void ceph_fscache_unregister(void)
-{
-	fscache_unregister_netfs(&ceph_cache_netfs);
-}
-
-int ceph_fscache_register_fs(struct ceph_fs_client* fsc, struct fs_context *fc)
+void ceph_fscache_register_inode_cookie(struct inode *inode)
 {
-	const struct ceph_fsid *fsid = &fsc->client->fsid;
-	const char *fscache_uniq = fsc->mount_options->fscache_uniq;
-	size_t uniq_len = fscache_uniq ? strlen(fscache_uniq) : 0;
-	struct ceph_fscache_entry *ent;
-	int err = 0;
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 
-	mutex_lock(&ceph_fscache_lock);
-	list_for_each_entry(ent, &ceph_fscache_list, list) {
-		if (memcmp(&ent->fsid, fsid, sizeof(*fsid)))
-			continue;
-		if (ent->uniq_len != uniq_len)
-			continue;
-		if (uniq_len && memcmp(ent->uniquifier, fscache_uniq, uniq_len))
-			continue;
-
-		errorfc(fc, "fscache cookie already registered for fsid %pU, use fsc=<uniquifier> option",
-		       fsid);
-		err = -EBUSY;
-		goto out_unlock;
-	}
+	/* No caching for filesystem? */
+	if (!fsc->fscache)
+		return;
 
-	ent = kzalloc(sizeof(*ent) + uniq_len, GFP_KERNEL);
-	if (!ent) {
-		err = -ENOMEM;
-		goto out_unlock;
-	}
+	/* Regular files only */
+	if (!S_ISREG(inode->i_mode))
+		return;
 
-	memcpy(&ent->fsid, fsid, sizeof(*fsid));
-	if (uniq_len > 0) {
-		memcpy(&ent->uniquifier, fscache_uniq, uniq_len);
-		ent->uniq_len = uniq_len;
-	}
+	/* Only new inodes! */
+	if (!(inode->i_state & I_NEW))
+		return;
 
-	fsc->fscache = fscache_acquire_cookie(ceph_cache_netfs.primary_index,
-					      &ceph_fscache_fsid_object_def,
-					      &ent->fsid, sizeof(ent->fsid) + uniq_len,
-					      NULL, 0,
-					      fsc, 0, true);
+	WARN_ON_ONCE(ci->fscache);
 
-	if (fsc->fscache) {
-		ent->fscache = fsc->fscache;
-		list_add_tail(&ent->list, &ceph_fscache_list);
-	} else {
-		kfree(ent);
-		errorfc(fc, "unable to register fscache cookie for fsid %pU",
-		       fsid);
-		/* all other fs ignore this error */
-	}
-out_unlock:
-	mutex_unlock(&ceph_fscache_lock);
-	return err;
+	ci->fscache = fscache_acquire_cookie(fsc->fscache, 0,
+					     &ci->i_vino, sizeof(ci->i_vino),
+					     &ci->i_version, sizeof(ci->i_version),
+					     i_size_read(inode));
 }
 
-static enum fscache_checkaux ceph_fscache_inode_check_aux(
-	void *cookie_netfs_data, const void *data, uint16_t dlen,
-	loff_t object_size)
+void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info* ci)
 {
-	struct ceph_inode_info* ci = cookie_netfs_data;
-	struct inode* inode = &ci->vfs_inode;
+	struct fscache_cookie *cookie = ci->fscache;
 
-	if (dlen != sizeof(ci->i_version) ||
-	    i_size_read(inode) != object_size)
-		return FSCACHE_CHECKAUX_OBSOLETE;
+	fscache_relinquish_cookie(cookie, false);
+}
 
-	if (*(u64 *)data != ci->i_version)
-		return FSCACHE_CHECKAUX_OBSOLETE;
+void ceph_fscache_use_cookie(struct inode *inode, bool will_modify)
+{
+	struct ceph_inode_info *ci = ceph_inode(inode);
 
-	dout("ceph inode 0x%p cached okay\n", ci);
-	return FSCACHE_CHECKAUX_OKAY;
+	fscache_use_cookie(ci->fscache, will_modify);
 }
 
-static const struct fscache_cookie_def ceph_fscache_inode_object_def = {
-	.name		= "CEPH.inode",
-	.type		= FSCACHE_COOKIE_TYPE_DATAFILE,
-	.check_aux	= ceph_fscache_inode_check_aux,
-};
-
-void ceph_fscache_register_inode_cookie(struct inode *inode)
+void ceph_fscache_unuse_cookie(struct inode *inode, bool update)
 {
 	struct ceph_inode_info *ci = ceph_inode(inode);
-	struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
-
-	/* No caching for filesystem */
-	if (!fsc->fscache)
-		return;
 
-	/* Only cache for regular files that are read only */
-	if (!S_ISREG(inode->i_mode))
-		return;
+	if (update) {
+		loff_t i_size = i_size_read(inode);
 
-	inode_lock_nested(inode, I_MUTEX_CHILD);
-	if (!ci->fscache) {
-		ci->fscache = fscache_acquire_cookie(fsc->fscache,
-						     &ceph_fscache_inode_object_def,
-						     &ci->i_vino, sizeof(ci->i_vino),
-						     &ci->i_version, sizeof(ci->i_version),
-						     ci, i_size_read(inode), false);
+		fscache_unuse_cookie(ci->fscache, &ci->i_version, &i_size);
+	} else {
+		fscache_unuse_cookie(ci->fscache, NULL, NULL);
 	}
-	inode_unlock(inode);
 }
 
-void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info* ci)
+void ceph_fscache_update(struct inode *inode)
 {
-	struct fscache_cookie* cookie;
-
-	if ((cookie = ci->fscache) == NULL)
-		return;
-
-	ci->fscache = NULL;
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	loff_t i_size = i_size_read(inode);
 
-	fscache_relinquish_cookie(cookie, &ci->i_vino, false);
+	fscache_update_cookie(ci->fscache, &ci->i_version, &i_size);
 }
 
-static bool ceph_fscache_can_enable(void *data)
+void ceph_fscache_invalidate(struct inode *inode, bool dio_write)
 {
-	struct inode *inode = data;
-	return !inode_is_open_for_write(inode);
+	struct ceph_inode_info *ci = ceph_inode(inode);
+
+	fscache_invalidate(ceph_inode(inode)->fscache,
+			   &ci->i_version, i_size_read(inode),
+			   dio_write ? FSCACHE_INVAL_DIO_WRITE : 0);
 }
 
-void ceph_fscache_file_set_cookie(struct inode *inode, struct file *filp)
+int ceph_fscache_register_fs(struct ceph_fs_client* fsc, struct fs_context *fc)
 {
-	struct ceph_inode_info *ci = ceph_inode(inode);
+	const struct ceph_fsid *fsid = &fsc->client->fsid;
+	const char *fscache_uniq = fsc->mount_options->fscache_uniq;
+	size_t uniq_len = fscache_uniq ? strlen(fscache_uniq) : 0;
+	char *name;
+	int err = 0;
 
-	if (!fscache_cookie_valid(ci->fscache))
-		return;
+	name = kasprintf(GFP_KERNEL, "ceph,%pU%s%s", fsid, uniq_len ? "," : "",
+			 uniq_len ? fscache_uniq : "");
+	if (!name)
+		return -ENOMEM;
 
-	if (inode_is_open_for_write(inode)) {
-		dout("fscache_file_set_cookie %p %p disabling cache\n",
-		     inode, filp);
-		fscache_disable_cookie(ci->fscache, &ci->i_vino, false);
-	} else {
-		fscache_enable_cookie(ci->fscache, &ci->i_vino, i_size_read(inode),
-				      ceph_fscache_can_enable, inode);
-		if (fscache_cookie_enabled(ci->fscache)) {
-			dout("fscache_file_set_cookie %p %p enabling cache\n",
-			     inode, filp);
-		}
+	fsc->fscache = fscache_acquire_volume(name, NULL, NULL, 0);
+	if (IS_ERR_OR_NULL(fsc->fscache)) {
+		errorfc(fc, "Unable to register fscache cookie for %s", name);
+		err = fsc->fscache ? PTR_ERR(fsc->fscache) : -EOPNOTSUPP;
+		fsc->fscache = NULL;
 	}
+	kfree(name);
+	return err;
 }
 
 void ceph_fscache_unregister_fs(struct ceph_fs_client* fsc)
 {
-	if (fscache_cookie_valid(fsc->fscache)) {
-		struct ceph_fscache_entry *ent;
-		bool found = false;
-
-		mutex_lock(&ceph_fscache_lock);
-		list_for_each_entry(ent, &ceph_fscache_list, list) {
-			if (ent->fscache == fsc->fscache) {
-				list_del(&ent->list);
-				kfree(ent);
-				found = true;
-				break;
-			}
-		}
-		WARN_ON_ONCE(!found);
-		mutex_unlock(&ceph_fscache_lock);
-
-		__fscache_relinquish_cookie(fsc->fscache, NULL, false);
-	}
-	fsc->fscache = NULL;
+	fscache_relinquish_volume(fsc->fscache, NULL, false);
 }
diff --git a/fs/ceph/cache.h b/fs/ceph/cache.h
index 058ea2a04376..09164389fa66 100644
--- a/fs/ceph/cache.h
+++ b/fs/ceph/cache.h
@@ -12,19 +12,19 @@
 #include <linux/netfs.h>
 
 #ifdef CONFIG_CEPH_FSCACHE
-
-extern struct fscache_netfs ceph_cache_netfs;
-
-int ceph_fscache_register(void);
-void ceph_fscache_unregister(void);
+#include <linux/fscache.h>
 
 int ceph_fscache_register_fs(struct ceph_fs_client* fsc, struct fs_context *fc);
 void ceph_fscache_unregister_fs(struct ceph_fs_client* fsc);
 
 void ceph_fscache_register_inode_cookie(struct inode *inode);
 void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info* ci);
-void ceph_fscache_file_set_cookie(struct inode *inode, struct file *filp);
-void ceph_fscache_revalidate_cookie(struct ceph_inode_info *ci);
+
+void ceph_fscache_use_cookie(struct inode *inode, bool will_modify);
+void ceph_fscache_unuse_cookie(struct inode *inode, bool update);
+
+void ceph_fscache_update(struct inode *inode);
+void ceph_fscache_invalidate(struct inode *inode, bool dio_write);
 
 static inline void ceph_fscache_inode_init(struct ceph_inode_info *ci)
 {
@@ -36,37 +36,51 @@ static inline struct fscache_cookie *ceph_fscache_cookie(struct ceph_inode_info
 	return ci->fscache;
 }
 
-static inline void ceph_fscache_invalidate(struct inode *inode)
+static inline void ceph_fscache_resize(struct inode *inode, loff_t to)
 {
-	fscache_invalidate(ceph_inode(inode)->fscache);
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct fscache_cookie *cookie = ceph_fscache_cookie(ci);
+
+	if (cookie) {
+		ceph_fscache_use_cookie(inode, true);
+		fscache_resize_cookie(cookie, to);
+		ceph_fscache_unuse_cookie(inode, true);
+	}
 }
 
-static inline bool ceph_is_cache_enabled(struct inode *inode)
+static inline void ceph_fscache_unpin_writeback(struct inode *inode,
+						struct writeback_control *wbc)
 {
-	struct fscache_cookie *cookie = ceph_fscache_cookie(ceph_inode(inode));
+	fscache_unpin_writeback(wbc, ceph_fscache_cookie(ceph_inode(inode)));
+}
+
+static inline int ceph_fscache_set_page_dirty(struct page *page)
+{
+	struct inode *inode = page->mapping->host;
+	struct ceph_inode_info *ci = ceph_inode(inode);
 
-	if (!cookie)
-		return false;
-	return fscache_cookie_enabled(cookie);
+	return fscache_set_page_dirty(page, ceph_fscache_cookie(ci));
 }
 
 static inline int ceph_begin_cache_operation(struct netfs_read_request *rreq)
 {
 	struct fscache_cookie *cookie = ceph_fscache_cookie(ceph_inode(rreq->inode));
 
-	return fscache_begin_read_operation(rreq, cookie);
+	return fscache_begin_read_operation(&rreq->cache_resources, cookie);
 }
-#else
 
-static inline int ceph_fscache_register(void)
+static inline bool ceph_is_cache_enabled(struct inode *inode)
 {
-	return 0;
+	return fscache_cookie_enabled(ceph_fscache_cookie(ceph_inode(inode)));
 }
 
-static inline void ceph_fscache_unregister(void)
+static inline void ceph_fscache_note_page_release(struct inode *inode)
 {
-}
+	struct ceph_inode_info *ci = ceph_inode(inode);
 
+	fscache_note_page_release(ceph_fscache_cookie(ci));
+}
+#else /* CONFIG_CEPH_FSCACHE */
 static inline int ceph_fscache_register_fs(struct ceph_fs_client* fsc,
 					   struct fs_context *fc)
 {
@@ -81,28 +95,49 @@ static inline void ceph_fscache_inode_init(struct ceph_inode_info *ci)
 {
 }
 
-static inline struct fscache_cookie *ceph_fscache_cookie(struct ceph_inode_info *ci)
+static inline void ceph_fscache_register_inode_cookie(struct inode *inode)
 {
-	return NULL;
 }
 
-static inline void ceph_fscache_register_inode_cookie(struct inode *inode)
+static inline void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info* ci)
 {
 }
 
-static inline void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info* ci)
+static inline void ceph_fscache_use_cookie(struct inode *inode, bool will_modify)
 {
 }
 
-static inline void ceph_fscache_file_set_cookie(struct inode *inode,
-						struct file *filp)
+static inline void ceph_fscache_unuse_cookie(struct inode *inode, bool update)
 {
 }
 
-static inline void ceph_fscache_invalidate(struct inode *inode)
+static inline void ceph_fscache_update(struct inode *inode)
 {
 }
 
+static inline void ceph_fscache_invalidate(struct inode *inode, bool dio_write)
+{
+}
+
+static inline struct fscache_cookie *ceph_fscache_cookie(struct ceph_inode_info *ci)
+{
+	return NULL;
+}
+
+static inline void ceph_fscache_resize(struct inode *inode, loff_t to)
+{
+}
+
+static inline void ceph_fscache_unpin_writeback(struct inode *inode,
+						struct writeback_control *wbc)
+{
+}
+
+static inline int ceph_fscache_set_page_dirty(struct page *page)
+{
+	return __set_page_dirty_nobuffers(page);
+}
+
 static inline bool ceph_is_cache_enabled(struct inode *inode)
 {
 	return false;
@@ -112,6 +147,10 @@ static inline int ceph_begin_cache_operation(struct netfs_read_request *rreq)
 {
 	return -ENOBUFS;
 }
-#endif
 
-#endif /* _CEPH_CACHE_H */
+static inline void ceph_fscache_note_page_release(struct inode *inode)
+{
+}
+#endif /* CONFIG_CEPH_FSCACHE */
+
+#endif
diff --git a/fs/ceph/caps.c b/fs/ceph/caps.c
index b9460b6fb76f..0bc0e6c157df 100644
--- a/fs/ceph/caps.c
+++ b/fs/ceph/caps.c
@@ -1856,7 +1856,7 @@ static int try_nonblocking_invalidate(struct inode *inode)
 	u32 invalidating_gen = ci->i_rdcache_gen;
 
 	spin_unlock(&ci->i_ceph_lock);
-	ceph_fscache_invalidate(inode);
+	ceph_fscache_invalidate(inode, false);
 	invalidate_mapping_pages(&inode->i_data, 0, -1);
 	spin_lock(&ci->i_ceph_lock);
 
@@ -2388,6 +2388,7 @@ int ceph_write_inode(struct inode *inode, struct writeback_control *wbc)
 	int wait = (wbc->sync_mode == WB_SYNC_ALL && !wbc->for_sync);
 
 	dout("write_inode %p wait=%d\n", inode, wait);
+	ceph_fscache_unpin_writeback(inode, wbc);
 	if (wait) {
 		dirty = try_flush_caps(inode, &flush_tid);
 		if (dirty)
diff --git a/fs/ceph/file.c b/fs/ceph/file.c
index 02a0a0fd9ccd..bf1017682d09 100644
--- a/fs/ceph/file.c
+++ b/fs/ceph/file.c
@@ -248,8 +248,7 @@ static int ceph_init_file(struct inode *inode, struct file *file, int fmode)
 
 	switch (inode->i_mode & S_IFMT) {
 	case S_IFREG:
-		ceph_fscache_register_inode_cookie(inode);
-		ceph_fscache_file_set_cookie(inode, file);
+		ceph_fscache_use_cookie(inode, file->f_mode & FMODE_WRITE);
 		fallthrough;
 	case S_IFDIR:
 		ret = ceph_init_file_info(inode, file, fmode,
@@ -810,6 +809,7 @@ int ceph_release(struct inode *inode, struct file *file)
 		dout("release inode %p regular file %p\n", inode, file);
 		WARN_ON(!list_empty(&fi->rw_contexts));
 
+		ceph_fscache_unuse_cookie(inode, file->f_mode & FMODE_WRITE);
 		ceph_put_fmode(ci, fi->fmode, 1);
 
 		kmem_cache_free(ceph_file_cachep, fi);
@@ -1206,7 +1206,11 @@ ceph_direct_read_write(struct kiocb *iocb, struct iov_iter *iter,
 	     snapc, snapc ? snapc->seq : 0);
 
 	if (write) {
-		int ret2 = invalidate_inode_pages2_range(inode->i_mapping,
+		int ret2;
+
+		ceph_fscache_invalidate(inode, true);
+
+		ret2 = invalidate_inode_pages2_range(inode->i_mapping,
 					pos >> PAGE_SHIFT,
 					(pos + count - 1) >> PAGE_SHIFT);
 		if (ret2 < 0)
@@ -1417,6 +1421,7 @@ ceph_sync_write(struct kiocb *iocb, struct iov_iter *from, loff_t pos,
 	if (ret < 0)
 		return ret;
 
+	ceph_fscache_invalidate(inode, false);
 	ret = invalidate_inode_pages2_range(inode->i_mapping,
 					    pos >> PAGE_SHIFT,
 					    (pos + count - 1) >> PAGE_SHIFT);
@@ -2101,6 +2106,7 @@ static long ceph_fallocate(struct file *file, int mode,
 		goto unlock;
 
 	filemap_invalidate_lock(inode->i_mapping);
+	ceph_fscache_invalidate(inode, false);
 	ceph_zero_pagecache_range(inode, offset, length);
 	ret = ceph_zero_objects(inode, offset, length);
 
@@ -2425,6 +2431,7 @@ static ssize_t __ceph_copy_file_range(struct file *src_file, loff_t src_off,
 		goto out_caps;
 
 	/* Drop dst file cached pages */
+	ceph_fscache_invalidate(dst_inode, false);
 	ret = invalidate_inode_pages2_range(dst_inode->i_mapping,
 					    dst_off >> PAGE_SHIFT,
 					    (dst_off + len) >> PAGE_SHIFT);
diff --git a/fs/ceph/inode.c b/fs/ceph/inode.c
index e3322fcb2e8d..ef4a980a7bf3 100644
--- a/fs/ceph/inode.c
+++ b/fs/ceph/inode.c
@@ -564,6 +564,8 @@ void ceph_evict_inode(struct inode *inode)
 	percpu_counter_dec(&mdsc->metric.total_inodes);
 
 	truncate_inode_pages_final(&inode->i_data);
+	if (inode->i_state & I_PINNING_FSCACHE_WB)
+		ceph_fscache_unuse_cookie(inode, true);
 	clear_inode(inode);
 
 	ceph_fscache_unregister_inode_cookie(ci);
@@ -634,6 +636,12 @@ int ceph_fill_file_size(struct inode *inode, int issued,
 		}
 		i_size_write(inode, size);
 		inode->i_blocks = calc_inode_blocks(size);
+		/*
+		 * If we're expanding, then we should be able to just update
+		 * the existing cookie.
+		 */
+		if (size > isize)
+			ceph_fscache_update(inode);
 		ci->i_reported_size = size;
 		if (truncate_seq != ci->i_truncate_seq) {
 			dout("truncate_seq %u -> %u\n",
@@ -666,10 +674,6 @@ int ceph_fill_file_size(struct inode *inode, int issued,
 		     truncate_size);
 		ci->i_truncate_size = truncate_size;
 	}
-
-	if (queue_trunc)
-		ceph_fscache_invalidate(inode);
-
 	return queue_trunc;
 }
 
@@ -1053,6 +1057,8 @@ int ceph_fill_inode(struct inode *inode, struct page *locked_page,
 
 	spin_unlock(&ci->i_ceph_lock);
 
+	ceph_fscache_register_inode_cookie(inode);
+
 	if (fill_inline)
 		ceph_fill_inline_data(inode, locked_page,
 				      iinfo->inline_data, iinfo->inline_len);
@@ -1814,11 +1820,13 @@ bool ceph_inode_set_size(struct inode *inode, loff_t size)
 	spin_lock(&ci->i_ceph_lock);
 	dout("set_size %p %llu -> %llu\n", inode, i_size_read(inode), size);
 	i_size_write(inode, size);
+	ceph_fscache_update(inode);
 	inode->i_blocks = calc_inode_blocks(size);
 
 	ret = __ceph_should_report_size(ci);
 
 	spin_unlock(&ci->i_ceph_lock);
+
 	return ret;
 }
 
@@ -1844,6 +1852,8 @@ static void ceph_do_invalidate_pages(struct inode *inode)
 	u32 orig_gen;
 	int check = 0;
 
+	ceph_fscache_invalidate(inode, false);
+
 	mutex_lock(&ci->i_truncate_mutex);
 
 	if (ceph_inode_is_shutdown(inode)) {
@@ -1868,7 +1878,7 @@ static void ceph_do_invalidate_pages(struct inode *inode)
 	orig_gen = ci->i_rdcache_gen;
 	spin_unlock(&ci->i_ceph_lock);
 
-	ceph_fscache_invalidate(inode);
+	ceph_fscache_invalidate(inode, false);
 	if (invalidate_inode_pages2(inode->i_mapping) < 0) {
 		pr_err("invalidate_inode_pages2 %llx.%llx failed\n",
 		       ceph_vinop(inode));
@@ -1937,6 +1947,7 @@ void __ceph_do_pending_vmtruncate(struct inode *inode)
 	     ci->i_truncate_pending, to);
 	spin_unlock(&ci->i_ceph_lock);
 
+	ceph_fscache_resize(inode, to);
 	truncate_pagecache(inode, to);
 
 	spin_lock(&ci->i_ceph_lock);
@@ -2184,7 +2195,6 @@ int __ceph_setattr(struct inode *inode, struct iattr *attr)
 	if (inode_dirty_flags)
 		__mark_inode_dirty(inode, inode_dirty_flags);
 
-
 	if (mask) {
 		req->r_inode = inode;
 		ihold(inode);
diff --git a/fs/ceph/super.c b/fs/ceph/super.c
index bab61232dc5a..bea89bdb534a 100644
--- a/fs/ceph/super.c
+++ b/fs/ceph/super.c
@@ -787,16 +787,10 @@ static int __init init_caches(void)
 	if (!ceph_wb_pagevec_pool)
 		goto bad_pagevec_pool;
 
-	error = ceph_fscache_register();
-	if (error)
-		goto bad_fscache;
-
 	return 0;
 
-bad_fscache:
-	kmem_cache_destroy(ceph_mds_request_cachep);
 bad_pagevec_pool:
-	mempool_destroy(ceph_wb_pagevec_pool);
+	kmem_cache_destroy(ceph_mds_request_cachep);
 bad_mds_req:
 	kmem_cache_destroy(ceph_dir_file_cachep);
 bad_dir_file:
@@ -828,8 +822,6 @@ static void destroy_caches(void)
 	kmem_cache_destroy(ceph_dir_file_cachep);
 	kmem_cache_destroy(ceph_mds_request_cachep);
 	mempool_destroy(ceph_wb_pagevec_pool);
-
-	ceph_fscache_unregister();
 }
 
 static void __ceph_umount_begin(struct ceph_fs_client *fsc)
diff --git a/fs/ceph/super.h b/fs/ceph/super.h
index ac331aa07cfa..d0142cc5c41b 100644
--- a/fs/ceph/super.h
+++ b/fs/ceph/super.h
@@ -21,7 +21,6 @@
 #include <linux/ceph/libceph.h>
 
 #ifdef CONFIG_CEPH_FSCACHE
-#define FSCACHE_USE_NEW_IO_API
 #include <linux/fscache.h>
 #endif
 
@@ -135,7 +134,7 @@ struct ceph_fs_client {
 #endif
 
 #ifdef CONFIG_CEPH_FSCACHE
-	struct fscache_cookie *fscache;
+	struct fscache_volume *fscache;
 #endif
 };
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
