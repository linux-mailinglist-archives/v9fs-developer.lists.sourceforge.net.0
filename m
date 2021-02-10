Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A73B316B32
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Feb 2021 17:29:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9sN0-0003Ik-PL; Wed, 10 Feb 2021 16:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l9sMz-0003IS-LF
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Feb 2021 16:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MizTFqaPr9s83orSxyP4M9HI4/HyznwEJQAwf0cC91A=; b=LLXr2NF533kqvl/kDzuWI6Wwhf
 euy3BDCT6ZQgnuhnVlRQzDQ599Nlzkmo38nvfGhyORUJR/7khHoo0ByI/lt2EDsqU3ffxRw2v61HU
 l9dmhKSl5EIV4rqtPoITIvV0ogVN9XZNUOd/FkF/D4ZRT4c1PQofWHKdRqyYm98f2zOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MizTFqaPr9s83orSxyP4M9HI4/HyznwEJQAwf0cC91A=; b=HF0KpS6k4BosLSfXKOpWDl41R4
 LnZB72mMpxDcZq5iMvCJMHxc8CZ0sOxMVW58xZyba/ptAp1od3g0nJqT324wV4E6OmEG1PP5LpaLJ
 ctZa3mTvG2RZgAqBzKfmumWAzK5lRV/tJIWVvKbAPLBDPOC/tDhjm4UjyJZ3VxEJLyYE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l9sMm-0004BL-BL
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Feb 2021 16:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612974558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MizTFqaPr9s83orSxyP4M9HI4/HyznwEJQAwf0cC91A=;
 b=Qfv5h1Um+rFyCiNFE0s1OGrzjLLju1zmOqgCAUND4yjjdlZqyVUqbAEkbiLDzXfpfpgPzj
 FZIE2w6G8RsWCJKjuzQEaWLcLoMumaROpZ5JsSRqdgay8Vpc7L0ReojXLcxM9nNeq3B+sD
 UtGteeR0tQwmkErV9nLMYDuHFLB7N/I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-IuDV1FoyPIq_VD0rQY5azw-1; Wed, 10 Feb 2021 11:29:16 -0500
X-MC-Unique: IuDV1FoyPIq_VD0rQY5azw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F6421005501;
 Wed, 10 Feb 2021 16:29:14 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4622660C0F;
 Wed, 10 Feb 2021 16:29:08 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
References: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1330472.1612974547.1@warthog.procyon.org.uk>
Date: Wed, 10 Feb 2021 16:29:07 +0000
Message-ID: <1330473.1612974547@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9sMm-0004BL-BL
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> The PG_fscache bit waiting functions are completely crazy. The comment
> about "this will wake up others" is actively wrong, and the waiting
> function looks insane, because you're mixing the two names for
> "fscache" which makes the code look totally incomprehensible. Why
> would we wait for PF_fscache, when PG_private_2 was set? Yes, I know
> why, but the code looks entirely nonsensical.

How about the attached change to make it more coherent and fix the doc
comment?

David
---
commit 9a28f7e68602193ce020a41f855f71cc55f693b9
Author: David Howells <dhowells@redhat.com>
Date:   Wed Feb 10 10:53:02 2021 +0000

    netfs: Rename unlock_page_fscache() and wait_on_page_fscache()
    
    Rename unlock_page_fscache() to unlock_page_private_2() and
    wait_on_page_fscache() to wait_on_page_private_2() and change the
    references to PG_fscache to PG_private_2 also.  This makes these functions
    look more generic and doesn't mix the terminology.
    
    Fix the kdoc comment as the wake up mechanism doesn't wake up all the
    sleepers.  Note the example usage case for the functions in conjunction
    with the cache also.
    
    Alias the functions in linux/netfs.h.
    
    Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
    Signed-off-by: David Howells <dhowells@redhat.com>

diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 2ffdef1ded91..d4cb6e6f704c 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -24,6 +24,8 @@
 #define ClearPageFsCache(page)		ClearPagePrivate2((page))
 #define TestSetPageFsCache(page)	TestSetPagePrivate2((page))
 #define TestClearPageFsCache(page)	TestClearPagePrivate2((page))
+#define wait_on_page_fscache(page)	wait_on_page_private_2((page))
+#define unlock_page_fscache(page)	unlock_page_private_2((page))
 
 enum netfs_read_source {
 	NETFS_FILL_WITH_ZEROES,
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 4935ad6171c1..a88ccc9ab0b1 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -591,7 +591,7 @@ extern int __lock_page_async(struct page *page, struct wait_page_queue *wait);
 extern int __lock_page_or_retry(struct page *page, struct mm_struct *mm,
 				unsigned int flags);
 extern void unlock_page(struct page *page);
-extern void unlock_page_fscache(struct page *page);
+extern void unlock_page_private_2(struct page *page);
 
 /*
  * Return true if the page was successfully locked
@@ -683,16 +683,17 @@ static inline int wait_on_page_locked_killable(struct page *page)
 }
 
 /**
- * wait_on_page_fscache - Wait for PG_fscache to be cleared on a page
+ * wait_on_page_private_2 - Wait for PG_private_2 to be cleared on a page
  * @page: The page
  *
- * Wait for the fscache mark to be removed from a page, usually signifying the
- * completion of a write from that page to the cache.
+ * Wait for the PG_private_2 page bit to be removed from a page.  This is, for
+ * example, used to handle a netfs page being written to a local disk cache,
+ * thereby allowing writes to the cache for the same page to be serialised.
  */
-static inline void wait_on_page_fscache(struct page *page)
+static inline void wait_on_page_private_2(struct page *page)
 {
 	if (PagePrivate2(page))
-		wait_on_page_bit(compound_head(page), PG_fscache);
+		wait_on_page_bit(compound_head(page), PG_private_2);
 }
 
 extern void put_and_wait_on_page_locked(struct page *page);
diff --git a/mm/filemap.c b/mm/filemap.c
index 91fcae006d64..7d321152d579 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1467,22 +1467,24 @@ void unlock_page(struct page *page)
 EXPORT_SYMBOL(unlock_page);
 
 /**
- * unlock_page_fscache - Unlock a page pinned with PG_fscache
+ * unlock_page_private_2 - Unlock a page that's locked with PG_private_2
  * @page: The page
  *
- * Unlocks the page and wakes up sleepers in wait_on_page_fscache().  Also
- * wakes those waiting for the lock and writeback bits because the wakeup
- * mechanism is shared.  But that's OK - those sleepers will just go back to
- * sleep.
+ * Unlocks a page that's locked with PG_private_2 and wakes up sleepers in
+ * wait_on_page_private_2().
+ *
+ * This is, for example, used when a netfs page is being written to a local
+ * disk cache, thereby allowing writes to the cache for the same page to be
+ * serialised.
  */
-void unlock_page_fscache(struct page *page)
+void unlock_page_private_2(struct page *page)
 {
 	page = compound_head(page);
 	VM_BUG_ON_PAGE(!PagePrivate2(page), page);
-	clear_bit_unlock(PG_fscache, &page->flags);
-	wake_up_page_bit(page, PG_fscache);
+	clear_bit_unlock(PG_private_2, &page->flags);
+	wake_up_page_bit(page, PG_private_2);
 }
-EXPORT_SYMBOL(unlock_page_fscache);
+EXPORT_SYMBOL(unlock_page_private_2);
 
 /**
  * end_page_writeback - end writeback against a page



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
