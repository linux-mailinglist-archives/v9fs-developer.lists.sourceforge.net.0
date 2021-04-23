Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F21E36A675
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:12:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labl2-0001gp-Jq; Sun, 25 Apr 2021 10:12:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1labkN-0001e8-9X
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZP14ALIYuZPou0SxoZZoF8mp5d1cnxDivk0AIESLRJ8=; b=Kdq2003v78z745SsBc/LB/5kct
 x2Inrog4s0tuJJ/VRCgX2AC3EqBE1F3CUKWC2/e12wCVVgMt9HourfMij042g86Ef804A7MdGKFeS
 uDKaLX8YBTSt4moTQt5HicMZ1aqhBSHPqjwyn2pviQfEDJJ1xZXv6FiSPs3C3RkTqb/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZP14ALIYuZPou0SxoZZoF8mp5d1cnxDivk0AIESLRJ8=; b=DO6Bd5jS43+84wyC13tiQGzwkO
 3uHc/MKMECrHQNRgKMWYKuZfyFxU97JQzh85b1bqqcAxA9sTBSQ/zFJ4B2XAjHvZuW2so/kqfbNvo
 ZLaxmsiibimudMSaAcqFPu6oahMa6FJdSEv/eqAK5fuPIXEJqDL8PQZ5L2EVvgMN4giM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1labkI-006CrZ-SL
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZP14ALIYuZPou0SxoZZoF8mp5d1cnxDivk0AIESLRJ8=;
 b=U2a2dSDhEW47JaW/1AsZhYxFxbBxjCogyk9DpVQgoED4Ksm1oe7Xz6CPBjR2Ep5g/7wrf4
 Wgs7VViOVvsYz6FIu4uxp/sQb43FTs7BMvjIXj5pnhByaAmgoXb5tKUznBiPhQOsKmRF+M
 e/L+46W1qwpsXaJ29TngfJferhUJkoY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-tgNvLuqxOayAlSAX8AFf-g-1; Fri, 23 Apr 2021 09:28:48 -0400
X-MC-Unique: tgNvLuqxOayAlSAX8AFf-g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A3E4100A605;
 Fri, 23 Apr 2021 13:28:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBFB160BE5;
 Fri, 23 Apr 2021 13:28:39 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:28:39 +0100
Message-ID: <161918451911.3145707.17437110084860609102.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1labkI-006CrZ-SL
Subject: [V9fs-developer] [PATCH v7 04/31] fs: Document file_ra_state
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Matthew Wilcox (Oracle) <willy@infradead.org>

Turn the comments into kernel-doc and improve the wording slightly.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dave Wysochanski <dwysocha@redhat.com>
Tested-By: Marc Dionne <marc.dionne@auristor.com>
Link: https://lore.kernel.org/r/20210407201857.3582797-3-willy@infradead.org/
Link: https://lore.kernel.org/r/161789068619.6155.1397999970593531574.stgit@warthog.procyon.org.uk/ # v6
---

 include/linux/fs.h |   24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/include/linux/fs.h b/include/linux/fs.h
index ec8f3ddf4a6a..33831a8bda52 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -891,18 +891,22 @@ struct fown_struct {
 	int signum;		/* posix.1b rt signal to be delivered on IO */
 };
 
-/*
- * Track a single file's readahead state
+/**
+ * struct file_ra_state - Track a file's readahead state.
+ * @start: Where the most recent readahead started.
+ * @size: Number of pages read in the most recent readahead.
+ * @async_size: Start next readahead when this many pages are left.
+ * @ra_pages: Maximum size of a readahead request.
+ * @mmap_miss: How many mmap accesses missed in the page cache.
+ * @prev_pos: The last byte in the most recent read request.
  */
 struct file_ra_state {
-	pgoff_t start;			/* where readahead started */
-	unsigned int size;		/* # of readahead pages */
-	unsigned int async_size;	/* do asynchronous readahead when
-					   there are only # of pages ahead */
-
-	unsigned int ra_pages;		/* Maximum readahead window */
-	unsigned int mmap_miss;		/* Cache miss stat for mmap accesses */
-	loff_t prev_pos;		/* Cache last read() position */
+	pgoff_t start;
+	unsigned int size;
+	unsigned int async_size;
+	unsigned int ra_pages;
+	unsigned int mmap_miss;
+	loff_t prev_pos;
 };
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
