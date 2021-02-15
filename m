Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F52131BD6E
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:48:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg6t-0001z8-EH; Mon, 15 Feb 2021 15:48:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg5x-0001n7-80
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7aSMvUOK48InysNZ6yfpBVuSlFVpk14VB2492kELOo=; b=JfrWB0VuFj/uqWamiBEBP5fIH9
 4Gx+OQhfrEfqLLKwB6X6N6Y1kONuIEo7k+3ZSBJ84VcYZ1sZhDM1z8PtTc3q3u86rHuHWIRCRRfMz
 LXgzY8BhKMVGtogXir1LDZOe1PYwhr/C7buLau++ZyskdFK8v1Melq6UQM78cnExR9Bw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D7aSMvUOK48InysNZ6yfpBVuSlFVpk14VB2492kELOo=; b=FTY4wo3+8Adapabc6X4CLWDyrC
 5329G/nxCQKkj3w9FbBZMRXkgxoi1zyE5qDkF9PLJsasZc8jb99ayj2jhwa6qWz1IOI1SFL5jaJ6w
 IEyni3gxjCdc3WBWJu0YNqILX4Wd0uVE27zYOHvHU9dktRHYsuZfPs5e+Ex8pltWM+GA=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lBg5Z-0006VI-3c
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613404019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D7aSMvUOK48InysNZ6yfpBVuSlFVpk14VB2492kELOo=;
 b=Hs96xRxf04PqN9xTQMMA4vfO82oZIZqCMVIBqNW6g5tCbmUUPgBIKUkxAfOjC0Og1Z/um+
 CF5Qy3zA0MKKuDIzlFQIsCRXdMTlZ44YE4ycDsdLx02FPIbrlLQ/2x8yulf1zsZhxARP4u
 IJ3wglVJnXaxg8a0ZOEOF2b+yBLqC7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-zu5zqU1zMpG1S-ynmgtivA-1; Mon, 15 Feb 2021 10:46:57 -0500
X-MC-Unique: zu5zqU1zMpG1S-ynmgtivA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53A5679EC5;
 Mon, 15 Feb 2021 15:46:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 344EB60BE2;
 Mon, 15 Feb 2021 15:46:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:46:48 +0000
Message-ID: <161340400833.1303470.8070750156044982282.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1lBg5Z-0006VI-3c
Subject: [V9fs-developer] [PATCH 13/33] netfs: Hold a ref on a page when
 PG_private_2 is set
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Take a reference on a page when PG_private_2 is set and drop it once the
bit is unlocked.

Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: Linus Torvalds <torvalds@linux-foundation.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/linux-fsdevel/1331025.1612974993@warthog.procyon.org.uk/
---

 fs/netfs/read_helper.c |   10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 156941e0de61..9191a3617d91 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -10,6 +10,7 @@
 #include <linux/fs.h>
 #include <linux/mm.h>
 #include <linux/pagemap.h>
+#include <linux/pagevec.h>
 #include <linux/slab.h>
 #include <linux/uio.h>
 #include <linux/sched/mm.h>
@@ -230,10 +231,13 @@ static void netfs_rreq_completed(struct netfs_read_request *rreq)
 static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
 {
 	struct netfs_read_subrequest *subreq;
+	struct pagevec pvec;
 	struct page *page;
 	pgoff_t unlocked = 0;
 	bool have_unlocked = false;
 
+	pagevec_init(&pvec);
+
 	rcu_read_lock();
 
 	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
@@ -247,6 +251,8 @@ static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
 				continue;
 			unlocked = page->index;
 			unlock_page_fscache(page);
+			if (pagevec_add(&pvec, page) == 0)
+				pagevec_release(&pvec);
 			have_unlocked = true;
 		}
 	}
@@ -403,8 +409,10 @@ static void netfs_rreq_unlock(struct netfs_read_request *rreq)
 				pg_failed = true;
 				break;
 			}
-			if (test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags))
+			if (test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags)) {
+				get_page(page);
 				SetPageFsCache(page);
+			}
 			pg_failed |= subreq_failed;
 			if (pgend < iopos + subreq->len)
 				break;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
