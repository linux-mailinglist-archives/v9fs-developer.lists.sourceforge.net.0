Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD695359C80
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 12:59:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUord-0003hu-Qp; Fri, 09 Apr 2021 10:59:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lUorb-0003hk-8X
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 10:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ANug4vbnIvWDaNTv8U2FRsQziGYv+4TJdFchOpNm0wI=; b=IWWAoYPtj0U7nEnYjeok6Y3GB8
 8/5PlbhPjgF6xldEogHC7xIu/dkQD1Dq3ssCHeeSVQ4OdePrtjf7U23DCsAbjLjTqRegdRgtoiZSX
 EibiUnXf25b1wjwyf1ke/AY/LICdv6VnU8xicJJ7Cxtlh4Fns7gT4tMzR1MUAFA6NEPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ANug4vbnIvWDaNTv8U2FRsQziGYv+4TJdFchOpNm0wI=; b=DRcmqzLMgy8GcdaDpKV9mdewgv
 i89AWbrUr9u4tvFP6GCDzqItt0qKBT+jtgC206yT2nqswv9bOSxV+gjBImWET0sZS3gZTStGsi9sY
 aCAfvcSPWPEKXrmwA2hzWhKweaT3KRsIAcDq2GAFJ2TGJ6+0Ra1JoXaorHMeVWavdg14=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUorE-009x29-Is
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 10:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617965958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ANug4vbnIvWDaNTv8U2FRsQziGYv+4TJdFchOpNm0wI=;
 b=WTZrbOM1ZmUZGGwCih5zhtkT2c5Nl62xMyvDHdHpLOSGbUhP1ebnXcSZIlGacbp7ccS6fS
 WnP14X7yvkuv0lBiGibOKKNIvKcahrCaqpFQoFaeVHxS2iboJb0wJZwKzrZi7OTFFBvL8S
 71xIVqyaMnTZ6asa2ucdW8/bkyw4+NI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-uRDoahl6No2zN7lOMrChuw-1; Fri, 09 Apr 2021 06:59:14 -0400
X-MC-Unique: uRDoahl6No2zN7lOMrChuw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E66D219611A0;
 Fri,  9 Apr 2021 10:59:11 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 65D2260BE5;
 Fri,  9 Apr 2021 10:59:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org, willy@infradead.org
Date: Fri, 09 Apr 2021 11:59:01 +0100
Message-ID: <161796594154.350846.1787112929938233401.stgit@warthog.procyon.org.uk>
In-Reply-To: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
References: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUorE-009x29-Is
Subject: [V9fs-developer] [RFC PATCH 1/3] Make the generic bitops return bool
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
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 jlayton@kernel.org, Akinobu Mita <akinobu.mita@gmail.com>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Will Deacon <will@kernel.org>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make the generic bitops return bool when returning the value of a tested
bit.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Linus Torvalds <torvalds@linux-foundation.org>
cc: Matthew Wilcox <willy@infradead.org>
cc: Akinobu Mita <akinobu.mita@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>
cc: Will Deacon <will@kernel.org>
---

 include/asm-generic/bitops/atomic.h     |    6 +++---
 include/asm-generic/bitops/le.h         |   10 +++++-----
 include/asm-generic/bitops/lock.h       |    4 ++--
 include/asm-generic/bitops/non-atomic.h |    8 ++++----
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/include/asm-generic/bitops/atomic.h b/include/asm-generic/bitops/atomic.h
index 0e7316a86240..9b05e8634c09 100644
--- a/include/asm-generic/bitops/atomic.h
+++ b/include/asm-generic/bitops/atomic.h
@@ -29,7 +29,7 @@ static __always_inline void change_bit(unsigned int nr, volatile unsigned long *
 	atomic_long_xor(BIT_MASK(nr), (atomic_long_t *)p);
 }
 
-static inline int test_and_set_bit(unsigned int nr, volatile unsigned long *p)
+static inline bool test_and_set_bit(unsigned int nr, volatile unsigned long *p)
 {
 	long old;
 	unsigned long mask = BIT_MASK(nr);
@@ -42,7 +42,7 @@ static inline int test_and_set_bit(unsigned int nr, volatile unsigned long *p)
 	return !!(old & mask);
 }
 
-static inline int test_and_clear_bit(unsigned int nr, volatile unsigned long *p)
+static inline bool test_and_clear_bit(unsigned int nr, volatile unsigned long *p)
 {
 	long old;
 	unsigned long mask = BIT_MASK(nr);
@@ -55,7 +55,7 @@ static inline int test_and_clear_bit(unsigned int nr, volatile unsigned long *p)
 	return !!(old & mask);
 }
 
-static inline int test_and_change_bit(unsigned int nr, volatile unsigned long *p)
+static inline bool test_and_change_bit(unsigned int nr, volatile unsigned long *p)
 {
 	long old;
 	unsigned long mask = BIT_MASK(nr);
diff --git a/include/asm-generic/bitops/le.h b/include/asm-generic/bitops/le.h
index 188d3eba3ace..33355cf288f6 100644
--- a/include/asm-generic/bitops/le.h
+++ b/include/asm-generic/bitops/le.h
@@ -50,7 +50,7 @@ extern unsigned long find_next_bit_le(const void *addr,
 #error "Please fix <asm/byteorder.h>"
 #endif
 
-static inline int test_bit_le(int nr, const void *addr)
+static inline bool test_bit_le(int nr, const void *addr)
 {
 	return test_bit(nr ^ BITOP_LE_SWIZZLE, addr);
 }
@@ -75,22 +75,22 @@ static inline void __clear_bit_le(int nr, void *addr)
 	__clear_bit(nr ^ BITOP_LE_SWIZZLE, addr);
 }
 
-static inline int test_and_set_bit_le(int nr, void *addr)
+static inline bool test_and_set_bit_le(int nr, void *addr)
 {
 	return test_and_set_bit(nr ^ BITOP_LE_SWIZZLE, addr);
 }
 
-static inline int test_and_clear_bit_le(int nr, void *addr)
+static inline bool test_and_clear_bit_le(int nr, void *addr)
 {
 	return test_and_clear_bit(nr ^ BITOP_LE_SWIZZLE, addr);
 }
 
-static inline int __test_and_set_bit_le(int nr, void *addr)
+static inline bool __test_and_set_bit_le(int nr, void *addr)
 {
 	return __test_and_set_bit(nr ^ BITOP_LE_SWIZZLE, addr);
 }
 
-static inline int __test_and_clear_bit_le(int nr, void *addr)
+static inline bool __test_and_clear_bit_le(int nr, void *addr)
 {
 	return __test_and_clear_bit(nr ^ BITOP_LE_SWIZZLE, addr);
 }
diff --git a/include/asm-generic/bitops/lock.h b/include/asm-generic/bitops/lock.h
index 3ae021368f48..0e6acd059a59 100644
--- a/include/asm-generic/bitops/lock.h
+++ b/include/asm-generic/bitops/lock.h
@@ -15,8 +15,8 @@
  * the returned value is 0.
  * It can be used to implement bit locks.
  */
-static inline int test_and_set_bit_lock(unsigned int nr,
-					volatile unsigned long *p)
+static inline bool test_and_set_bit_lock(unsigned int nr,
+					 volatile unsigned long *p)
 {
 	long old;
 	unsigned long mask = BIT_MASK(nr);
diff --git a/include/asm-generic/bitops/non-atomic.h b/include/asm-generic/bitops/non-atomic.h
index 7e10c4b50c5d..7d916f677be3 100644
--- a/include/asm-generic/bitops/non-atomic.h
+++ b/include/asm-generic/bitops/non-atomic.h
@@ -55,7 +55,7 @@ static inline void __change_bit(int nr, volatile unsigned long *addr)
  * If two examples of this operation race, one can appear to succeed
  * but actually fail.  You must protect multiple accesses with a lock.
  */
-static inline int __test_and_set_bit(int nr, volatile unsigned long *addr)
+static inline bool __test_and_set_bit(int nr, volatile unsigned long *addr)
 {
 	unsigned long mask = BIT_MASK(nr);
 	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
@@ -74,7 +74,7 @@ static inline int __test_and_set_bit(int nr, volatile unsigned long *addr)
  * If two examples of this operation race, one can appear to succeed
  * but actually fail.  You must protect multiple accesses with a lock.
  */
-static inline int __test_and_clear_bit(int nr, volatile unsigned long *addr)
+static inline bool __test_and_clear_bit(int nr, volatile unsigned long *addr)
 {
 	unsigned long mask = BIT_MASK(nr);
 	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
@@ -85,7 +85,7 @@ static inline int __test_and_clear_bit(int nr, volatile unsigned long *addr)
 }
 
 /* WARNING: non atomic and it can be reordered! */
-static inline int __test_and_change_bit(int nr,
+static inline bool __test_and_change_bit(int nr,
 					    volatile unsigned long *addr)
 {
 	unsigned long mask = BIT_MASK(nr);
@@ -101,7 +101,7 @@ static inline int __test_and_change_bit(int nr,
  * @nr: bit number to test
  * @addr: Address to start counting from
  */
-static inline int test_bit(int nr, const volatile unsigned long *addr)
+static inline bool test_bit(int nr, const volatile unsigned long *addr)
 {
 	return 1UL & (addr[BIT_WORD(nr)] >> (nr & (BITS_PER_LONG-1)));
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
