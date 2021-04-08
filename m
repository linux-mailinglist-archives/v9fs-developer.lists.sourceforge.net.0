Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD4C3585AC
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:04:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUVH9-0005T9-0b; Thu, 08 Apr 2021 14:04:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lUVH7-0005Sq-GE
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gkpoPzVd3lCotCr0RNuaGhKSzWau+Gs276FMmfTG/go=; b=HHcOifIIFVARDTLK1VAgYXx+aI
 hnWE4u8/M49PgkGkh1YPPmWQTTc9nrQtdSdCQ/IWO09h3bCFu67ETd5n2iwJrklZu0gHnjmJBrJgK
 pcuNDICWZ/ELNzk6g2Ku4EJZ25y31bQKK+zhZkiUlPpmg9fFxAh5BwIwFUf01OdXSwSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gkpoPzVd3lCotCr0RNuaGhKSzWau+Gs276FMmfTG/go=; b=Y200s/1W2VOYDTngjUr995jvSi
 Trr0B5Rm6X21468gWHg++UtwPJSLoAGuhaL7rfT1/WN4uB2UYmSR5LFg7s/kjKRhcm56LzxfZlTTt
 Rxo9FJMY7gYavwoXGh9ck28ZOcJa0E4fPAYG1UEKUI6EdBf4JyNhwq+xjNEcnyDsU7N8=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUVGx-0002uO-A5
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617890673;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gkpoPzVd3lCotCr0RNuaGhKSzWau+Gs276FMmfTG/go=;
 b=ZD8UeuhN0QtITYMGjeQPrINgwPK7TTJnpeXiIV9y6ceWAtZK7F7oMsmRcIUEzXHvPzjdmj
 Oa2UFO/xJWkItZ7p/7MHW6S/RLsDg2gxi+nn3EQzWzYe145OM8ikhomOXgCVcpbciAGcS9
 PEkt1lRIFz7BI9WeX8Y1TxOETQtL3sU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-604-GA4LVzw3PnqZG7-SfcnNnw-1; Thu, 08 Apr 2021 10:04:31 -0400
X-MC-Unique: GA4LVzw3PnqZG7-SfcnNnw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 178201883521;
 Thu,  8 Apr 2021 14:04:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E849610074F1;
 Thu,  8 Apr 2021 14:04:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 08 Apr 2021 15:04:20 +0100
Message-ID: <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUVGx-0002uO-A5
Subject: [V9fs-developer] [PATCH v6 02/30] mm: Add set/end/wait functions
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Steve French <sfrench@samba.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
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
v5:
- Add set and end functions, calling the end function end rather than
  unlock[3].
- Keep a ref on the page when PG_private_2 is set[4][5].

v4:
- Remove extern from the declaration[2].

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox (Oracle) <willy@infradead.org>
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
Link: https://lore.kernel.org/r/161653788200.2770958.9517755716374927208.stgit@warthog.procyon.org.uk/ # v5
---

 include/linux/pagemap.h |   19 +++++++++++++++
 mm/filemap.c            |   59 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 78 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 8c9947fd62f3..4a7c916abb5c 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -688,6 +688,25 @@ void wait_for_stable_page(struct page *page);
 
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
index 43700480d897..788b71e8a72d 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1432,6 +1432,65 @@ void unlock_page(struct page *page)
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
