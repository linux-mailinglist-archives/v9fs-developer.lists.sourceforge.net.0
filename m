Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B211036BAFE
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 23:06:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb8RQ-0005y8-N3; Mon, 26 Apr 2021 21:06:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lb8RO-0005y1-Jq
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 21:06:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:From:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 Sender:Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IoprxGl2uK6k56hNY9CDxe9Gob3U7ejqWda/scDa68M=; b=TkR1vcmFBuoULwTI84ec8Ischy
 NYPQs7JzZYfoLDvaDhHejQ93q2dVTxkkqjbkZ7GwscWPEjdaFj//rLrJPzpqVyCFHKhqlWNNrJQBR
 ayioTL2y/N3yT25RVg2BdGNu4EJm/RDxIgizhvHN3b2PyVH4+8YAJlgrxzeQulHTRTSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:From:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IoprxGl2uK6k56hNY9CDxe9Gob3U7ejqWda/scDa68M=; b=JkoQyH3wosB8zLuTQ8UqlS74kf
 BzvvW3UUAjJxkUfrdRUcQvmq6u+HwmVrtoDBGqCMwcFE/lXMP1GpcxyVnGp2PrDONkXHfAvDs2U/k
 G00s6H1SVmuA7+KBv+1ID15yxf0Oi3vI4b5DlsN5bqk4jru/H77YrcKSeVhk4BgBK7bc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lb8RG-00DPog-Ig
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 21:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619471196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IoprxGl2uK6k56hNY9CDxe9Gob3U7ejqWda/scDa68M=;
 b=jJlvXcUJ2j8wvgB9FZsI0Zgjg5bqhk/FFSznEPMxQyTU/wad27T0Ug+sjOTitGpsNgnZ3v
 mX4O93Rp7D160EeQ8JDMATzPDMV3GmnmwhaKTJhsx8ZO6ILqUHe3IIJfafrzuNAQuuqE+E
 hqxdgsL1aV6BiYYdVLFeWRjRekl6wG8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-XW_eethqPa-CB163_frKsg-1; Mon, 26 Apr 2021 17:06:32 -0400
X-MC-Unique: XW_eethqPa-CB163_frKsg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3DDA1B18BC1;
 Mon, 26 Apr 2021 21:06:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-20.rdu2.redhat.com
 [10.10.112.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5BD605D9DE;
 Mon, 26 Apr 2021 21:06:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <3726523.1619471123.1@warthog.procyon.org.uk>
From: David Howells <dhowells@redhat.com>
Date: Mon, 26 Apr 2021 22:06:24 +0100
Message-ID: <3726642.1619471184@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.3 (/)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lb8RG-00DPog-Ig
Subject: [V9fs-developer] [PATCH] netfs: Miscellaneous fixes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Steve French <sfrench@samba.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

    
Fix some miscellaneous things in the new netfs lib[1]:

 (1) The kerneldoc for netfs_readpage() shouldn't say netfs_page().

 (2) netfs_readpage() can get an integer overflow on 32-bit when it
     multiplies page_index(page) by PAGE_SIZE.  It should use
     page_offset() instead.

 (3) netfs_write_begin() should also use page_offset() to avoid the same
     overflow.

 (4) Use page_mapping() in netfs_write_begin() rather than page->mapping.

Reported-by: Matthew Wilcox <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk/ [1]
---
 fs/netfs/read_helper.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 1d3b50c5db6d..568e26352309 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -933,7 +933,7 @@ void netfs_readahead(struct readahead_control *ractl,
 EXPORT_SYMBOL(netfs_readahead);
 
 /**
- * netfs_page - Helper to manage a readpage request
+ * netfs_readpage - Helper to manage a readpage request
  * @file: The file to read from
  * @page: The page to read
  * @ops: The network filesystem's operations for the helper to use
@@ -968,7 +968,7 @@ int netfs_readpage(struct file *file,
 		return -ENOMEM;
 	}
 	rreq->mapping	= page_file_mapping(page);
-	rreq->start	= page_index(page) * PAGE_SIZE;
+	rreq->start	= page_offset(page);
 	rreq->len	= thp_size(page);
 
 	if (ops->begin_cache_operation) {
@@ -1105,8 +1105,8 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	rreq = netfs_alloc_read_request(ops, netfs_priv, file);
 	if (!rreq)
 		goto error;
-	rreq->mapping		= page->mapping;
-	rreq->start		= page->index * PAGE_SIZE;
+	rreq->mapping		= page_file_mapping(page);
+	rreq->start		= page_offset(page);
 	rreq->len		= thp_size(page);
 	rreq->no_unlock_page	= page->index;
 	__set_bit(NETFS_RREQ_NO_UNLOCK_PAGE, &rreq->flags);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
