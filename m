Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE2C740F33
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Jun 2023 12:49:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qESjh-0006pO-1p;
	Wed, 28 Jun 2023 10:49:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1qESjf-0006pH-UY
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Jun 2023 10:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOeQPebD91AEi5r7Bvbf8K+TmmzdkyidP0hZg85tDnQ=; b=dXUZiYZadKQ4sTpPJxwBVppMk+
 Q65eUGk92rpioYueiN2r2Jd1awZzPykXpP6qiMHghjCSaMUjJ/sHf8QBCqwilXR8csxBDV+hw2u9G
 BlhP0BvUFNb+gxnbgfXc2m5Z40rkajWQ9pJZYjduZp81x1ZkfVGPAfT25q9R8W+2IITA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TOeQPebD91AEi5r7Bvbf8K+TmmzdkyidP0hZg85tDnQ=; b=mItTGzMBd/h86oVgUxf+GgSQXU
 p1x2SfLBSkTalAERKI8u67AW26zoPyvPT6mmT41XDNj7YJ0doWrXIKTUQdKens4jI2ee2z4gc5Fc1
 0RucadDEb1uqVHY+vOoZKN1OvvYkPbdKuCwBIGTD0QzQPv65lAb2K1Rvk0XPuDTn6Y+A=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qESjc-0001jx-4S for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Jun 2023 10:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1687949349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TOeQPebD91AEi5r7Bvbf8K+TmmzdkyidP0hZg85tDnQ=;
 b=U4Jce4/UsuGAWwnTNggvtxO66V9xkgIBNUsy4Amq9ApGXSFHQMXvlYthJ13A3BuPfu+4Q/
 PQvc6DXusgrIi+QK+xfUxnlfrkohYhe54ur9SaUq3mzmuBYTmGl989d8kMbY1BeUeS+dlQ
 mEPMKGCKtpg7FbhbgIs2qtcfmED+/ok=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-L4wgRJtDMGublEOWLuvnxw-1; Wed, 28 Jun 2023 06:49:01 -0400
X-MC-Unique: L4wgRJtDMGublEOWLuvnxw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3363E85A58A;
 Wed, 28 Jun 2023 10:49:00 +0000 (UTC)
Received: from warthog.procyon.org.uk.com (unknown [10.42.28.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6153F40C2063;
 Wed, 28 Jun 2023 10:48:57 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 28 Jun 2023 11:48:51 +0100
Message-ID: <20230628104852.3391651-2-dhowells@redhat.com>
In-Reply-To: <20230628104852.3391651-1-dhowells@redhat.com>
References: <20230628104852.3391651-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Make filemap_release_folio() check folio_has_private(). Then,
 in most cases, where a call to folio_has_private() is immediately followed
 by a call to filemap_release_folio(), we can get rid of the tes [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qESjc-0001jx-4S
Subject: [V9fs-developer] [PATCH v7 1/2] mm: Merge
 folio_has_private()/filemap_release_folio() call pairs
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 Andreas Dilger <adilger.kernel@dilger.ca>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Rohith Surabattula <rohiths.msft@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make filemap_release_folio() check folio_has_private().  Then, in most
cases, where a call to folio_has_private() is immediately followed by a
call to filemap_release_folio(), we can get rid of the test in the pair.

There are a couple of sites in mm/vscan.c that this can't so easily be
done.  In shrink_folio_list(), there are actually three cases (something
different is done for incompletely invalidated buffers), but
filemap_release_folio() elides two of them.

In shrink_active_list(), we don't have have the folio lock yet, so the
check allows us to avoid locking the page unnecessarily.

A wrapper function to check if a folio needs release is provided for those
places that still need to do it in the mm/ directory.  This will acquire
additional parts to the condition in a future patch.

After this, the only remaining caller of folio_has_private() outside of mm/
is a check in fuse.

Reported-by: Rohith Surabattula <rohiths.msft@gmail.com>
Suggested-by: Matthew Wilcox <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: Linus Torvalds <torvalds@linux-foundation.org>
cc: Steve French <sfrench@samba.org>
cc: Shyam Prasad N <nspmangalore@gmail.com>
cc: Rohith Surabattula <rohiths.msft@gmail.com>
cc: Dave Wysochanski <dwysocha@redhat.com>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Ilya Dryomov <idryomov@gmail.com>
cc: "Theodore Ts'o" <tytso@mit.edu>
cc: Andreas Dilger <adilger.kernel@dilger.ca>
cc: linux-cachefs@redhat.com
cc: linux-cifs@vger.kernel.org
cc: linux-afs@lists.infradead.org
cc: v9fs-developer@lists.sourceforge.net
cc: ceph-devel@vger.kernel.org
cc: linux-nfs@vger.kernel.org
cc: linux-ext4@vger.kernel.org
cc: linux-fsdevel@vger.kernel.org
cc: linux-mm@kvack.org
---

Notes:
    ver #5)
     - Rebased on linus/master.  try_to_release_page() has now been entirely
       replaced by filemap_release_folio(), barring one comment.
     - Cleaned up some pairs in ext4.
    
    ver #4)
     - Split from fscache fix.
     - Moved folio_needs_release() to mm/internal.h and removed open-coded
       version from filemap_release_folio().
    
    ver #3)
     - Fixed mapping_clear_release_always() to use clear_bit() not set_bit().
     - Moved a '&&' to the correct line.
    
    ver #2)
     - Rewrote entirely according to Willy's suggestion[1].

 fs/ext4/move_extent.c | 12 ++++--------
 fs/splice.c           |  3 +--
 mm/filemap.c          |  2 ++
 mm/huge_memory.c      |  3 +--
 mm/internal.h         |  8 ++++++++
 mm/khugepaged.c       |  3 +--
 mm/memory-failure.c   |  8 +++-----
 mm/migrate.c          |  3 +--
 mm/truncate.c         |  6 ++----
 mm/vmscan.c           |  8 ++++----
 10 files changed, 27 insertions(+), 29 deletions(-)

diff --git a/fs/ext4/move_extent.c b/fs/ext4/move_extent.c
index b5af2fc03b2f..251584a23d05 100644
--- a/fs/ext4/move_extent.c
+++ b/fs/ext4/move_extent.c
@@ -340,10 +340,8 @@ move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
 			ext4_double_up_write_data_sem(orig_inode, donor_inode);
 			goto data_copy;
 		}
-		if ((folio_has_private(folio[0]) &&
-		     !filemap_release_folio(folio[0], 0)) ||
-		    (folio_has_private(folio[1]) &&
-		     !filemap_release_folio(folio[1], 0))) {
+		if (!filemap_release_folio(folio[0], 0) ||
+		    !filemap_release_folio(folio[1], 0)) {
 			*err = -EBUSY;
 			goto drop_data_sem;
 		}
@@ -362,10 +360,8 @@ move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
 
 	/* At this point all buffers in range are uptodate, old mapping layout
 	 * is no longer required, try to drop it now. */
-	if ((folio_has_private(folio[0]) &&
-		!filemap_release_folio(folio[0], 0)) ||
-	    (folio_has_private(folio[1]) &&
-		!filemap_release_folio(folio[1], 0))) {
+	if (!filemap_release_folio(folio[0], 0) ||
+	    !filemap_release_folio(folio[1], 0)) {
 		*err = -EBUSY;
 		goto unlock_folios;
 	}
diff --git a/fs/splice.c b/fs/splice.c
index 7a9565d8ec4f..6412848891df 100644
--- a/fs/splice.c
+++ b/fs/splice.c
@@ -82,8 +82,7 @@ static bool page_cache_pipe_buf_try_steal(struct pipe_inode_info *pipe,
 		 */
 		folio_wait_writeback(folio);
 
-		if (folio_has_private(folio) &&
-		    !filemap_release_folio(folio, GFP_KERNEL))
+		if (!filemap_release_folio(folio, GFP_KERNEL))
 			goto out_unlock;
 
 		/*
diff --git a/mm/filemap.c b/mm/filemap.c
index 00f01d8ead47..31d07c2f8d32 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -4134,6 +4134,8 @@ bool filemap_release_folio(struct folio *folio, gfp_t gfp)
 	struct address_space * const mapping = folio->mapping;
 
 	BUG_ON(!folio_test_locked(folio));
+	if (!folio_needs_release(folio))
+		return true;
 	if (folio_test_writeback(folio))
 		return false;
 
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index 624671aaa60d..a14b3d1af9d7 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -2688,8 +2688,7 @@ int split_huge_page_to_list(struct page *page, struct list_head *list)
 		gfp = current_gfp_context(mapping_gfp_mask(mapping) &
 							GFP_RECLAIM_MASK);
 
-		if (folio_test_private(folio) &&
-				!filemap_release_folio(folio, gfp)) {
+		if (!filemap_release_folio(folio, gfp)) {
 			ret = -EBUSY;
 			goto out;
 		}
diff --git a/mm/internal.h b/mm/internal.h
index e6029d94bdb2..a76314764d8c 100644
--- a/mm/internal.h
+++ b/mm/internal.h
@@ -170,6 +170,14 @@ static inline void set_page_refcounted(struct page *page)
 	set_page_count(page, 1);
 }
 
+/*
+ * Return true if a folio needs ->release_folio() calling upon it.
+ */
+static inline bool folio_needs_release(struct folio *folio)
+{
+	return folio_has_private(folio);
+}
+
 extern unsigned long highest_memmap_pfn;
 
 /*
diff --git a/mm/khugepaged.c b/mm/khugepaged.c
index 2d0d58fb4e7f..1e6e6a25cd52 100644
--- a/mm/khugepaged.c
+++ b/mm/khugepaged.c
@@ -2058,8 +2058,7 @@ static int collapse_file(struct mm_struct *mm, unsigned long addr,
 			goto out_unlock;
 		}
 
-		if (folio_has_private(folio) &&
-		    !filemap_release_folio(folio, GFP_KERNEL)) {
+		if (!filemap_release_folio(folio, GFP_KERNEL)) {
 			result = SCAN_PAGE_HAS_PRIVATE;
 			folio_putback_lru(folio);
 			goto out_unlock;
diff --git a/mm/memory-failure.c b/mm/memory-failure.c
index 5b663eca1f29..38321eb85fb2 100644
--- a/mm/memory-failure.c
+++ b/mm/memory-failure.c
@@ -944,14 +944,12 @@ static int truncate_error_page(struct page *p, unsigned long pfn,
 		struct folio *folio = page_folio(p);
 		int err = mapping->a_ops->error_remove_page(mapping, p);
 
-		if (err != 0) {
+		if (err != 0)
 			pr_info("%#lx: Failed to punch page: %d\n", pfn, err);
-		} else if (folio_has_private(folio) &&
-			   !filemap_release_folio(folio, GFP_NOIO)) {
+		else if (!filemap_release_folio(folio, GFP_NOIO))
 			pr_info("%#lx: failed to release buffers\n", pfn);
-		} else {
+		else
 			ret = MF_RECOVERED;
-		}
 	} else {
 		/*
 		 * If the file system doesn't support it just invalidate
diff --git a/mm/migrate.c b/mm/migrate.c
index 01cac26a3127..5fc27d1a7eaf 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -929,8 +929,7 @@ static int fallback_migrate_folio(struct address_space *mapping,
 	 * Buffers may be managed in a filesystem specific way.
 	 * We must have no buffers or drop them.
 	 */
-	if (folio_test_private(src) &&
-	    !filemap_release_folio(src, GFP_KERNEL))
+	if (!filemap_release_folio(src, GFP_KERNEL))
 		return mode == MIGRATE_SYNC ? -EAGAIN : -EBUSY;
 
 	return migrate_folio(mapping, dst, src, mode);
diff --git a/mm/truncate.c b/mm/truncate.c
index 86de31ed4d32..6fb830369829 100644
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
@@ -574,8 +573,7 @@ static int invalidate_complete_folio2(struct address_space *mapping,
 	if (folio->mapping != mapping)
 		return 0;
 
-	if (folio_has_private(folio) &&
-	    !filemap_release_folio(folio, GFP_KERNEL))
+	if (!filemap_release_folio(folio, GFP_KERNEL))
 		return 0;
 
 	spin_lock(&mapping->host->i_lock);
diff --git a/mm/vmscan.c b/mm/vmscan.c
index 5bf98d0a22c9..49bc412b31a2 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -2058,7 +2058,7 @@ static unsigned int shrink_folio_list(struct list_head *folio_list,
 		 * (refcount == 1) it can be freed.  Otherwise, leave
 		 * the folio on the LRU so it is swappable.
 		 */
-		if (folio_has_private(folio)) {
+		if (folio_needs_release(folio)) {
 			if (!filemap_release_folio(folio, sc->gfp_mask))
 				goto activate_locked;
 			if (!mapping && folio_ref_count(folio) == 1) {
@@ -2703,9 +2703,9 @@ static void shrink_active_list(unsigned long nr_to_scan,
 		}
 
 		if (unlikely(buffer_heads_over_limit)) {
-			if (folio_test_private(folio) && folio_trylock(folio)) {
-				if (folio_test_private(folio))
-					filemap_release_folio(folio, 0);
+			if (folio_needs_release(folio) &&
+			    folio_trylock(folio)) {
+				filemap_release_folio(folio, 0);
 				folio_unlock(folio);
 			}
 		}



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
