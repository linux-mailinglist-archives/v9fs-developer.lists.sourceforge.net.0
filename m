Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D12E437E23
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:10:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzw0-0004mi-QN; Fri, 22 Oct 2021 19:10:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdzvy-0004ma-F2
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KX0r/fnwji7RP/CpBxWIliTvej7XDp1TjYM6832XUK4=; b=kYJI2NMFbx/4K6RjHMiyAIqp0e
 rO5q1CJc7JegSNYQKkswGGypmnjO59Nfoc10sMe7nCKAA2937hEWoiEl0ny+EeF8YpE3R/JzgJIPJ
 7zY0xqZu8elKCyRdM05RqP04m9NwVSSOlurIyrQkaN+LLy6xT6Rmbhz6L4uXVPEfEIjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KX0r/fnwji7RP/CpBxWIliTvej7XDp1TjYM6832XUK4=; b=PXtHdLEHopArOFaOMFaH4NGVx/
 gHp3jmQhjG5gvbq77Pr/eFNWtF6LWcmGj9KECEX/bc01jujZDoIP4uDFTRnLtIlahrst0zSGsLCIC
 HHtYahwYXsL5D1F90NPJKg355o0MXfmMVULlifWjBrCc6ZLZZIGCIRDX/prb8wAWqGaY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzvx-00CI97-NA
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KX0r/fnwji7RP/CpBxWIliTvej7XDp1TjYM6832XUK4=;
 b=Ql3spumn9VUmYxhsEuwC2JcAnRba3UWWh5v4J5ex3ioJCosf2kLoKEeikiICdhRCdPVxkq
 3enZLTCqdmDsFrM+vscALCuMRvDkZWQLQIorAk55Xjbn2qZKH79gCI8kg4kDkkU4Dfixoc
 3XiF9um50HQsDwgAQTlXIdlTByeO37Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-8h0zd8ffOAaEREA3katniw-1; Fri, 22 Oct 2021 15:10:17 -0400
X-MC-Unique: 8h0zd8ffOAaEREA3katniw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E6FA1006AA2;
 Fri, 22 Oct 2021 19:10:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 776EF6F951;
 Fri, 22 Oct 2021 19:10:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:10:04 +0100
Message-ID: <163492980465.1038219.12708652004544326955.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview:  When writing to the server from v9fs_vfs_writepage(), copy
 the data to the cache object too. To make this possible, the cookie must
 have its active users count incremented when the page is dirtied and kept
 incremented until we manage to clean up all the pages. This allows the
 writeback to tak [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzvx-00CI97-NA
Subject: [V9fs-developer] [PATCH v2 49/53] 9p: Copy local writes to the
 cache when writing to the server
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When writing to the server from v9fs_vfs_writepage(), copy the data to the
cache object too.

To make this possible, the cookie must have its active users count
incremented when the page is dirtied and kept incremented until we manage
to clean up all the pages.  This allows the writeback to take place after
the last file struct is released.

This is done by taking a use on the cookie in v9fs_set_page_dirty() if we
haven't already done so (controlled by the I_PINNING_FSCACHE_WB flag) and
dropping the pin in v9fs_write_inode() if __writeback_single_inode() clears
all the outstanding dirty pages (conveyed by the unpinned_fscache_wb flag
in the writeback_control struct).

Inode eviction must also clear the flag after truncating away all the
outstanding pages.

In the future this will be handled more gracefully by netfslib.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Eric Van Hensbergen <ericvh@gmail.com>
cc: Latchesar Ionkov <lucho@ionkov.net>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: v9fs-developer@lists.sourceforge.net
cc: linux-cachefs@redhat.com
---

 fs/9p/vfs_addr.c  |   53 ++++++++++++++++++++++++++++++++++++++++++++++++-----
 fs/9p/vfs_inode.c |    2 ++
 fs/9p/vfs_super.c |    3 +++
 3 files changed, 53 insertions(+), 5 deletions(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 5bcc2ab5b277..c02da5be3b32 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -132,15 +132,17 @@ static void v9fs_vfs_readahead(struct readahead_control *ractl)
 
 static int v9fs_release_page(struct page *page, gfp_t gfp)
 {
+	struct inode *inode = page->mapping->host;
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+
 	if (PagePrivate(page))
 		return 0;
-#ifdef CONFIG_9P_FSCACHE
 	if (PageFsCache(page)) {
 		if (!(gfp & __GFP_DIRECT_RECLAIM) || !(gfp & __GFP_FS))
 			return 0;
 		wait_on_page_fscache(page);
 	}
-#endif
+	fscache_note_page_release(v9fs_inode_cookie(v9inode));
 	return 1;
 }
 
@@ -157,10 +159,23 @@ static void v9fs_invalidate_page(struct page *page, unsigned int offset,
 	wait_on_page_fscache(page);
 }
 
+static void v9fs_write_to_cache_done(void *priv, ssize_t transferred_or_error,
+				     bool was_async)
+{
+	struct v9fs_inode *v9inode = priv;
+
+	if (IS_ERR_VALUE(transferred_or_error) &&
+	    transferred_or_error != -ENOBUFS)
+		fscache_invalidate(v9fs_inode_cookie(v9inode),
+				   &v9inode->qid.version,
+				   i_size_read(&v9inode->vfs_inode), 0);
+}
+
 static int v9fs_vfs_writepage_locked(struct page *page)
 {
 	struct inode *inode = page->mapping->host;
 	struct v9fs_inode *v9inode = V9FS_I(inode);
+	struct fscache_cookie *cookie = v9fs_inode_cookie(v9inode);
 	loff_t start = page_offset(page);
 	loff_t size = i_size_read(inode);
 	struct iov_iter from;
@@ -176,10 +191,21 @@ static int v9fs_vfs_writepage_locked(struct page *page)
 	/* We should have writeback_fid always set */
 	BUG_ON(!v9inode->writeback_fid);
 
+	wait_on_page_fscache(page);
+
 	set_page_writeback(page);
 
 	p9_client_write(v9inode->writeback_fid, start, &from, &err);
 
+	if (err == 0 &&
+	    fscache_cookie_enabled(cookie) &&
+	    test_bit(FSCACHE_COOKIE_IS_CACHING, &cookie->flags)) {
+		set_page_fscache(page);
+		fscache_write_to_cache(v9fs_inode_cookie(v9inode),
+				       page->mapping, start, len, size,
+				       v9fs_write_to_cache_done, v9inode);
+	}
+
 	end_page_writeback(page);
 	return err;
 }
@@ -290,10 +316,12 @@ static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
 
 static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 			  loff_t pos, unsigned len, unsigned copied,
-			  struct page *page, void *fsdata)
+			  struct page *subpage, void *fsdata)
 {
+	struct page *page = thp_head(subpage);
 	loff_t last_pos = pos + copied;
-	struct inode *inode = page->mapping->host;
+	struct inode *inode = mapping->host;
+	struct v9fs_inode *v9inode = V9FS_I(inode);
 
 	p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);
 
@@ -313,6 +341,7 @@ static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 	if (last_pos > inode->i_size) {
 		inode_add_bytes(inode, last_pos - inode->i_size);
 		i_size_write(inode, last_pos);
+		fscache_update_cookie(v9fs_inode_cookie(v9inode), NULL, &last_pos);
 	}
 	set_page_dirty(page);
 out:
@@ -322,11 +351,25 @@ static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 	return copied;
 }
 
+#ifdef CONFIG_9P_FSCACHE
+/*
+ * Mark a page as having been made dirty and thus needing writeback.  We also
+ * need to pin the cache object to write back to.
+ */
+static int v9fs_set_page_dirty(struct page *page)
+{
+	struct v9fs_inode *v9inode = V9FS_I(page->mapping->host);
+
+	return fscache_set_page_dirty(page, v9fs_inode_cookie(v9inode));
+}
+#else
+#define v9fs_set_page_dirty __set_page_dirty_nobuffers
+#endif
 
 const struct address_space_operations v9fs_addr_operations = {
 	.readpage = v9fs_vfs_readpage,
 	.readahead = v9fs_vfs_readahead,
-	.set_page_dirty = __set_page_dirty_nobuffers,
+	.set_page_dirty = v9fs_set_page_dirty,
 	.writepage = v9fs_vfs_writepage,
 	.write_begin = v9fs_write_begin,
 	.write_end = v9fs_write_end,
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 83db37bd4252..a990c50cc27d 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -377,6 +377,8 @@ void v9fs_evict_inode(struct inode *inode)
 	struct v9fs_inode *v9inode = V9FS_I(inode);
 
 	truncate_inode_pages_final(&inode->i_data);
+	fscache_clear_inode_writeback(v9fs_inode_cookie(v9inode), inode,
+				      &v9inode->qid.version);
 	clear_inode(inode);
 	filemap_fdatawrite(&inode->i_data);
 
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 5fce6e30bc5a..3721098e0992 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -24,6 +24,7 @@
 #include <linux/slab.h>
 #include <linux/statfs.h>
 #include <linux/magic.h>
+#include <linux/fscache.h>
 #include <net/9p/9p.h>
 #include <net/9p/client.h>
 
@@ -307,6 +308,7 @@ static int v9fs_write_inode(struct inode *inode,
 		__mark_inode_dirty(inode, I_DIRTY_DATASYNC);
 		return ret;
 	}
+	fscache_unpin_writeback(wbc, v9fs_inode_cookie(v9inode));
 	return 0;
 }
 
@@ -330,6 +332,7 @@ static int v9fs_write_inode_dotl(struct inode *inode,
 		__mark_inode_dirty(inode, I_DIRTY_DATASYNC);
 		return ret;
 	}
+	fscache_unpin_writeback(wbc, v9fs_inode_cookie(v9inode));
 	return 0;
 }
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
