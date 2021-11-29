Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 563834619AC
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:37:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhmj-0005uN-VR; Mon, 29 Nov 2021 14:37:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhmh-0005uB-OS
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B5Otm0w8B1AeJPhc/2t/jnQTjEVU5y5eb71fV7VoayI=; b=mujke2ev8onJQZCQvRE6xoOyZI
 G91v+ZZKWEXIp2+hPmdtyLp+7eOLEQiPS6PnUxQVbqKDp7kkh+O5jVSHNTHZiUdW8NKPviHUrgw74
 Q2fm0uTQOMVSQKT9gIRSejd+JYFo0da34N7eBaT4syflcV0rfx9coUCO8Yq3V3VCKh3s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B5Otm0w8B1AeJPhc/2t/jnQTjEVU5y5eb71fV7VoayI=; b=VihyRNzD0Z24JuSgn280uR/2yQ
 PTDduAzpl3s1MS0zndb5jMlaGhUFKnl3ozOXHAkwpRkR5colwT3Go40WW88qkJU/Md8AsYN4Ik3zM
 HJ9ag0T6ctitQQs7itYny/Bypf2TX/GOdd9S4MdwcEjfjKtBT2wCIwm+un0TtVZIlTBk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhmg-00EE0U-Qz
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196648;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B5Otm0w8B1AeJPhc/2t/jnQTjEVU5y5eb71fV7VoayI=;
 b=W0uWG71/N2UDMVvTvCQDtlbi5PeAm0+atzr1vZDGfe8CoZV6Xl+w/uQkoiBNhBu28UqNWS
 HHUvnp6FIBs5wkMiRrOszS+Nd+da9aB6ANgJJ9X53uO7Q+AEMcdhLT8QdlxJyb9KvnVXzL
 ZiifaBNWZslYWPQlGcIC3ksl6isjCJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-159-z389esmoMBeoaws7HC8aAw-1; Mon, 29 Nov 2021 09:37:23 -0500
X-MC-Unique: z389esmoMBeoaws7HC8aAw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B27084B9A1;
 Mon, 29 Nov 2021 14:37:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8D50B60854;
 Mon, 29 Nov 2021 14:37:13 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:37:12 +0000
Message-ID: <163819663275.215744.4781075713714590913.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.1 (-)
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
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhmg-00EE0U-Qz
Subject: [V9fs-developer] [PATCH 59/64] afs: Skip truncation on the server
 of data we haven't written yet
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
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
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
index 8db902405031..5964f8aee090 100644
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
