Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0442336A678
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:13:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lablM-0001xf-RK; Sun, 25 Apr 2021 10:13:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1labkM-0001ud-JM
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=claGAAAwAkYoHJ+sqsBkV8q9uRfXIUJw7gSPqT2Dahw=; b=nGgGkbAz/Ju3Zyku4l3kTIqsl1
 M60EnCpZUpBscM24BbpZ8jX7HvpIe9NOok29WhDw/y0IDm0yhYH1ua/INu5FXpthxhbjr7Tui8doG
 3pjxYFf0ePipyZGAz4cZe+AY2LNgcSMauLeodLcsh+18Lt7YufPIaQVUp4/fjLcKzRyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=claGAAAwAkYoHJ+sqsBkV8q9uRfXIUJw7gSPqT2Dahw=; b=Rcgw6lLSOA1OpJpMq3YrREln5G
 FfHvgwNc6igdN1iI6nKEby5TR3FaknC9uOHr3d0pJ6OhSFMlXEatpTycrrgEICaF3lxD9t8ILIGbs
 +3EbDdyOa9u57O6sUg9Gaxcw7uzIEqhdwVOzETSs6DtLkVvESs/TRgcX7I7oOaKvr8RU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1labkF-00078J-T9
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345522;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=claGAAAwAkYoHJ+sqsBkV8q9uRfXIUJw7gSPqT2Dahw=;
 b=P3SO/j49HQazTHV5ecOq6dcp0rs74hLidL2JqVMIIpjoeh0nNtpAON9W9O/KxCWcqrMpWY
 1uYuogK/eDAkjkPbONOGuMrkTXKK5+9A5T3XWN1X3RgrTFdHL5PSO2pQF0niIZi48AJp8z
 KxNzcxJTFIHaPJxfaYveU2MAsoY++yM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-WXdkg2GmMNCD2H-1gpZk4w-1; Fri, 23 Apr 2021 09:28:58 -0400
X-MC-Unique: WXdkg2GmMNCD2H-1gpZk4w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01D6E107ACCD;
 Fri, 23 Apr 2021 13:28:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83D0F60C13;
 Fri, 23 Apr 2021 13:28:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:28:51 +0100
Message-ID: <161918453173.3145707.484012520187142542.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Headers-End: 1labkF-00078J-T9
Subject: [V9fs-developer] [PATCH v7 05/31] mm/readahead: Handle ractl
 nr_pages being modified
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
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Matthew Wilcox (Oracle) <willy@infradead.org>

Filesystems are not currently permitted to modify the number of pages
in the ractl.  An upcoming patch to add readahead_expand() changes that
rule, so remove the check and resync the loop counter after every call
to the filesystem.

Tested-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/20210420200116.3715790-1-willy@infradead.org/
Link: https://lore.kernel.org/r/20210421170923.4005574-1-willy@infradead.org/ # v2
---

 mm/readahead.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/readahead.c b/mm/readahead.c
index 2088569a947e..5b423ecc99f1 100644
--- a/mm/readahead.c
+++ b/mm/readahead.c
@@ -198,8 +198,6 @@ void page_cache_ra_unbounded(struct readahead_control *ractl,
 	for (i = 0; i < nr_to_read; i++) {
 		struct page *page = xa_load(&mapping->i_pages, index + i);
 
-		BUG_ON(index + i != ractl->_index + ractl->_nr_pages);
-
 		if (page && !xa_is_value(page)) {
 			/*
 			 * Page already present?  Kick off the current batch
@@ -210,6 +208,7 @@ void page_cache_ra_unbounded(struct readahead_control *ractl,
 			 * not worth getting one just for that.
 			 */
 			read_pages(ractl, &page_pool, true);
+			i = ractl->_index + ractl->_nr_pages - index - 1;
 			continue;
 		}
 
@@ -223,6 +222,7 @@ void page_cache_ra_unbounded(struct readahead_control *ractl,
 					gfp_mask) < 0) {
 			put_page(page);
 			read_pages(ractl, &page_pool, true);
+			i = ractl->_index + ractl->_nr_pages - index - 1;
 			continue;
 		}
 		if (i == nr_to_read - lookahead_size)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
