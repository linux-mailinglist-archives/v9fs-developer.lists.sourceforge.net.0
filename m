Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C6635EC6
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 14:03:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxpP6-0007hX-4H;
	Wed, 23 Nov 2022 13:03:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1oxpOu-0007h2-8x
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 13:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uJAdIb5+RbiFRbg3ND8C/B2z/tkAHKJyzFMfex3XHCo=; b=IUMjQUtTf7kfw00T8zI5eOSeK/
 dtSlzrOeMkopf8VoEAF90BgU0LhIcwzCf4v+y4Mvhz4R1a92HvK4lsa2zNg9w0HLkLc0O6tgHqMvf
 nc8mnqtQkLnNNktWMOlXORm0dnC8P5swyTFfhdRWHiiniQHQ/BA+xdtgywNuLhsSTUQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uJAdIb5+RbiFRbg3ND8C/B2z/tkAHKJyzFMfex3XHCo=; b=BRbkHsH2oBSrecyfDvvyDIensh
 JHgpARSkbDsvRfU0PP/3sBiCvGvvxo7+0/u3gnIwHqNj2cOwM8oPuvTOg4fuFS5jYyu+r1Peav/6L
 dHM7kAElcgBvFCsVrZXuF2vXZhCwWAUOb6WJU/jNRAYSfHnU8GyY/VXC3XWDbL+kh+6s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxpOn-0002je-Nq for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 13:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669208559;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=uJAdIb5+RbiFRbg3ND8C/B2z/tkAHKJyzFMfex3XHCo=;
 b=Cqtp9xUN/yoYiUMyBA3d+iDF2pwCOV1W5rp7ihfLaiFG+XzSTXTZhEriqBLyPXxYY5u4Sb
 iu15aPO3J9c7ZIueKHatjtBd46WVJiRhuNjMvMcPZGBrNqzLr5NNvQbXLPFF8sBZQMgsXZ
 ZSDuJ3RWA9jXqUxQlNEZuuCKnc3VuQw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-7JeJOhZGMPanGntP6MJs8w-1; Wed, 23 Nov 2022 08:02:36 -0500
X-MC-Unique: 7JeJOhZGMPanGntP6MJs8w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0D8485A5A6;
 Wed, 23 Nov 2022 13:02:35 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 327512166B26;
 Wed, 23 Nov 2022 13:02:33 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <1459151.1669208550.1@warthog.procyon.org.uk>
Date: Wed, 23 Nov 2022 13:02:30 +0000
Message-ID: <1459152.1669208550@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Is the attached patch too heavy to be applied this
 late in the merge cycle? Or would you prefer it to wait for the merge window?
 Thanks, David --- Fscache has an optimisation by which reads from the cache
 are skipped until we know that (a) there's data there to be read and (b)
 that data isn't entirely covered by pages resident [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxpOn-0002je-Nq
Subject: [V9fs-developer] [PATCH v3] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 Rohith Surabattula <rohiths.msft@gmail.com>, dwysocha@redhat.com,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Is the attached patch too heavy to be applied this late in the merge cycle?
Or would you prefer it to wait for the merge window?

Thanks,
David
---
Fscache has an optimisation by which reads from the cache are skipped until
we know that (a) there's data there to be read and (b) that data isn't
entirely covered by pages resident in the netfs pagecache.  This is done
with two flags manipulated by fscache_note_page_release():

	if (...
	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
		clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);

where the NO_DATA_TO_READ flag causes cachefiles_prepare_read() to indicate
that netfslib should download from the server or clear the page instead.

The fscache_note_page_release() function is intended to be called from
->releasepage() - but that only gets called if PG_private or PG_private_2
is set - and currently the former is at the discretion of the network
filesystem and the latter is only set whilst a page is being written to the
cache, so sometimes we miss clearing the optimisation.

Fix this by following Willy's suggestion[1] and adding an address_space
flag, AS_RELEASE_ALWAYS, that causes filemap_release_folio() to always call
->release_folio() if it's set, even if PG_private or PG_private_2 aren't
set.

Note that this would require folio_test_private() and page_has_private() to
become more complicated.  To avoid that, in the places[*] where these are
used to conditionalise calls to filemap_release_folio() and
try_to_release_page(), the tests are removed the those functions just
jumped to unconditionally and the test is performed there.

[*] There are some exceptions in vmscan.c where the check guards more than
just a call to the releaser.  I've added a function, folio_needs_release()
to wrap all the checks for that.

AS_RELEASE_ALWAYS should be set if a non-NULL cookie is obtained from
fscache and cleared in ->evict_inode() before truncate_inode_pages_final()
is called.

Additionally, the FSCACHE_COOKIE_NO_DATA_TO_READ flag needs to be cleared
and the optimisation cancelled if a cachefiles object already contains data
when we open it.

Changes:
========
ver #3)
 - Fixed mapping_clear_release_always() to use clear_bit() not set_bit().
 - Moved a '&&' to the correct line.

ver #2)
 - Rewrote entirely according to Willy's suggestion[1].

Reported-by: Rohith Surabattula <rohiths.msft@gmail.com>
Suggested-by: Matthew Wilcox <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: Steve French <sfrench@samba.org>
cc: Shyam Prasad N <nspmangalore@gmail.com>
cc: Rohith Surabattula <rohiths.msft@gmail.com>
cc: Dave Wysochanski <dwysocha@redhat.com>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Ilya Dryomov <idryomov@gmail.com>
cc: linux-cachefs@redhat.com
cc: linux-cifs@vger.kernel.org
cc: linux-afs@lists.infradead.org
cc: v9fs-developer@lists.sourceforge.net
cc: ceph-devel@vger.kernel.org
cc: linux-nfs@vger.kernel.org
cc: linux-fsdevel@vger.kernel.org
cc: linux-mm@kvack.org
Link: https://lore.kernel.org/r/Yk9V/03wgdYi65Lb@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/164928630577.457102.8519251179327601178.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/166869495238.3720468.4878151409085146764.stgit@warthog.procyon.org.uk/ # v3
---

 fs/9p/cache.c           |    2 ++
 fs/9p/vfs_inode.c       |    1 +
 fs/afs/inode.c          |    1 +
 fs/afs/internal.h       |    2 ++
 fs/cachefiles/namei.c   |    2 ++
 fs/ceph/cache.c         |    2 ++
 fs/ceph/inode.c         |    1 +
 fs/cifs/cifsfs.c        |    1 +
 fs/cifs/fscache.c       |    2 ++
 fs/splice.c             |    3 +--
 include/linux/pagemap.h |   16 ++++++++++++++++
 mm/filemap.c            |    4 ++++
 mm/huge_memory.c        |    3 +--
 mm/khugepaged.c         |    3 +--
 mm/memory-failure.c     |    3 +--
 mm/migrate.c            |    3 +--
 mm/truncate.c           |    6 ++----
 mm/vmscan.c             |   15 +++++++++++----
 18 files changed, 52 insertions(+), 18 deletions(-)

diff --git a/fs/9p/cache.c b/fs/9p/cache.c
index cebba4eaa0b5..12c0ae29f185 100644
--- a/fs/9p/cache.c
+++ b/fs/9p/cache.c
@@ -68,6 +68,8 @@ void v9fs_cache_inode_get_cookie(struct inode *inode)
 				       &path, sizeof(path),
 				       &version, sizeof(version),
 				       i_size_read(&v9inode->netfs.inode));
+	if (v9inode->netfs.cache)
+		mapping_set_release_always(inode->i_mapping);
 
 	p9_debug(P9_DEBUG_FSC, "inode %p get cookie %p\n",
 		 inode, v9fs_inode_cookie(v9inode));
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 4d1a4a8d9277..b553fe3484c1 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -394,6 +394,7 @@ void v9fs_evict_inode(struct inode *inode)
 	version = cpu_to_le32(v9inode->qid.version);
 	fscache_clear_inode_writeback(v9fs_inode_cookie(v9inode), inode,
 				      &version);
+	mapping_clear_release_always(inode->i_mapping);
 	clear_inode(inode);
 	filemap_fdatawrite(&inode->i_data);
 
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 6d3a3dbe4928..7790977780ca 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -805,6 +805,7 @@ void afs_evict_inode(struct inode *inode)
 
 	afs_set_cache_aux(vnode, &aux);
 	fscache_clear_inode_writeback(afs_vnode_cache(vnode), inode, &aux);
+	mapping_clear_release_always(inode->i_mapping);
 	clear_inode(inode);
 
 	while (!list_empty(&vnode->wb_keys)) {
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 723d162078a3..310f4111c648 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -680,6 +680,8 @@ static inline void afs_vnode_set_cache(struct afs_vnode *vnode,
 {
 #ifdef CONFIG_AFS_FSCACHE
 	vnode->netfs.cache = cookie;
+	if (cookie)
+		mapping_set_release_always(vnode->netfs.inode.i_mapping);
 #endif
 }
 
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 03ca8f2f657a..50b2ee163af6 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -584,6 +584,8 @@ static bool cachefiles_open_file(struct cachefiles_object *object,
 	if (ret < 0)
 		goto check_failed;
 
+	clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &object->cookie->flags);
+
 	object->file = file;
 
 	/* Always update the atime on an object we've just looked up (this is
diff --git a/fs/ceph/cache.c b/fs/ceph/cache.c
index 177d8e8d73fe..de1dee46d3df 100644
--- a/fs/ceph/cache.c
+++ b/fs/ceph/cache.c
@@ -36,6 +36,8 @@ void ceph_fscache_register_inode_cookie(struct inode *inode)
 				       &ci->i_vino, sizeof(ci->i_vino),
 				       &ci->i_version, sizeof(ci->i_version),
 				       i_size_read(inode));
+	if (ci->netfs.cache)
+		mapping_set_release_always(inode->i_mapping);
 }
 
 void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info *ci)
diff --git a/fs/ceph/inode.c b/fs/ceph/inode.c
index 4af5e55abc15..2e8481da6583 100644
--- a/fs/ceph/inode.c
+++ b/fs/ceph/inode.c
@@ -572,6 +572,7 @@ void ceph_evict_inode(struct inode *inode)
 	truncate_inode_pages_final(&inode->i_data);
 	if (inode->i_state & I_PINNING_FSCACHE_WB)
 		ceph_fscache_unuse_cookie(inode, true);
+	mapping_clear_release_always(inode->i_mapping);
 	clear_inode(inode);
 
 	ceph_fscache_unregister_inode_cookie(ci);
diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
index fe220686bba4..ceb92b536475 100644
--- a/fs/cifs/cifsfs.c
+++ b/fs/cifs/cifsfs.c
@@ -423,6 +423,7 @@ cifs_free_inode(struct inode *inode)
 static void
 cifs_evict_inode(struct inode *inode)
 {
+	mapping_clear_release_always(inode->i_mapping);
 	truncate_inode_pages_final(&inode->i_data);
 	if (inode->i_state & I_PINNING_FSCACHE_WB)
 		cifs_fscache_unuse_inode_cookie(inode, true);
diff --git a/fs/cifs/fscache.c b/fs/cifs/fscache.c
index a1751b956318..d3f484ab1213 100644
--- a/fs/cifs/fscache.c
+++ b/fs/cifs/fscache.c
@@ -108,6 +108,8 @@ void cifs_fscache_get_inode_cookie(struct inode *inode)
 				       &cifsi->uniqueid, sizeof(cifsi->uniqueid),
 				       &cd, sizeof(cd),
 				       i_size_read(&cifsi->netfs.inode));
+	if (cifsi->netfs.cache)
+		mapping_set_release_always(inode->i_mapping);
 }
 
 void cifs_fscache_unuse_inode_cookie(struct inode *inode, bool update)
diff --git a/fs/splice.c b/fs/splice.c
index 0878b852b355..563105304ccc 100644
--- a/fs/splice.c
+++ b/fs/splice.c
@@ -65,8 +65,7 @@ static bool page_cache_pipe_buf_try_steal(struct pipe_inode_info *pipe,
 		 */
 		folio_wait_writeback(folio);
 
-		if (folio_has_private(folio) &&
-		    !filemap_release_folio(folio, GFP_KERNEL))
+		if (!filemap_release_folio(folio, GFP_KERNEL))
 			goto out_unlock;
 
 		/*
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index bbccb4044222..9a824b43c6af 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -199,6 +199,7 @@ enum mapping_flags {
 	/* writeback related tags are not used */
 	AS_NO_WRITEBACK_TAGS = 5,
 	AS_LARGE_FOLIO_SUPPORT = 6,
+	AS_RELEASE_ALWAYS,	/* Call ->release_folio(), even if no private data */
 };
 
 /**
@@ -269,6 +270,21 @@ static inline int mapping_use_writeback_tags(struct address_space *mapping)
 	return !test_bit(AS_NO_WRITEBACK_TAGS, &mapping->flags);
 }
 
+static inline bool mapping_release_always(const struct address_space *mapping)
+{
+	return test_bit(AS_RELEASE_ALWAYS, &mapping->flags);
+}
+
+static inline void mapping_set_release_always(struct address_space *mapping)
+{
+	set_bit(AS_RELEASE_ALWAYS, &mapping->flags);
+}
+
+static inline void mapping_clear_release_always(struct address_space *mapping)
+{
+	clear_bit(AS_RELEASE_ALWAYS, &mapping->flags);
+}
+
 static inline gfp_t mapping_gfp_mask(struct address_space * mapping)
 {
 	return mapping->gfp_mask;
diff --git a/mm/filemap.c b/mm/filemap.c
index 08341616ae7a..c2369f29879f 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -3941,6 +3941,10 @@ bool filemap_release_folio(struct folio *folio, gfp_t gfp)
 	struct address_space * const mapping = folio->mapping;
 
 	BUG_ON(!folio_test_locked(folio));
+	if ((!mapping || !mapping_release_always(mapping)) &&
+	    !folio_test_private(folio) &&
+	    !folio_test_private_2(folio))
+		return true;
 	if (folio_test_writeback(folio))
 		return false;
 
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index 811d19b5c4f6..308d36aa3197 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -2683,8 +2683,7 @@ int split_huge_page_to_list(struct page *page, struct list_head *list)
 		gfp = current_gfp_context(mapping_gfp_mask(mapping) &
 							GFP_RECLAIM_MASK);
 
-		if (folio_test_private(folio) &&
-				!filemap_release_folio(folio, gfp)) {
+		if (!filemap_release_folio(folio, gfp)) {
 			ret = -EBUSY;
 			goto out;
 		}
diff --git a/mm/khugepaged.c b/mm/khugepaged.c
index 4734315f7940..7e9e0e3e678e 100644
--- a/mm/khugepaged.c
+++ b/mm/khugepaged.c
@@ -1883,8 +1883,7 @@ static int collapse_file(struct mm_struct *mm, unsigned long addr,
 			goto out_unlock;
 		}
 
-		if (page_has_private(page) &&
-		    !try_to_release_page(page, GFP_KERNEL)) {
+		if (!try_to_release_page(page, GFP_KERNEL)) {
 			result = SCAN_PAGE_HAS_PRIVATE;
 			putback_lru_page(page);
 			goto out_unlock;
diff --git a/mm/memory-failure.c b/mm/memory-failure.c
index bead6bccc7f2..82673fc01eed 100644
--- a/mm/memory-failure.c
+++ b/mm/memory-failure.c
@@ -831,8 +831,7 @@ static int truncate_error_page(struct page *p, unsigned long pfn,
 
 		if (err != 0) {
 			pr_info("%#lx: Failed to punch page: %d\n", pfn, err);
-		} else if (page_has_private(p) &&
-			   !try_to_release_page(p, GFP_NOIO)) {
+		} else if (!try_to_release_page(p, GFP_NOIO)) {
 			pr_info("%#lx: failed to release buffers\n", pfn);
 		} else {
 			ret = MF_RECOVERED;
diff --git a/mm/migrate.c b/mm/migrate.c
index dff333593a8a..d721ef340943 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -905,8 +905,7 @@ static int fallback_migrate_folio(struct address_space *mapping,
 	 * Buffers may be managed in a filesystem specific way.
 	 * We must have no buffers or drop them.
 	 */
-	if (folio_test_private(src) &&
-	    !filemap_release_folio(src, GFP_KERNEL))
+	if (!filemap_release_folio(src, GFP_KERNEL))
 		return mode == MIGRATE_SYNC ? -EAGAIN : -EBUSY;
 
 	return migrate_folio(mapping, dst, src, mode);
diff --git a/mm/truncate.c b/mm/truncate.c
index c0be77e5c008..0d4dd233f518 100644
--- a/mm/truncate.c
+++ b/mm/truncate.c
@@ -19,7 +19,6 @@
 #include <linux/highmem.h>
 #include <linux/pagevec.h>
 #include <linux/task_io_accounting_ops.h>
-#include <linux/buffer_head.h>	/* grr. try_to_release_page */
 #include <linux/shmem_fs.h>
 #include <linux/rmap.h>
 #include "internal.h"
@@ -276,7 +275,7 @@ static long mapping_evict_folio(struct address_space *mapping,
 	if (folio_ref_count(folio) >
 			folio_nr_pages(folio) + folio_has_private(folio) + 1)
 		return 0;
-	if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
+	if (!filemap_release_folio(folio, 0))
 		return 0;
 
 	return remove_mapping(mapping, folio);
@@ -581,8 +580,7 @@ static int invalidate_complete_folio2(struct address_space *mapping,
 	if (folio->mapping != mapping)
 		return 0;
 
-	if (folio_has_private(folio) &&
-	    !filemap_release_folio(folio, GFP_KERNEL))
+	if (!filemap_release_folio(folio, GFP_KERNEL))
 		return 0;
 
 	spin_lock(&mapping->host->i_lock);
diff --git a/mm/vmscan.c b/mm/vmscan.c
index 04d8b88e5216..a2d5ffee5f8f 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -186,6 +186,14 @@ struct scan_control {
 #define prefetchw_prev_lru_folio(_folio, _base, _field) do { } while (0)
 #endif
 
+static bool folio_needs_release(struct folio *folio)
+{
+	struct address_space *mapping = folio->mapping;
+
+	return folio_has_private(folio) ||
+		(mapping && mapping_release_always(mapping));
+}
+
 /*
  * From 0 .. 200.  Higher means more swappy.
  */
@@ -1978,7 +1986,7 @@ static unsigned int shrink_folio_list(struct list_head *folio_list,
 		 * (refcount == 1) it can be freed.  Otherwise, leave
 		 * the folio on the LRU so it is swappable.
 		 */
-		if (folio_has_private(folio)) {
+		if (folio_needs_release(folio)) {
 			if (!filemap_release_folio(folio, sc->gfp_mask))
 				goto activate_locked;
 			if (!mapping && folio_ref_count(folio) == 1) {
@@ -2592,9 +2600,8 @@ static void shrink_active_list(unsigned long nr_to_scan,
 		}
 
 		if (unlikely(buffer_heads_over_limit)) {
-			if (folio_test_private(folio) && folio_trylock(folio)) {
-				if (folio_test_private(folio))
-					filemap_release_folio(folio, 0);
+			if (folio_needs_release(folio) && folio_trylock(folio)) {
+				filemap_release_folio(folio, 0);
 				folio_unlock(folio);
 			}
 		}



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
