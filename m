Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2976432233
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:09:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUGY-0008LG-Hl; Mon, 18 Oct 2021 15:09:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcUGX-0008Kw-CH
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tub9qV5VxABgzFj3ORCCtnSKBanlrG+GhBjqMhmHS0c=; b=miTBV7EjgI3ba3RAqsrlS8xFZ+
 tHwNmXAUjIIfQQAoTG5By8ojyA/joX6mAhrvpFBu2Mldc9mWrWjKCGbVkffI9KmXF0M2j59oyS3w4
 uxLCaKkwmmBDz7MacGAdGZEAy3O8hnkPmkiU19/jMBCqHSG7Fh8lggfYUs9cUyYXagkQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tub9qV5VxABgzFj3ORCCtnSKBanlrG+GhBjqMhmHS0c=; b=JXjn+OjTAuk1fIkhiltinAekHX
 EWBlUn54QxNjNbdX15ctUIqiXfSlzg46HKTaXdXWRBnUiCT4La9npXXUZZ9THBqUn0zAplFfa9HKd
 2oP54r7/oO2ussEBqT6ipL8vSmOM4jG2lDujY6shZ8D9coJXOBzgj+OQGTTkzcgk34is=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUGV-004UsK-NF
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569761;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tub9qV5VxABgzFj3ORCCtnSKBanlrG+GhBjqMhmHS0c=;
 b=LaDRTI/3mHKY2rP47D+iXXBfLcE8SYdl/xOnoaQGArhxYeTAVHI7JKGzwnEzDYyJlenJ29
 o4jNxMpEwZikJ2xlPFefYiHYVmNqL+CsJnaJyhMUHI1NQRpN2T69Wy9j1PK3xMv6D+b8vf
 hl6cET68+cGJkJAPr/pwG5pyxGIU2lM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-WAh5khE6Oh6dbitHDH8MXw-1; Mon, 18 Oct 2021 11:09:18 -0400
X-MC-Unique: WAh5khE6Oh6dbitHDH8MXw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 656619116D;
 Mon, 18 Oct 2021 15:09:16 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99F6A1A7E9;
 Mon, 18 Oct 2021 15:09:12 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:09:11 +0100
Message-ID: <163456975177.2614702.13238377969831836273.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
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
 Content preview:  Change the cifs filesystem to take account of the changes
 to fscache's indexing rewrite and reenable caching in cifs. The following
 changes have been made: (1) The fscache_netfs struct is no more, and there's
 no need to register the filesystem as a whole. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUGV-004UsK-NF
Subject: [V9fs-developer] [PATCH 67/67] cifs: Support fscache indexing
 rewrite (untested)
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, dhowells@redhat.com,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Change the cifs filesystem to take account of the changes to fscache's
indexing rewrite and reenable caching in cifs.

The following changes have been made:

 (1) The fscache_netfs struct is no more, and there's no need to register
     the filesystem as a whole.

 (2) The session cookie is now an fscache_volume cookie, allocated with
     fscache_acquire_volume().  That takes three parameters: a string
     representing the "volume" in the index, a string naming the cache to
     use (or NULL) and a u64 that conveys coherency metadata for the
     volume.

     For cifs, I've made it render the volume name string as:

	"cifs,<ipaddress>,<sharename>"

     where the sharename has '/' characters replaced with ';'.

     This probably needs rethinking a bit as the total name could exceed
     the maximum filename component length.

     Further, the coherency data is currently just set to 0.  It needs
     something else doing with it - I wonder if it would suffice simply to
     sum the resource_id, vol_create_time and vol_serial_number or maybe
     hash them.

 (3) The fscache_cookie_def is no more and needed information is passed
     directly to fscache_acquire_cookie().  The cache no longer calls back
     into the filesystem, but rather metadata changes are indicated at
     other times.

     fscache_acquire_cookie() is passed the same keying and coherency
     information as before.

 (4) The functions to set/reset cookies are removed and
     fscache_use_cookie() and fscache_unuse_cookie() are used instead.

     fscache_use_cookie() is passed a flag to indicate if the cookie is
     opened for writing.  fscache_unuse_cookie() is passed updates for the
     metadata if we changed it (ie. if the file was opened for writing).

     These are called when the file is opened or closed.

 (5) cifs_setattr_*() are made to call fscache_resize() to change the size
     of the cache object.

Signed-off-by: David Howells <dhowells@redhat.com>
Acked-by: Jeff Layton <jlayton@kernel.org>
cc: Steve French <sfrench@samba.org>
cc: Shyam Prasad N <nspmangalore@gmail.com>
cc: linux-cifs@vger.kernel.org
---

 fs/cifs/Kconfig    |    2 -
 fs/cifs/Makefile   |    2 -
 fs/cifs/cache.c    |  105 ---------------------------
 fs/cifs/cifsfs.c   |   11 +--
 fs/cifs/cifsglob.h |    5 -
 fs/cifs/connect.c  |    3 -
 fs/cifs/file.c     |   37 ++++++++--
 fs/cifs/fscache.c  |  201 +++++++++++++---------------------------------------
 fs/cifs/fscache.h  |   51 +++++--------
 fs/cifs/inode.c    |   18 +++--
 10 files changed, 117 insertions(+), 318 deletions(-)
 delete mode 100644 fs/cifs/cache.c

diff --git a/fs/cifs/Kconfig b/fs/cifs/Kconfig
index c5477abbcff0..3b7e3b9e4fd2 100644
--- a/fs/cifs/Kconfig
+++ b/fs/cifs/Kconfig
@@ -188,7 +188,7 @@ config CIFS_SMB_DIRECT
 
 config CIFS_FSCACHE
 	bool "Provide CIFS client caching support"
-	depends on CIFS=m && FSCACHE_OLD || CIFS=y && FSCACHE_OLD=y
+	depends on CIFS=m && FSCACHE || CIFS=y && FSCACHE=y
 	help
 	  Makes CIFS FS-Cache capable. Say Y here if you want your CIFS data
 	  to be cached locally on disk through the general filesystem cache
diff --git a/fs/cifs/Makefile b/fs/cifs/Makefile
index 87fcacdf3de7..cc8fdcb35b71 100644
--- a/fs/cifs/Makefile
+++ b/fs/cifs/Makefile
@@ -25,7 +25,7 @@ cifs-$(CONFIG_CIFS_DFS_UPCALL) += cifs_dfs_ref.o dfs_cache.o
 
 cifs-$(CONFIG_CIFS_SWN_UPCALL) += netlink.o cifs_swn.o
 
-cifs-$(CONFIG_CIFS_FSCACHE) += fscache.o cache.o
+cifs-$(CONFIG_CIFS_FSCACHE) += fscache.o
 
 cifs-$(CONFIG_CIFS_SMB_DIRECT) += smbdirect.o
 
diff --git a/fs/cifs/cache.c b/fs/cifs/cache.c
deleted file mode 100644
index 8be57aaedab6..000000000000
--- a/fs/cifs/cache.c
+++ /dev/null
@@ -1,105 +0,0 @@
-// SPDX-License-Identifier: LGPL-2.1
-/*
- *   CIFS filesystem cache index structure definitions
- *
- *   Copyright (c) 2010 Novell, Inc.
- *   Authors(s): Suresh Jayaraman (sjayaraman@suse.de>
- *
- */
-#include "fscache.h"
-#include "cifs_debug.h"
-
-/*
- * CIFS filesystem definition for FS-Cache
- */
-struct fscache_netfs cifs_fscache_netfs = {
-	.name = "cifs",
-	.version = 0,
-};
-
-/*
- * Register CIFS for caching with FS-Cache
- */
-int cifs_fscache_register(void)
-{
-	return fscache_register_netfs(&cifs_fscache_netfs);
-}
-
-/*
- * Unregister CIFS for caching
- */
-void cifs_fscache_unregister(void)
-{
-	fscache_unregister_netfs(&cifs_fscache_netfs);
-}
-
-/*
- * Server object for FS-Cache
- */
-const struct fscache_cookie_def cifs_fscache_server_index_def = {
-	.name = "CIFS.server",
-	.type = FSCACHE_COOKIE_TYPE_INDEX,
-};
-
-static enum
-fscache_checkaux cifs_fscache_super_check_aux(void *cookie_netfs_data,
-					      const void *data,
-					      uint16_t datalen,
-					      loff_t object_size)
-{
-	struct cifs_fscache_super_auxdata auxdata;
-	const struct cifs_tcon *tcon = cookie_netfs_data;
-
-	if (datalen != sizeof(auxdata))
-		return FSCACHE_CHECKAUX_OBSOLETE;
-
-	memset(&auxdata, 0, sizeof(auxdata));
-	auxdata.resource_id = tcon->resource_id;
-	auxdata.vol_create_time = tcon->vol_create_time;
-	auxdata.vol_serial_number = tcon->vol_serial_number;
-
-	if (memcmp(data, &auxdata, datalen) != 0)
-		return FSCACHE_CHECKAUX_OBSOLETE;
-
-	return FSCACHE_CHECKAUX_OKAY;
-}
-
-/*
- * Superblock object for FS-Cache
- */
-const struct fscache_cookie_def cifs_fscache_super_index_def = {
-	.name = "CIFS.super",
-	.type = FSCACHE_COOKIE_TYPE_INDEX,
-	.check_aux = cifs_fscache_super_check_aux,
-};
-
-static enum
-fscache_checkaux cifs_fscache_inode_check_aux(void *cookie_netfs_data,
-					      const void *data,
-					      uint16_t datalen,
-					      loff_t object_size)
-{
-	struct cifs_fscache_inode_auxdata auxdata;
-	struct cifsInodeInfo *cifsi = cookie_netfs_data;
-
-	if (datalen != sizeof(auxdata))
-		return FSCACHE_CHECKAUX_OBSOLETE;
-
-	memset(&auxdata, 0, sizeof(auxdata));
-	auxdata.eof = cifsi->server_eof;
-	auxdata.last_write_time_sec = cifsi->vfs_inode.i_mtime.tv_sec;
-	auxdata.last_change_time_sec = cifsi->vfs_inode.i_ctime.tv_sec;
-	auxdata.last_write_time_nsec = cifsi->vfs_inode.i_mtime.tv_nsec;
-	auxdata.last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;
-
-	if (memcmp(data, &auxdata, datalen) != 0)
-		return FSCACHE_CHECKAUX_OBSOLETE;
-
-	return FSCACHE_CHECKAUX_OKAY;
-}
-
-const struct fscache_cookie_def cifs_fscache_inode_object_def = {
-	.name		= "CIFS.uniqueid",
-	.type		= FSCACHE_COOKIE_TYPE_DATAFILE,
-	.check_aux	= cifs_fscache_inode_check_aux,
-};
diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
index 9fa930dfd78d..d44a587a4c32 100644
--- a/fs/cifs/cifsfs.c
+++ b/fs/cifs/cifsfs.c
@@ -397,6 +397,8 @@ static void
 cifs_evict_inode(struct inode *inode)
 {
 	truncate_inode_pages_final(&inode->i_data);
+	if (inode->i_state & I_PINNING_FSCACHE_WB)
+		cifs_fscache_unuse_inode_cookie(inode, true);
 	clear_inode(inode);
 }
 
@@ -1625,13 +1627,9 @@ init_cifs(void)
 		goto out_destroy_cifsoplockd_wq;
 	}
 
-	rc = cifs_fscache_register();
-	if (rc)
-		goto out_destroy_deferredclose_wq;
-
 	rc = cifs_init_inodecache();
 	if (rc)
-		goto out_unreg_fscache;
+		goto out_destroy_deferredclose_wq;
 
 	rc = cifs_init_mids();
 	if (rc)
@@ -1693,8 +1691,6 @@ init_cifs(void)
 	cifs_destroy_mids();
 out_destroy_inodecache:
 	cifs_destroy_inodecache();
-out_unreg_fscache:
-	cifs_fscache_unregister();
 out_destroy_deferredclose_wq:
 	destroy_workqueue(deferredclose_wq);
 out_destroy_cifsoplockd_wq:
@@ -1730,7 +1726,6 @@ exit_cifs(void)
 	cifs_destroy_request_bufs();
 	cifs_destroy_mids();
 	cifs_destroy_inodecache();
-	cifs_fscache_unregister();
 	destroy_workqueue(deferredclose_wq);
 	destroy_workqueue(cifsoplockd_wq);
 	destroy_workqueue(decrypt_wq);
diff --git a/fs/cifs/cifsglob.h b/fs/cifs/cifsglob.h
index e916470468ea..d749250af775 100644
--- a/fs/cifs/cifsglob.h
+++ b/fs/cifs/cifsglob.h
@@ -653,9 +653,6 @@ struct TCP_Server_Info {
 	unsigned int total_read; /* total amount of data read in this pass */
 	atomic_t in_send; /* requests trying to send */
 	atomic_t num_waiters;   /* blocked waiting to get in sendrecv */
-#ifdef CONFIG_CIFS_FSCACHE
-	struct fscache_cookie   *fscache; /* client index cache cookie */
-#endif
 #ifdef CONFIG_CIFS_STATS2
 	atomic_t num_cmds[NUMBER_OF_SMB2_COMMANDS]; /* total requests by cmd */
 	atomic_t smb2slowcmd[NUMBER_OF_SMB2_COMMANDS]; /* count resps > 1 sec */
@@ -1084,7 +1081,7 @@ struct cifs_tcon {
 	__u32 max_bytes_copy;
 #ifdef CONFIG_CIFS_FSCACHE
 	u64 resource_id;		/* server resource id */
-	struct fscache_cookie *fscache;	/* cookie for share */
+	struct fscache_volume *fscache;	/* cookie for share */
 #endif
 	struct list_head pending_opens;	/* list of incomplete opens */
 	struct cached_fid crfid; /* Cached root fid */
diff --git a/fs/cifs/connect.c b/fs/cifs/connect.c
index c3b94c1e4591..db13e0f8bc4c 100644
--- a/fs/cifs/connect.c
+++ b/fs/cifs/connect.c
@@ -1331,7 +1331,6 @@ cifs_put_tcp_session(struct TCP_Server_Info *server, int from_reconnect)
 	spin_unlock(&GlobalMid_Lock);
 
 	cifs_crypto_secmech_release(server);
-	cifs_fscache_release_client_cookie(server);
 
 	kfree(server->session_key.response);
 	server->session_key.response = NULL;
@@ -1477,8 +1476,6 @@ cifs_get_tcp_session(struct smb3_fs_context *ctx)
 	list_add(&tcp_ses->tcp_ses_list, &cifs_tcp_ses_list);
 	spin_unlock(&cifs_tcp_ses_lock);
 
-	cifs_fscache_get_client_cookie(tcp_ses);
-
 	/* queue echo request delayed work */
 	queue_delayed_work(cifsiod_wq, &tcp_ses->echo, tcp_ses->echo_interval);
 
diff --git a/fs/cifs/file.c b/fs/cifs/file.c
index 02894e999c56..04c841354077 100644
--- a/fs/cifs/file.c
+++ b/fs/cifs/file.c
@@ -632,7 +632,18 @@ int cifs_open(struct inode *inode, struct file *file)
 		goto out;
 	}
 
-	cifs_fscache_set_inode_cookie(inode, file);
+
+	fscache_use_cookie(cifs_inode_cookie(file_inode(file)),
+			   file->f_mode & FMODE_WRITE);
+	if (file->f_flags & O_DIRECT &&
+	    (!((file->f_flags & O_ACCMODE) != O_RDONLY) ||
+	     file->f_flags & O_APPEND)) {
+		struct cifs_fscache_inode_auxdata auxdata;
+		cifs_fscache_fill_auxdata(file_inode(file), &auxdata);
+		fscache_invalidate(cifs_inode_cookie(file_inode(file)),
+				   &auxdata, i_size_read(file_inode(file)),
+				   FSCACHE_INVAL_DIO_WRITE);
+	}
 
 	if ((oplock & CIFS_CREATE_ACTION) && !posix_open_ok && tcon->unix_ext) {
 		/*
@@ -876,6 +887,8 @@ int cifs_close(struct inode *inode, struct file *file)
 	struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 	struct cifs_deferred_close *dclose;
 
+	cifs_fscache_unuse_inode_cookie(inode, file->f_mode & FMODE_WRITE);
+
 	if (file->private_data != NULL) {
 		cfile = file->private_data;
 		file->private_data = NULL;
@@ -886,7 +899,6 @@ int cifs_close(struct inode *inode, struct file *file)
 		    dclose) {
 			if (test_and_clear_bit(CIFS_INO_MODIFIED_ATTR, &cinode->flags)) {
 				inode->i_ctime = inode->i_mtime = current_time(inode);
-				cifs_fscache_update_inode_cookie(inode);
 			}
 			spin_lock(&cinode->deferred_lock);
 			cifs_add_deferred_close(cfile, dclose);
@@ -4787,14 +4799,14 @@ static int cifs_release_page(struct page *page, gfp_t gfp)
 			return false;
 		wait_on_page_fscache(page);
 	}
+	fscache_note_page_release(cifs_inode_cookie(page->mapping->host));
 	return true;
 }
 
 static void cifs_invalidate_page(struct page *page, unsigned int offset,
 				 unsigned int length)
 {
-	if (offset == 0 && length == PAGE_SIZE)
-		wait_on_page_fscache(page);
+	wait_on_page_fscache(page);
 }
 
 static int cifs_launder_page(struct page *page)
@@ -4971,6 +4983,19 @@ static void cifs_swap_deactivate(struct file *file)
 	/* do we need to unpin (or unlock) the file */
 }
 
+/*
+ * Mark a page as having been made dirty and thus needing writeback.  We also
+ * need to pin the cache object to write back to.
+ */
+#ifdef CONFIG_CIFS_FSCACHE
+static int cifs_set_page_dirty(struct page *page)
+{
+	return fscache_set_page_dirty(page, cifs_inode_cookie(page->mapping->host));
+}
+#else
+#define cifs_set_page_dirty __set_page_dirty_nobuffers
+#endif
+
 const struct address_space_operations cifs_addr_ops = {
 	.readpage = cifs_readpage,
 	.readpages = cifs_readpages,
@@ -4978,7 +5003,7 @@ const struct address_space_operations cifs_addr_ops = {
 	.writepages = cifs_writepages,
 	.write_begin = cifs_write_begin,
 	.write_end = cifs_write_end,
-	.set_page_dirty = __set_page_dirty_nobuffers,
+	.set_page_dirty = cifs_set_page_dirty,
 	.releasepage = cifs_release_page,
 	.direct_IO = cifs_direct_io,
 	.invalidatepage = cifs_invalidate_page,
@@ -5003,7 +5028,7 @@ const struct address_space_operations cifs_addr_ops_smallbuf = {
 	.writepages = cifs_writepages,
 	.write_begin = cifs_write_begin,
 	.write_end = cifs_write_end,
-	.set_page_dirty = __set_page_dirty_nobuffers,
+	.set_page_dirty = cifs_set_page_dirty,
 	.releasepage = cifs_release_page,
 	.invalidatepage = cifs_invalidate_page,
 	.launder_page = cifs_launder_page,
diff --git a/fs/cifs/fscache.c b/fs/cifs/fscache.c
index d6ff668c268a..fa397e734b5c 100644
--- a/fs/cifs/fscache.c
+++ b/fs/cifs/fscache.c
@@ -12,217 +12,114 @@
 #include "cifs_fs_sb.h"
 #include "cifsproto.h"
 
-/*
- * Key layout of CIFS server cache index object
- */
-struct cifs_server_key {
-	struct {
-		uint16_t	family;		/* address family */
-		__be16		port;		/* IP port */
-	} hdr;
-	union {
-		struct in_addr	ipv4_addr;
-		struct in6_addr	ipv6_addr;
-	};
-} __packed;
-
-/*
- * Get a cookie for a server object keyed by {IPaddress,port,family} tuple
- */
-void cifs_fscache_get_client_cookie(struct TCP_Server_Info *server)
+void cifs_fscache_get_super_cookie(struct cifs_tcon *tcon)
 {
-	const struct sockaddr *sa = (struct sockaddr *) &server->dstaddr;
-	const struct sockaddr_in *addr = (struct sockaddr_in *) sa;
-	const struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *) sa;
-	struct cifs_server_key key;
-	uint16_t key_len = sizeof(key.hdr);
-
-	memset(&key, 0, sizeof(key));
+	struct cifs_fscache_super_auxdata auxdata;
+	struct TCP_Server_Info *server = tcon->ses->server;
+	const struct sockaddr *sa = (struct sockaddr *)&server->dstaddr;
+	size_t slen, i;
+	char *sharename;
+	char *key;
 
-	/*
-	 * Should not be a problem as sin_family/sin6_family overlays
-	 * sa_family field
-	 */
-	key.hdr.family = sa->sa_family;
+	tcon->fscache = NULL;
 	switch (sa->sa_family) {
 	case AF_INET:
-		key.hdr.port = addr->sin_port;
-		key.ipv4_addr = addr->sin_addr;
-		key_len += sizeof(key.ipv4_addr);
-		break;
-
 	case AF_INET6:
-		key.hdr.port = addr6->sin6_port;
-		key.ipv6_addr = addr6->sin6_addr;
-		key_len += sizeof(key.ipv6_addr);
 		break;
-
 	default:
 		cifs_dbg(VFS, "Unknown network family '%d'\n", sa->sa_family);
-		server->fscache = NULL;
 		return;
 	}
 
-	server->fscache =
-		fscache_acquire_cookie(cifs_fscache_netfs.primary_index,
-				       &cifs_fscache_server_index_def,
-				       &key, key_len,
-				       NULL, 0,
-				       server, 0, true);
-	cifs_dbg(FYI, "%s: (0x%p/0x%p)\n",
-		 __func__, server, server->fscache);
-}
-
-void cifs_fscache_release_client_cookie(struct TCP_Server_Info *server)
-{
-	cifs_dbg(FYI, "%s: (0x%p/0x%p)\n",
-		 __func__, server, server->fscache);
-	fscache_relinquish_cookie(server->fscache, NULL, false);
-	server->fscache = NULL;
-}
-
-void cifs_fscache_get_super_cookie(struct cifs_tcon *tcon)
-{
-	struct TCP_Server_Info *server = tcon->ses->server;
-	char *sharename;
-	struct cifs_fscache_super_auxdata auxdata;
-
 	sharename = extract_sharename(tcon->treeName);
 	if (IS_ERR(sharename)) {
 		cifs_dbg(FYI, "%s: couldn't extract sharename\n", __func__);
-		tcon->fscache = NULL;
 		return;
 	}
 
+	slen = strlen(sharename);
+	for (i = 0; i < slen; i++)
+		if (sharename[i] == '/')
+			sharename[i] = ';';
+
+	key = kasprintf(GFP_KERNEL, "cifs,%pISpc,%s", sa, sharename);
+	if (!key)
+		goto out;
+
 	memset(&auxdata, 0, sizeof(auxdata));
 	auxdata.resource_id = tcon->resource_id;
 	auxdata.vol_create_time = tcon->vol_create_time;
 	auxdata.vol_serial_number = tcon->vol_serial_number;
+	// TODO: Do something with the volume coherency data
 
-	tcon->fscache =
-		fscache_acquire_cookie(server->fscache,
-				       &cifs_fscache_super_index_def,
-				       sharename, strlen(sharename),
-				       &auxdata, sizeof(auxdata),
-				       tcon, 0, true);
+	tcon->fscache = fscache_acquire_volume(key,
+					       NULL, /* preferred_cache */
+					       0 /* coherency_data */);
+	cifs_dbg(FYI, "%s: (%s/0x%p)\n", __func__, key, tcon->fscache);
+
+	kfree(key);
+out:
 	kfree(sharename);
-	cifs_dbg(FYI, "%s: (0x%p/0x%p)\n",
-		 __func__, server->fscache, tcon->fscache);
 }
 
 void cifs_fscache_release_super_cookie(struct cifs_tcon *tcon)
 {
 	struct cifs_fscache_super_auxdata auxdata;
 
+	cifs_dbg(FYI, "%s: (0x%p)\n", __func__, tcon->fscache);
+
 	memset(&auxdata, 0, sizeof(auxdata));
 	auxdata.resource_id = tcon->resource_id;
 	auxdata.vol_create_time = tcon->vol_create_time;
 	auxdata.vol_serial_number = tcon->vol_serial_number;
+	// TODO: Do something with the volume coherency data
 
-	cifs_dbg(FYI, "%s: (0x%p)\n", __func__, tcon->fscache);
-	fscache_relinquish_cookie(tcon->fscache, &auxdata, false);
+	fscache_relinquish_volume(tcon->fscache,
+				  0, /* coherency_data */
+				  false);
 	tcon->fscache = NULL;
 }
 
-static void cifs_fscache_acquire_inode_cookie(struct cifsInodeInfo *cifsi,
-					      struct cifs_tcon *tcon)
+void cifs_fscache_get_inode_cookie(struct inode *inode)
 {
+	struct cifsInodeInfo *cifsi = CIFS_I(inode);
+	struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
+	struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 	struct cifs_fscache_inode_auxdata auxdata;
 
-	memset(&auxdata, 0, sizeof(auxdata));
-	auxdata.eof = cifsi->server_eof;
-	auxdata.last_write_time_sec = cifsi->vfs_inode.i_mtime.tv_sec;
-	auxdata.last_change_time_sec = cifsi->vfs_inode.i_ctime.tv_sec;
-	auxdata.last_write_time_nsec = cifsi->vfs_inode.i_mtime.tv_nsec;
-	auxdata.last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;
+	cifs_fscache_fill_auxdata(&cifsi->vfs_inode, &auxdata);
 
 	cifsi->fscache =
-		fscache_acquire_cookie(tcon->fscache,
-				       &cifs_fscache_inode_object_def,
+		fscache_acquire_cookie(tcon->fscache, 0,
 				       &cifsi->uniqueid, sizeof(cifsi->uniqueid),
 				       &auxdata, sizeof(auxdata),
-				       cifsi, cifsi->vfs_inode.i_size, true);
+				       cifsi->vfs_inode.i_size);
 }
 
-static void cifs_fscache_enable_inode_cookie(struct inode *inode)
+void cifs_fscache_unuse_inode_cookie(struct inode *inode, bool update)
 {
-	struct cifsInodeInfo *cifsi = CIFS_I(inode);
-	struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
-	struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
-
-	if (cifsi->fscache)
-		return;
-
-	if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_FSCACHE))
-		return;
-
-	cifs_fscache_acquire_inode_cookie(cifsi, tcon);
-
-	cifs_dbg(FYI, "%s: got FH cookie (0x%p/0x%p)\n",
-		 __func__, tcon->fscache, cifsi->fscache);
+	if (update) {
+		struct cifs_fscache_inode_auxdata auxdata;
+		loff_t i_size = i_size_read(inode);
+
+		cifs_fscache_fill_auxdata(inode, &auxdata);
+		fscache_unuse_cookie(cifs_inode_cookie(inode), &auxdata, &i_size);
+	} else {
+		fscache_unuse_cookie(cifs_inode_cookie(inode), NULL, NULL);
+	}
 }
 
 void cifs_fscache_release_inode_cookie(struct inode *inode)
 {
-	struct cifs_fscache_inode_auxdata auxdata;
 	struct cifsInodeInfo *cifsi = CIFS_I(inode);
 
 	if (cifsi->fscache) {
-		memset(&auxdata, 0, sizeof(auxdata));
-		auxdata.eof = cifsi->server_eof;
-		auxdata.last_write_time_sec = cifsi->vfs_inode.i_mtime.tv_sec;
-		auxdata.last_change_time_sec = cifsi->vfs_inode.i_ctime.tv_sec;
-		auxdata.last_write_time_nsec = cifsi->vfs_inode.i_mtime.tv_nsec;
-		auxdata.last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;
-
 		cifs_dbg(FYI, "%s: (0x%p)\n", __func__, cifsi->fscache);
-		/* fscache_relinquish_cookie does not seem to update auxdata */
-		fscache_update_cookie(cifsi->fscache, &auxdata);
-		fscache_relinquish_cookie(cifsi->fscache, &auxdata, false);
+		fscache_relinquish_cookie(cifsi->fscache, false);
 		cifsi->fscache = NULL;
 	}
 }
 
-void cifs_fscache_update_inode_cookie(struct inode *inode)
-{
-	struct cifs_fscache_inode_auxdata auxdata;
-	struct cifsInodeInfo *cifsi = CIFS_I(inode);
-
-	if (cifsi->fscache) {
-		memset(&auxdata, 0, sizeof(auxdata));
-		auxdata.eof = cifsi->server_eof;
-		auxdata.last_write_time_sec = cifsi->vfs_inode.i_mtime.tv_sec;
-		auxdata.last_change_time_sec = cifsi->vfs_inode.i_ctime.tv_sec;
-		auxdata.last_write_time_nsec = cifsi->vfs_inode.i_mtime.tv_nsec;
-		auxdata.last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;
-
-		cifs_dbg(FYI, "%s: (0x%p)\n", __func__, cifsi->fscache);
-		fscache_update_cookie(cifsi->fscache, &auxdata);
-	}
-}
-
-void cifs_fscache_set_inode_cookie(struct inode *inode, struct file *filp)
-{
-	cifs_fscache_enable_inode_cookie(inode);
-}
-
-void cifs_fscache_reset_inode_cookie(struct inode *inode)
-{
-	struct cifsInodeInfo *cifsi = CIFS_I(inode);
-	struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
-	struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
-	struct fscache_cookie *old = cifsi->fscache;
-
-	if (cifsi->fscache) {
-		/* retire the current fscache cache and get a new one */
-		fscache_relinquish_cookie(cifsi->fscache, NULL, true);
-
-		cifs_fscache_acquire_inode_cookie(cifsi, tcon);
-		cifs_dbg(FYI, "%s: new cookie 0x%p oldcookie 0x%p\n",
-			 __func__, cifsi->fscache, old);
-	}
-}
-
 /*
  * Retrieve a page from FS-Cache
  */
diff --git a/fs/cifs/fscache.h b/fs/cifs/fscache.h
index 081481645b77..886a47a4c409 100644
--- a/fs/cifs/fscache.h
+++ b/fs/cifs/fscache.h
@@ -33,32 +33,31 @@ struct cifs_fscache_inode_auxdata {
 	u64 last_change_time_sec;
 	u32 last_write_time_nsec;
 	u32 last_change_time_nsec;
-	u64 eof;
 };
 
-/*
- * cache.c
- */
-extern struct fscache_netfs cifs_fscache_netfs;
-extern const struct fscache_cookie_def cifs_fscache_server_index_def;
-extern const struct fscache_cookie_def cifs_fscache_super_index_def;
-extern const struct fscache_cookie_def cifs_fscache_inode_object_def;
-
-extern int cifs_fscache_register(void);
-extern void cifs_fscache_unregister(void);
-
 /*
  * fscache.c
  */
-extern void cifs_fscache_get_client_cookie(struct TCP_Server_Info *);
-extern void cifs_fscache_release_client_cookie(struct TCP_Server_Info *);
 extern void cifs_fscache_get_super_cookie(struct cifs_tcon *);
 extern void cifs_fscache_release_super_cookie(struct cifs_tcon *);
 
+extern void cifs_fscache_get_inode_cookie(struct inode *);
 extern void cifs_fscache_release_inode_cookie(struct inode *);
-extern void cifs_fscache_update_inode_cookie(struct inode *inode);
-extern void cifs_fscache_set_inode_cookie(struct inode *, struct file *);
-extern void cifs_fscache_reset_inode_cookie(struct inode *);
+extern void cifs_fscache_unuse_inode_cookie(struct inode *, bool);
+
+static inline
+void cifs_fscache_fill_auxdata(struct inode *inode,
+			       struct cifs_fscache_inode_auxdata *auxdata)
+{
+	struct cifsInodeInfo *cifsi = CIFS_I(inode);
+
+	memset(&auxdata, 0, sizeof(auxdata));
+	auxdata->last_write_time_sec   = cifsi->vfs_inode.i_mtime.tv_sec;
+	auxdata->last_write_time_nsec  = cifsi->vfs_inode.i_mtime.tv_nsec;
+	auxdata->last_change_time_sec  = cifsi->vfs_inode.i_ctime.tv_sec;
+	auxdata->last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;
+}
+
 
 extern int __cifs_readpage_from_fscache(struct inode *, struct page *);
 extern void __cifs_readpage_to_fscache(struct inode *, struct page *);
@@ -85,23 +84,13 @@ static inline struct fscache_cookie *cifs_inode_cookie(struct inode *inode)
 }
 
 #else /* CONFIG_CIFS_FSCACHE */
-static inline int cifs_fscache_register(void) { return 0; }
-static inline void cifs_fscache_unregister(void) {}
-
-static inline void
-cifs_fscache_get_client_cookie(struct TCP_Server_Info *server) {}
-static inline void
-cifs_fscache_release_client_cookie(struct TCP_Server_Info *server) {}
 static inline void cifs_fscache_get_super_cookie(struct cifs_tcon *tcon) {}
-static inline void
-cifs_fscache_release_super_cookie(struct cifs_tcon *tcon) {}
+static inline void cifs_fscache_release_super_cookie(struct cifs_tcon *tcon) {}
 
+static inline void cifs_fscache_get_inode_cookie(struct inode *inode) {}
 static inline void cifs_fscache_release_inode_cookie(struct inode *inode) {}
-static inline void cifs_fscache_update_inode_cookie(struct inode *inode) {}
-static inline void cifs_fscache_set_inode_cookie(struct inode *inode,
-						 struct file *filp) {}
-static inline void cifs_fscache_reset_inode_cookie(struct inode *inode) {}
-
+static inline void cifs_fscache_unuse_inode_cookie(struct inode *inode) {}
+static inline struct fscache_cookie *cifs_inode_cookie(struct inode *inode) { return NULL; }
 
 static inline int
 cifs_readpage_from_fscache(struct inode *inode, struct page *page)
diff --git a/fs/cifs/inode.c b/fs/cifs/inode.c
index 82848412ad85..384d7b8686b1 100644
--- a/fs/cifs/inode.c
+++ b/fs/cifs/inode.c
@@ -1298,10 +1298,7 @@ cifs_iget(struct super_block *sb, struct cifs_fattr *fattr)
 			inode->i_flags |= S_NOATIME | S_NOCMTIME;
 		if (inode->i_state & I_NEW) {
 			inode->i_ino = hash;
-#ifdef CONFIG_CIFS_FSCACHE
-			/* initialize per-inode cache cookie pointer */
-			CIFS_I(inode)->fscache = NULL;
-#endif
+			cifs_fscache_get_inode_cookie(inode);
 			unlock_new_inode(inode);
 		}
 	}
@@ -2263,6 +2260,8 @@ cifs_dentry_needs_reval(struct dentry *dentry)
 int
 cifs_invalidate_mapping(struct inode *inode)
 {
+	struct cifs_fscache_inode_auxdata auxdata;
+	struct cifsInodeInfo *cifsi = CIFS_I(inode);
 	int rc = 0;
 
 	if (inode->i_mapping && inode->i_mapping->nrpages != 0) {
@@ -2272,7 +2271,8 @@ cifs_invalidate_mapping(struct inode *inode)
 				 __func__, inode);
 	}
 
-	cifs_fscache_reset_inode_cookie(inode);
+	cifs_fscache_fill_auxdata(&cifsi->vfs_inode, &auxdata);
+	fscache_invalidate(cifs_inode_cookie(inode), &auxdata, i_size_read(inode), 0);
 	return rc;
 }
 
@@ -2777,8 +2777,10 @@ cifs_setattr_unix(struct dentry *direntry, struct iattr *attrs)
 		goto out;
 
 	if ((attrs->ia_valid & ATTR_SIZE) &&
-	    attrs->ia_size != i_size_read(inode))
+	    attrs->ia_size != i_size_read(inode)) {
 		truncate_setsize(inode, attrs->ia_size);
+		fscache_resize_cookie(cifs_inode_cookie(inode), attrs->ia_size);
+	}
 
 	setattr_copy(&init_user_ns, inode, attrs);
 	mark_inode_dirty(inode);
@@ -2973,8 +2975,10 @@ cifs_setattr_nounix(struct dentry *direntry, struct iattr *attrs)
 		goto cifs_setattr_exit;
 
 	if ((attrs->ia_valid & ATTR_SIZE) &&
-	    attrs->ia_size != i_size_read(inode))
+	    attrs->ia_size != i_size_read(inode)) {
 		truncate_setsize(inode, attrs->ia_size);
+		fscache_resize_cookie(cifs_inode_cookie(inode), attrs->ia_size);
+	}
 
 	setattr_copy(&init_user_ns, inode, attrs);
 	mark_inode_dirty(inode);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
