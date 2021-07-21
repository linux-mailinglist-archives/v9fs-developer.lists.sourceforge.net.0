Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0531D3D100E
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 15:47:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6CZ3-0001XC-QF; Wed, 21 Jul 2021 13:47:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1m6CZ1-0001VT-O4
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 13:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eiYfBTzqBLwjxFjmd1wf3xJRqWQqlFAJpRRIEev0yQ8=; b=fFEkIsuI9m7f7qG/epNPoKHzGD
 9f+jM0EXhNEzoRlTmKTrC6LDEloZ7D4hflY2fYN5SSwiU/Wvi3K8974YT9B6mJ6AIGY51Zc0z1rRw
 iXlmC+aDyuCBV7g6aj5hImun8WWwhTBztglyWX3tnPylxI5E5KYuytqrUhSHDiU5PWac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eiYfBTzqBLwjxFjmd1wf3xJRqWQqlFAJpRRIEev0yQ8=; b=F8vTF1UIKcceKjdwdcyd0airxw
 R4ogAYuQVJNjMsL0rnH2ZW9EGyoCUgsvvpuzzkYD/UjfWZfSrjRyjaFpDECttPsW90fAiYn2WdFrX
 6fFk1ns5lLA4QfBxMgvJZ6xa4SO0hqFxDStvlXJ/3d+gR6ZgxQzRfgEl9+QFJOnvXF5E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6CYc-00Fjsa-7K
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 13:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626875196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eiYfBTzqBLwjxFjmd1wf3xJRqWQqlFAJpRRIEev0yQ8=;
 b=SjgX77vvFYy6OLBH7FPl+SqOlRaWhllHyvAx9oBDtkGrYOF/OI7ah2xbKGQjjC6pEyGgbp
 3STJ2MHK/RRzZwjbE+N/rmOKg16ZPQFYzGfreFyW5MuALZekh+laWm9zO3wPEuE8ZdJQVk
 Ze2i824PMq0h597pgkWVoOOIKrOaW8Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-BDsfvdSzMLKJ9mscsg0FJA-1; Wed, 21 Jul 2021 09:46:35 -0400
X-MC-Unique: BDsfvdSzMLKJ9mscsg0FJA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18D8C18C8C0C;
 Wed, 21 Jul 2021 13:46:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-62.rdu2.redhat.com
 [10.10.112.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 75AF75C225;
 Wed, 21 Jul 2021 13:46:29 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Wed, 21 Jul 2021 14:46:28 +0100
Message-ID: <162687518862.276387.262991356873597293.stgit@warthog.procyon.org.uk>
In-Reply-To: <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
References: <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m6CYc-00Fjsa-7K
Subject: [V9fs-developer] [RFC PATCH 08/12] netfs: Keep dirty mark for pages
 with more than one dirty region
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Shyam Prasad N <nspmangalore@gmail.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If a page has more than one dirty region overlapping it, then we mustn't
clear the dirty mark when we want to flush one of them.

Make netfs_set_page_writeback() check the adjacent dirty regions to see if
they overlap the page(s) the region we're interested in, and if they do,
leave the page marked dirty.

NOTES:

 (1) Might want to discount the overlapping regions if they're being
     flushed (in which case they wouldn't normally want to hold the dirty
     bit).

 (2) Similarly, the writeback mark should not be cleared if the page is
     still being written back by another, overlapping region.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/netfs/write_back.c |   41 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/fs/netfs/write_back.c b/fs/netfs/write_back.c
index 9fcb2ac50ebb..5c779cb12345 100644
--- a/fs/netfs/write_back.c
+++ b/fs/netfs/write_back.c
@@ -135,12 +135,47 @@ static int netfs_lock_pages(struct address_space *mapping,
 	return ret;
 }
 
-static int netfs_set_page_writeback(struct page *page)
+static int netfs_set_page_writeback(struct page *page,
+				    struct netfs_i_context *ctx,
+				    struct netfs_write_request *wreq)
 {
+	struct netfs_dirty_region *region = wreq->region, *r;
+	loff_t pos = page_offset(page);
+	bool clear_dirty = true;
+
 	/* Now we need to clear the dirty flags on any page that's not shared
 	 * with any other dirty region.
 	 */
-	if (!clear_page_dirty_for_io(page))
+	spin_lock(&ctx->lock);
+	if (pos < region->dirty.start) {
+		r = region;
+		list_for_each_entry_continue_reverse(r, &ctx->dirty_regions, dirty_link) {
+			if (r->dirty.end <= pos)
+				break;
+			if (r->state < NETFS_REGION_IS_DIRTY)
+				continue;
+			kdebug("keep-dirty-b %lx reg=%x r=%x",
+			       page->index, region->debug_id, r->debug_id);
+			clear_dirty = false;
+		}
+	}
+
+	pos += thp_size(page);
+	if (pos > region->dirty.end) {
+		r = region;
+		list_for_each_entry_continue(r, &ctx->dirty_regions, dirty_link) {
+			if (r->dirty.start >= pos)
+				break;
+			if (r->state < NETFS_REGION_IS_DIRTY)
+				continue;
+			kdebug("keep-dirty-f %lx reg=%x r=%x",
+			       page->index, region->debug_id, r->debug_id);
+			clear_dirty = false;
+		}
+	}
+	spin_unlock(&ctx->lock);
+
+	if (clear_dirty && !clear_page_dirty_for_io(page))
 		BUG();
 
 	/* We set writeback unconditionally because a page may participate in
@@ -225,7 +260,7 @@ static int netfs_begin_write(struct address_space *mapping,
 	trace_netfs_wreq(wreq);
 
 	netfs_iterate_pages(mapping, wreq->first, wreq->last,
-			    netfs_set_page_writeback);
+			    netfs_set_page_writeback, ctx, wreq);
 	netfs_unlock_pages(mapping, wreq->first, wreq->last);
 	iov_iter_xarray(&wreq->source, WRITE, &wreq->mapping->i_pages,
 			wreq->start, wreq->len);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
