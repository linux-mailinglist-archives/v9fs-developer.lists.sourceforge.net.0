Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68637346C02
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Mar 2021 23:18:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOpM9-0005Ee-6c; Tue, 23 Mar 2021 22:18:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lOpM8-0005ET-5L
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EpBGXpU/wlpDT8hwfPjKyNBUh3Jhz2rUOUxyjRvEuBg=; b=J+ZVRIX3+ZGhkS6TY3nDTAyVvu
 Ix+RYZdpPsfVTpRiCQtq1A1XGd/a+31XEak9KI1KO959yoxcR3blZNcejhZNPHYPSC4n9a6CuYgm6
 MJMwAFboOJLwbqkAX1ElDNhrIf7jOlbwC1+GLK9UMeK2ei73X/IdsSOnNmbalONlDysE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EpBGXpU/wlpDT8hwfPjKyNBUh3Jhz2rUOUxyjRvEuBg=; b=AA+WNTYp0nlzKamP0ojFyP8JrA
 ZIRzbN/CwhdaGryIO/3jY3KMGE9w8rMqJ1HgEpMIdt0lPboJh5uurYEktmSFKwpj5z0hwU+lgw2p+
 9GabNL/wsgo93Ya2wnrKZoNeNP1eIApiZCKFiOWFxwg1HtBXVrnGR9NNUcpN96roEfhM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lOpM3-002rRo-9B
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616537901;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EpBGXpU/wlpDT8hwfPjKyNBUh3Jhz2rUOUxyjRvEuBg=;
 b=UbumCSHBGtQZWXfYkZ1EOcu8DWUvCSZ51ynm03wBX3q6OwUSnHNnt8AjCApXvexdDcM1Rn
 +I2oXcgVUcZuK/Md65Fv3gTPKXEijqunobdp+ZrYZUDwlNKdvnrKvTD4Xz1laa+QZysxPp
 J/SOyaPS2USGyqcyM8ibYyRmTsVrFmo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-Onfw741mPiqdYzPqx_wAAg-1; Tue, 23 Mar 2021 18:18:19 -0400
X-MC-Unique: Onfw741mPiqdYzPqx_wAAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14C731853021;
 Tue, 23 Mar 2021 22:18:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-58.rdu2.redhat.com
 [10.10.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 06195196E3;
 Tue, 23 Mar 2021 22:18:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 23 Mar 2021 22:18:14 +0000
Message-ID: <161653789422.2770958.2108046612147345000.stgit@warthog.procyon.org.uk>
In-Reply-To: <161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk>
References: <161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOpM3-002rRo-9B
Subject: [V9fs-developer] [PATCH v5 04/28] mm: Implement readahead_control
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
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

Changes:
- Moved the declaration of readahead_expand() to a better place[1].

Suggested-by: Matthew Wilcox (Oracle) <willy@infradead.org>
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
Link: https://lore.kernel.org/r/20210217161358.GM2858050@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/159974633888.2094769.8326206446358128373.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/160588479816.3465195.553952688795241765.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118131787.1232039.4863969952441067985.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161028670.2537118.13831420617039766044.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539530488.286939.18085961677838089157.stgit@warthog.procyon.org.uk/ # v4
---

 include/linux/pagemap.h |    2 +
 mm/readahead.c          |   70 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index da5c38864037..5c14a9365aae 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -837,6 +837,8 @@ void page_cache_sync_ra(struct readahead_control *, struct file_ra_state *,
 		unsigned long req_count);
 void page_cache_async_ra(struct readahead_control *, struct file_ra_state *,
 		struct page *, unsigned long req_count);
+void readahead_expand(struct readahead_control *ractl,
+		      loff_t new_start, size_t new_len);
 
 /**
  * page_cache_sync_readahead - generic file readahead
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
