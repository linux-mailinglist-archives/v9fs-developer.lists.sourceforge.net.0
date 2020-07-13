Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A65521DD91
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:39:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1UP-000686-3W; Mon, 13 Jul 2020 16:39:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1UN-00067z-W2
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oaCTdM19WMNtk5n7WfsDY0jjk79XuarMYPGTkLXDeKs=; b=irfM9Egy7S+U9QXpqM28qtddGk
 OpMpg1SXmepToNROzAHVLVnnB0wEzlQPeMdnqn1DaNyOH3JCsy/RugFmhF/EGhwPViOK83s36kzij
 soaRGaHswct3VUfH9cnwDraZYHZzAlBwasaXp7RrCDUDOpBokL8xOrIWsv0iLKDXDZuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oaCTdM19WMNtk5n7WfsDY0jjk79XuarMYPGTkLXDeKs=; b=CzsQgBYjwFQNi5qlv/s4nHEMLR
 jrXg8RnJXG/m9yn3Q/+Nmukxkv1hnzkCtU5+aDn28mYmTIfMa9VE0AE5uKhVZIwPj5fF9UiS4s4N0
 uiDHkU7ozUn9iFsBM/7Q57zZazRB0BV+byyvMZrey88kvIdUtS5pgHeqkh/RDOb5NOt4=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1UM-00GImg-Sj
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658369;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oaCTdM19WMNtk5n7WfsDY0jjk79XuarMYPGTkLXDeKs=;
 b=Lhr64cxVu+7H1K8sGBY+rthOWgvr36nRAOvsZPg3Vk5DanoWIqhQ4WVTI38F/42dg7VRc3
 +WFltEwQGBn8QTcthutZTT3AVJFAOH558nCDaMlq822Qcya43+etUbwrtFNtPlozgDZ0RW
 SJkM67+nq+GWuvK8g1Jtck1PAbAG+Iw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-A6iXCXkrPfe5d0m4hJIjuQ-1; Mon, 13 Jul 2020 12:39:27 -0400
X-MC-Unique: A6iXCXkrPfe5d0m4hJIjuQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6DE988015CB;
 Mon, 13 Jul 2020 16:39:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C831660BF3;
 Mon, 13 Jul 2020 16:39:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:39:18 +0100
Message-ID: <159465835897.1377938.1598226019201611820.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
References: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1UM-00GImg-Sj
Subject: [V9fs-developer] [PATCH 12/13] afs: Invoke fscache_resize_cookie()
 when handling ATTR_SIZE for setattr
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

Invoke fscache_resize_cookie() to adjust the size of the backing cache
object when setattr is called with ATTR_SIZE.  This discards any data that
then lies beyond the revised EOF and frees up space.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/inode.c |   24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index eab191b9c01d..baaaa5e55f95 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -815,14 +815,19 @@ void afs_evict_inode(struct inode *inode)
 
 static void afs_setattr_success(struct afs_operation *op)
 {
-	struct inode *inode = &op->file[0].vnode->vfs_inode;
+	struct afs_vnode_param *vp = &op->file[0];
+	struct inode *inode = &vp->vnode->vfs_inode;
 
-	afs_vnode_commit_status(op, &op->file[0]);
+	afs_vnode_commit_status(op, vp);
 	if (op->setattr.attr->ia_valid & ATTR_SIZE) {
 		loff_t i_size = inode->i_size, size = op->setattr.attr->ia_size;
+
 		if (size > i_size)
 			pagecache_isize_extended(inode, i_size, size);
 		truncate_pagecache(inode, size);
+
+		fscache_resize_cookie(afs_vnode_cache(vp->vnode),
+				      vp->scb.status.size);
 	}
 }
 
@@ -864,6 +869,8 @@ int afs_setattr(struct dentry *dentry, struct iattr *attr)
 			attr->ia_valid &= ~ATTR_SIZE;
 	}
 
+	fscache_use_cookie(afs_vnode_cache(vnode), true);
+
 	/* flush any dirty data outstanding on a regular file */
 	if (S_ISREG(vnode->vfs_inode.i_mode))
 		filemap_write_and_wait(vnode->vfs_inode.i_mapping);
@@ -871,8 +878,10 @@ int afs_setattr(struct dentry *dentry, struct iattr *attr)
 	op = afs_alloc_operation(((attr->ia_valid & ATTR_FILE) ?
 				  afs_file_key(attr->ia_file) : NULL),
 				 vnode->volume);
-	if (IS_ERR(op))
-		return PTR_ERR(op);
+	if (IS_ERR(op)) {
+		ret = PTR_ERR(op);
+		goto error_unuse;
+	}
 
 	afs_op_set_vnode(op, 0, vnode);
 	op->setattr.attr = attr;
@@ -885,5 +894,10 @@ int afs_setattr(struct dentry *dentry, struct iattr *attr)
 	op->file[0].update_ctime = 1;
 
 	op->ops = &afs_setattr_operation;
-	return afs_do_sync_operation(op);
+	ret = afs_do_sync_operation(op);
+
+error_unuse:
+	fscache_unuse_cookie(afs_vnode_cache(vnode), NULL, NULL);
+	_leave(" = %d", ret);
+	return ret;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
