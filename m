Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A3936A684
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:14:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labmC-0006KO-8S; Sun, 25 Apr 2021 10:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lablb-0006AU-KB
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9u/igoEYkxLSKA0zMaGn1fusgrVHvab49cNOo12Jp9o=; b=lGQ+kks6QK9L1ANifWQoJxxRLl
 vT01UTqaf3QpmUw0lj19hoDqoZ8pJ5Tv2/okHSFU9H34WCmymlOqnI86ZgdePs9jT2VqkNrvo70jp
 iqKb7l9yuD2ckTX/EppzZTSm9zRg253N3LQlnjC48zFlUkqNvup/F143Xth7xaysF3qo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9u/igoEYkxLSKA0zMaGn1fusgrVHvab49cNOo12Jp9o=; b=VIOnFQlzMXggs1BzKtklJhHpFx
 8XEPpzkrwNXmWQHFzNIvA14TKABniQSxuUw9c2gvGxOE3QeGMq1Ii6HHrLul3yZE4BeaWabbW8EuF
 oO9hcIPQlff/xfairYK/47Jwada+IcbKGIFs/GeBY6FCFr2uEzPLG53wOgjG9pXDZANw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lablV-006Cyh-36
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9u/igoEYkxLSKA0zMaGn1fusgrVHvab49cNOo12Jp9o=;
 b=LtXpP5u1kYpgfbKpVyJe3aH+7RLKzgidCwg72ZBfKo1k2mO9ipfq5eydJw1rW5RqjNhrvS
 fKlciGD4bbOvKtJvBS8jeSnBISTHg1R9h6FdFwI59TUj5Bn9kO0wtrQfOXMrJvrC6CWYgo
 tFg/fPg4E6C+uaCMdswrs2Vwe6AVOZc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-w1s7nGhAP12HzHaoynTwAg-1; Fri, 23 Apr 2021 09:28:27 -0400
X-MC-Unique: w1s7nGhAP12HzHaoynTwAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 670FF107ACCA;
 Fri, 23 Apr 2021 13:28:24 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B31019C71;
 Fri, 23 Apr 2021 13:28:17 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:28:16 +0100
Message-ID: <161918449687.3145707.2677440908450878703.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lablV-006Cyh-36
Subject: [V9fs-developer] [PATCH v7 02/31] mm: Add set/end/wait functions
 for PG_private_2
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
 Jeff Layton <jlayton@redhat.com>, Steve French <sfrench@samba.org>,
 David Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add three functions to manipulate PG_private_2:

 (*) set_page_private_2() - Set the flag and take an appropriate reference
     on the flagged page.

 (*) end_page_private_2() - Clear the flag, drop the reference and wake up
     any waiters, somewhat analogously with end_page_writeback().

 (*) wait_on_page_private_2() - Wait for the flag to be cleared.

Wrappers will need to be placed in the netfs lib header in the patch that
adds that.

[This implements a suggestion by Linus[1] to not mix the terminology of
 PG_private_2 and PG_fscache in the mm core function]

Changes:
v7:
- Use compound_head() in all the functions to make them THP safe[6].

v5:
- Add set and end functions, calling the end function end rather than
  unlock[3].
- Keep a ref on the page when PG_private_2 is set[4][5].

v4:
- Remove extern from the declaration[2].

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dave Wysochanski <dwysocha@redhat.com>
Tested-By: Marc Dionne <marc.dionne@auristor.com>
cc: Alexander Viro <viro@zeniv.linux.org.uk>
cc: Christoph Hellwig <hch@lst.de>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/1330473.1612974547@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com/ [1]
Link: https://lore.kernel.org/r/20210216102659.GA27714@lst.de/ [2]
Link: https://lore.kernel.org/r/161340387944.1303470.7944159520278177652.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk # v4
Link: https://lore.kernel.org/r/20210321105309.GG3420@casper.infradead.org [3]
Link: https://lore.kernel.org/r/CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com/ [4]
Link: https://lore.kernel.org/r/CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com/ [5]
Link: https://lore.kernel.org/r/20210408145057.GN2531743@casper.infradead.org/ [6]
Link: https://lore.kernel.org/r/161653788200.2770958.9517755716374927208.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk/ # v6
---

 include/linux/pagemap.h |   20 +++++++++++++++
 mm/filemap.c            |   61 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 81 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 8c9947fd62f3..bb4433c98d02 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -688,6 +688,26 @@ void wait_for_stable_page(struct page *page);
 
 void page_endio(struct page *page, bool is_write, int err);
 
+/**
+ * set_page_private_2 - Set PG_private_2 on a page and take a ref
+ * @page: The page.
+ *
+ * Set the PG_private_2 flag on a page and take the reference needed for the VM
+ * to handle its lifetime correctly.  This sets the flag and takes the
+ * reference unconditionally, so care must be taken not to set the flag again
+ * if it's already set.
+ */
+static inline void set_page_private_2(struct page *page)
+{
+	page = compound_head(page);
+	get_page(page);
+	SetPagePrivate2(page);
+}
+
+void end_page_private_2(struct page *page);
+void wait_on_page_private_2(struct page *page);
+int wait_on_page_private_2_killable(struct page *page);
+
 /*
  * Add an arbitrary waiter to a page's wait queue
  */
diff --git a/mm/filemap.c b/mm/filemap.c
index 43700480d897..afe22f09960e 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1432,6 +1432,67 @@ void unlock_page(struct page *page)
 }
 EXPORT_SYMBOL(unlock_page);
 
+/**
+ * end_page_private_2 - Clear PG_private_2 and release any waiters
+ * @page: The page
+ *
+ * Clear the PG_private_2 bit on a page and wake up any sleepers waiting for
+ * this.  The page ref held for PG_private_2 being set is released.
+ *
+ * This is, for example, used when a netfs page is being written to a local
+ * disk cache, thereby allowing writes to the cache for the same page to be
+ * serialised.
+ */
+void end_page_private_2(struct page *page)
+{
+	page = compound_head(page);
+	VM_BUG_ON_PAGE(!PagePrivate2(page), page);
+	clear_bit_unlock(PG_private_2, &page->flags);
+	wake_up_page_bit(page, PG_private_2);
+	put_page(page);
+}
+EXPORT_SYMBOL(end_page_private_2);
+
+/**
+ * wait_on_page_private_2 - Wait for PG_private_2 to be cleared on a page
+ * @page: The page to wait on
+ *
+ * Wait for PG_private_2 (aka PG_fscache) to be cleared on a page.
+ */
+void wait_on_page_private_2(struct page *page)
+{
+	page = compound_head(page);
+	while (PagePrivate2(page))
+		wait_on_page_bit(page, PG_private_2);
+}
+EXPORT_SYMBOL(wait_on_page_private_2);
+
+/**
+ * wait_on_page_private_2_killable - Wait for PG_private_2 to be cleared on a page
+ * @page: The page to wait on
+ *
+ * Wait for PG_private_2 (aka PG_fscache) to be cleared on a page or until a
+ * fatal signal is received by the calling task.
+ *
+ * Return:
+ * - 0 if successful.
+ * - -EINTR if a fatal signal was encountered.
+ */
+int wait_on_page_private_2_killable(struct page *page)
+{
+	int ret = 0;
+
+	page = compound_head(page);
+	while (PagePrivate2(page)) {
+		ret = wait_on_page_bit_killable(page, PG_private_2);
+		if (ret < 0)
+			break;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(wait_on_page_private_2_killable);
+
 /**
  * end_page_writeback - end writeback against a page
  * @page: the page




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
