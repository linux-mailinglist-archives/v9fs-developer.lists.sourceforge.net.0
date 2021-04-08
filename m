Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5217A358645
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:11:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUVNC-0007WS-2p; Thu, 08 Apr 2021 14:11:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUVNA-0007W2-E3
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qbuThsqwUGZ0BkCmmvXddfVydVtrUx8HmAIyXaMzOY=; b=e92SHvB1gISurNTb9+MoQW49Sj
 qbXXUrazwzrXR5RVH76gk1HmVg/ohtpVHjGQV2YdnA70PVE1TP/84XMzP60cMD4aaCryK/2S/VlpW
 gj9Po+vLwbTzU07heV5ADGtexhJc4ND5nx2EYo3aXVOueDnhXOmYiiiSV3EF/s+okZ1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0qbuThsqwUGZ0BkCmmvXddfVydVtrUx8HmAIyXaMzOY=; b=gl8wL9vJ3GraDsoV+S/WyPEkNx
 NQb0Dq8i36DeeqaW9K0dNuO6VgTY4gk3bHoKLppKUav7fBsa+rNmiTPjhbmBwMgMRqzAI833Q6F/8
 olRi2TYEiYRGm9HbSYTdN/+Rq0FxjEdd9MprBgi92FTQDhXZY/U016c97A+m4UxCbkn4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUVMu-004wvQ-PU
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617891042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0qbuThsqwUGZ0BkCmmvXddfVydVtrUx8HmAIyXaMzOY=;
 b=Ig1bldYh4+0R25Iu2Kob/Kc/Nk+FgW4FFy4Rkv1oAay7k5ghaODi7Iexy0gwdSuGCDtHiW
 ZT1wbs4jkBL9daSC4GWmZAzj63tfBlnbmv56fMZNbGwSwj4U8yEKV10RdgSQZvpXubXSkL
 zDPEYsR2MdxrOi8E6VwbthE6a8zEsfw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-cMWqA6UbO-OyQfxsGrjkhQ-1; Thu, 08 Apr 2021 10:10:41 -0400
X-MC-Unique: cMWqA6UbO-OyQfxsGrjkhQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D68DD802690;
 Thu,  8 Apr 2021 14:10:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40F2E60BF1;
 Thu,  8 Apr 2021 14:10:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 08 Apr 2021 15:10:27 +0100
Message-ID: <161789102743.6155.17396591236631761195.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
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
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUVMu-004wvQ-PU
Subject: [V9fs-developer] [PATCH v6 30/30] afs: Use the netfs_write_begin()
 helper
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make AFS use the new netfs_write_begin() helper to do the pre-reading
required before the write.  If successful, the helper returns with the
required page filled in and locked.  It may read more than just one page,
expanding the read to meet cache granularity requirements as necessary.

Note: A more advanced version of this could be made that does
generic_perform_write() for a whole cache granule.  This would make it
easier to avoid doing the download/read for the data to be overwritten.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/160588546422.3465195.1546354372589291098.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161539563244.286939.16537296241609909980.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653819291.2770958.406013201547420544.stgit@warthog.procyon.org.uk/ # v5
---

 fs/afs/file.c     |   19 +++++++++
 fs/afs/internal.h |    1 
 fs/afs/write.c    |  108 ++++++-----------------------------------------------
 3 files changed, 31 insertions(+), 97 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 10c6eaaac2cc..db035ae2a134 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -333,6 +333,13 @@ static void afs_init_rreq(struct netfs_read_request *rreq, struct file *file)
 	rreq->netfs_priv = key_get(afs_file_key(file));
 }
 
+static bool afs_is_cache_enabled(struct inode *inode)
+{
+	struct fscache_cookie *cookie = afs_vnode_cache(AFS_FS_I(inode));
+
+	return fscache_cookie_enabled(cookie) && !hlist_empty(&cookie->backing_objects);
+}
+
 static int afs_begin_cache_operation(struct netfs_read_request *rreq)
 {
 	struct afs_vnode *vnode = AFS_FS_I(rreq->inode);
@@ -340,14 +347,24 @@ static int afs_begin_cache_operation(struct netfs_read_request *rreq)
 	return fscache_begin_read_operation(rreq, afs_vnode_cache(vnode));
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
+	.is_cache_enabled	= afs_is_cache_enabled,
 	.begin_cache_operation	= afs_begin_cache_operation,
+	.check_write_begin	= afs_check_write_begin,
 	.issue_op		= afs_req_issue_op,
 	.cleanup		= afs_priv_cleanup,
 };
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index f9a692fc08f4..52157a05796a 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -1045,6 +1045,7 @@ extern void afs_dynroot_depopulate(struct super_block *);
 extern const struct address_space_operations afs_fs_aops;
 extern const struct inode_operations afs_file_inode_operations;
 extern const struct file_operations afs_file_operations;
+extern const struct netfs_read_request_ops afs_req_ops;
 
 extern int afs_cache_wb_key(struct afs_vnode *, struct afs_file *);
 extern void afs_put_wb_key(struct afs_wb_key *);
diff --git a/fs/afs/write.c b/fs/afs/write.c
index bc84c771b0fd..dc66ff15dd16 100644
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
