Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9032A21DC36
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:31:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1MM-0005bL-CX; Mon, 13 Jul 2020 16:31:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1MK-0005bD-J8
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o1lqHzY57p2ty6+cxikXuHsbtxl8Y+xJg6YxG6iKJok=; b=T7TQO1wsMcUKAFiuy6t2aGr91a
 PLFDMQpbo/PWo6DH+FwXb+l948VoT0TYVBwPjXYvLNlJAvpPpscfKpIUWrw9L0xHA4t22fCzgvHmd
 NXZNiEcoTCy+ilIt91LkFJE0DE38x/7YRf90liKvw16zOSI+w0pzns0ctk2ZihlKorDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o1lqHzY57p2ty6+cxikXuHsbtxl8Y+xJg6YxG6iKJok=; b=KfNl6P31m5vwkvRGCiM5KUetXM
 OAgpu9p8HDPOaevtj8yL0nxfnT9c4etHNReqLaaPB+qCrIAiYVpFa0CpX1oU3W2oJ8bmgC7K62xHr
 hWcijOI8hQ5bWMC3gNY6WYNHhlhtK37ROqwZKUL4eVLjPxjUYDj6gurptgRRVCfoMr6Y=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1MI-001hGi-QY
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594657869;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o1lqHzY57p2ty6+cxikXuHsbtxl8Y+xJg6YxG6iKJok=;
 b=K6YyZ4KotgC/sHvg2eJJGIaoTuhDIvFtKSGwhMRgI9mBYDvmsar+BdCS1XFYhOV3a1sl0Q
 Dk7Jtv/unHsm9Wppjby/+6aGIE+/oUM0cluX/EN6mV2a+zwU7D9YkHWKwVCLulK/xfIPYk
 yM4+09iax7NrmhyKwi2qn6W96waEufw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-HmDCbhAqM5yATHEboj25ZA-1; Mon, 13 Jul 2020 12:31:00 -0400
X-MC-Unique: HmDCbhAqM5yATHEboj25ZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAD791800D42;
 Mon, 13 Jul 2020 16:30:58 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F331119C66;
 Mon, 13 Jul 2020 16:30:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:30:52 +0100
Message-ID: <159465785214.1376674.6062549291411362531.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Headers-End: 1jv1MI-001hGi-QY
Subject: [V9fs-developer] [PATCH 01/32] iov_iter: Add ITER_MAPPING
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

Add an iterator, ITER_MAPPING, that walks through a set of pages attached
to an address_space, starting at a given page and offset and walking for
the specified amount of bytes.

The caller must guarantee that the pages are all present and they must be
locked using PG_locked, PG_writeback or PG_fscache to prevent them from
going away or being migrated whilst they're being accessed.

This is useful for copying data from socket buffers to inodes in network
filesystems and for transferring data between those inodes and the cache
using direct I/O.

Whilst it is true that ITER_BVEC could be used instead, that would require
a bio_vec array to be allocated to refer to all the pages - which should be
redundant if inode->i_pages also points to all these pages.

This could also be turned into an ITER_XARRAY, taking and xarray pointer
instead of a mapping pointer.  It would be mostly trivial, except for the
use of find_get_pages_contig() by iov_iter_get_pages*().

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
---

 include/linux/uio.h |   11 ++
 lib/iov_iter.c      |  286 +++++++++++++++++++++++++++++++++++++++++++++++----
 2 files changed, 274 insertions(+), 23 deletions(-)

diff --git a/include/linux/uio.h b/include/linux/uio.h
index 9576fd8158d7..a0321a740f51 100644
--- a/include/linux/uio.h
+++ b/include/linux/uio.h
@@ -11,6 +11,7 @@
 #include <uapi/linux/uio.h>
 
 struct page;
+struct address_space;
 struct pipe_inode_info;
 
 struct kvec {
@@ -25,6 +26,7 @@ enum iter_type {
 	ITER_BVEC = 16,
 	ITER_PIPE = 32,
 	ITER_DISCARD = 64,
+	ITER_MAPPING = 128,
 };
 
 struct iov_iter {
@@ -40,6 +42,7 @@ struct iov_iter {
 		const struct iovec *iov;
 		const struct kvec *kvec;
 		const struct bio_vec *bvec;
+		struct address_space *mapping;
 		struct pipe_inode_info *pipe;
 	};
 	union {
@@ -48,6 +51,7 @@ struct iov_iter {
 			unsigned int head;
 			unsigned int start_head;
 		};
+		loff_t mapping_start;
 	};
 };
 
@@ -81,6 +85,11 @@ static inline bool iov_iter_is_discard(const struct iov_iter *i)
 	return iov_iter_type(i) == ITER_DISCARD;
 }
 
+static inline bool iov_iter_is_mapping(const struct iov_iter *i)
+{
+	return iov_iter_type(i) == ITER_MAPPING;
+}
+
 static inline unsigned char iov_iter_rw(const struct iov_iter *i)
 {
 	return i->type & (READ | WRITE);
@@ -222,6 +231,8 @@ void iov_iter_bvec(struct iov_iter *i, unsigned int direction, const struct bio_
 void iov_iter_pipe(struct iov_iter *i, unsigned int direction, struct pipe_inode_info *pipe,
 			size_t count);
 void iov_iter_discard(struct iov_iter *i, unsigned int direction, size_t count);
+void iov_iter_mapping(struct iov_iter *i, unsigned int direction, struct address_space *mapping,
+		      loff_t start, size_t count);
 ssize_t iov_iter_get_pages(struct iov_iter *i, struct page **pages,
 			size_t maxsize, unsigned maxpages, size_t *start);
 ssize_t iov_iter_get_pages_alloc(struct iov_iter *i, struct page ***pages,
diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index bf538c2bec77..e4a073523b76 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -75,7 +75,40 @@
 	}						\
 }
 
-#define iterate_all_kinds(i, n, v, I, B, K) {			\
+#define iterate_mapping(i, n, __v, skip, STEP) {		\
+	struct page *page;					\
+	size_t wanted = n, seg, offset;				\
+	loff_t start = i->mapping_start + skip;			\
+	pgoff_t index = start >> PAGE_SHIFT;			\
+								\
+	XA_STATE(xas, &i->mapping->i_pages, index);		\
+								\
+	rcu_read_lock();						\
+	for (page = xas_load(&xas); page; page = xas_next(&xas)) {	\
+		if (xas_retry(&xas, page))				\
+			continue;					\
+		if (WARN_ON(xa_is_value(page)))				\
+			break;						\
+		if (WARN_ON(PageHuge(page)))				\
+			break;						\
+		if (!page)						\
+			break;						\
+		__v.bv_page = find_subpage(page, xas.xa_index);		\
+		offset = (i->mapping_start + skip) & ~PAGE_MASK;	\
+		seg = PAGE_SIZE - offset;			\
+		__v.bv_offset = offset;				\
+		__v.bv_len = min(n, seg);			\
+		(void)(STEP);					\
+		n -= __v.bv_len;				\
+		skip += __v.bv_len;				\
+		if (n == 0)					\
+			break;					\
+	}							\
+	rcu_read_unlock();					\
+	n = wanted - n;						\
+}
+
+#define iterate_all_kinds(i, n, v, I, B, K, M) {		\
 	if (likely(n)) {					\
 		size_t skip = i->iov_offset;			\
 		if (unlikely(i->type & ITER_BVEC)) {		\
@@ -87,6 +120,9 @@
 			struct kvec v;				\
 			iterate_kvec(i, n, v, kvec, skip, (K))	\
 		} else if (unlikely(i->type & ITER_DISCARD)) {	\
+		} else if (unlikely(i->type & ITER_MAPPING)) {	\
+			struct bio_vec v;			\
+			iterate_mapping(i, n, v, skip, (M));	\
 		} else {					\
 			const struct iovec *iov;		\
 			struct iovec v;				\
@@ -95,7 +131,7 @@
 	}							\
 }
 
-#define iterate_and_advance(i, n, v, I, B, K) {			\
+#define iterate_and_advance(i, n, v, I, B, K, M) {		\
 	if (unlikely(i->count < n))				\
 		n = i->count;					\
 	if (i->count) {						\
@@ -120,6 +156,9 @@
 			i->kvec = kvec;				\
 		} else if (unlikely(i->type & ITER_DISCARD)) {	\
 			skip += n;				\
+		} else if (unlikely(i->type & ITER_MAPPING)) {	\
+			struct bio_vec v;			\
+			iterate_mapping(i, n, v, skip, (M))	\
 		} else {					\
 			const struct iovec *iov;		\
 			struct iovec v;				\
@@ -629,7 +668,9 @@ size_t _copy_to_iter(const void *addr, size_t bytes, struct iov_iter *i)
 		copyout(v.iov_base, (from += v.iov_len) - v.iov_len, v.iov_len),
 		memcpy_to_page(v.bv_page, v.bv_offset,
 			       (from += v.bv_len) - v.bv_len, v.bv_len),
-		memcpy(v.iov_base, (from += v.iov_len) - v.iov_len, v.iov_len)
+		memcpy(v.iov_base, (from += v.iov_len) - v.iov_len, v.iov_len),
+		memcpy_to_page(v.bv_page, v.bv_offset,
+			       (from += v.bv_len) - v.bv_len, v.bv_len)
 	)
 
 	return bytes;
@@ -747,6 +788,15 @@ size_t _copy_to_iter_mcsafe(const void *addr, size_t bytes, struct iov_iter *i)
 			bytes = curr_addr - s_addr - rem;
 			return bytes;
 		}
+		}),
+		({
+		rem = memcpy_mcsafe_to_page(v.bv_page, v.bv_offset,
+                               (from += v.bv_len) - v.bv_len, v.bv_len);
+		if (rem) {
+			curr_addr = (unsigned long) from;
+			bytes = curr_addr - s_addr - rem;
+			return bytes;
+		}
 		})
 	)
 
@@ -768,7 +818,9 @@ size_t _copy_from_iter(void *addr, size_t bytes, struct iov_iter *i)
 		copyin((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
 		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
+		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
+		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
+				 v.bv_offset, v.bv_len)
 	)
 
 	return bytes;
@@ -794,7 +846,9 @@ bool _copy_from_iter_full(void *addr, size_t bytes, struct iov_iter *i)
 		0;}),
 		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
+		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
+		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
+				 v.bv_offset, v.bv_len)
 	)
 
 	iov_iter_advance(i, bytes);
@@ -814,7 +868,9 @@ size_t _copy_from_iter_nocache(void *addr, size_t bytes, struct iov_iter *i)
 					 v.iov_base, v.iov_len),
 		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
+		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
+		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
+				 v.bv_offset, v.bv_len)
 	)
 
 	return bytes;
@@ -849,7 +905,9 @@ size_t _copy_from_iter_flushcache(void *addr, size_t bytes, struct iov_iter *i)
 		memcpy_page_flushcache((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
 		memcpy_flushcache((to += v.iov_len) - v.iov_len, v.iov_base,
-			v.iov_len)
+			v.iov_len),
+		memcpy_page_flushcache((to += v.bv_len) - v.bv_len, v.bv_page,
+				 v.bv_offset, v.bv_len)
 	)
 
 	return bytes;
@@ -873,7 +931,9 @@ bool _copy_from_iter_full_nocache(void *addr, size_t bytes, struct iov_iter *i)
 		0;}),
 		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
+		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
+		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
+				 v.bv_offset, v.bv_len)
 	)
 
 	iov_iter_advance(i, bytes);
@@ -910,7 +970,7 @@ size_t copy_page_to_iter(struct page *page, size_t offset, size_t bytes,
 {
 	if (unlikely(!page_copy_sane(page, offset, bytes)))
 		return 0;
-	if (i->type & (ITER_BVEC|ITER_KVEC)) {
+	if (i->type & (ITER_BVEC | ITER_KVEC | ITER_MAPPING)) {
 		void *kaddr = kmap_atomic(page);
 		size_t wanted = copy_to_iter(kaddr + offset, bytes, i);
 		kunmap_atomic(kaddr);
@@ -933,7 +993,7 @@ size_t copy_page_from_iter(struct page *page, size_t offset, size_t bytes,
 		WARN_ON(1);
 		return 0;
 	}
-	if (i->type & (ITER_BVEC|ITER_KVEC)) {
+	if (i->type & (ITER_BVEC | ITER_KVEC | ITER_MAPPING)) {
 		void *kaddr = kmap_atomic(page);
 		size_t wanted = _copy_from_iter(kaddr + offset, bytes, i);
 		kunmap_atomic(kaddr);
@@ -977,7 +1037,8 @@ size_t iov_iter_zero(size_t bytes, struct iov_iter *i)
 	iterate_and_advance(i, bytes, v,
 		clear_user(v.iov_base, v.iov_len),
 		memzero_page(v.bv_page, v.bv_offset, v.bv_len),
-		memset(v.iov_base, 0, v.iov_len)
+		memset(v.iov_base, 0, v.iov_len),
+		memzero_page(v.bv_page, v.bv_offset, v.bv_len)
 	)
 
 	return bytes;
@@ -1001,7 +1062,9 @@ size_t iov_iter_copy_from_user_atomic(struct page *page,
 		copyin((p += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
 		memcpy_from_page((p += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((p += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
+		memcpy((p += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
+		memcpy_from_page((p += v.bv_len) - v.bv_len, v.bv_page,
+				 v.bv_offset, v.bv_len)
 	)
 	kunmap_atomic(kaddr);
 	return bytes;
@@ -1072,7 +1135,13 @@ void iov_iter_advance(struct iov_iter *i, size_t size)
 		i->count -= size;
 		return;
 	}
-	iterate_and_advance(i, size, v, 0, 0, 0)
+	if (unlikely(iov_iter_is_mapping(i))) {
+		/* We really don't want to fetch pages if we can avoid it */
+		i->iov_offset += size;
+		i->count -= size;
+		return;
+	}
+	iterate_and_advance(i, size, v, 0, 0, 0, 0)
 }
 EXPORT_SYMBOL(iov_iter_advance);
 
@@ -1116,7 +1185,12 @@ void iov_iter_revert(struct iov_iter *i, size_t unroll)
 		return;
 	}
 	unroll -= i->iov_offset;
-	if (iov_iter_is_bvec(i)) {
+	if (iov_iter_is_mapping(i)) {
+		BUG(); /* We should never go beyond the start of the specified
+			* range since we might then be straying into pages that
+			* aren't pinned.
+			*/
+	} else if (iov_iter_is_bvec(i)) {
 		const struct bio_vec *bvec = i->bvec;
 		while (1) {
 			size_t n = (--bvec)->bv_len;
@@ -1153,9 +1227,9 @@ size_t iov_iter_single_seg_count(const struct iov_iter *i)
 		return i->count;	// it is a silly place, anyway
 	if (i->nr_segs == 1)
 		return i->count;
-	if (unlikely(iov_iter_is_discard(i)))
+	if (unlikely(iov_iter_is_discard(i) || iov_iter_is_mapping(i)))
 		return i->count;
-	else if (iov_iter_is_bvec(i))
+	if (iov_iter_is_bvec(i))
 		return min(i->count, i->bvec->bv_len - i->iov_offset);
 	else
 		return min(i->count, i->iov->iov_len - i->iov_offset);
@@ -1203,6 +1277,32 @@ void iov_iter_pipe(struct iov_iter *i, unsigned int direction,
 }
 EXPORT_SYMBOL(iov_iter_pipe);
 
+/**
+ * iov_iter_mapping - Initialise an I/O iterator to use the pages in a mapping
+ * @i: The iterator to initialise.
+ * @direction: The direction of the transfer.
+ * @mapping: The mapping to access.
+ * @start: The start file position.
+ * @count: The size of the I/O buffer in bytes.
+ *
+ * Set up an I/O iterator to either draw data out of the pages attached to an
+ * inode or to inject data into those pages.  The pages *must* be prevented
+ * from evaporation, either by taking a ref on them or locking them by the
+ * caller.
+ */
+void iov_iter_mapping(struct iov_iter *i, unsigned int direction,
+		      struct address_space *mapping,
+		      loff_t start, size_t count)
+{
+	BUG_ON(direction & ~1);
+	i->type = ITER_MAPPING | (direction & (READ | WRITE));
+	i->mapping = mapping;
+	i->mapping_start = start;
+	i->count = count;
+	i->iov_offset = 0;
+}
+EXPORT_SYMBOL(iov_iter_mapping);
+
 /**
  * iov_iter_discard - Initialise an I/O iterator that discards data
  * @i: The iterator to initialise.
@@ -1236,7 +1336,8 @@ unsigned long iov_iter_alignment(const struct iov_iter *i)
 	iterate_all_kinds(i, size, v,
 		(res |= (unsigned long)v.iov_base | v.iov_len, 0),
 		res |= v.bv_offset | v.bv_len,
-		res |= (unsigned long)v.iov_base | v.iov_len
+		res |= (unsigned long)v.iov_base | v.iov_len,
+		res |= v.bv_offset | v.bv_len
 	)
 	return res;
 }
@@ -1258,7 +1359,9 @@ unsigned long iov_iter_gap_alignment(const struct iov_iter *i)
 		(res |= (!res ? 0 : (unsigned long)v.bv_offset) |
 			(size != v.bv_len ? size : 0)),
 		(res |= (!res ? 0 : (unsigned long)v.iov_base) |
-			(size != v.iov_len ? size : 0))
+			(size != v.iov_len ? size : 0)),
+		(res |= (!res ? 0 : (unsigned long)v.bv_offset) |
+			(size != v.bv_len ? size : 0))
 		);
 	return res;
 }
@@ -1308,6 +1411,48 @@ static ssize_t pipe_get_pages(struct iov_iter *i,
 	return __pipe_get_pages(i, min(maxsize, capacity), pages, iter_head, start);
 }
 
+static ssize_t iter_mapping_get_pages(struct iov_iter *i,
+				      struct page **pages, size_t maxsize,
+				      unsigned maxpages, size_t *_start_offset)
+{
+	unsigned nr, offset;
+	pgoff_t index, count;
+	size_t size = maxsize, actual;
+	loff_t pos;
+
+	if (!size || !maxpages)
+		return 0;
+
+	pos = i->mapping_start + i->iov_offset;
+	index = pos >> PAGE_SHIFT;
+	offset = pos & ~PAGE_MASK;
+	*_start_offset = offset;
+
+	count = 1;
+	if (size > PAGE_SIZE - offset) {
+		size -= PAGE_SIZE - offset;
+		count += size >> PAGE_SHIFT;
+		size &= ~PAGE_MASK;
+		if (size)
+			count++;
+	}
+
+	if (count > maxpages)
+		count = maxpages;
+
+	nr = find_get_pages_contig(i->mapping, index, count, pages);
+	if (nr == 0)
+		return 0;
+
+	actual = PAGE_SIZE * nr;
+	actual -= offset;
+	if (nr == count && size > 0) {
+		unsigned last_offset = (nr > 1) ? 0 : offset;
+		actual -= PAGE_SIZE - (last_offset + size);
+	}
+	return actual;
+}
+
 ssize_t iov_iter_get_pages(struct iov_iter *i,
 		   struct page **pages, size_t maxsize, unsigned maxpages,
 		   size_t *start)
@@ -1317,6 +1462,8 @@ ssize_t iov_iter_get_pages(struct iov_iter *i,
 
 	if (unlikely(iov_iter_is_pipe(i)))
 		return pipe_get_pages(i, pages, maxsize, maxpages, start);
+	if (unlikely(iov_iter_is_mapping(i)))
+		return iter_mapping_get_pages(i, pages, maxsize, maxpages, start);
 	if (unlikely(iov_iter_is_discard(i)))
 		return -EFAULT;
 
@@ -1343,7 +1490,8 @@ ssize_t iov_iter_get_pages(struct iov_iter *i,
 		return v.bv_len;
 	}),({
 		return -EFAULT;
-	})
+	}),
+	0
 	)
 	return 0;
 }
@@ -1387,6 +1535,51 @@ static ssize_t pipe_get_pages_alloc(struct iov_iter *i,
 	return n;
 }
 
+static ssize_t iter_mapping_get_pages_alloc(struct iov_iter *i,
+					    struct page ***pages, size_t maxsize,
+					    size_t *_start_offset)
+{
+	struct page **p;
+	unsigned nr, offset;
+	pgoff_t index, count;
+	size_t size = maxsize, actual;
+	loff_t pos;
+
+	if (!size)
+		return 0;
+
+	pos = i->mapping_start + i->iov_offset;
+	index = pos >> PAGE_SHIFT;
+	offset = pos & ~PAGE_MASK;
+	*_start_offset = offset;
+
+	count = 1;
+	if (size > PAGE_SIZE - offset) {
+		size -= PAGE_SIZE - offset;
+		count += size >> PAGE_SHIFT;
+		size &= ~PAGE_MASK;
+		if (size)
+			count++;
+	}
+
+	p = get_pages_array(count);
+	if (!p)
+		return -ENOMEM;
+	*pages = p;
+
+	nr = find_get_pages_contig(i->mapping, index, count, p);
+	if (nr == 0)
+		return 0;
+
+	actual = PAGE_SIZE * nr;
+	actual -= offset;
+	if (nr == count && size > 0) {
+		unsigned last_offset = (nr > 1) ? 0 : offset;
+		actual -= PAGE_SIZE - (last_offset + size);
+	}
+	return actual;
+}
+
 ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
 		   struct page ***pages, size_t maxsize,
 		   size_t *start)
@@ -1398,6 +1591,8 @@ ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
 
 	if (unlikely(iov_iter_is_pipe(i)))
 		return pipe_get_pages_alloc(i, pages, maxsize, start);
+	if (unlikely(iov_iter_is_mapping(i)))
+		return iter_mapping_get_pages_alloc(i, pages, maxsize, start);
 	if (unlikely(iov_iter_is_discard(i)))
 		return -EFAULT;
 
@@ -1430,7 +1625,7 @@ ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
 		return v.bv_len;
 	}),({
 		return -EFAULT;
-	})
+	}), 0
 	)
 	return 0;
 }
@@ -1469,6 +1664,14 @@ size_t csum_and_copy_from_iter(void *addr, size_t bytes, __wsum *csum,
 				      v.iov_base, v.iov_len,
 				      sum, off);
 		off += v.iov_len;
+	}), ({
+		char *p = kmap_atomic(v.bv_page);
+		next = csum_partial_copy_nocheck(p + v.bv_offset,
+						 (to += v.bv_len) - v.bv_len,
+						 v.bv_len, 0);
+		kunmap_atomic(p);
+		sum = csum_block_add(sum, next, off);
+		off += v.bv_len;
 	})
 	)
 	*csum = sum;
@@ -1511,6 +1714,14 @@ bool csum_and_copy_from_iter_full(void *addr, size_t bytes, __wsum *csum,
 				      v.iov_base, v.iov_len,
 				      sum, off);
 		off += v.iov_len;
+	}), ({
+		char *p = kmap_atomic(v.bv_page);
+		next = csum_partial_copy_nocheck(p + v.bv_offset,
+						 (to += v.bv_len) - v.bv_len,
+						 v.bv_len, 0);
+		kunmap_atomic(p);
+		sum = csum_block_add(sum, next, off);
+		off += v.bv_len;
 	})
 	)
 	*csum = sum;
@@ -1557,6 +1768,14 @@ size_t csum_and_copy_to_iter(const void *addr, size_t bytes, void *csump,
 				     (from += v.iov_len) - v.iov_len,
 				     v.iov_len, sum, off);
 		off += v.iov_len;
+	}), ({
+		char *p = kmap_atomic(v.bv_page);
+		next = csum_partial_copy_nocheck((from += v.bv_len) - v.bv_len,
+						 p + v.bv_offset,
+						 v.bv_len, 0);
+		kunmap_atomic(p);
+		sum = csum_block_add(sum, next, off);
+		off += v.bv_len;
 	})
 	)
 	*csum = sum;
@@ -1606,6 +1825,21 @@ int iov_iter_npages(const struct iov_iter *i, int maxpages)
 		npages = pipe_space_for_user(iter_head, pipe->tail, pipe);
 		if (npages >= maxpages)
 			return maxpages;
+	} else if (unlikely(iov_iter_is_mapping(i))) {
+		unsigned offset;
+
+		offset = (i->mapping_start + i->iov_offset) & ~PAGE_MASK;
+
+		npages = 1;
+		if (size > PAGE_SIZE - offset) {
+			size -= PAGE_SIZE - offset;
+			npages += size >> PAGE_SHIFT;
+			size &= ~PAGE_MASK;
+			if (size)
+				npages++;
+		}
+		if (npages >= maxpages)
+			return maxpages;
 	} else iterate_all_kinds(i, size, v, ({
 		unsigned long p = (unsigned long)v.iov_base;
 		npages += DIV_ROUND_UP(p + v.iov_len, PAGE_SIZE)
@@ -1622,7 +1856,8 @@ int iov_iter_npages(const struct iov_iter *i, int maxpages)
 			- p / PAGE_SIZE;
 		if (npages >= maxpages)
 			return maxpages;
-	})
+	}),
+	0
 	)
 	return npages;
 }
@@ -1635,7 +1870,7 @@ const void *dup_iter(struct iov_iter *new, struct iov_iter *old, gfp_t flags)
 		WARN_ON(1);
 		return NULL;
 	}
-	if (unlikely(iov_iter_is_discard(new)))
+	if (unlikely(iov_iter_is_discard(new) || iov_iter_is_mapping(new)))
 		return NULL;
 	if (iov_iter_is_bvec(new))
 		return new->bvec = kmemdup(new->bvec,
@@ -1747,7 +1982,12 @@ int iov_iter_for_each_range(struct iov_iter *i, size_t bytes,
 		kunmap(v.bv_page);
 		err;}), ({
 		w = v;
-		err = f(&w, context);})
+		err = f(&w, context);}), ({
+		w.iov_base = kmap(v.bv_page) + v.bv_offset;
+		w.iov_len = v.bv_len;
+		err = f(&w, context);
+		kunmap(v.bv_page);
+		err;})
 	)
 	return err;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
