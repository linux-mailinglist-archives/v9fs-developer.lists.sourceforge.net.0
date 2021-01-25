Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E548E302DB6
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 22:31:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l49Sk-0005w7-N6; Mon, 25 Jan 2021 21:31:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l49Si-0005vm-Nv
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ta1g480Zfhxsf7RxeAZRD47eVsihdAM3Ih4ZNeZrIos=; b=i1kRy3tXhCmwjiRYm+JpAlaybB
 8SnkbSTn5mu6pXckhUSzErYlK0fiGORNzUmTtzRDpn4lLkgA487OO0K658bziA/ipQLLR9NkVOHHe
 z0/4F48CrFye8ojeNF3BCgddeRRVKrMUCf+mVL8Lpwtt7PzIiBU0XfWNnAaFsW+rEqLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ta1g480Zfhxsf7RxeAZRD47eVsihdAM3Ih4ZNeZrIos=; b=ksIrJHCMX9gBux8UAZvSbGmmSK
 ro2KVQ7vYOYk7fnsNpZTNSuy0CEEAxioZWnvE4WJ4p86BFtC1/oKF54Uyksvrzw5gqvhJ341YSzRt
 9c28Sey6CDsshwpgnVhVNaOBxZdAyOQpInHmfw5RG/8LY5dsIE+JulgmpNzWhrh+TzEQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l49SZ-007cGT-Dp
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611610297;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ta1g480Zfhxsf7RxeAZRD47eVsihdAM3Ih4ZNeZrIos=;
 b=BQWxWVuc4tK+zd0zhJY2EuJSGTyyjQTLTeuAEcYzzfu8poyRyuklKkAyZ7Y6k4QHB5fEug
 zJYyt2WlKvjhXduGedGo7+C0n7P7NQIgPQ30q3A6XEX5uh1wBHjM6WzUmNHRDLeGmbmYfV
 lS3+hpbcoXUqO7GtpQC7ZBizVKkG09I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-kvjMlv5bPOabTUTLg6aSnA-1; Mon, 25 Jan 2021 16:31:35 -0500
X-MC-Unique: kvjMlv5bPOabTUTLg6aSnA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CB69801FAE;
 Mon, 25 Jan 2021 21:31:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 855165D6DC;
 Mon, 25 Jan 2021 21:31:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 25 Jan 2021 21:31:26 +0000
Message-ID: <161161028670.2537118.13831420617039766044.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1l49SZ-007cGT-Dp
Subject: [V9fs-developer] [PATCH 03/32] mm: Implement readahead_control
 pageset expansion
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

Provide a function, readahead_expand(), that expands the set of pages
specified by a readahead_control object to encompass a revised area with a
proposed size and length.

The proposed area must include all of the old area and may be expanded yet
more by this function so that the edges align on (transparent huge) page
boundaries as allocated.

The expansion will be cut short if a page already exists in either of the
areas being expanded into.  Note that any expansion made in such a case is
not rolled back.

This will be used by fscache so that reads can be expanded to cache granule
boundaries, thereby allowing whole granules to be stored in the cache, but
there are other potential users also.

Suggested-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
---

 include/linux/pagemap.h |    2 +
 mm/readahead.c          |   70 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 1fa160e682fa..4935ad6171c1 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -774,6 +774,8 @@ extern void __delete_from_page_cache(struct page *page, void *shadow);
 int replace_page_cache_page(struct page *old, struct page *new, gfp_t gfp_mask);
 void delete_from_page_cache_batch(struct address_space *mapping,
 				  struct pagevec *pvec);
+void readahead_expand(struct readahead_control *ractl,
+		      loff_t new_start, size_t new_len);
 
 /*
  * Like add_to_page_cache_locked, but used to add newly allocated pages:
diff --git a/mm/readahead.c b/mm/readahead.c
index c5b0457415be..4446dada0bc2 100644
--- a/mm/readahead.c
+++ b/mm/readahead.c
@@ -638,3 +638,73 @@ SYSCALL_DEFINE3(readahead, int, fd, loff_t, offset, size_t, count)
 {
 	return ksys_readahead(fd, offset, count);
 }
+
+/**
+ * readahead_expand - Expand a readahead request
+ * @ractl: The request to be expanded
+ * @new_start: The revised start
+ * @new_len: The revised size of the request
+ *
+ * Attempt to expand a readahead request outwards from the current size to the
+ * specified size by inserting locked pages before and after the current window
+ * to increase the size to the new window.  This may involve the insertion of
+ * THPs, in which case the window may get expanded even beyond what was
+ * requested.
+ *
+ * The algorithm will stop if it encounters a conflicting page already in the
+ * pagecache and leave a smaller expansion than requested.
+ *
+ * The caller must check for this by examining the revised @ractl object for a
+ * different expansion than was requested.
+ */
+void readahead_expand(struct readahead_control *ractl,
+		      loff_t new_start, size_t new_len)
+{
+	struct address_space *mapping = ractl->mapping;
+	pgoff_t new_index, new_nr_pages;
+	gfp_t gfp_mask = readahead_gfp_mask(mapping);
+
+	new_index = new_start / PAGE_SIZE;
+
+	/* Expand the leading edge downwards */
+	while (ractl->_index > new_index) {
+		unsigned long index = ractl->_index - 1;
+		struct page *page = xa_load(&mapping->i_pages, index);
+
+		if (page && !xa_is_value(page))
+			return; /* Page apparently present */
+
+		page = __page_cache_alloc(gfp_mask);
+		if (!page)
+			return;
+		if (add_to_page_cache_lru(page, mapping, index, gfp_mask) < 0) {
+			put_page(page);
+			return;
+		}
+
+		ractl->_nr_pages++;
+		ractl->_index = page->index;
+	}
+
+	new_len += new_start - readahead_pos(ractl);
+	new_nr_pages = DIV_ROUND_UP(new_len, PAGE_SIZE);
+
+	/* Expand the trailing edge upwards */
+	while (ractl->_nr_pages < new_nr_pages) {
+		unsigned long index = ractl->_index + ractl->_nr_pages;
+		struct page *page = xa_load(&mapping->i_pages, index);
+
+		if (page && !xa_is_value(page))
+			return; /* Page apparently present */
+
+		page = __page_cache_alloc(gfp_mask);
+		if (!page)
+			return;
+		if (add_to_page_cache_lru(page, mapping, index, gfp_mask) < 0) {
+			put_page(page);
+			return;
+		}
+		ractl->_nr_pages++;
+	}
+}
+EXPORT_SYMBOL(readahead_expand);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
