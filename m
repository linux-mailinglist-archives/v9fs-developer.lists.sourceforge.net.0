Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAAA44B4CB
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Nov 2021 22:31:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkYi6-0001YX-7r; Tue, 09 Nov 2021 21:31:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mkYi4-0001YQ-35
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PE1VptDeAs6kmOyj4aRTeb4D8eNBBDr4zH9bU+KmOKU=; b=KKJt0zqahyouXmzGu9sHQhdvUA
 Wgy0WTu1aO9Xb7FJiTn8M+qKAqDL+oxdwbBbOTFpZRaT5L77cKAQzhTmjn4omTqW7Dmy9+71nY8oP
 aK486k2K/f1BSDkQhPUATXk9Yr6ak3iE5y6bfxHQH1Yl6ckAK9Dy9Qvyo+j1lMF2KYFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PE1VptDeAs6kmOyj4aRTeb4D8eNBBDr4zH9bU+KmOKU=; b=Yvy0axb3Lry2q/pDtqN7cXVTG4
 MgZcom2YCgDRdfUqxj8jBaIE4LZQDO4jh2IJv9Gt1CYMvsDK/f690fhkLWaoR6Je5rSVvnsgEz9k5
 CAyAMq8644E23SLES9+KOa+1N+7i5OXhNVSjGAdgwhSpqYm9mcVrfvizIU5SL35eNj7U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkYi1-007iDf-Do
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636493467;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PE1VptDeAs6kmOyj4aRTeb4D8eNBBDr4zH9bU+KmOKU=;
 b=OOg1Tq7KEUhKx3uNvYLs9ksAAsyB9K+74R5O30HcdUZOir1PRdlEWJRBqMKSyi+E0A8N01
 VhCwhhQ2dQWfAExCWHLTPzJ3/ThQqDtjc2G2VLA5LguGPjNRRyfiJ6+kan9UMADMoiRtI6
 37EQ2D5X1ELZtqEZuKa2MJx07IGa2VY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-pbeZtQg6M0m7P3otNU44WQ-1; Tue, 09 Nov 2021 16:27:57 -0500
X-MC-Unique: pbeZtQg6M0m7P3otNU44WQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0906887D542;
 Tue,  9 Nov 2021 21:27:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1812319729;
 Tue,  9 Nov 2021 21:27:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 09 Nov 2021 21:27:44 +0000
Message-ID: <163649326420.309189.6029879848780568728.stgit@warthog.procyon.org.uk>
In-Reply-To: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
References: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add three functions to replace page_endio(): (1)
 folio_end_read().
 End a read to a folio. (2) folio_end_write(). End a write from a folio. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mkYi1-007iDf-Do
Subject: [V9fs-developer] [PATCH v4 3/5] folio: Add replacements for
 page_endio()
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
 kafs-testing@auristor.com, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-mm@kvack.org,
 ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add three functions to replace page_endio():

 (1) folio_end_read().  End a read to a folio.

 (2) folio_end_write().  End a write from a folio.

 (3) folio_endio().  A switcher that does one or the other of the above.

Change page_endio() to just call folio_endio().  Note that the parameter
order is switched so that the folio_endio() stub doesn't have to shuffle
the params around, but can rather just test and jump.

Signed-off-by: David Howells <dhowells@redhat.com>
Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dominique Martinet <asmadeus@codewreck.org>
Tested-by: kafs-testing@auristor.com
Link: https://lore.kernel.org/r/1088663.1635955216@warthog.procyon.org.uk/
---

 include/linux/pagemap.h |    9 ++++++-
 mm/filemap.c            |   64 ++++++++++++++++++++++++++++++++---------------
 2 files changed, 51 insertions(+), 22 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 1a0c646eb6ff..fd90544bb3e4 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -895,7 +895,14 @@ static inline int __must_check write_one_page(struct page *page)
 int __set_page_dirty_nobuffers(struct page *page);
 int __set_page_dirty_no_writeback(struct page *page);
 
-void page_endio(struct page *page, bool is_write, int err);
+void folio_end_read(struct folio *folio, int err);
+void folio_end_write(struct folio *folio, int err);
+void folio_endio(struct folio *folio, int err, bool is_write);
+
+static inline void page_endio(struct page *page, bool is_write, int err)
+{
+	folio_endio(page_folio(page), err, is_write);
+}
 
 void folio_end_private_2(struct folio *folio);
 void folio_wait_private_2(struct folio *folio);
diff --git a/mm/filemap.c b/mm/filemap.c
index daa0e23a6ee6..841e87b2d6ab 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1612,33 +1612,55 @@ void folio_end_writeback(struct folio *folio)
 }
 EXPORT_SYMBOL(folio_end_writeback);
 
-/*
- * After completing I/O on a page, call this routine to update the page
- * flags appropriately
+/**
+ * folio_end_read - Update the state of a folio after a read
+ * @folio: The folio to update
+ * @err: The error code (or 0) to apply
  */
-void page_endio(struct page *page, bool is_write, int err)
+void folio_end_read(struct folio *folio, int err)
 {
-	if (!is_write) {
-		if (!err) {
-			SetPageUptodate(page);
-		} else {
-			ClearPageUptodate(page);
-			SetPageError(page);
-		}
-		unlock_page(page);
+	if (!err) {
+		folio_mark_uptodate(folio);
 	} else {
-		if (err) {
-			struct address_space *mapping;
+		folio_clear_uptodate(folio);
+		folio_set_error(folio);
+	}
+	folio_unlock(folio);
+}
+EXPORT_SYMBOL_GPL(folio_end_read);
 
-			SetPageError(page);
-			mapping = page_mapping(page);
-			if (mapping)
-				mapping_set_error(mapping, err);
-		}
-		end_page_writeback(page);
+/**
+ * folio_end_write - Update the state of a folio after a write
+ * @folio: The folio to update
+ * @err: The error code (or 0) to apply
+ */
+void folio_end_write(struct folio *folio, int err)
+{
+	if (err) {
+		struct address_space *mapping = folio_mapping(folio);
+
+		folio_set_error(folio);
+		if (mapping)
+			mapping_set_error(mapping, err);
 	}
+	folio_end_writeback(folio);
+}
+EXPORT_SYMBOL_GPL(folio_end_write);
+
+/**
+ * folio_endio - Update the state of a folio after a read or write
+ * @folio: The folio to update
+ * @err: The error code (or 0) to apply
+ * @is_write: True if this was a write
+ */
+void folio_endio(struct folio *folio, int err, bool is_write)
+{
+	if (is_write)
+		folio_end_write(folio, err);
+	else
+		folio_end_read(folio, err);
 }
-EXPORT_SYMBOL_GPL(page_endio);
+EXPORT_SYMBOL_GPL(folio_endio);
 
 /**
  * __folio_lock - Get a lock on the folio, assuming we need to sleep to get it.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
