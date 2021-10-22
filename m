Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2D7437E0B
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:09:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzvJ-0004kZ-FF; Fri, 22 Oct 2021 19:09:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdzvH-0004kQ-6G
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XM5EE0RZI5OcwVRow98xxBtZ+ysMAYBhb444sC2lzEI=; b=B57vagYs0uSbtytLw3MEZb3BGY
 fQMRcrD8CYMYu1xrBH1QMDZTYPZ8O4l7YB9Fc+NvJD8SbYzxz2Am8m2tpCUOEautf3Qt0H41Qoy45
 3gDcIeUHo/R7s1IXaOCetuUkNOlsg+PrviGlQnkfrlhMJk0dTpDjEMjL/pIUps3vMPqw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XM5EE0RZI5OcwVRow98xxBtZ+ysMAYBhb444sC2lzEI=; b=KxNi0LbNBrlrViHjmZtxjs7EUz
 zXIJTYY6VStxxlLPvx73l0KaI7RjxPzWARn7uUiNQQeT4qDKN+68S7ibV/q+y/AygQwYuuqrNFu7e
 +hvyzyx+1jutGM4kINkMeCiarhQxtuigQaZC67uMqtSeNabGid2HfR9LtoRAAYwREWmE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzvG-00CI1A-Fj
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XM5EE0RZI5OcwVRow98xxBtZ+ysMAYBhb444sC2lzEI=;
 b=eCxM6M8TFOppSjq+qnFEXlMeoYFKwlRReBWFTa1lI5vDb/TOmBoFQB0d0REesAwR73DCXR
 goKr97/A7FHJK9ZHSno6i18vfZLENBoDl4BgRzfKnkwYq2Sl+qzBWQK3Sovmn2kBLg/Vz+
 umDXQpe/LJC8YRlmkH9W9zK3dsudFoc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-n6xwIIqIPwyM5q4I5tHjpw-1; Fri, 22 Oct 2021 15:09:37 -0400
X-MC-Unique: n6xwIIqIPwyM5q4I5tHjpw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 036C21006AA3;
 Fri, 22 Oct 2021 19:09:35 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8C6CE1346F;
 Fri, 22 Oct 2021 19:09:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:09:26 +0100
Message-ID: <163492976671.1038219.17287942996800222171.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Don't send a truncation RPC to the server if we're only
 shortening
 data that's in the pagecache and is beyond the server's EOF. Also don't
 automatically
 force writeback on setattr, but do wait to store RPCs that are in the region
 to be removed on a shortening truncation. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzvG-00CI1A-Fj
Subject: [V9fs-developer] [PATCH v2 46/53] afs: Skip truncation on the
 server of data we haven't written yet
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
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Jeff Layton <jlayton@kernel.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Don't send a truncation RPC to the server if we're only shortening data
that's in the pagecache and is beyond the server's EOF.

Also don't automatically force writeback on setattr, but do wait to store
RPCs that are in the region to be removed on a shortening truncation.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/inode.c |   45 +++++++++++++++++++++++++++++++++++----------
 1 file changed, 35 insertions(+), 10 deletions(-)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index c4af4fda37dd..4c66a2b86add 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -848,42 +848,67 @@ static const struct afs_operation_ops afs_setattr_operation = {
 int afs_setattr(struct user_namespace *mnt_userns, struct dentry *dentry,
 		struct iattr *attr)
 {
+	const unsigned int supported =
+		ATTR_SIZE | ATTR_MODE | ATTR_UID | ATTR_GID |
+		ATTR_MTIME | ATTR_MTIME_SET | ATTR_TIMES_SET | ATTR_TOUCH;
 	struct afs_operation *op;
 	struct afs_vnode *vnode = AFS_FS_I(d_inode(dentry));
+	struct inode *inode = &vnode->vfs_inode;
+	loff_t i_size;
 	int ret;
 
 	_enter("{%llx:%llu},{n=%pd},%x",
 	       vnode->fid.vid, vnode->fid.vnode, dentry,
 	       attr->ia_valid);
 
-	if (!(attr->ia_valid & (ATTR_SIZE | ATTR_MODE | ATTR_UID | ATTR_GID |
-				ATTR_MTIME | ATTR_MTIME_SET | ATTR_TIMES_SET |
-				ATTR_TOUCH))) {
+	if (!(attr->ia_valid & supported)) {
 		_leave(" = 0 [unsupported]");
 		return 0;
 	}
 
+	i_size = i_size_read(inode);
 	if (attr->ia_valid & ATTR_SIZE) {
-		if (!S_ISREG(vnode->vfs_inode.i_mode))
+		if (!S_ISREG(inode->i_mode))
 			return -EISDIR;
 
-		ret = inode_newsize_ok(&vnode->vfs_inode, attr->ia_size);
+		ret = inode_newsize_ok(inode, attr->ia_size);
 		if (ret)
 			return ret;
 
-		if (attr->ia_size == i_size_read(&vnode->vfs_inode))
+		if (attr->ia_size == i_size)
 			attr->ia_valid &= ~ATTR_SIZE;
 	}
 
 	fscache_use_cookie(afs_vnode_cache(vnode), true);
 
-	/* flush any dirty data outstanding on a regular file */
-	if (S_ISREG(vnode->vfs_inode.i_mode))
-		filemap_write_and_wait(vnode->vfs_inode.i_mapping);
-
 	/* Prevent any new writebacks from starting whilst we do this. */
 	down_write(&vnode->validate_lock);
 
+	if ((attr->ia_valid & ATTR_SIZE) && S_ISREG(inode->i_mode)) {
+		loff_t size = attr->ia_size;
+
+		/* Wait for any outstanding writes to the server to complete */
+		loff_t from = min(size, i_size);
+		loff_t to = max(size, i_size);
+		ret = filemap_fdatawait_range(inode->i_mapping, from, to);
+		if (ret < 0)
+			goto out_unlock;
+
+		/* Don't talk to the server if we're just shortening in-memory
+		 * writes that haven't gone to the server yet.
+		 */
+		if (!(attr->ia_valid & (supported & ~ATTR_SIZE & ~ATTR_MTIME)) &&
+		    attr->ia_size < i_size &&
+		    attr->ia_size > vnode->status.size) {
+			truncate_pagecache(inode, attr->ia_size);
+			fscache_resize_cookie(afs_vnode_cache(vnode),
+					      attr->ia_size);
+			i_size_write(inode, attr->ia_size);
+			ret = 0;
+			goto out_unlock;
+		}
+	}
+
 	op = afs_alloc_operation(((attr->ia_valid & ATTR_FILE) ?
 				  afs_file_key(attr->ia_file) : NULL),
 				 vnode->volume);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
