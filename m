Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D853935890C
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 17:57:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUX2b-0003rl-6B; Thu, 08 Apr 2021 15:57:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUX2a-0003q7-G8
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 15:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NinlbVPhwGdJcoVcBt2udn4w5X18/v4CvahbnKLeeMI=; b=LHK5gZdTk5DTlDGtD4HIgbYTjW
 Uvc1/ETJUSKubiJ3rTmWoWlZBtGHr9NN7Tg7DmPlfMuDzvoxQ8pL+Jb2i6rNZyeY/dILR+In03YyC
 Q2ywEbI3sa25ntjE4M0w7VZcGBTZZR8mZW++4gwxTvlengHMxaYpoUT7TmFN8pBQ2d7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NinlbVPhwGdJcoVcBt2udn4w5X18/v4CvahbnKLeeMI=; b=BOyuFT4ruMjR5c4r+eFyqMTmiN
 k56bT2grXWuRWbPRbBYaLLVULTTARtxGjnHmNfEDADzQbzu6HErhFqiURHcWQ+gBDoct95k4tQ3Z6
 urdyqDEXvRZu0pDSlNcvjZHmlk6Uwx1k53erMIyi/rFb2Kl0fNT+jYB5qzklAReGGoLE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUX2W-00076y-9e
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 15:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617897466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NinlbVPhwGdJcoVcBt2udn4w5X18/v4CvahbnKLeeMI=;
 b=YEQmUl/FwzdaBaSrJRErp2PkpVKPdwoDA8i5YQtgBPLTv1z6zfT0O3ty68sdGH0ZRmVroz
 Fbqu8trYwWm+lWdxWHb2P3E72G/50utR7EEb24CLeiNphbtP1fFtwInDsisv4y4uGdx9XY
 N+5Ou6BGjDQJJiBTvjZzGPfggiBtnT8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-0tkXerksNmuLEQR_9ITDFg-1; Thu, 08 Apr 2021 11:57:42 -0400
X-MC-Unique: 0tkXerksNmuLEQR_9ITDFg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1B2A107ACC7;
 Thu,  8 Apr 2021 15:57:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3DE165C1C4;
 Thu,  8 Apr 2021 15:57:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210408145057.GN2531743@casper.infradead.org>
References: <20210408145057.GN2531743@casper.infradead.org>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <46016.1617897451.1@warthog.procyon.org.uk>
Date: Thu, 08 Apr 2021 16:57:31 +0100
Message-ID: <46017.1617897451@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUX2W-00076y-9e
Subject: Re: [V9fs-developer] [PATCH v6 02/30] mm: Add set/end/wait
 functions for PG_private_2
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
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Here's a partial change, but we still need to deal with the assumption that
page_has_private() makes that its output can be used to count the number of
refs held for PG_private *and* PG_private_2 - which isn't true for my code
here.

David
---
commit e7c28d83b84b972c3faa0dd86020548aa50eda75
Author: David Howells <dhowells@redhat.com>
Date:   Thu Apr 8 16:33:20 2021 +0100

    netfs: Fix PG_private_2 helper functions to consistently use compound_head()

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index ef511364cc0c..63ca6430aef5 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -699,6 +699,7 @@ void page_endio(struct page *page, bool is_write, int err);
  */
 static inline void set_page_private_2(struct page *page)
 {
+	page = compound_head(page);
 	get_page(page);
 	SetPagePrivate2(page);
 }
diff --git a/mm/filemap.c b/mm/filemap.c
index 0ce93c8799ca..46e0321ba87a 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1461,6 +1461,7 @@ EXPORT_SYMBOL(end_page_private_2);
  */
 void wait_on_page_private_2(struct page *page)
 {
+	page = compound_head(page);
 	while (PagePrivate2(page))
 		wait_on_page_bit(page, PG_private_2);
 }
@@ -1481,6 +1482,7 @@ int wait_on_page_private_2_killable(struct page *page)
 {
 	int ret = 0;
 
+	page = compound_head(page);
 	while (PagePrivate2(page)) {
 		ret = wait_on_page_bit_killable(page, PG_private_2);
 		if (ret < 0)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
