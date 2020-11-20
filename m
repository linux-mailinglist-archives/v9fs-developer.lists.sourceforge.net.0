Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20F2BAD37
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:14:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg87W-0004Rq-0t; Fri, 20 Nov 2020 15:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg82b-0003Ln-KP
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:09:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dBCoiCN5XVfELQLO7B7yiTCBVdkB/qJdZ/0ff4EAhAw=; b=KP260qTnr9YcJ51xb5kdZ4GK8B
 PSDKUS+3ay9FaJ3kdaJFqKWHjgbrr65DwK3t26SrtQCQXQ9VqEtBJGD0DtEp5OkvH3hvTJr1PI4kQ
 pVrgBeebnUE03aycltNNaQ4QBVOI5RmGh3rGUiV1KHGDrcIzTbkkCN8PSjmi6r5JWqgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dBCoiCN5XVfELQLO7B7yiTCBVdkB/qJdZ/0ff4EAhAw=; b=LzUyKJXWkFQkwoeNJrk92JJ8NP
 B5RjeTAxodShKPUTl2NkM3oShnnqvb5WpqvyfpBh/PXnJqEOKwYFA1PTtQ67Mu5+Gn2W+1ig3mPn7
 AjfrUpX3ZQaNQE4IMWNCneUHwmLVxIjqUacaTqh6w+fC7cof8nfEKmrE4D1jYly3C+MY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg82T-00AcYb-Fo
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:09:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605884963;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dBCoiCN5XVfELQLO7B7yiTCBVdkB/qJdZ/0ff4EAhAw=;
 b=XscdmhwEXbplfQfdbroE+CC6lXq9Q3dKEAd7jTytJqPNcubLoacZi+rqB6JY8F31wRAtsR
 Afg251muQr1IP3GaddpPC8UUGn/gUT3Y8ifDsLpFxot9sV2N6O5Mfz62vTsequLudCVo20
 xNPfH9SkPB6QewkIt8AmvgWdcZ7Zx+s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-kvSitNPpM_uq_PVH6yI1Gg-1; Fri, 20 Nov 2020 10:09:19 -0500
X-MC-Unique: kvSitNPpM_uq_PVH6yI1Gg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97953801B26;
 Fri, 20 Nov 2020 15:09:17 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BC566064B;
 Fri, 20 Nov 2020 15:09:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:09:10 +0000
Message-ID: <160588495077.3465195.15576038355511521763.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg82T-00AcYb-Fo
Subject: [V9fs-developer] [RFC PATCH 31/76] fscache: Allow ->put_super() to
 be used to wait for cache operations
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide a helper to allow ->put_super() to be used to wait for outstanding
cache operations that are pinning inodes.  The helper has a loop that waits
for the first inode that has a non-zero usage and a cookie.  It then calls
evict_inodes() to reduce the list and loops round again until it finds no
more candidate inodes.

Without this, evict_inodes() won't get rid of such operations, and the
"VFS: Busy inodes ..." message will be displayed and the inode abandoned.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/io.c         |   50 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache.h |    2 ++
 2 files changed, 52 insertions(+)

diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 87ffe84c9f27..de9ffc16eb4f 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -180,3 +180,53 @@ int fscache_set_page_dirty(struct page *page, struct fscache_cookie *cookie)
 	return 1;
 }
 EXPORT_SYMBOL(fscache_set_page_dirty);
+
+/**
+ * fscache_put_super - Wait for outstanding ops to complete
+ * @sb: The superblock to wait on
+ * @get_cookie: Function to get the cookie on an inode
+ *
+ * Wait for outstanding cache operations on the inodes of a superblock to
+ * complete as they might be pinning an inode.  This is designed to be called
+ * from ->put_super(), right before the "VFS: Busy inodes" check.
+ */
+void fscache_put_super(struct super_block *sb,
+		       struct fscache_cookie *(*get_cookie)(struct inode *inode))
+{
+	struct fscache_cookie *cookie;
+	struct inode *inode, *p;
+
+	while (!list_empty(&sb->s_inodes)) {
+		/* Find the first inode that we need to wait on */
+		inode = NULL;
+		cookie = NULL;
+		spin_lock(&sb->s_inode_list_lock);
+		list_for_each_entry(p, &sb->s_inodes, i_sb_list) {
+			if (atomic_inc_not_zero(&p->i_count)) {
+				inode = p;
+				cookie = get_cookie(inode);
+				if (!cookie) {
+					iput(inode);
+					inode = NULL;
+					cookie = NULL;
+					continue;
+				}
+				break;
+			}
+		}
+		spin_unlock(&sb->s_inode_list_lock);
+
+		if (inode) {
+			/* n_ops is kept artificially raised to stop wakeups */
+			atomic_dec(&cookie->n_ops);
+			wait_var_event(&cookie->n_ops, atomic_read(&cookie->n_ops) == 0);
+			atomic_inc(&cookie->n_ops);
+			iput(inode);
+		}
+
+		evict_inodes(sb);
+		if (!inode)
+			break;
+	}
+}
+EXPORT_SYMBOL(fscache_put_super);
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index d2fc98a5755a..38a252b06b54 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -204,6 +204,8 @@ extern int __fscache_begin_operation(struct fscache_cookie *, struct fscache_op_
 extern void __fscache_relinquish_cookie(struct fscache_cookie *, bool);
 extern void __fscache_update_cookie(struct fscache_cookie *, const void *, const loff_t *);
 extern void __fscache_invalidate(struct fscache_cookie *, loff_t);
+extern void fscache_put_super(struct super_block *,
+			      struct fscache_cookie *(*get_cookie)(struct inode *));
 
 /**
  * fscache_register_netfs - Register a filesystem as desiring caching services




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
