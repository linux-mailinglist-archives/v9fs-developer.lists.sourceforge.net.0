Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E30A71C419B
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:13:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVeeZ-0007YS-OB; Mon, 04 May 2020 17:13:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVeeZ-0007YE-CA
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TD8IvGU/cs1ejkxvD4Als159+boOBcHJ/ANKfYOUjVo=; b=iY2L7aG5vgf+HO1Abu5Uqa5cMk
 bA+k+ohlByohG0E3JONmJtX9HPBkGWUNvA+WnjXw+96sBcd8Ox3+BUpWNMRIfr8OYqmKcuii5kF05
 OlHIay1bN3q9tNthFgiwotvL+vWA6qoNgERGun65F8CoqPtUvVqWHSk5AZCrCAgVcRM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TD8IvGU/cs1ejkxvD4Als159+boOBcHJ/ANKfYOUjVo=; b=GqCeIT4La3NHxGnbXph2INRofq
 CRgXpGno+z7WsZbBaHUlNruANzoL/BMp2JTDsD1tVzTt1VhcagCyorE627nUKIgaZZaZ5929sx1IC
 dni4+PSw3FQ9wSaPCpN3f6sIV5X899W6Fj2Wjdmmgt8SI/0FYkpzCMnevhIaSlr4Tbo4=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVeeX-007A2k-R0
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612387;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TD8IvGU/cs1ejkxvD4Als159+boOBcHJ/ANKfYOUjVo=;
 b=Yhjz5V9LO2cdKb3AQFNCSQvvBQE8DSjxDBmdS0K+XNsDWakIkjWuBYgCN1mEKjRe/LJoG+
 Zxh5d6+Hua/SE0DIT+9Wkcnoug8FBn39Ek5fCG7XDunZYRJccwx13pm+AbJ30XEz5sHIB3
 H731KFSUSJItQnZWNLkIykZkkuXclfE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-AOKbFEc9PmWYUEvwg5nZjg-1; Mon, 04 May 2020 13:13:04 -0400
X-MC-Unique: AOKbFEc9PmWYUEvwg5nZjg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30A0B108BD0A;
 Mon,  4 May 2020 17:13:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DD9D160C80;
 Mon,  4 May 2020 17:12:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:12:55 +0100
Message-ID: <158861237502.340223.8393701975417626960.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVeeX-007A2k-R0
Subject: [V9fs-developer] [RFC PATCH 36/61] cachefiles: Implement read and
 write parts of new I/O API
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Implement writing into the cache and reading back from the cache inside
cachefiles using asynchronous direct I/O from the specified iterator.  The
size and position of the request should be aligned to the reported
dio_block_size.

Errors and completion are reported by callback.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c |  208 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 202 insertions(+), 6 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index ddb44ec5a199..42e0d620d778 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -12,30 +12,226 @@
 #include <linux/xattr.h>
 #include "internal.h"
 
+struct cachefiles_kiocb {
+	struct kiocb			iocb;
+	struct fscache_io_request	*req;
+	refcount_t			ki_refcnt;
+};
+
+static inline void cachefiles_put_kiocb(struct cachefiles_kiocb *ki)
+{
+	if (refcount_dec_and_test(&ki->ki_refcnt)) {
+		fscache_put_io_request(ki->req);
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
+	struct fscache_io_request *req = ki->req;
+
+	_enter("%llx,%ld,%ld", req->len, ret, ret2);
+
+	fscache_end_io_operation(req->cookie);
+
+	if (ret < 0) {
+		req->error = ret;
+	} else if (ret != req->len) {
+		req->error = -ENODATA;
+	} else {
+		req->transferred = ret;
+		set_bit(FSCACHE_IO_DATA_FROM_CACHE, &req->flags);
+	}
+	if (req->io_done)
+		req->io_done(req);
+	cachefiles_put_kiocb(ki);
+}
+
 /*
  * Initiate a read from the cache.
  */
-int cachefiles_read(struct fscache_object *object,
+int cachefiles_read(struct fscache_object *obj,
 		    struct fscache_io_request *req,
 		    struct iov_iter *iter)
 {
-	req->error = -ENODATA;
+	struct cachefiles_object *object =
+		container_of(obj, struct cachefiles_object, fscache);
+	struct cachefiles_kiocb *ki;
+	struct file *file = object->backing_file;
+	ssize_t ret = -ENOBUFS;
+
+	_enter("%pD,%li,%llx,%llx/%llx",
+	       file, file_inode(file)->i_ino, req->pos, req->len, i_size_read(file->f_inode));
+
+	ki = kzalloc(sizeof(struct cachefiles_kiocb), GFP_KERNEL);
+	if (!ki)
+		goto presubmission_error;
+
+	refcount_set(&ki->ki_refcnt, 2);
+	ki->iocb.ki_filp	= get_file(file);
+	ki->iocb.ki_pos		= req->pos;
+	ki->iocb.ki_flags	= IOCB_DIRECT;
+	ki->iocb.ki_hint	= ki_hint_validate(file_write_hint(file));
+	ki->iocb.ki_ioprio	= get_current_ioprio();
+	ki->req			= req;
+
+	if (req->io_done)
+		ki->iocb.ki_complete = cachefiles_read_complete;
+
+	ret = rw_verify_area(READ, file, &ki->iocb.ki_pos, iov_iter_count(iter));
+	if (ret < 0)
+		goto presubmission_error_free;
+
+	fscache_get_io_request(req);
+	ret = call_read_iter(file, &ki->iocb, iter);
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
+	fput(file);
+	kfree(ki);
+presubmission_error:
+	req->error = -ENOMEM;
+	if (req->io_done)
+		req->io_done(req);
+	return -ENOMEM;
+}
+
+/*
+ * Handle completion of a write to the cache.
+ */
+static void cachefiles_write_complete(struct kiocb *iocb, long ret, long ret2)
+{
+	struct cachefiles_kiocb *ki = container_of(iocb, struct cachefiles_kiocb, iocb);
+	struct fscache_io_request *req = ki->req;
+	struct inode *inode = file_inode(ki->iocb.ki_filp);
+
+	_enter("%llx,%ld,%ld", req->len, ret, ret2);
+
+	/* Tell lockdep we inherited freeze protection from submission thread */
+	__sb_writers_acquired(inode->i_sb, SB_FREEZE_WRITE);
+	__sb_end_write(inode->i_sb, SB_FREEZE_WRITE);
+
+	fscache_end_io_operation(req->cookie);
+
+	if (ret < 0)
+		req->error = ret;
+	else if (ret != req->len)
+		req->error = -ENOBUFS;
+	else
+		cachefiles_mark_content_map(req);
 	if (req->io_done)
 		req->io_done(req);
-	return -ENODATA;
+	cachefiles_put_kiocb(ki);
 }
 
 /*
  * Initiate a write to the cache.
  */
-int cachefiles_write(struct fscache_object *object,
+int cachefiles_write(struct fscache_object *obj,
 		     struct fscache_io_request *req,
 		     struct iov_iter *iter)
 {
-	req->error = -ENOBUFS;
+	struct cachefiles_object *object =
+		container_of(obj, struct cachefiles_object, fscache);
+	struct cachefiles_kiocb *ki;
+	struct inode *inode;
+	struct file *file = object->backing_file;
+	ssize_t ret = -ENOBUFS;
+
+	_enter("%pD,%li,%llx,%llx/%llx",
+	       file, file_inode(file)->i_ino, req->pos, req->len, i_size_read(file->f_inode));
+
+	ki = kzalloc(sizeof(struct cachefiles_kiocb), GFP_KERNEL);
+	if (!ki)
+		goto presubmission_error;
+
+	refcount_set(&ki->ki_refcnt, 2);
+	ki->iocb.ki_filp	= get_file(file);
+	ki->iocb.ki_pos		= req->pos;
+	ki->iocb.ki_flags	= IOCB_DIRECT | IOCB_WRITE;
+	ki->iocb.ki_hint	= ki_hint_validate(file_write_hint(file));
+	ki->iocb.ki_ioprio	= get_current_ioprio();
+	ki->req			= req;
+
+	if (req->io_done)
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
+	__sb_start_write(inode->i_sb, SB_FREEZE_WRITE, true);
+	__sb_writers_release(inode->i_sb, SB_FREEZE_WRITE);
+
+	fscache_get_io_request(req);
+	ret = call_write_iter(file, &ki->iocb, iter);
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
+	fput(file);
+	kfree(ki);
+presubmission_error:
+	req->error = -ENOMEM;
 	if (req->io_done)
 		req->io_done(req);
-	return -ENOBUFS;
+	return -ENOMEM;
 }
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
