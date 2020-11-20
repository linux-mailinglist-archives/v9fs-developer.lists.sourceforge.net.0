Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E482BADA3
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:22:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8Ef-0005tG-0e; Fri, 20 Nov 2020 15:22:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg8BC-00055H-1D
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DIH82B+OqLbMPJvRX8tjZz2MV00FbYSWcqnvzZC7Qp4=; b=eE+qjXEvK9hMf3s43PCnbh2Ths
 Ra6wJd/D4sLrpGjjVA2tKyvrQdeXkdlzZ0PrcA3MG6dhZcisFuQrxSpZHFRyWqEQfJIRdLND8ocxo
 Y+O7q55UpyfMnycLtYZr0iiPFoKb5fRUquiMPKVBk6uPvJBs8ufFITh6BDNZWSyIlI58=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DIH82B+OqLbMPJvRX8tjZz2MV00FbYSWcqnvzZC7Qp4=; b=ZI9dq2ZXPS4mVR3CK0hka7wSYn
 /uUhIMA/OemzmqBrgIr7UP9IM2kNHA+v7Rw0vzSQ74Lzkvyk5zrCdMRyOu2PubBbjmV3za8KeNAEx
 VRaPvAAosxuKPpU4wLK3dPRBBFDAtsI/SGHOpeAffhXKfKhZjgYmLo/xjRD5U1BD1Rv0=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg8Au-00Adlh-NX
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:18:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DIH82B+OqLbMPJvRX8tjZz2MV00FbYSWcqnvzZC7Qp4=;
 b=QBLm8ntANiQXQrUaFSq89GbwSYOeRT01PixBiCONie4TL+Tdren3CsHF/kQfEdXQSVh3sM
 FNxdgsZqfPGUcRHTxS0+mQufR46J6eXRK53nPnZAmeNK2rJLFteTdWbbCzyPUjdYA6iv9g
 vC+NEa8+M8iy9TR1EjJrritjoUse49U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-HTxR_wa9ORu20I9lr5jC9w-1; Fri, 20 Nov 2020 10:17:57 -0500
X-MC-Unique: HTxR_wa9ORu20I9lr5jC9w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC226800FF7;
 Fri, 20 Nov 2020 15:17:54 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10E2A5C22A;
 Fri, 20 Nov 2020 15:17:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:17:44 +0000
Message-ID: <160588546422.3465195.1546354372589291098.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg8Au-00Adlh-NX
Subject: [V9fs-developer] [RFC PATCH 70/76] afs: Use the
 fscache_write_begin() helper
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

Make AFS use the new fscache_write_begin() helper to do the pre-reading
required before the write.  If successful, the helper returns with the
required page filled in and locked.  It may read more than just one page,
expanding the read to meet cache granularity requirements as necessary.

Note: A more advanced version of this could be made that does
generic_perform_write() for a whole cache granule.  This would make it
easier to avoid doing the download/read for the data to be overwritten.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/file.c     |   11 +++++
 fs/afs/internal.h |    1 
 fs/afs/write.c    |  108 ++++++-----------------------------------------------
 3 files changed, 23 insertions(+), 97 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 84a222587ca3..21c0ea627bd4 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -368,15 +368,24 @@ static int afs_begin_cache_operation(struct netfs_read_request *rreq)
 				       FSCACHE_WANT_PARAMS);
 }
 
+static int afs_check_write_begin(struct file *file, loff_t pos, unsigned len,
+				 struct page *page, void **_fsdata)
+{
+	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
+
+	return test_bit(AFS_VNODE_DELETED, &vnode->flags) ? -ESTALE : 0;
+}
+
 static void afs_priv_cleanup(struct address_space *mapping, void *netfs_priv)
 {
 	key_put(netfs_priv);
 }
 
-static const struct netfs_read_request_ops afs_req_ops = {
+const struct netfs_read_request_ops afs_req_ops = {
 	.init_rreq		= afs_init_rreq,
 	.is_cache_enabled	= afs_is_cache_enabled,
 	.begin_cache_operation	= afs_begin_cache_operation,
+	.check_write_begin	= afs_check_write_begin,
 	.issue_op		= afs_req_issue_op,
 	.cleanup		= afs_priv_cleanup,
 };
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 1f7caa560c5c..7a76bedd19d9 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -1036,6 +1036,7 @@ extern void afs_dynroot_depopulate(struct super_block *);
 extern const struct address_space_operations afs_fs_aops;
 extern const struct inode_operations afs_file_inode_operations;
 extern const struct file_operations afs_file_operations;
+extern const struct netfs_read_request_ops afs_req_ops;
 
 extern int afs_cache_wb_key(struct afs_vnode *, struct afs_file *);
 extern void afs_put_wb_key(struct afs_wb_key *);
diff --git a/fs/afs/write.c b/fs/afs/write.c
index e672833c99bc..b2e03de09c24 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -11,6 +11,8 @@
 #include <linux/pagemap.h>
 #include <linux/writeback.h>
 #include <linux/pagevec.h>
+#include <linux/netfs.h>
+#include <linux/fscache.h>
 #include "internal.h"
 
 /*
@@ -22,68 +24,6 @@ int afs_set_page_dirty(struct page *page)
 	return __set_page_dirty_nobuffers(page);
 }
 
-/*
- * Handle completion of a read operation to fill a page.
- */
-static void afs_fill_hole(struct afs_read *req)
-{
-	if (iov_iter_count(req->iter) > 0)
-		/* The read was short - clear the excess buffer. */
-		iov_iter_zero(iov_iter_count(req->iter), req->iter);
-}
-
-/*
- * partly or wholly fill a page that's under preparation for writing
- */
-static int afs_fill_page(struct file *file,
-			 loff_t pos, unsigned int len, struct page *page)
-{
-	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
-	struct afs_read *req;
-	size_t p;
-	void *data;
-	int ret;
-
-	_enter(",,%llu", (unsigned long long)pos);
-
-	if (pos >= vnode->vfs_inode.i_size) {
-		p = pos & ~PAGE_MASK;
-		ASSERTCMP(p + len, <=, PAGE_SIZE);
-		data = kmap(page);
-		memset(data + p, 0, len);
-		kunmap(page);
-		return 0;
-	}
-
-	req = kzalloc(sizeof(struct afs_read), GFP_KERNEL);
-	if (!req)
-		return -ENOMEM;
-
-	refcount_set(&req->usage, 1);
-	req->vnode	= vnode;
-	req->done	= afs_fill_hole;
-	req->key	= key_get(afs_file_key(file));
-	req->pos	= pos;
-	req->len	= len;
-	req->nr_pages	= 1;
-	req->iter	= &req->def_iter;
-	iov_iter_xarray(&req->def_iter, READ, &file->f_mapping->i_pages, pos, len);
-
-	ret = afs_fetch_data(vnode, req);
-	afs_put_read(req);
-	if (ret < 0) {
-		if (ret == -ENOENT) {
-			_debug("got NOENT from server"
-			       " - marking file deleted and stale");
-			set_bit(AFS_VNODE_DELETED, &vnode->flags);
-			ret = -ESTALE;
-		}
-	}
-
-	_leave(" = %d", ret);
-	return ret;
-}
-
 /*
  * prepare to perform part of a write to a page
  */
@@ -102,24 +42,14 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 	_enter("{%llx:%llu},%llx,%x",
 	       vnode->fid.vid, vnode->fid.vnode, pos, len);
 
-	page = grab_cache_page_write_begin(mapping, pos / PAGE_SIZE, flags);
-	if (!page)
-		return -ENOMEM;
-
-	if (!PageUptodate(page) && len != PAGE_SIZE) {
-		ret = afs_fill_page(file, pos & PAGE_MASK, PAGE_SIZE, page);
-		if (ret < 0) {
-			unlock_page(page);
-			put_page(page);
-			_leave(" = %d [prep]", ret);
-			return ret;
-		}
-		SetPageUptodate(page);
-	}
-
-#ifdef CONFIG_AFS_FSCACHE
-	wait_on_page_fscache(page);
-#endif
+	/* Prefetch area to be written into the cache if we're caching this
+	 * file.  We need to do this before we get a lock on the page in case
+	 * there's more than one writer competing for the same cache block.
+	 */
+	ret = netfs_write_begin(file, mapping, pos, len, flags, &page, fsdata,
+				&afs_req_ops, NULL);
+	if (ret < 0)
+		return ret;
 
 	index = page->index;
 	from = pos - index * PAGE_SIZE;
@@ -184,7 +114,6 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 	unsigned int f, from = pos & (thp_size(page) - 1);
 	unsigned int t, to = from + copied;
 	loff_t i_size, maybe_i_size;
-	int ret = 0;
 
 	_enter("{%llx:%llu},{%lx}",
 	       vnode->fid.vid, vnode->fid.vnode, page->index);
@@ -203,19 +132,7 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 		write_sequnlock(&vnode->cb_lock);
 	}
 
-	if (!PageUptodate(page)) {
-		if (copied < len) {
-			/* Try and load any missing data from the server.  The
-			 * unmarshalling routine will take care of clearing any
-			 * bits that are beyond the EOF.
-			 */
-			ret = afs_fill_page(file, pos + copied,
-					    len - copied, page);
-			if (ret < 0)
-				goto out;
-		}
-		SetPageUptodate(page);
-	}
+	ASSERT(PageUptodate(page));
 
 	if (PagePrivate(page)) {
 		priv = page_private(page);
@@ -236,12 +153,11 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 
 	if (set_page_dirty(page))
 		_debug("dirtied %lx", page->index);
-	ret = copied;
 
 out:
 	unlock_page(page);
 	put_page(page);
-	return ret;
+	return copied;
 }
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
