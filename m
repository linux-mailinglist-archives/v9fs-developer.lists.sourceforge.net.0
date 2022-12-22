Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFEF65437D
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Dec 2022 16:02:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8N5Q-00074J-5k;
	Thu, 22 Dec 2022 15:02:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1p8N5N-00073w-Op
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Dec 2022 15:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K2+I4bpb9SdoO0DVAXNZibfBlFbEjwAQot6E33TLUuc=; b=VdpHmX4YXQyjWbCpZq61NS1+OZ
 /cVFSSJWYENBp/AOPMVrlelTH24x3SiQV1cFEbQzet8kxGJ/3NZ6FoVBQoZ20q1C6eNH+mg9KW6Qh
 cGmAk1Kc4/856cEhernctNJ6SHUtc+bA6JJuxjtH5yMnRgt06XhGcEtc4iJf0ZNvawMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K2+I4bpb9SdoO0DVAXNZibfBlFbEjwAQot6E33TLUuc=; b=fz261IM4gjDqkQoBHxZmq00MOK
 0ALzTci/RFKMFiLd+zDpN6UPpX3PtnKzVlYlH/SyHr/Rte4bbZU4Au+YzTg4CsmGC/GV3CudjsOjS
 gVmucIbdrtJ0vjw1LT5lHV193XUkH2yDY7+ZR/bpSJDV7JUuF0BiYyBTfpDY3l1E8Rws=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p8N5M-007rUz-I9 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Dec 2022 15:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671721330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K2+I4bpb9SdoO0DVAXNZibfBlFbEjwAQot6E33TLUuc=;
 b=NuolejTHHf66tRcJPxVpMRQJTGNr3nrIN8aR0T3y9aAOnWtkX9LPKxWFzoZt2w1N5svwIH
 YuHBpk2+3issyoQAGzeEGVf8eUyRPwyRcK/588A/VWpxnuGsZpQT0NUPOd5TaxxNqdhWrs
 1EGxK8dtRCIf4ebSR+oppmDcuy6alEs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-216-4cOOowuzO0aCUZLDTERhxA-1; Thu, 22 Dec 2022 10:02:08 -0500
X-MC-Unique: 4cOOowuzO0aCUZLDTERhxA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 112398533DC;
 Thu, 22 Dec 2022 15:02:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 67A0B40C2064;
 Thu, 22 Dec 2022 15:02:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Thu, 22 Dec 2022 15:02:02 +0000
Message-ID: <167172132272.2334525.13617516784050484518.stgit@warthog.procyon.org.uk>
In-Reply-To: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
References: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.5
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Make filemap_release_folio() check folio_has_private(). Then,
 in most cases, where a call to folio_has_private() is immediately followed
 by a call to filemap_release_folio(), we can get rid of the tes [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p8N5M-007rUz-I9
Subject: [V9fs-developer] [PATCH v5 1/3] mm: Merge
 folio_has_private()/filemap_release_folio() call pairs
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
Cc: dhowells@redhat.com, linux-mm@kvack.org,
 Andreas Dilger <adilger.kernel@dilger.ca>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Rohith Surabattula <rohiths.msft@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-ext4@lists.ozlabs.org, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make filemap_release_folio() check folio_has_private().  Then, in most
cases, where a call to folio_has_private() is immediately followed by a
call to filemap_release_folio(), we can get rid of the test in the pair.

The same is done to page_has_private()/try_to_release_page() call pairs.

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

Changes:
========
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

Link: https://lore.kernel.org/r/Yk9V/03wgdYi65Lb@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/164928630577.457102.8519251179327601178.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/166869495238.3720468.4878151409085146764.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/1459152.1669208550@warthog.procyon.org.uk/ # v3 also
Link: https://lore.kernel.org/r/166924371591.1772793.13893659228628027575.stgit@warthog.procyon.org.uk/ # v4
---

 fs/ext4/move_extent.c |   12 ++++--------
 fs/splice.c           |    3 +--
 mm/filemap.c          |    2 ++
 mm/huge_memory.c      |    3 +--
 mm/internal.h         |    8 ++++++++
 mm/khugepaged.c       |    3 +--
 mm/memory-failure.c   |    8 +++-----
 mm/migrate.c          |    3 +--
 mm/truncate.c         |    6 ++----
 mm/vmscan.c           |    8 ++++----
 10 files changed, 27 insertions(+), 29 deletions(-)

diff --git a/fs/ext4/move_extent.c b/fs/ext4/move_extent.c
index 8dbb87edf24c..dedc9d445f24 100644
--- a/fs/ext4/move_extent.c
+++ b/fs/ext4/move_extent.c
@@ -339,10 +339,8 @@ move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
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
@@ -361,10 +359,8 @@ move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
 
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
index 5969b7a1d353..e69eddaf9d7c 100644
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
diff --git a/mm/filemap.c b/mm/filemap.c
index c4d4ace9cc70..344146c170b0 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -3960,6 +3960,8 @@ bool filemap_release_folio(struct folio *folio, gfp_t gfp)
 	struct address_space * const mapping = folio->mapping;
 
 	BUG_ON(!folio_test_locked(folio));
+	if (!folio_needs_release(folio))
+		return true;
 	if (folio_test_writeback(folio))
 		return false;
 
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index abe6cfd92ffa..8490c42dedb3 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -2702,8 +2702,7 @@ int split_huge_page_to_list(struct page *page, struct list_head *list)
 		gfp = current_gfp_context(mapping_gfp_mask(mapping) &
 							GFP_RECLAIM_MASK);
 
-		if (folio_test_private(folio) &&
-				!filemap_release_folio(folio, gfp)) {
+		if (!filemap_release_folio(folio, gfp)) {
 			ret = -EBUSY;
 			goto out;
 		}
diff --git a/mm/internal.h b/mm/internal.h
index bcf75a8b032d..c4c8e58e1d12 100644
--- a/mm/internal.h
+++ b/mm/internal.h
@@ -163,6 +163,14 @@ static inline void set_page_refcounted(struct page *page)
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
index 5cb401aa2b9d..80157dd79570 100644
--- a/mm/khugepaged.c
+++ b/mm/khugepaged.c
@@ -1926,8 +1926,7 @@ static int collapse_file(struct mm_struct *mm, unsigned long addr,
 			goto out_unlock;
 		}
 
-		if (folio_has_private(folio) &&
-		    !filemap_release_folio(folio, GFP_KERNEL)) {
+		if (!filemap_release_folio(folio, GFP_KERNEL)) {
 			result = SCAN_PAGE_HAS_PRIVATE;
 			folio_putback_lru(folio);
 			goto out_unlock;
diff --git a/mm/memory-failure.c b/mm/memory-failure.c
index c77a9e37e27e..a4f809c11ae9 100644
--- a/mm/memory-failure.c
+++ b/mm/memory-failure.c
@@ -843,14 +843,12 @@ static int truncate_error_page(struct page *p, unsigned long pfn,
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
index a4d3fc65085f..db867bb80128 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -915,8 +915,7 @@ static int fallback_migrate_folio(struct address_space *mapping,
 	 * Buffers may be managed in a filesystem specific way.
 	 * We must have no buffers or drop them.
 	 */
-	if (folio_test_private(src) &&
-	    !filemap_release_folio(src, GFP_KERNEL))
+	if (!filemap_release_folio(src, GFP_KERNEL))
 		return mode == MIGRATE_SYNC ? -EAGAIN : -EBUSY;
 
 	return migrate_folio(mapping, dst, src, mode);
diff --git a/mm/truncate.c b/mm/truncate.c
index 7b4ea4c4a46b..8378aabb5294 100644
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
@@ -573,8 +572,7 @@ static int invalidate_complete_folio2(struct address_space *mapping,
 	if (folio->mapping != mapping)
 		return 0;
 
-	if (folio_has_private(folio) &&
-	    !filemap_release_folio(folio, GFP_KERNEL))
+	if (!filemap_release_folio(folio, GFP_KERNEL))
 		return 0;
 
 	spin_lock(&mapping->host->i_lock);
diff --git a/mm/vmscan.c b/mm/vmscan.c
index bd6637fcd8f9..bded71961143 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -1996,7 +1996,7 @@ static unsigned int shrink_folio_list(struct list_head *folio_list,
 		 * (refcount == 1) it can be freed.  Otherwise, leave
 		 * the folio on the LRU so it is swappable.
 		 */
-		if (folio_has_private(folio)) {
+		if (folio_needs_release(folio)) {
 			if (!filemap_release_folio(folio, sc->gfp_mask))
 				goto activate_locked;
 			if (!mapping && folio_ref_count(folio) == 1) {
@@ -2641,9 +2641,9 @@ static void shrink_active_list(unsigned long nr_to_scan,
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
