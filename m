Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5CD302DCF
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 22:33:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l49Ue-0001XC-L4; Mon, 25 Jan 2021 21:33:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l49Ud-0001Wv-Mu
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pYJgL9LK9rSIKWVgFalSzYYYdU21hFgzxSciVNpHbLQ=; b=TH2zMKTW+U3Q3H6bazDpf546tU
 VyQ5fNZlhvYbHqcbjJ09/j3nejPwOiBi9gb4TsN3Ou67FOpUktxx/RqeeWo2euNywghbv3qBeZsAJ
 8PIWTAYNuM/WfZGp3BFmUugi9xzI/bAu6sw1ZAlvSmphGdGwRp8dH7gveAMYrtHr3tGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pYJgL9LK9rSIKWVgFalSzYYYdU21hFgzxSciVNpHbLQ=; b=k9ubQTRmqBKT57PRKmBLVZZuSa
 UP6J+y5TY1F+klWR4LW1jjBWn7pRc1Kl9e4O7qWdMA+mao3GKmv9mcI5s98khVzrYgN/Sx5uWjQ4x
 dHB+aMGLSzPEn3ifrzjHUs5HVXZ5ylOwt0Fz97crXmjlVSEYCp1ffa0JHaTov3w8PWhI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l49Ua-003kbl-MZ
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611610422;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pYJgL9LK9rSIKWVgFalSzYYYdU21hFgzxSciVNpHbLQ=;
 b=WmRmB+0tPMkKpuBW00spPXOij4FdsnGZXzYTdAcjd5mboP3CraznIle6jSzQ2K2Aan9eu2
 tG/DHz7302tpmkKyS5VWQplQD9Mw+GJdIxIZf0wf7KR7xrWOPqtb2t3Rg2FkiCr2jhhf/3
 54GMpczsJcFCALfK/NQHazIgRaBgbEs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-483-BRdgQwU2Mu21iy-0CfjCxg-1; Mon, 25 Jan 2021 16:33:38 -0500
X-MC-Unique: BRdgQwU2Mu21iy-0CfjCxg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FECF8735C2;
 Mon, 25 Jan 2021 21:33:36 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 401BB5D6AB;
 Mon, 25 Jan 2021 21:33:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 25 Jan 2021 21:33:27 +0000
Message-ID: <161161040747.2537118.11435394902674511430.stgit@warthog.procyon.org.uk>
In-Reply-To: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l49Ua-003kbl-MZ
Subject: [V9fs-developer] [PATCH 13/32] afs: Pass page into dirty region
 helpers to provide THP size
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Pass a pointer to the page being accessed into the dirty region helpers so
that the size of the page can be determined in case it's a transparent huge
page.

This also required the page to be passed into the afs_page_dirty trace
point - so there's no need to specifically pass in the index or private
data as these can be retrieved directly from the page struct.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/file.c              |   20 +++++++--------
 fs/afs/internal.h          |   16 ++++++------
 fs/afs/write.c             |   60 ++++++++++++++++++--------------------------
 include/trace/events/afs.h |   23 ++++++++++-------
 4 files changed, 55 insertions(+), 64 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 6d43713fde01..21868bfc3a44 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -515,8 +515,8 @@ static void afs_invalidate_dirty(struct page *page, unsigned int offset,
 		return;
 
 	/* We may need to shorten the dirty region */
-	f = afs_page_dirty_from(priv);
-	t = afs_page_dirty_to(priv);
+	f = afs_page_dirty_from(page, priv);
+	t = afs_page_dirty_to(page, priv);
 
 	if (t <= offset || f >= end)
 		return; /* Doesn't overlap */
@@ -534,17 +534,17 @@ static void afs_invalidate_dirty(struct page *page, unsigned int offset,
 	if (f == t)
 		goto undirty;
 
-	priv = afs_page_dirty(f, t);
+	priv = afs_page_dirty(page, f, t);
 	set_page_private(page, priv);
-	trace_afs_page_dirty(vnode, tracepoint_string("trunc"), page->index, priv);
+	trace_afs_page_dirty(vnode, tracepoint_string("trunc"), page);
 	return;
 
 undirty:
-	trace_afs_page_dirty(vnode, tracepoint_string("undirty"), page->index, priv);
+	trace_afs_page_dirty(vnode, tracepoint_string("undirty"), page);
 	clear_page_dirty_for_io(page);
 full_invalidate:
-	priv = (unsigned long)detach_page_private(page);
-	trace_afs_page_dirty(vnode, tracepoint_string("inval"), page->index, priv);
+	detach_page_private(page);
+	trace_afs_page_dirty(vnode, tracepoint_string("inval"), page);
 }
 
 /*
@@ -572,7 +572,6 @@ static void afs_invalidatepage(struct page *page, unsigned int offset,
 static int afs_releasepage(struct page *page, gfp_t gfp_flags)
 {
 	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
-	unsigned long priv;
 
 	_enter("{{%llx:%llu}[%lu],%lx},%x",
 	       vnode->fid.vid, vnode->fid.vnode, page->index, page->flags,
@@ -581,9 +580,8 @@ static int afs_releasepage(struct page *page, gfp_t gfp_flags)
 	/* deny if page is being written to the cache and the caller hasn't
 	 * elected to wait */
 	if (PagePrivate(page)) {
-		priv = (unsigned long)detach_page_private(page);
-		trace_afs_page_dirty(vnode, tracepoint_string("rel"),
-				     page->index, priv);
+		detach_page_private(page);
+		trace_afs_page_dirty(vnode, tracepoint_string("rel"), page);
 	}
 
 	/* indicate that the page can be released */
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 0d150a29e39e..cd545e7dbfb8 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -875,31 +875,31 @@ struct afs_vnode_cache_aux {
 #define __AFS_PAGE_PRIV_MMAPPED	0x8000UL
 #endif
 
-static inline unsigned int afs_page_dirty_resolution(void)
+static inline unsigned int afs_page_dirty_resolution(struct page *page)
 {
-	int shift = PAGE_SHIFT - (__AFS_PAGE_PRIV_SHIFT - 1);
+	int shift = thp_order(page) + PAGE_SHIFT - (__AFS_PAGE_PRIV_SHIFT - 1);
 	return (shift > 0) ? shift : 0;
 }
 
-static inline size_t afs_page_dirty_from(unsigned long priv)
+static inline size_t afs_page_dirty_from(struct page *page, unsigned long priv)
 {
 	unsigned long x = priv & __AFS_PAGE_PRIV_MASK;
 
 	/* The lower bound is inclusive */
-	return x << afs_page_dirty_resolution();
+	return x << afs_page_dirty_resolution(page);
 }
 
-static inline size_t afs_page_dirty_to(unsigned long priv)
+static inline size_t afs_page_dirty_to(struct page *page, unsigned long priv)
 {
 	unsigned long x = (priv >> __AFS_PAGE_PRIV_SHIFT) & __AFS_PAGE_PRIV_MASK;
 
 	/* The upper bound is immediately beyond the region */
-	return (x + 1) << afs_page_dirty_resolution();
+	return (x + 1) << afs_page_dirty_resolution(page);
 }
 
-static inline unsigned long afs_page_dirty(size_t from, size_t to)
+static inline unsigned long afs_page_dirty(struct page *page, size_t from, size_t to)
 {
-	unsigned int res = afs_page_dirty_resolution();
+	unsigned int res = afs_page_dirty_resolution(page);
 	from >>= res;
 	to = (to - 1) >> res;
 	return (to << __AFS_PAGE_PRIV_SHIFT) | from;
diff --git a/fs/afs/write.c b/fs/afs/write.c
index 92eaa88000d7..9d0cef35ecba 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -112,15 +112,14 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 	t = f = 0;
 	if (PagePrivate(page)) {
 		priv = page_private(page);
-		f = afs_page_dirty_from(priv);
-		t = afs_page_dirty_to(priv);
+		f = afs_page_dirty_from(page, priv);
+		t = afs_page_dirty_to(page, priv);
 		ASSERTCMP(f, <=, t);
 	}
 
 	if (f != t) {
 		if (PageWriteback(page)) {
-			trace_afs_page_dirty(vnode, tracepoint_string("alrdy"),
-					     page->index, priv);
+			trace_afs_page_dirty(vnode, tracepoint_string("alrdy"), page);
 			goto flush_conflicting_write;
 		}
 		/* If the file is being filled locally, allow inter-write
@@ -204,21 +203,19 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 
 	if (PagePrivate(page)) {
 		priv = page_private(page);
-		f = afs_page_dirty_from(priv);
-		t = afs_page_dirty_to(priv);
+		f = afs_page_dirty_from(page, priv);
+		t = afs_page_dirty_to(page, priv);
 		if (from < f)
 			f = from;
 		if (to > t)
 			t = to;
-		priv = afs_page_dirty(f, t);
+		priv = afs_page_dirty(page, f, t);
 		set_page_private(page, priv);
-		trace_afs_page_dirty(vnode, tracepoint_string("dirty+"),
-				     page->index, priv);
+		trace_afs_page_dirty(vnode, tracepoint_string("dirty+"), page);
 	} else {
-		priv = afs_page_dirty(from, to);
+		priv = afs_page_dirty(page, from, to);
 		attach_page_private(page, (void *)priv);
-		trace_afs_page_dirty(vnode, tracepoint_string("dirty"),
-				     page->index, priv);
+		trace_afs_page_dirty(vnode, tracepoint_string("dirty"), page);
 	}
 
 	set_page_dirty(page);
@@ -321,7 +318,6 @@ static void afs_pages_written_back(struct afs_vnode *vnode,
 				   pgoff_t first, pgoff_t last)
 {
 	struct pagevec pv;
-	unsigned long priv;
 	unsigned count, loop;
 
 	_enter("{%llx:%llu},{%lx-%lx}",
@@ -340,9 +336,9 @@ static void afs_pages_written_back(struct afs_vnode *vnode,
 		ASSERTCMP(pv.nr, ==, count);
 
 		for (loop = 0; loop < count; loop++) {
-			priv = (unsigned long)detach_page_private(pv.pages[loop]);
+			detach_page_private(pv.pages[loop]);
 			trace_afs_page_dirty(vnode, tracepoint_string("clear"),
-					     pv.pages[loop]->index, priv);
+					     pv.pages[loop]);
 			end_page_writeback(pv.pages[loop]);
 		}
 		first += count;
@@ -516,15 +512,13 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 	 */
 	start = primary_page->index;
 	priv = page_private(primary_page);
-	offset = afs_page_dirty_from(priv);
-	to = afs_page_dirty_to(priv);
-	trace_afs_page_dirty(vnode, tracepoint_string("store"),
-			     primary_page->index, priv);
+	offset = afs_page_dirty_from(primary_page, priv);
+	to = afs_page_dirty_to(primary_page, priv);
+	trace_afs_page_dirty(vnode, tracepoint_string("store"), primary_page);
 
 	WARN_ON(offset == to);
 	if (offset == to)
-		trace_afs_page_dirty(vnode, tracepoint_string("WARN"),
-				     primary_page->index, priv);
+		trace_afs_page_dirty(vnode, tracepoint_string("WARN"), primary_page);
 
 	if (start >= final_page ||
 	    (to < PAGE_SIZE && !test_bit(AFS_VNODE_NEW_CONTENT, &vnode->flags)))
@@ -562,8 +556,8 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 			}
 
 			priv = page_private(page);
-			f = afs_page_dirty_from(priv);
-			t = afs_page_dirty_to(priv);
+			f = afs_page_dirty_from(page, priv);
+			t = afs_page_dirty_to(page, priv);
 			if (f != 0 &&
 			    !test_bit(AFS_VNODE_NEW_CONTENT, &vnode->flags)) {
 				unlock_page(page);
@@ -571,8 +565,7 @@ static int afs_write_back_from_locked_page(struct address_space *mapping,
 			}
 			to = t;
 
-			trace_afs_page_dirty(vnode, tracepoint_string("store+"),
-					     page->index, priv);
+			trace_afs_page_dirty(vnode, tracepoint_string("store+"), page);
 
 			if (!clear_page_dirty_for_io(page))
 				BUG();
@@ -861,14 +854,13 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
 	 */
 	wait_on_page_writeback(vmf->page);
 
-	priv = afs_page_dirty(0, PAGE_SIZE);
+	priv = afs_page_dirty(vmf->page, 0, PAGE_SIZE);
 	priv = afs_page_dirty_mmapped(priv);
-	trace_afs_page_dirty(vnode, tracepoint_string("mkwrite"),
-			     vmf->page->index, priv);
 	if (PagePrivate(vmf->page))
 		set_page_private(vmf->page, priv);
 	else
 		attach_page_private(vmf->page, (void *)priv);
+	trace_afs_page_dirty(vnode, tracepoint_string("mkwrite"), vmf->page);
 	file_update_time(file);
 
 	sb_end_pagefault(inode->i_sb);
@@ -921,17 +913,15 @@ int afs_launder_page(struct page *page)
 		f = 0;
 		t = PAGE_SIZE;
 		if (PagePrivate(page)) {
-			f = afs_page_dirty_from(priv);
-			t = afs_page_dirty_to(priv);
+			f = afs_page_dirty_from(page, priv);
+			t = afs_page_dirty_to(page, priv);
 		}
 
-		trace_afs_page_dirty(vnode, tracepoint_string("launder"),
-				     page->index, priv);
+		trace_afs_page_dirty(vnode, tracepoint_string("launder"), page);
 		ret = afs_store_data(mapping, page->index, page->index, t, f, true);
 	}
 
-	priv = (unsigned long)detach_page_private(page);
-	trace_afs_page_dirty(vnode, tracepoint_string("laundered"),
-			     page->index, priv);
+	detach_page_private(page);
+	trace_afs_page_dirty(vnode, tracepoint_string("laundered"), page);
 	return ret;
 }
diff --git a/include/trace/events/afs.h b/include/trace/events/afs.h
index 4a5cc8c64be3..9203cf6a8c53 100644
--- a/include/trace/events/afs.h
+++ b/include/trace/events/afs.h
@@ -969,30 +969,33 @@ TRACE_EVENT(afs_dir_check_failed,
 	    );
 
 TRACE_EVENT(afs_page_dirty,
-	    TP_PROTO(struct afs_vnode *vnode, const char *where,
-		     pgoff_t page, unsigned long priv),
+	    TP_PROTO(struct afs_vnode *vnode, const char *where, struct page *page),
 
-	    TP_ARGS(vnode, where, page, priv),
+	    TP_ARGS(vnode, where, page),
 
 	    TP_STRUCT__entry(
 		    __field(struct afs_vnode *,		vnode		)
 		    __field(const char *,		where		)
 		    __field(pgoff_t,			page		)
-		    __field(unsigned long,		priv		)
+		    __field(unsigned long,		from		)
+		    __field(unsigned long,		to		)
 			     ),
 
 	    TP_fast_assign(
 		    __entry->vnode = vnode;
 		    __entry->where = where;
-		    __entry->page = page;
-		    __entry->priv = priv;
+		    __entry->page = page->index;
+		    __entry->from = afs_page_dirty_from(page, page->private);
+		    __entry->to = afs_page_dirty_to(page, page->private);
+		    __entry->to |= (afs_is_page_dirty_mmapped(page->private) ?
+				    (1UL << (BITS_PER_LONG - 1)) : 0);
 			   ),
 
-	    TP_printk("vn=%p %lx %s %zx-%zx%s",
+	    TP_printk("vn=%p %lx %s %lx-%lx%s",
 		      __entry->vnode, __entry->page, __entry->where,
-		      afs_page_dirty_from(__entry->priv),
-		      afs_page_dirty_to(__entry->priv),
-		      afs_is_page_dirty_mmapped(__entry->priv) ? " M" : "")
+		      __entry->from,
+		      __entry->to & ~(1UL << (BITS_PER_LONG - 1)),
+		      __entry->to & (1UL << (BITS_PER_LONG - 1)) ? " M" : "")
 	    );
 
 TRACE_EVENT(afs_call_state,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
