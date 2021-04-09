Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57553359C83
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 13:00:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUos0-00033t-SE; Fri, 09 Apr 2021 11:00:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUort-00033N-Lo
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xpa3xywlSojGWcjg87N1j6k+hsyrCGL+djn7gdESXsE=; b=Vw6qi7rvDd3ZN9JiXRjWCIYjgU
 vuaPFz2fjXS+bv33TEgR1MPaQ08PYUl5ze26lsO2MbFWNccFtpx/5qzq88Ke42UUR+Q3lEMarY2d+
 HUwRm2JgQpmy+Qg01OIoi7SFLs81/dF1fsWC8YWY9FCzBpQxWp5H1qBpnhJBmyZAC9Gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xpa3xywlSojGWcjg87N1j6k+hsyrCGL+djn7gdESXsE=; b=LoaOwWrpTUG0P+OHwDpR0w8n5r
 tS6g6n1MZN1jyTUd9S5zh9A/yrccy+muVcTb9DGOVHNmg1FiOSQZoQRjO0I9PhwekNy5RlMoO0+/V
 TCATS5BGQB6q0Xu2Vp7ryX04eeXmo0SddmoQkWuuNrpSpfU9Zqlqjj7t/OXrUqIMIms8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUorP-009x3A-J4
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617965969;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xpa3xywlSojGWcjg87N1j6k+hsyrCGL+djn7gdESXsE=;
 b=dmNy+PZ8qemDf+3tjrJWyQFc3Rh1buLKDsLQKnt75Zooq+xt94ASq7iM8WvtWBhqbaWsDj
 UCHV2Hpd09hEeZUuz+rVdcvlcAVlVXr9tFIH+y9XjoVo7xn4GewO9zublC5lCF3okCKloi
 OiC+513NpLluN88aOpd9t1YLnc2ydTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-xRnX786jOAu1dJsXBocSyA-1; Fri, 09 Apr 2021 06:59:25 -0400
X-MC-Unique: xRnX786jOAu1dJsXBocSyA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2E79801814;
 Fri,  9 Apr 2021 10:59:23 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E85C918AAB;
 Fri,  9 Apr 2021 10:59:17 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org, willy@infradead.org
Date: Fri, 09 Apr 2021 11:59:17 +0100
Message-ID: <161796595714.350846.1547688999823745763.stgit@warthog.procyon.org.uk>
In-Reply-To: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
References: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kvack.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUorP-009x3A-J4
Subject: [V9fs-developer] [RFC PATCH 2/3] mm: Return bool from pagebit test
 functions
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, jlayton@kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make functions that test page bits return a bool, not an int.  This means
that the value is definitely 0 or 1 if they're used in arithmetic, rather
than rely on test_bit() and friends to return this (though they probably
should).

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Linus Torvalds <torvalds@linux-foundation.org>
cc: Matthew Wilcox <willy@infradead.org>
cc: Andrew Morton <akpm@linux-foundation.org>
cc: linux-mm@kvack.org
cc: linux-fsdevel@vger.kernel.org
---

 include/linux/page-flags.h |   50 ++++++++++++++++++++++----------------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/include/linux/page-flags.h b/include/linux/page-flags.h
index 04a34c08e0a6..4ff7de61b13d 100644
--- a/include/linux/page-flags.h
+++ b/include/linux/page-flags.h
@@ -188,18 +188,18 @@ static inline struct page *compound_head(struct page *page)
 	return page;
 }
 
-static __always_inline int PageTail(struct page *page)
+static __always_inline bool PageTail(struct page *page)
 {
 	return READ_ONCE(page->compound_head) & 1;
 }
 
-static __always_inline int PageCompound(struct page *page)
+static __always_inline bool PageCompound(struct page *page)
 {
 	return test_bit(PG_head, &page->flags) || PageTail(page);
 }
 
 #define	PAGE_POISON_PATTERN	-1l
-static inline int PagePoisoned(const struct page *page)
+static inline bool PagePoisoned(const struct page *page)
 {
 	return page->flags == PAGE_POISON_PATTERN;
 }
@@ -260,7 +260,7 @@ static inline void page_init_poison(struct page *page, size_t size)
  * Macros to create function definitions for page flags
  */
 #define TESTPAGEFLAG(uname, lname, policy)				\
-static __always_inline int Page##uname(struct page *page)		\
+static __always_inline bool Page##uname(struct page *page)		\
 	{ return test_bit(PG_##lname, &policy(page, 0)->flags); }
 
 #define SETPAGEFLAG(uname, lname, policy)				\
@@ -280,11 +280,11 @@ static __always_inline void __ClearPage##uname(struct page *page)	\
 	{ __clear_bit(PG_##lname, &policy(page, 1)->flags); }
 
 #define TESTSETFLAG(uname, lname, policy)				\
-static __always_inline int TestSetPage##uname(struct page *page)	\
+static __always_inline bool TestSetPage##uname(struct page *page)	\
 	{ return test_and_set_bit(PG_##lname, &policy(page, 1)->flags); }
 
 #define TESTCLEARFLAG(uname, lname, policy)				\
-static __always_inline int TestClearPage##uname(struct page *page)	\
+static __always_inline bool TestClearPage##uname(struct page *page)	\
 	{ return test_and_clear_bit(PG_##lname, &policy(page, 1)->flags); }
 
 #define PAGEFLAG(uname, lname, policy)					\
@@ -302,7 +302,7 @@ static __always_inline int TestClearPage##uname(struct page *page)	\
 	TESTCLEARFLAG(uname, lname, policy)
 
 #define TESTPAGEFLAG_FALSE(uname)					\
-static inline int Page##uname(const struct page *page) { return 0; }
+static inline bool Page##uname(const struct page *page) { return false; }
 
 #define SETPAGEFLAG_NOOP(uname)						\
 static inline void SetPage##uname(struct page *page) {  }
@@ -314,10 +314,10 @@ static inline void ClearPage##uname(struct page *page) {  }
 static inline void __ClearPage##uname(struct page *page) {  }
 
 #define TESTSETFLAG_FALSE(uname)					\
-static inline int TestSetPage##uname(struct page *page) { return 0; }
+static inline bool TestSetPage##uname(struct page *page) { return false; }
 
 #define TESTCLEARFLAG_FALSE(uname)					\
-static inline int TestClearPage##uname(struct page *page) { return 0; }
+static inline bool TestClearPage##uname(struct page *page) { return false; }
 
 #define PAGEFLAG_FALSE(uname) TESTPAGEFLAG_FALSE(uname)			\
 	SETPAGEFLAG_NOOP(uname) CLEARPAGEFLAG_NOOP(uname)
@@ -393,7 +393,7 @@ PAGEFLAG_FALSE(HighMem)
 #endif
 
 #ifdef CONFIG_SWAP
-static __always_inline int PageSwapCache(struct page *page)
+static __always_inline bool PageSwapCache(struct page *page)
 {
 #ifdef CONFIG_THP_SWAP
 	page = compound_head(page);
@@ -473,18 +473,18 @@ __PAGEFLAG(Reported, reported, PF_NO_COMPOUND)
 #define PAGE_MAPPING_KSM	(PAGE_MAPPING_ANON | PAGE_MAPPING_MOVABLE)
 #define PAGE_MAPPING_FLAGS	(PAGE_MAPPING_ANON | PAGE_MAPPING_MOVABLE)
 
-static __always_inline int PageMappingFlags(struct page *page)
+static __always_inline bool PageMappingFlags(struct page *page)
 {
 	return ((unsigned long)page->mapping & PAGE_MAPPING_FLAGS) != 0;
 }
 
-static __always_inline int PageAnon(struct page *page)
+static __always_inline bool PageAnon(struct page *page)
 {
 	page = compound_head(page);
 	return ((unsigned long)page->mapping & PAGE_MAPPING_ANON) != 0;
 }
 
-static __always_inline int __PageMovable(struct page *page)
+static __always_inline bool __PageMovable(struct page *page)
 {
 	return ((unsigned long)page->mapping & PAGE_MAPPING_FLAGS) ==
 				PAGE_MAPPING_MOVABLE;
@@ -497,7 +497,7 @@ static __always_inline int __PageMovable(struct page *page)
  * is found in VM_MERGEABLE vmas.  It's a PageAnon page, pointing not to any
  * anon_vma, but to that page's node of the stable tree.
  */
-static __always_inline int PageKsm(struct page *page)
+static __always_inline bool PageKsm(struct page *page)
 {
 	page = compound_head(page);
 	return ((unsigned long)page->mapping & PAGE_MAPPING_FLAGS) ==
@@ -509,9 +509,9 @@ TESTPAGEFLAG_FALSE(Ksm)
 
 u64 stable_page_flags(struct page *page);
 
-static inline int PageUptodate(struct page *page)
+static inline bool PageUptodate(struct page *page)
 {
-	int ret;
+	bool ret;
 	page = compound_head(page);
 	ret = test_bit(PG_uptodate, &(page)->flags);
 	/*
@@ -607,7 +607,7 @@ TESTPAGEFLAG_FALSE(HeadHuge)
  * hugetlbfs pages, but not normal pages. PageTransHuge() can only be
  * called only in the core VM paths where hugetlbfs pages can't exist.
  */
-static inline int PageTransHuge(struct page *page)
+static inline bool PageTransHuge(struct page *page)
 {
 	VM_BUG_ON_PAGE(PageTail(page), page);
 	return PageHead(page);
@@ -618,7 +618,7 @@ static inline int PageTransHuge(struct page *page)
  * and hugetlbfs pages, so it should only be called when it's known
  * that hugetlbfs pages aren't involved.
  */
-static inline int PageTransCompound(struct page *page)
+static inline bool PageTransCompound(struct page *page)
 {
 	return PageCompound(page);
 }
@@ -644,12 +644,12 @@ static inline int PageTransCompound(struct page *page)
  * mapped in the current process so comparing subpage's _mapcount to
  * compound_mapcount to filter out PTE mapped case.
  */
-static inline int PageTransCompoundMap(struct page *page)
+static inline bool PageTransCompoundMap(struct page *page)
 {
 	struct page *head;
 
 	if (!PageTransCompound(page))
-		return 0;
+		return false;
 
 	if (PageAnon(page))
 		return atomic_read(&page->_mapcount) < 0;
@@ -665,7 +665,7 @@ static inline int PageTransCompoundMap(struct page *page)
  * and hugetlbfs pages, so it should only be called when it's known
  * that hugetlbfs pages aren't involved.
  */
-static inline int PageTransTail(struct page *page)
+static inline bool PageTransTail(struct page *page)
 {
 	return PageTail(page);
 }
@@ -714,13 +714,13 @@ PAGEFLAG_FALSE(DoubleMap)
 #define PageType(page, flag)						\
 	((page->page_type & (PAGE_TYPE_BASE | flag)) == PAGE_TYPE_BASE)
 
-static inline int page_has_type(struct page *page)
+static inline bool page_has_type(struct page *page)
 {
 	return (int)page->page_type < PAGE_MAPCOUNT_RESERVE;
 }
 
 #define PAGE_TYPE_OPS(uname, lname)					\
-static __always_inline int Page##uname(struct page *page)		\
+static __always_inline bool Page##uname(struct page *page)		\
 {									\
 	return PageType(page, PG_##lname);				\
 }									\
@@ -778,7 +778,7 @@ __PAGEFLAG(Isolated, isolated, PF_ANY);
  * If network-based swap is enabled, sl*b must keep track of whether pages
  * were allocated from pfmemalloc reserves.
  */
-static inline int PageSlabPfmemalloc(struct page *page)
+static inline bool PageSlabPfmemalloc(struct page *page)
 {
 	VM_BUG_ON_PAGE(!PageSlab(page), page);
 	return PageActive(page);
@@ -839,7 +839,7 @@ static inline void ClearPageSlabPfmemalloc(struct page *page)
  * Determine if a page has private stuff, indicating that release routines
  * should be invoked upon it.
  */
-static inline int page_has_private(struct page *page)
+static inline bool page_has_private(struct page *page)
 {
 	return !!(page->flags & PAGE_FLAGS_PRIVATE);
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
