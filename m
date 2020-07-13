Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AAB21DCD6
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:35:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1Q4-0007Id-Ln; Mon, 13 Jul 2020 16:35:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1Q0-0007Hw-HR
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:35:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TD8IvGU/cs1ejkxvD4Als159+boOBcHJ/ANKfYOUjVo=; b=K/XdAk74Xu8yJ1KqDnablkel7Y
 xTZOy2NJ8vsqyppGpQ0Y7RR6U6ChFQKGfs3gLb3CGKuDGXllqQmUjRiE5r46IF11MWX68GQjArfWm
 dSgeJEqNxc7gYAiMWkK+yBfDFGWft/yqc/z4UWspYQGaw+ttE2T2HgLEe8X8IZB5tsq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TD8IvGU/cs1ejkxvD4Als159+boOBcHJ/ANKfYOUjVo=; b=jA+BZXoHTwMXt5FLyUHGsl/BbV
 gocyo4TEbUmhdHw5B/+WLosjUya8FxkAoiVMTnPYdW8shbotlMuyedUKTLTDTRtQyCTajN9ogXkXd
 JX96G2lCjiy/uy4aLoVtM296d4fNq5z5RJgzsMFFHkoM8AFv5c0DY8GDxijVKuO317Ec=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1Pz-00GIQe-5J
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:35:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TD8IvGU/cs1ejkxvD4Als159+boOBcHJ/ANKfYOUjVo=;
 b=g/OPBBD1EeB1ipLIVf+/hGSuLs5DHQQHWgP2Zl3mIpo0L6RIQeAE7ZtclRKdxjH7gLbnsF
 JRtv/fc+TWFxSkLh3lxzj+2ei9xhAoF2S4S8RP6ybjK/JDS2oyIV3ahXn0Xy0V3ET8x7T+
 p797M7N0NzMCjDKePEbROjXRiL84mOw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-kurJ08AJOVSsaNR4BK1wUA-1; Mon, 13 Jul 2020 12:34:53 -0400
X-MC-Unique: kurJ08AJOVSsaNR4BK1wUA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFAB210059BC;
 Mon, 13 Jul 2020 16:34:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 53D275C1D0;
 Mon, 13 Jul 2020 16:34:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:34:45 +0100
Message-ID: <159465808553.1376674.11788737980809596736.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1Pz-00GIQe-5J
Subject: [V9fs-developer] [PATCH 22/32] cachefiles: Implement read and write
 parts of new I/O API
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
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
