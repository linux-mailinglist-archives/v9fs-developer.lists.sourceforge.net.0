Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C953585BE
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:05:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUVHn-0005SF-My; Thu, 08 Apr 2021 14:05:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUVHm-0005S2-JA
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gSWYbhIaJdMrpl7aiwuuHeD5yWsVtmcOiCOXzWCEKpk=; b=DO4uu+54kmEh1SPUHttWDwcyDg
 lVtQwHc6fHh2UAyI5dhUAFKGv2zT3zUrT0tqrEsakdefzwTEwLlXYtBwJwLs+eQ+/vdCUz4K3Fq1+
 sMS+o7T/XZcF3cYbX7XOo9KBoxdqKzV5eWjLoLQvChmVUpreAdRqaa7wVe/iR/AvkgGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gSWYbhIaJdMrpl7aiwuuHeD5yWsVtmcOiCOXzWCEKpk=; b=mgCsqRg45gSklOyNivMfVROAje
 33EFB3XtcArxCYtXQ2WgU25tqTmjPxaNAlfY2lYOLQIIs1I1W3tef0vkOglYTvO0PfHytfU8y2iB1
 YIE13kiC/WrK52DHAdZBwjSd0+2BphSU2vjuzCCnBxmFlh6IcHh5VUrZRKo+2qS4xi/g=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUVHM-0002wu-VU
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617890699;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gSWYbhIaJdMrpl7aiwuuHeD5yWsVtmcOiCOXzWCEKpk=;
 b=BgtarGor4cSeQ3wX0C4MjRXSpCoQgD0XMmQPW4g2N8ToBf9X0agZnOOptwg8f6zP5YuFTg
 IUzd8R8sW6LKUeayN8tBjycShV2rMInmcC4z8yFXcynjOrEMQKBWScVkKJwlLKg+rHpLM4
 aeE140DG8TVj0socac37Av5ilHyKo70=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-Y6CR6-g9PnGwphTM_rO9Jg-1; Thu, 08 Apr 2021 10:04:54 -0400
X-MC-Unique: Y6CR6-g9PnGwphTM_rO9Jg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12AEB801FCE;
 Thu,  8 Apr 2021 14:04:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F36525D747;
 Thu,  8 Apr 2021 14:04:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 08 Apr 2021 15:04:46 +0100
Message-ID: <161789068619.6155.1397999970593531574.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUVHM-0002wu-VU
Subject: [V9fs-developer] [PATCH v6 04/30] fs: Document file_ra_state
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Matthew Wilcox (Oracle) <willy@infradead.org>

Turn the comments into kernel-doc and improve the wording slightly.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/20210407201857.3582797-3-willy@infradead.org/
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
