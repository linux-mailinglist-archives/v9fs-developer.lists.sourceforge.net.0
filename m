Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA48636D83
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 23:48:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxyY4-0007nv-5m;
	Wed, 23 Nov 2022 22:48:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1oxyY3-0007np-5J
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 22:48:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qMSc8ri6PgRiNUl02Z6CVVLfho7VNuVLjNpxfTm/Xl8=; b=b3usPvxGhu8MdFmPSiPYWTV3k0
 LJPzY6P3NKlmmVoWlSqFD86iVEV1OulGZWTdtitX0pXFoBGRLH4azq7Si2s8fnJySSlbV5as/8las
 W8uIiRpSygBlcavW5N4DbPeZQBLDD3D9D2bbOjZ77MW4fm7v7+FQi+0xP/w0tOAD635I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qMSc8ri6PgRiNUl02Z6CVVLfho7VNuVLjNpxfTm/Xl8=; b=bnJbKth3vT08L4cktJw/PuEMq6
 1CestDQ1vxex75G3Qy/MvhuPVjr5fCqd0a9/WyGOFO+wBQQpSL4xsQbv3vLc6o4/7JCnhg/D6Z4fY
 MFaTjcrmGwbAqBi0BhnGJ0Ux5mAx+JxUXrDUXPI7rW3M2MnL7W884HXKIAcrp8fX/0HE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxyY2-00019f-6l for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 22:48:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669243728;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qMSc8ri6PgRiNUl02Z6CVVLfho7VNuVLjNpxfTm/Xl8=;
 b=SJzm/HjofKENhpxhrMCGKiBfJWqXF8q1YL5K43aDRZT/hCZqEP2fDtc9cTXHxxWBBb2w3E
 2KM60ASPtG+K/B9RPeSRczdJ+8Mnx6z7FNAzj3Q67xS3oYiVGyvIPKOelsEk9O09OtOaoD
 1Hg9NCKk09xcCX8k4YaZqJFkdyOdi8A=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-lAdP3-VPME-myi-_rt7VcA-1; Wed, 23 Nov 2022 17:48:41 -0500
X-MC-Unique: lAdP3-VPME-myi-_rt7VcA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F35AD3C0D193;
 Wed, 23 Nov 2022 22:48:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B64641400C38;
 Wed, 23 Nov 2022 22:48:38 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 23 Nov 2022 22:48:35 +0000
Message-ID: <166924371591.1772793.13893659228628027575.stgit@warthog.procyon.org.uk>
In-Reply-To: <166924370539.1772793.13730698360771821317.stgit@warthog.procyon.org.uk>
References: <166924370539.1772793.13730698360771821317.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.5
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxyY2-00019f-6l
Subject: [V9fs-developer] [RFC PATCH v4 1/3] mm: Merge
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
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

Changes:
========
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
Link: https://lore.kernel.org/r/1459152.1669208550@warthog.procyon.org.uk/ # v3 also
---

 fs/splice.c         |    3 +--
 mm/filemap.c        |    2 ++
 mm/huge_memory.c    |    3 +--
 mm/internal.h       |    8 ++++++++
 mm/khugepaged.c     |    3 +--
 mm/memory-failure.c |    3 +--
 mm/migrate.c        |    3 +--
 mm/truncate.c       |    6 ++----
 mm/vmscan.c         |    7 +++----
 9 files changed, 20 insertions(+), 18 deletions(-)

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
diff --git a/mm/filemap.c b/mm/filemap.c
index 08341616ae7a..93757247cd11 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -3941,6 +3941,8 @@ bool filemap_release_folio(struct folio *folio, gfp_t gfp)
 	struct address_space * const mapping = folio->mapping;
 
 	BUG_ON(!folio_test_locked(folio));
+	if (!folio_needs_release(folio))
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
diff --git a/mm/internal.h b/mm/internal.h
index 6b7ef495b56d..1fefb5181ab7 100644
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
index 04d8b88e5216..b9316f447238 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -1978,7 +1978,7 @@ static unsigned int shrink_folio_list(struct list_head *folio_list,
 		 * (refcount == 1) it can be freed.  Otherwise, leave
 		 * the folio on the LRU so it is swappable.
 		 */
-		if (folio_has_private(folio)) {
+		if (folio_needs_release(folio)) {
 			if (!filemap_release_folio(folio, sc->gfp_mask))
 				goto activate_locked;
 			if (!mapping && folio_ref_count(folio) == 1) {
@@ -2592,9 +2592,8 @@ static void shrink_active_list(unsigned long nr_to_scan,
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
