Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6130431BD62
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:47:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg68-0005Ig-5q; Mon, 15 Feb 2021 15:47:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg67-0005IY-B1
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B/jEhZL1acolGWufI5fNaBXE6kQl7aUtD/I1GN82yy0=; b=LbsSAzMFwBv1wu/URq5wiT4Ri+
 UuoR1ktXiwwwPnZoJEZb1xxSJx2ap+ej3cpJLlVJMI3b8VKKZg9EoSYGAiqDtDltZL4f+U10ShNgg
 BPjhbCb9hd4Yq06nRS+8hFmtvAfBfixeOwj4ut4DEvXXDZHA29tksdd4xwQTno2Uf+OU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B/jEhZL1acolGWufI5fNaBXE6kQl7aUtD/I1GN82yy0=; b=ZZZA8fwpd/Fcv/tYF4GpHDtLMV
 RAkc7ga+ePMrR+Vv2+aP2W6jMFMPeBbYqCKt5K5FSlxesj0V0JVFHolP4tnz/QU7EP9li9xrMxxBk
 HtlkpwNIMFwodYFFVvdKxxIv/72duiNVagRQNQ/vZj90RBe3Mg05rACJM1M0/uwtKe88=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBg5m-009oCF-1r
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:47:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613404032;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B/jEhZL1acolGWufI5fNaBXE6kQl7aUtD/I1GN82yy0=;
 b=LO5qOlYVf/plbf6dkNpXs40Q3NmoAYxgFBSMW+Ib4qkLgIDruYJHIvArWHRnRcS/OME3yP
 wy/IIqNLcliu5w1bRS18W2Kqtf1PTzVatE8tTTGI+zWHURq6RaZNDT8qTeg6SgMXZwYmT7
 U+DxhSailmWVNKt+ccj9C4nJ9pG0BGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-gqXe30VHPSKhcYoG5ei98g-1; Mon, 15 Feb 2021 10:47:10 -0500
X-MC-Unique: gqXe30VHPSKhcYoG5ei98g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03807107ACC7;
 Mon, 15 Feb 2021 15:47:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E63160875;
 Mon, 15 Feb 2021 15:47:01 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:47:00 +0000
Message-ID: <161340402057.1303470.8038373593844486698.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBg5m-009oCF-1r
Subject: [V9fs-developer] [PATCH 14/33] fscache,
 cachefiles: Add alternate API to use kiocb for read/write to cache
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add an alternate API by which the cache can be accessed through a kiocb,
doing async DIO, rather than using the current API that tells the cache
where all the pages are.

The new API is intended to be used in conjunction with the netfs helper
library.  A filesystem must pick one or the other and not mix them.

Filesystems wanting to use the new API must #define FSCACHE_USE_NEW_IO_API
before #including the header

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@redhat.com>
cc: Christoph Hellwig <hch@lst.de>
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
---

 fs/cachefiles/Makefile    |    1 
 fs/cachefiles/interface.c |    5 -
 fs/cachefiles/internal.h  |    9 +
 fs/cachefiles/rdwr2.c     |  412 +++++++++++++++++++++++++++++++++++++++++++++
 fs/fscache/Kconfig        |    1 
 fs/fscache/Makefile       |    3 
 fs/fscache/internal.h     |    3 
 fs/fscache/page.c         |    2 
 fs/fscache/page2.c        |  117 +++++++++++++
 fs/fscache/stats.c        |    1 
 include/linux/fscache.h   |   44 +++--
 11 files changed, 578 insertions(+), 20 deletions(-)
 create mode 100644 fs/cachefiles/rdwr2.c
 create mode 100644 fs/fscache/page2.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 891dedda5905..ea17b169ea5e 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -11,6 +11,7 @@ cachefiles-y := \
 	main.o \
 	namei.o \
 	rdwr.o \
+	rdwr2.o \
 	security.o \
 	xattr.o
 
diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 4cea5fbf695e..eaede2585d07 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -319,8 +319,8 @@ static void cachefiles_drop_object(struct fscache_object *_object)
 /*
  * dispose of a reference to an object
  */
-static void cachefiles_put_object(struct fscache_object *_object,
-				  enum fscache_obj_ref_trace why)
+void cachefiles_put_object(struct fscache_object *_object,
+			   enum fscache_obj_ref_trace why)
 {
 	struct cachefiles_object *object;
 	struct fscache_cache *cache;
@@ -568,4 +568,5 @@ const struct fscache_cache_ops cachefiles_cache_ops = {
 	.uncache_page		= cachefiles_uncache_page,
 	.dissociate_pages	= cachefiles_dissociate_pages,
 	.check_consistency	= cachefiles_check_consistency,
+	.begin_read_operation	= cachefiles_begin_read_operation,
 };
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index cf9bd6401c2d..896819b80bbc 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -150,6 +150,9 @@ extern int cachefiles_has_space(struct cachefiles_cache *cache,
  */
 extern const struct fscache_cache_ops cachefiles_cache_ops;
 
+extern void cachefiles_put_object(struct fscache_object *_object,
+				  enum fscache_obj_ref_trace why);
+
 /*
  * key.c
  */
@@ -217,6 +220,12 @@ extern int cachefiles_allocate_pages(struct fscache_retrieval *,
 extern int cachefiles_write_page(struct fscache_storage *, struct page *);
 extern void cachefiles_uncache_page(struct fscache_object *, struct page *);
 
+/*
+ * rdwr2.c
+ */
+extern int cachefiles_begin_read_operation(struct netfs_read_request *,
+					   struct fscache_retrieval *);
+
 /*
  * security.c
  */
diff --git a/fs/cachefiles/rdwr2.c b/fs/cachefiles/rdwr2.c
new file mode 100644
index 000000000000..4cea5a2a2d6e
--- /dev/null
+++ b/fs/cachefiles/rdwr2.c
@@ -0,0 +1,412 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* kiocb-using read/write
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/mount.h>
+#include <linux/slab.h>
+#include <linux/file.h>
+#include <linux/uio.h>
+#include <linux/sched/mm.h>
+#include <linux/netfs.h>
+#include "internal.h"
+
+struct cachefiles_kiocb {
+	struct kiocb		iocb;
+	refcount_t		ki_refcnt;
+	loff_t			start;
+	union {
+		size_t		skipped;
+		size_t		len;
+	};
+	netfs_io_terminated_t	term_func;
+	void			*term_func_priv;
+};
+
+static inline void cachefiles_put_kiocb(struct cachefiles_kiocb *ki)
+{
+	if (refcount_dec_and_test(&ki->ki_refcnt)) {
+		fput(ki->iocb.ki_filp);
+		kfree(ki);
+	}
+}
+
+/*
+ * Handle completion of a read from the cache.
+ */
+static void cachefiles_read_complete(struct kiocb *iocb, long ret, long ret2)
+{
+	struct cachefiles_kiocb *ki = container_of(iocb, struct cachefiles_kiocb, iocb);
+
+	_enter("%ld,%ld", ret, ret2);
+
+	if (ki->term_func) {
+		if (ret < 0)
+			ki->term_func(ki->term_func_priv, ret);
+		else
+			ki->term_func(ki->term_func_priv, ki->skipped + ret);
+	}
+
+	cachefiles_put_kiocb(ki);
+}
+
+/*
+ * Initiate a read from the cache.
+ */
+static int cachefiles_read(struct netfs_cache_resources *cres,
+			   loff_t start_pos,
+			   struct iov_iter *iter,
+			   bool seek_data,
+			   netfs_io_terminated_t term_func,
+			   void *term_func_priv)
+{
+	struct cachefiles_kiocb *ki;
+	struct file *file = cres->cache_priv2;
+	unsigned int old_nofs;
+	ssize_t ret = -ENOBUFS;
+	size_t len = iov_iter_count(iter), skipped = 0;
+
+	_enter("%pD,%li,%llx,%zx/%llx",
+	       file, file_inode(file)->i_ino, start_pos, len,
+	       i_size_read(file->f_inode));
+
+	/* If the caller asked us to seek for data before doing the read, then
+	 * we should do that now.  If we find a gap, we fill it with zeros.
+	 */
+	if (seek_data) {
+		loff_t off = start_pos, off2;
+
+		off2 = vfs_llseek(file, off, SEEK_DATA);
+		if (off2 < 0 && off2 >= (loff_t)-MAX_ERRNO && off2 != -ENXIO) {
+			skipped = 0;
+			ret = off2;
+			goto presubmission_error;
+		}
+
+		if (off2 == -ENXIO || off2 >= start_pos + len) {
+			/* The region is beyond the EOF or there's no more data
+			 * in the region, so clear the rest of the buffer and
+			 * return success.
+			 */
+			iov_iter_zero(len, iter);
+			skipped = len;
+			ret = 0;
+			goto presubmission_error;
+		}
+
+		skipped = off2 - off;
+		iov_iter_zero(skipped, iter);
+	}
+
+	ret = -ENOBUFS;
+	ki = kzalloc(sizeof(struct cachefiles_kiocb), GFP_KERNEL);
+	if (!ki)
+		goto presubmission_error;
+
+	refcount_set(&ki->ki_refcnt, 2);
+	ki->iocb.ki_filp	= file;
+	ki->iocb.ki_pos		= start_pos + skipped;
+	ki->iocb.ki_flags	= IOCB_DIRECT;
+	ki->iocb.ki_hint	= ki_hint_validate(file_write_hint(file));
+	ki->iocb.ki_ioprio	= get_current_ioprio();
+	ki->skipped		= skipped;
+	ki->term_func		= term_func;
+	ki->term_func_priv	= term_func_priv;
+
+	if (ki->term_func)
+		ki->iocb.ki_complete = cachefiles_read_complete;
+
+	ret = rw_verify_area(READ, file, &ki->iocb.ki_pos, len - skipped);
+	if (ret < 0)
+		goto presubmission_error_free;
+
+	get_file(ki->iocb.ki_filp);
+
+	old_nofs = memalloc_nofs_save();
+	ret = call_read_iter(file, &ki->iocb, iter);
+	memalloc_nofs_restore(old_nofs);
+	switch (ret) {
+	case -EIOCBQUEUED:
+		goto in_progress;
+
+	case -ERESTARTSYS:
+	case -ERESTARTNOINTR:
+	case -ERESTARTNOHAND:
+	case -ERESTART_RESTARTBLOCK:
+		/* There's no easy way to restart the syscall since other AIO's
+		 * may be already running. Just fail this IO with EINTR.
+		 */
+		ret = -EINTR;
+		fallthrough;
+	default:
+		cachefiles_read_complete(&ki->iocb, ret, 0);
+		if (ret > 0)
+			ret = 0;
+		break;
+	}
+
+in_progress:
+	cachefiles_put_kiocb(ki);
+	_leave(" = %zd", ret);
+	return ret;
+
+presubmission_error_free:
+	kfree(ki);
+presubmission_error:
+	if (term_func)
+		term_func(term_func_priv, ret < 0 ? ret : skipped);
+	return ret;
+}
+
+/*
+ * Handle completion of a write to the cache.
+ */
+static void cachefiles_write_complete(struct kiocb *iocb, long ret, long ret2)
+{
+	struct cachefiles_kiocb *ki = container_of(iocb, struct cachefiles_kiocb, iocb);
+	struct inode *inode = file_inode(ki->iocb.ki_filp);
+
+	_enter("%ld,%ld", ret, ret2);
+
+	/* Tell lockdep we inherited freeze protection from submission thread */
+	__sb_writers_acquired(inode->i_sb, SB_FREEZE_WRITE);
+	__sb_end_write(inode->i_sb, SB_FREEZE_WRITE);
+
+	if (ki->term_func)
+		ki->term_func(ki->term_func_priv, ret);
+
+	cachefiles_put_kiocb(ki);
+}
+
+/*
+ * Initiate a write to the cache.
+ */
+static int cachefiles_write(struct netfs_cache_resources *cres,
+			    loff_t start_pos,
+			    struct iov_iter *iter,
+			    netfs_io_terminated_t term_func,
+			    void *term_func_priv)
+{
+	struct cachefiles_kiocb *ki;
+	struct inode *inode;
+	struct file *file = cres->cache_priv2;
+	unsigned int old_nofs;
+	ssize_t ret = -ENOBUFS;
+	size_t len = iov_iter_count(iter);
+
+	_enter("%pD,%li,%llx,%zx/%llx",
+	       file, file_inode(file)->i_ino, start_pos, len,
+	       i_size_read(file->f_inode));
+
+	ki = kzalloc(sizeof(struct cachefiles_kiocb), GFP_KERNEL);
+	if (!ki)
+		goto presubmission_error;
+
+	refcount_set(&ki->ki_refcnt, 2);
+	ki->iocb.ki_filp	= file;
+	ki->iocb.ki_pos		= start_pos;
+	ki->iocb.ki_flags	= IOCB_DIRECT | IOCB_WRITE;
+	ki->iocb.ki_hint	= ki_hint_validate(file_write_hint(file));
+	ki->iocb.ki_ioprio	= get_current_ioprio();
+	ki->start		= start_pos;
+	ki->len			= len;
+	ki->term_func		= term_func;
+	ki->term_func_priv	= term_func_priv;
+
+	if (ki->term_func)
+		ki->iocb.ki_complete = cachefiles_write_complete;
+
+	ret = rw_verify_area(WRITE, file, &ki->iocb.ki_pos, iov_iter_count(iter));
+	if (ret < 0)
+		goto presubmission_error_free;
+
+	/* Open-code file_start_write here to grab freeze protection, which
+	 * will be released by another thread in aio_complete_rw().  Fool
+	 * lockdep by telling it the lock got released so that it doesn't
+	 * complain about the held lock when we return to userspace.
+	 */
+	inode = file_inode(file);
+	__sb_start_write(inode->i_sb, SB_FREEZE_WRITE);
+	__sb_writers_release(inode->i_sb, SB_FREEZE_WRITE);
+
+	get_file(ki->iocb.ki_filp);
+
+	old_nofs = memalloc_nofs_save();
+	ret = call_write_iter(file, &ki->iocb, iter);
+	memalloc_nofs_restore(old_nofs);
+	switch (ret) {
+	case -EIOCBQUEUED:
+		goto in_progress;
+
+	case -ERESTARTSYS:
+	case -ERESTARTNOINTR:
+	case -ERESTARTNOHAND:
+	case -ERESTART_RESTARTBLOCK:
+		/* There's no easy way to restart the syscall since other AIO's
+		 * may be already running. Just fail this IO with EINTR.
+		 */
+		ret = -EINTR;
+		/* Fall through */
+	default:
+		cachefiles_write_complete(&ki->iocb, ret, 0);
+		if (ret > 0)
+			ret = 0;
+		break;
+	}
+
+in_progress:
+	cachefiles_put_kiocb(ki);
+	_leave(" = %zd", ret);
+	return ret;
+
+presubmission_error_free:
+	kfree(ki);
+presubmission_error:
+	if (term_func)
+		term_func(term_func_priv, -ENOMEM);
+	return -ENOMEM;
+}
+
+/*
+ * Prepare a read operation, shortening it to a cached/uncached
+ * boundary as appropriate.
+ */
+static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subrequest *subreq,
+						      loff_t i_size)
+{
+	struct fscache_retrieval *op = subreq->rreq->cache_resources.cache_priv;
+	struct cachefiles_object *object;
+	struct cachefiles_cache *cache;
+	const struct cred *saved_cred;
+	struct file *file = subreq->rreq->cache_resources.cache_priv2;
+	loff_t off, to;
+
+	_enter("%zx @%llx/%llx", subreq->len, subreq->start, i_size);
+
+	object = container_of(op->op.object,
+			      struct cachefiles_object, fscache);
+	cache = container_of(object->fscache.cache,
+			     struct cachefiles_cache, cache);
+
+	if (!file)
+		goto cache_fail_nosec;
+
+	if (subreq->start >= i_size)
+		return NETFS_FILL_WITH_ZEROES;
+
+	cachefiles_begin_secure(cache, &saved_cred);
+
+	off = vfs_llseek(file, subreq->start, SEEK_DATA);
+	if (off < 0 && off >= (loff_t)-MAX_ERRNO) {
+		if (off == (loff_t)-ENXIO)
+			goto download_and_store;
+		goto cache_fail;
+	}
+
+	if (off >= subreq->start + subreq->len)
+		goto download_and_store;
+
+	if (off > subreq->start) {
+		off = round_up(off, cache->bsize);
+		subreq->len = off - subreq->start;
+		goto download_and_store;
+	}
+
+	to = vfs_llseek(file, subreq->start, SEEK_HOLE);
+	if (to < 0 && to >= (loff_t)-MAX_ERRNO)
+		goto cache_fail;
+
+	if (to < subreq->start + subreq->len) {
+		if (subreq->start + subreq->len >= i_size)
+			to = round_up(to, cache->bsize);
+		else
+			to = round_down(to, cache->bsize);
+		subreq->len = to - subreq->start;
+	}
+
+	cachefiles_end_secure(cache, saved_cred);
+	return NETFS_READ_FROM_CACHE;
+
+download_and_store:
+	if (cachefiles_has_space(cache, 0, (subreq->len + PAGE_SIZE - 1) / PAGE_SIZE) == 0)
+		__set_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags);
+cache_fail:
+	cachefiles_end_secure(cache, saved_cred);
+cache_fail_nosec:
+	return NETFS_DOWNLOAD_FROM_SERVER;
+}
+
+/*
+ * Clean up an operation.
+ */
+static void cachefiles_end_operation(struct netfs_cache_resources *cres)
+{
+	struct fscache_retrieval *op = cres->cache_priv;
+	struct file *file = cres->cache_priv2;
+
+	_enter("");
+
+	if (file)
+		fput(file);
+	if (op) {
+		fscache_op_complete(&op->op, false);
+		fscache_put_retrieval(op);
+	}
+
+	_leave("");
+}
+
+static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
+	.end_operation		= cachefiles_end_operation,
+	.read			= cachefiles_read,
+	.write			= cachefiles_write,
+	.expand_readahead	= NULL,
+	.prepare_read		= cachefiles_prepare_read,
+};
+
+/*
+ * Open the cache file when beginning a cache operation.
+ */
+int cachefiles_begin_read_operation(struct netfs_read_request *rreq,
+				    struct fscache_retrieval *op)
+{
+	struct cachefiles_object *object;
+	struct cachefiles_cache *cache;
+	struct path path;
+	struct file *file;
+
+	_enter("");
+
+	object = container_of(op->op.object,
+			      struct cachefiles_object, fscache);
+	cache = container_of(object->fscache.cache,
+			     struct cachefiles_cache, cache);
+
+	path.mnt = cache->mnt;
+	path.dentry = object->backer;
+	file = open_with_fake_path(&path, O_RDWR | O_LARGEFILE | O_DIRECT,
+				   d_inode(object->backer), cache->cache_cred);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+	if (!S_ISREG(file_inode(file)->i_mode))
+		goto error_file;
+	if (unlikely(!file->f_op->read_iter) ||
+	    unlikely(!file->f_op->write_iter)) {
+		pr_notice("Cache does not support read_iter and write_iter\n");
+		goto error_file;
+	}
+
+	fscache_get_retrieval(op);
+	rreq->cache_resources.cache_priv = op;
+	rreq->cache_resources.cache_priv2 = file;
+	rreq->cache_resources.ops = &cachefiles_netfs_cache_ops;
+	rreq->cookie_debug_id = object->fscache.debug_id;
+	_leave("");
+	return 0;
+
+error_file:
+	fput(file);
+	return -EIO;
+}
diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
index 5e796e6c38e5..427efa73b9bd 100644
--- a/fs/fscache/Kconfig
+++ b/fs/fscache/Kconfig
@@ -2,6 +2,7 @@
 
 config FSCACHE
 	tristate "General filesystem local caching manager"
+	select NETFS_SUPPORT
 	help
 	  This option enables a generic filesystem caching manager that can be
 	  used by various network and other filesystems to cache data locally.
diff --git a/fs/fscache/Makefile b/fs/fscache/Makefile
index 79e08e05ef84..38f28fec2aa3 100644
--- a/fs/fscache/Makefile
+++ b/fs/fscache/Makefile
@@ -11,7 +11,8 @@ fscache-y := \
 	netfs.o \
 	object.o \
 	operation.o \
-	page.o
+	page.o \
+	page2.o
 
 fscache-$(CONFIG_PROC_FS) += proc.o
 fscache-$(CONFIG_FSCACHE_STATS) += stats.o
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 08e91efbce53..c42672cadf2d 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -142,6 +142,9 @@ extern int fscache_wait_for_operation_activation(struct fscache_object *,
 						 atomic_t *,
 						 atomic_t *);
 extern void fscache_invalidate_writes(struct fscache_cookie *);
+extern struct fscache_retrieval *fscache_alloc_retrieval(struct fscache_cookie *,
+							 struct address_space *,
+							 fscache_rw_complete_t, void *);
 
 /*
  * proc.c
diff --git a/fs/fscache/page.c b/fs/fscache/page.c
index 26af6fdf1538..991b0a871744 100644
--- a/fs/fscache/page.c
+++ b/fs/fscache/page.c
@@ -299,7 +299,7 @@ static void fscache_release_retrieval_op(struct fscache_operation *_op)
 /*
  * allocate a retrieval op
  */
-static struct fscache_retrieval *fscache_alloc_retrieval(
+struct fscache_retrieval *fscache_alloc_retrieval(
 	struct fscache_cookie *cookie,
 	struct address_space *mapping,
 	fscache_rw_complete_t end_io_func,
diff --git a/fs/fscache/page2.c b/fs/fscache/page2.c
new file mode 100644
index 000000000000..0eb096502067
--- /dev/null
+++ b/fs/fscache/page2.c
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Cache data I/O routines
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#define FSCACHE_DEBUG_LEVEL PAGE
+#include <linux/module.h>
+#define FSCACHE_USE_NEW_IO_API
+#include <linux/fscache-cache.h>
+#include <linux/slab.h>
+#include <linux/netfs.h>
+#include "internal.h"
+
+/*
+ * Start a cache read operation.
+ * - we return:
+ *   -ENOMEM	- out of memory, some pages may be being read
+ *   -ERESTARTSYS - interrupted, some pages may be being read
+ *   -ENOBUFS	- no backing object or space available in which to cache any
+ *                pages not being read
+ *   -ENODATA	- no data available in the backing object for some or all of
+ *                the pages
+ *   0		- dispatched a read on all pages
+ */
+int __fscache_begin_read_operation(struct netfs_read_request *rreq,
+				   struct fscache_cookie *cookie)
+{
+	struct fscache_retrieval *op;
+	struct fscache_object *object;
+	bool wake_cookie = false;
+	int ret;
+
+	_enter("rr=%08x", rreq->debug_id);
+
+	fscache_stat(&fscache_n_retrievals);
+
+	if (hlist_empty(&cookie->backing_objects))
+		goto nobufs;
+
+	if (test_bit(FSCACHE_COOKIE_INVALIDATING, &cookie->flags)) {
+		_leave(" = -ENOBUFS [invalidating]");
+		return -ENOBUFS;
+	}
+
+	ASSERTCMP(cookie->def->type, !=, FSCACHE_COOKIE_TYPE_INDEX);
+
+	if (fscache_wait_for_deferred_lookup(cookie) < 0)
+		return -ERESTARTSYS;
+
+	op = fscache_alloc_retrieval(cookie, NULL, NULL, NULL);
+	if (!op)
+		return -ENOMEM;
+	//atomic_set(&op->n_pages, 1);
+	trace_fscache_page_op(cookie, NULL, &op->op, fscache_page_op_retr_multi);
+
+	spin_lock(&cookie->lock);
+
+	if (!fscache_cookie_enabled(cookie) ||
+	    hlist_empty(&cookie->backing_objects))
+		goto nobufs_unlock;
+	object = hlist_entry(cookie->backing_objects.first,
+			     struct fscache_object, cookie_link);
+
+	__fscache_use_cookie(cookie);
+	atomic_inc(&object->n_reads);
+	__set_bit(FSCACHE_OP_DEC_READ_CNT, &op->op.flags);
+
+	if (fscache_submit_op(object, &op->op) < 0)
+		goto nobufs_unlock_dec;
+	spin_unlock(&cookie->lock);
+
+	fscache_stat(&fscache_n_retrieval_ops);
+
+	/* we wait for the operation to become active, and then process it
+	 * *here*, in this thread, and not in the thread pool */
+	ret = fscache_wait_for_operation_activation(
+		object, &op->op,
+		__fscache_stat(&fscache_n_retrieval_op_waits),
+		__fscache_stat(&fscache_n_retrievals_object_dead));
+	if (ret < 0)
+		goto error;
+
+	/* ask the cache to honour the operation */
+	ret = object->cache->ops->begin_read_operation(rreq, op);
+
+error:
+	if (ret == -ENOMEM)
+		fscache_stat(&fscache_n_retrievals_nomem);
+	else if (ret == -ERESTARTSYS)
+		fscache_stat(&fscache_n_retrievals_intr);
+	else if (ret == -ENODATA)
+		fscache_stat(&fscache_n_retrievals_nodata);
+	else if (ret < 0)
+		fscache_stat(&fscache_n_retrievals_nobufs);
+	else
+		fscache_stat(&fscache_n_retrievals_ok);
+
+	fscache_put_retrieval(op);
+	_leave(" = %d", ret);
+	return ret;
+
+nobufs_unlock_dec:
+	atomic_dec(&object->n_reads);
+	wake_cookie = __fscache_unuse_cookie(cookie);
+nobufs_unlock:
+	spin_unlock(&cookie->lock);
+	fscache_put_retrieval(op);
+	if (wake_cookie)
+		__fscache_wake_unused_cookie(cookie);
+nobufs:
+	fscache_stat(&fscache_n_retrievals_nobufs);
+	_leave(" = -ENOBUFS");
+	return -ENOBUFS;
+}
+EXPORT_SYMBOL(__fscache_begin_read_operation);
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index a5aa93ece8c5..a7c3ed89a3e0 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -278,5 +278,6 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_cache_stale_objects),
 		   atomic_read(&fscache_n_cache_retired_objects),
 		   atomic_read(&fscache_n_cache_culled_objects));
+	netfs_stats_show(m);
 	return 0;
 }
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 0e4161ce347c..3f177faa0ac2 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -192,6 +192,10 @@ extern void __fscache_update_cookie(struct fscache_cookie *, const void *);
 extern int __fscache_attr_changed(struct fscache_cookie *);
 extern void __fscache_invalidate(struct fscache_cookie *);
 extern void __fscache_wait_on_invalidate(struct fscache_cookie *);
+
+#ifdef FSCACHE_USE_NEW_IO_API
+extern int __fscache_begin_read_operation(struct netfs_read_request *, struct fscache_cookie *);
+#else
 extern int __fscache_read_or_alloc_page(struct fscache_cookie *,
 					struct page *,
 					fscache_rw_complete_t,
@@ -215,10 +219,11 @@ extern void __fscache_uncache_all_inode_pages(struct fscache_cookie *,
 					      struct inode *);
 extern void __fscache_readpages_cancel(struct fscache_cookie *cookie,
 				       struct list_head *pages);
+#endif /* FSCACHE_USE_NEW_IO_API */
+
 extern void __fscache_disable_cookie(struct fscache_cookie *, const void *, bool);
 extern void __fscache_enable_cookie(struct fscache_cookie *, const void *, loff_t,
 				    bool (*)(void *), void *);
-extern int __fscache_begin_read_operation(struct netfs_read_request *, struct fscache_cookie *);
 
 /**
  * fscache_register_netfs - Register a filesystem as desiring caching services
@@ -500,6 +505,26 @@ int fscache_reserve_space(struct fscache_cookie *cookie, loff_t size)
 	return -ENOBUFS;
 }
 
+#ifdef FSCACHE_USE_NEW_IO_API
+
+
+/**
+ * fscache_begin_read_operation - Begin a read operation for the netfs lib
+ * @rreq: The read request being undertaken
+ * @cookie: The cookie representing the cache object
+ */
+static inline
+int fscache_begin_read_operation(struct netfs_read_request *rreq,
+				 struct fscache_cookie *cookie)
+{
+	if (fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie))
+		return __fscache_begin_read_operation(rreq, cookie);
+	else
+		return -ENOBUFS;
+}
+
+#else /* FSCACHE_USE_NEW_IO_API */
+
 /**
  * fscache_read_or_alloc_page - Read a page from the cache or allocate a block
  * in which to store it
@@ -779,6 +804,8 @@ void fscache_uncache_all_inode_pages(struct fscache_cookie *cookie,
 		__fscache_uncache_all_inode_pages(cookie, inode);
 }
 
+#endif /* FSCACHE_USE_NEW_IO_API */
+
 /**
  * fscache_disable_cookie - Disable a cookie
  * @cookie: The cookie representing the cache object
@@ -833,19 +860,4 @@ void fscache_enable_cookie(struct fscache_cookie *cookie,
 					can_enable, data);
 }
 
-/**
- * fscache_begin_read_operation - Begin a read operation for the netfs lib
- * @rreq: The read request being undertaken
- * @cookie: The cookie representing the cache object
- */
-static inline
-int fscache_begin_read_operation(struct netfs_read_request *rreq,
-				 struct fscache_cookie *cookie)
-{
-	if (fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie))
-		return __fscache_begin_read_operation(rreq, cookie);
-	else
-		return -ENOBUFS;
-}
-
 #endif /* _LINUX_FSCACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
