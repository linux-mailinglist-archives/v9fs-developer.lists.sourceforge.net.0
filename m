Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B33FB4321C6
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:05:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUCY-0007eT-EY; Mon, 18 Oct 2021 15:05:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcUCW-0007e6-O1
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=awbJf1qi+AjflO5r5/tdZDW0h34mY/1A+ED+H3+96GA=; b=MIu4diJrEl29rgPKSQC0OFi8Fm
 5QUynRyz5uK/WFZ+DU+zyAf0ZMlmc1n1qP/K5EE9q6oaOS15n62jw/9AiWjHgo6iWiPHJiwd3r6Ja
 OHNnGCLjm9YyqDI3cE1MwCeq5uUhz8/RgPMMQoY/2aWpHWqZ2IdcvedlzU4AimTrOHZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=awbJf1qi+AjflO5r5/tdZDW0h34mY/1A+ED+H3+96GA=; b=G5rc8tjrmR9MLc6hWaL2JsbEVw
 fLd9nDqrTLPLMJYUEVx4ILVjc2RtVKJopTob3uLHHqOF3vkwg8ZIn/VFZk+TFOHy8gDxMf14W0Iy+
 lH/WQU321qtxiWX79yjiHdSmtSS5x4QzgqRG8l684miU4FhafAP9EYIhsYmKl2u8fdds=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUCV-0005Rn-KY
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569513;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=awbJf1qi+AjflO5r5/tdZDW0h34mY/1A+ED+H3+96GA=;
 b=DkA7YSoEHvwUCFQCZZIyFvH0fl/lEQAqDF4o3ZGPWINlcMky5nBuRecvHxnfY2Z7+luju1
 jFkUzbwW1squTapEIZZoG8k69/ZiJS7Icu1o9NFMNbqNDOkCWs2qhVXVxlORgYwFk/qLfH
 F51nIzbLEB0ARNc6iExEN4uFaJ2h+Ko=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-443-1YjU_XZfMoSeu8aXA63h0w-1; Mon, 18 Oct 2021 11:05:10 -0400
X-MC-Unique: 1YjU_XZfMoSeu8aXA63h0w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D0BA1018723;
 Mon, 18 Oct 2021 15:05:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F3C95D6D7;
 Mon, 18 Oct 2021 15:04:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:04:56 +0100
Message-ID: <163456949634.2614702.977164796285038310.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add synchronous O_DIRECT read support to AFS (no AIO yet).
 It can theoretically handle reads up to the maximum size describable by loff_t
 - and given an iterator with sufficiently capacity to handle t [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUCV-0005Rn-KY
Subject: [V9fs-developer] [PATCH 54/67] afs: Add O_DIRECT read support
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add synchronous O_DIRECT read support to AFS (no AIO yet).  It can
theoretically handle reads up to the maximum size describable by loff_t -
and given an iterator with sufficiently capacity to handle that and given
support on the server.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/file.c      |   59 +++++++++++++++++++++++++++++++++++++++++++
 fs/afs/fsclient.c  |   18 +++++++++----
 fs/afs/internal.h  |    2 +
 fs/afs/write.c     |   72 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 fs/afs/yfsclient.c |   12 ++++++---
 5 files changed, 153 insertions(+), 10 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 4af7ef607cf6..5db1e7d29ad5 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -28,6 +28,7 @@ static ssize_t afs_file_read_iter(struct kiocb *iocb, struct iov_iter *iter);
 static void afs_vm_open(struct vm_area_struct *area);
 static void afs_vm_close(struct vm_area_struct *area);
 static vm_fault_t afs_vm_map_pages(struct vm_fault *vmf, pgoff_t start_pgoff, pgoff_t end_pgoff);
+static ssize_t afs_direct_IO(struct kiocb *iocb, struct iov_iter *iter);
 
 const struct file_operations afs_file_operations = {
 	.open		= afs_open,
@@ -56,6 +57,7 @@ const struct address_space_operations afs_fs_aops = {
 	.launder_page	= afs_launder_page,
 	.releasepage	= afs_releasepage,
 	.invalidatepage	= afs_invalidatepage,
+	.direct_IO	= afs_direct_IO,
 	.write_begin	= afs_write_begin,
 	.write_end	= afs_write_end,
 	.writepage	= afs_writepage,
@@ -601,3 +603,60 @@ static ssize_t afs_file_read_iter(struct kiocb *iocb, struct iov_iter *iter)
 
 	return generic_file_read_iter(iocb, iter);
 }
+
+/*
+ * Direct file read operation for an AFS file.
+ *
+ * TODO: To support AIO, the pages in the iterator have to be copied and
+ * refs taken on them.  Then -EIOCBQUEUED needs to be returned.
+ * iocb->ki_complete must then be called upon completion of the operation.
+ */
+static ssize_t afs_file_direct_read(struct kiocb *iocb, struct iov_iter *iter)
+{
+	struct file *file = iocb->ki_filp;
+	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
+	struct afs_read *req;
+	ssize_t ret, transferred;
+
+	_enter("%llx,%zx", iocb->ki_pos, iov_iter_count(iter));
+
+	req = afs_alloc_read(GFP_KERNEL);
+	if (!req)
+		return -ENOMEM;
+
+	req->vnode	= vnode;
+	req->key	= key_get(afs_file_key(file));
+	req->pos	= iocb->ki_pos;
+	req->len	= iov_iter_count(iter);
+	req->iter	= iter;
+
+	task_io_account_read(req->len);
+
+	// TODO nfs_start_io_direct(inode);
+	ret = afs_fetch_data(vnode, req);
+	if (ret == 0)
+		transferred = req->actual_len;
+	afs_put_read(req);
+
+	// TODO nfs_end_io_direct(inode);
+
+	if (ret == 0)
+		ret = transferred;
+
+	BUG_ON(ret == -EIOCBQUEUED); // TODO
+	//if (iocb->ki_complete)
+	//	iocb->ki_complete(iocb, ret, 0); // only if ret == -EIOCBQUEUED
+
+	_leave(" = %zu", ret);
+	return ret;
+}
+
+/*
+ * Do direct I/O.
+ */
+static ssize_t afs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
+{
+	if (iov_iter_rw(iter) == READ)
+		return afs_file_direct_read(iocb, iter);
+	return afs_file_direct_write(iocb, iter);
+}
diff --git a/fs/afs/fsclient.c b/fs/afs/fsclient.c
index 4943413d9c5f..290d4d391a0e 100644
--- a/fs/afs/fsclient.c
+++ b/fs/afs/fsclient.c
@@ -439,7 +439,7 @@ static void afs_fs_fetch_data64(struct afs_operation *op)
 	bp[3] = htonl(vp->fid.unique);
 	bp[4] = htonl(upper_32_bits(req->pos));
 	bp[5] = htonl(lower_32_bits(req->pos));
-	bp[6] = 0;
+	bp[6] = htonl(upper_32_bits(req->len));
 	bp[7] = htonl(lower_32_bits(req->len));
 
 	trace_afs_make_fs_call(call, &vp->fid);
@@ -1057,6 +1057,7 @@ static void afs_fs_store_data64(struct afs_operation *op)
 	struct afs_vnode_param *vp = &op->file[0];
 	struct afs_call *call;
 	__be32 *bp;
+	u32 mask = 0;
 
 	_enter(",%x,{%llx:%llu},,",
 	       key_serial(op->key), vp->fid.vid, vp->fid.vnode);
@@ -1069,6 +1070,9 @@ static void afs_fs_store_data64(struct afs_operation *op)
 
 	call->write_iter = op->store.write_iter;
 
+	if (op->flags & AFS_OPERATION_SET_MTIME)
+		mask |= AFS_SET_MTIME;
+
 	/* marshall the parameters */
 	bp = call->request;
 	*bp++ = htonl(FSSTOREDATA64);
@@ -1076,8 +1080,8 @@ static void afs_fs_store_data64(struct afs_operation *op)
 	*bp++ = htonl(vp->fid.vnode);
 	*bp++ = htonl(vp->fid.unique);
 
-	*bp++ = htonl(AFS_SET_MTIME); /* mask */
-	*bp++ = htonl(op->mtime.tv_sec); /* mtime */
+	*bp++ = htonl(mask);
+	*bp++ = htonl(op->mtime.tv_sec);
 	*bp++ = 0; /* owner */
 	*bp++ = 0; /* group */
 	*bp++ = 0; /* unix mode */
@@ -1102,6 +1106,7 @@ void afs_fs_store_data(struct afs_operation *op)
 	struct afs_vnode_param *vp = &op->file[0];
 	struct afs_call *call;
 	__be32 *bp;
+	u32 mask = 0;
 
 	_enter(",%x,{%llx:%llu},,",
 	       key_serial(op->key), vp->fid.vid, vp->fid.vnode);
@@ -1122,6 +1127,9 @@ void afs_fs_store_data(struct afs_operation *op)
 
 	call->write_iter = op->store.write_iter;
 
+	if (op->flags & AFS_OPERATION_SET_MTIME)
+		mask |= AFS_SET_MTIME;
+
 	/* marshall the parameters */
 	bp = call->request;
 	*bp++ = htonl(FSSTOREDATA);
@@ -1129,8 +1137,8 @@ void afs_fs_store_data(struct afs_operation *op)
 	*bp++ = htonl(vp->fid.vnode);
 	*bp++ = htonl(vp->fid.unique);
 
-	*bp++ = htonl(AFS_SET_MTIME); /* mask */
-	*bp++ = htonl(op->mtime.tv_sec); /* mtime */
+	*bp++ = htonl(mask);
+	*bp++ = htonl(op->mtime.tv_sec);
 	*bp++ = 0; /* owner */
 	*bp++ = 0; /* group */
 	*bp++ = 0; /* unix mode */
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 07d34291bf4f..d3fb9b3845bc 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -863,6 +863,7 @@ struct afs_operation {
 #define AFS_OPERATION_TRIED_ALL		0x0400	/* Set if we've tried all the fileservers */
 #define AFS_OPERATION_RETRY_SERVER	0x0800	/* Set if we should retry the current server */
 #define AFS_OPERATION_DIR_CONFLICT	0x1000	/* Set if we detected a 3rd-party dir change */
+#define AFS_OPERATION_SET_MTIME		0x2000	/* Set if we should try to store the mtime */
 };
 
 /*
@@ -1538,6 +1539,7 @@ extern int afs_fsync(struct file *, loff_t, loff_t, int);
 extern vm_fault_t afs_page_mkwrite(struct vm_fault *vmf);
 extern void afs_prune_wb_keys(struct afs_vnode *);
 extern int afs_launder_page(struct page *);
+extern ssize_t afs_file_direct_write(struct kiocb *, struct iov_iter *);
 
 /*
  * xattr.c
diff --git a/fs/afs/write.c b/fs/afs/write.c
index a540da6ad423..281f0e93e2c6 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -406,7 +406,7 @@ static int afs_store_data(struct afs_vnode *vnode, struct iov_iter *iter, loff_t
 	op->store.i_size = max(pos + size, i_size);
 	op->store.laundering = laundering;
 	op->mtime = vnode->vfs_inode.i_mtime;
-	op->flags |= AFS_OPERATION_UNINTR;
+	op->flags |= AFS_OPERATION_SET_MTIME | AFS_OPERATION_UNINTR;
 	op->ops = &afs_store_data_operation;
 
 try_next_key:
@@ -1039,3 +1039,73 @@ static void afs_write_to_cache(struct afs_vnode *vnode,
 			       vnode->vfs_inode.i_mapping, start, len, i_size,
 			       afs_write_to_cache_done, vnode);
 }
+
+static void afs_dio_store_data_success(struct afs_operation *op)
+{
+	struct afs_vnode *vnode = op->file[0].vnode;
+
+	op->ctime = op->file[0].scb.status.mtime_client;
+	afs_vnode_commit_status(op, &op->file[0]);
+	if (op->error == 0) {
+		afs_stat_v(vnode, n_stores);
+		atomic_long_add(op->store.size, &afs_v2net(vnode)->n_store_bytes);
+	}
+}
+
+static const struct afs_operation_ops afs_dio_store_data_operation = {
+	.issue_afs_rpc	= afs_fs_store_data,
+	.issue_yfs_rpc	= yfs_fs_store_data,
+	.success	= afs_dio_store_data_success,
+};
+
+/*
+ * Direct file write operation for an AFS file.
+ *
+ * TODO: To support AIO, the pages in the iterator have to be copied and
+ * refs taken on them.  Then -EIOCBQUEUED needs to be returned.
+ * iocb->ki_complete must then be called upon completion of the operation.
+ */
+ssize_t afs_file_direct_write(struct kiocb *iocb, struct iov_iter *iter)
+{
+	struct file *file = iocb->ki_filp;
+	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
+	struct afs_operation *op;
+	loff_t size = iov_iter_count(iter), i_size;
+	ssize_t ret;
+
+	_enter("%s{%llx:%llu.%u},%llx,%llx",
+	       vnode->volume->name,
+	       vnode->fid.vid,
+	       vnode->fid.vnode,
+	       vnode->fid.unique,
+	       size, iocb->ki_pos);
+
+	op = afs_alloc_operation(afs_file_key(file), vnode->volume);
+	if (IS_ERR(op))
+		return -ENOMEM;
+
+	i_size = i_size_read(&vnode->vfs_inode);
+
+	afs_op_set_vnode(op, 0, vnode);
+	op->file[0].dv_delta	= 1;
+	op->file[0].set_size	= true;
+	op->store.write_iter	= iter;
+	op->store.pos		= iocb->ki_pos;
+	op->store.size		= size;
+	op->store.i_size	= max(iocb->ki_pos + size, i_size);
+	op->ops			= &afs_dio_store_data_operation;
+
+	//if (!is_sync_kiocb(iocb)) {
+
+	ret = afs_do_sync_operation(op);
+	if (ret == 0)
+		ret = size;
+
+	afs_invalidate_cache(vnode, FSCACHE_INVAL_DIO_WRITE);
+
+	//if (iocb->ki_complete)
+	//	iocb->ki_complete(iocb, ret, 0); // only if ret == -EIOCBQUEUED
+
+	_leave(" = %zd", ret);
+	return ret;
+}
diff --git a/fs/afs/yfsclient.c b/fs/afs/yfsclient.c
index 2b35cba8ad62..a8c4e230002d 100644
--- a/fs/afs/yfsclient.c
+++ b/fs/afs/yfsclient.c
@@ -95,12 +95,16 @@ static __be32 *xdr_encode_YFSStoreStatus_mode(__be32 *bp, mode_t mode)
 	return bp + xdr_size(x);
 }
 
-static __be32 *xdr_encode_YFSStoreStatus_mtime(__be32 *bp, const struct timespec64 *t)
+static __be32 *xdr_encode_YFSStoreStatus_mtime(__be32 *bp, struct afs_operation *op)
 {
 	struct yfs_xdr_YFSStoreStatus *x = (void *)bp;
-	s64 mtime = linux_to_yfs_time(t);
+	s64 mtime = linux_to_yfs_time(&op->mtime);
+	u32 mask = 0;
 
-	x->mask		= htonl(AFS_SET_MTIME);
+	if (op->flags & AFS_OPERATION_SET_MTIME)
+		mask |= AFS_SET_MTIME;
+
+	x->mask		= htonl(mask);
 	x->mode		= htonl(0);
 	x->mtime_client	= u64_to_xdr(mtime);
 	x->owner	= u64_to_xdr(0);
@@ -1103,7 +1107,7 @@ void yfs_fs_store_data(struct afs_operation *op)
 	bp = xdr_encode_u32(bp, YFSSTOREDATA64);
 	bp = xdr_encode_u32(bp, 0); /* RPC flags */
 	bp = xdr_encode_YFSFid(bp, &vp->fid);
-	bp = xdr_encode_YFSStoreStatus_mtime(bp, &op->mtime);
+	bp = xdr_encode_YFSStoreStatus_mtime(bp, op);
 	bp = xdr_encode_u64(bp, op->store.pos);
 	bp = xdr_encode_u64(bp, op->store.size);
 	bp = xdr_encode_u64(bp, op->store.i_size);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
