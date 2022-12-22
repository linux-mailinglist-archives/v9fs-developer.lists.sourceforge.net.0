Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C06654386
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Dec 2022 16:02:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8N5t-000778-FX;
	Thu, 22 Dec 2022 15:02:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1p8N5s-00076r-Qv
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Dec 2022 15:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=75w1pfVKB1Ro0XqkbXmr8eWxoXfk22o+qXL/5b9cucw=; b=L0fhAyDVgSDFU8PsqlCM6l92/c
 13rZC7JyhlzXfHlroEQgO2MYGgkPXAWHfViQVnOCqLSE/jeJtpjqRNbLB0Y2GosVaCQ+0aInUOY9j
 HYzxfAo2GBTYAXCd5R8E7Uk3lGfhXDuHKI9LY4cLN2Q/aEiQJDqtQy4KzTvu1G7nNzOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=75w1pfVKB1Ro0XqkbXmr8eWxoXfk22o+qXL/5b9cucw=; b=mgmYB6DP6xud3ittCuhRQ3jXA2
 bCwHBjnWerMkBy78Tg+DOsMu5OURfGGe1HZXB+KOI5SMgESclELsfWblmCZJ5ze9+dWc1dHgcbNAM
 ErZAUW+31yNpskiFQVpFghAWbL15oCyPR30Irbvgq8D1maV8TzRxkDhg1bk4ZY8VQ828=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p8N5p-0003Al-Fc for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Dec 2022 15:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671721359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=75w1pfVKB1Ro0XqkbXmr8eWxoXfk22o+qXL/5b9cucw=;
 b=XLRwGmDZVV85fRvVvsUASDYl7VFxM593UFrwdOCx6aZ/dDknwEiIuagJK9gGqzIefbEJdK
 ggWKfvvBeo4hlBDyrp4qdzreAzufQab2QaG5zoIczq13PotfA5MiOpkPrlB5QXZhvMTCp4
 9PX8e9U26OF55MDxspHf6SLGT1znpmI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-290-HaKXfIxlMWuof_yakpjAKg-1; Thu, 22 Dec 2022 10:02:34 -0500
X-MC-Unique: HaKXfIxlMWuof_yakpjAKg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1C872803D7E;
 Thu, 22 Dec 2022 15:02:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4BBDC2166B29;
 Thu, 22 Dec 2022 15:02:30 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Thu, 22 Dec 2022 15:02:29 +0000
Message-ID: <167172134962.2334525.570622889806603086.stgit@warthog.procyon.org.uk>
In-Reply-To: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
References: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.5
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Make filemap_release_folio() return one of three values: (0)
 FILEMAP_CANT_RELEASE_FOLIO Couldn't release the folio's private data, so
 the folio can't itself be released. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p8N5p-0003Al-Fc
Subject: [V9fs-developer] [PATCH v5 3/3] mm: Make filemap_release_folio()
 better inform shrink_folio_list()
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
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 dhowells@redhat.com, linux-ext4@lists.ozlabs.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make filemap_release_folio() return one of three values:

 (0) FILEMAP_CANT_RELEASE_FOLIO

     Couldn't release the folio's private data, so the folio can't itself
     be released.

 (1) FILEMAP_RELEASED_FOLIO

     The private data on the folio was released and the folio can be
     released.

 (2) FILEMAP_FOLIO_HAD_NO_PRIVATE

     There was no private data on the folio and the folio can be released.

The first must be zero so that existing tests of !filemap_release_folio()
continue to work as expected; similarly the other two must both be non-zero
so that existing tests of filemap_release_folio() continue to work as
expected.

Using this, make shrink_folio_list() choose which of three cases to follow
based on the return from filemap_release_folio() rather than testing the
folio's private bit itself.

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

Link: https://lore.kernel.org/r/1459152.1669208550@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/166924373637.1772793.2622483388224911574.stgit@warthog.procyon.org.uk/ # v4
---

 include/linux/pagemap.h |    7 ++++++-
 mm/filemap.c            |   20 ++++++++++++++------
 mm/vmscan.c             |   29 +++++++++++++++--------------
 3 files changed, 35 insertions(+), 21 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index a0d433e0addd..cd00fb3b524b 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -1121,7 +1121,12 @@ void __filemap_remove_folio(struct folio *folio, void *shadow);
 void replace_page_cache_folio(struct folio *old, struct folio *new);
 void delete_from_page_cache_batch(struct address_space *mapping,
 				  struct folio_batch *fbatch);
-bool filemap_release_folio(struct folio *folio, gfp_t gfp);
+enum filemap_released_folio {
+	FILEMAP_CANT_RELEASE_FOLIO	= 0, /* (This must be 0) Release failed */
+	FILEMAP_RELEASED_FOLIO		= 1, /* Folio's private data released */
+	FILEMAP_FOLIO_HAD_NO_PRIVATE	= 2, /* Folio had no private data */
+};
+enum filemap_released_folio filemap_release_folio(struct folio *folio, gfp_t gfp);
 loff_t mapping_seek_hole_data(struct address_space *, loff_t start, loff_t end,
 		int whence);
 
diff --git a/mm/filemap.c b/mm/filemap.c
index 344146c170b0..217ca847773a 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -3953,20 +3953,28 @@ EXPORT_SYMBOL(generic_file_write_iter);
  * this page (__GFP_IO), and whether the call may block
  * (__GFP_RECLAIM & __GFP_FS).
  *
- * Return: %true if the release was successful, otherwise %false.
+ * Return: %FILEMAP_RELEASED_FOLIO if the release was successful,
+ * %FILEMAP_CANT_RELEASE_FOLIO if the private data couldn't be released and
+ * %FILEMAP_FOLIO_HAD_NO_PRIVATE if there was no private data.
  */
-bool filemap_release_folio(struct folio *folio, gfp_t gfp)
+enum filemap_released_folio filemap_release_folio(struct folio *folio,
+						  gfp_t gfp)
 {
 	struct address_space * const mapping = folio->mapping;
+	bool released;
 
 	BUG_ON(!folio_test_locked(folio));
 	if (!folio_needs_release(folio))
-		return true;
+		return FILEMAP_FOLIO_HAD_NO_PRIVATE;
 	if (folio_test_writeback(folio))
-		return false;
+		return FILEMAP_CANT_RELEASE_FOLIO;
 
 	if (mapping && mapping->a_ops->release_folio)
-		return mapping->a_ops->release_folio(folio, gfp);
-	return try_to_free_buffers(folio);
+		released = mapping->a_ops->release_folio(folio, gfp);
+	else
+		released = try_to_free_buffers(folio);
+
+	return released ?
+		FILEMAP_RELEASED_FOLIO : FILEMAP_CANT_RELEASE_FOLIO;
 }
 EXPORT_SYMBOL(filemap_release_folio);
diff --git a/mm/vmscan.c b/mm/vmscan.c
index bded71961143..b1e5ca348223 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -1996,25 +1996,26 @@ static unsigned int shrink_folio_list(struct list_head *folio_list,
 		 * (refcount == 1) it can be freed.  Otherwise, leave
 		 * the folio on the LRU so it is swappable.
 		 */
-		if (folio_needs_release(folio)) {
-			if (!filemap_release_folio(folio, sc->gfp_mask))
-				goto activate_locked;
+		switch (filemap_release_folio(folio, sc->gfp_mask)) {
+		case FILEMAP_CANT_RELEASE_FOLIO:
+			goto activate_locked;
+		case FILEMAP_RELEASED_FOLIO:
 			if (!mapping && folio_ref_count(folio) == 1) {
 				folio_unlock(folio);
 				if (folio_put_testzero(folio))
 					goto free_it;
-				else {
-					/*
-					 * rare race with speculative reference.
-					 * the speculative reference will free
-					 * this folio shortly, so we may
-					 * increment nr_reclaimed here (and
-					 * leave it off the LRU).
-					 */
-					nr_reclaimed += nr_pages;
-					continue;
-				}
+				/*
+				 * rare race with speculative reference.  the
+				 * speculative reference will free this folio
+				 * shortly, so we may increment nr_reclaimed
+				 * here (and leave it off the LRU).
+				 */
+				nr_reclaimed += nr_pages;
+				continue;
 			}
+			break;
+		case FILEMAP_FOLIO_HAD_NO_PRIVATE:
+			break;
 		}
 
 		if (folio_test_anon(folio) && !folio_test_swapbacked(folio)) {




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
