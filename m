Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A411931BD6D
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:48:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg6q-0001y1-EF; Mon, 15 Feb 2021 15:48:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg4m-0001IO-FN
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wLM2gSa0kD6zIHb8GDXyN66lajfI3bDPXzUqDwmVInE=; b=dr88xIE6Eo6ScnsdFwZ79dpppT
 6m6veIoc+I9DMsjgJk+qbXWXjfXTNsZvW+jxokVBaV8ro4TQycwvf/5YVeooZywh5pdVvaGfHn5N/
 WQ4B7qoGrltMzP+HrNj+euM8Xe5ktQt+AzhUcQIU8Qfj742kZHV9JLAn6VEbCDt68Q6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wLM2gSa0kD6zIHb8GDXyN66lajfI3bDPXzUqDwmVInE=; b=JgRP4b3BLsKqsz8BWg0ggqHm90
 oRzg5aOfAhziM+ix+gPGNq7pOBAwrsDdoH8hojNlcKzvHrfrgup0kdvbZnG4UGxKi/tuJjS8oaE12
 mtXqSHSI7g0nRozw9wpfHwDdPFdYvBfau5aXKnnUpBDY4JVMXRctle7T9tRMiON2F6l4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBg4P-009o8R-Ai
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613403947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wLM2gSa0kD6zIHb8GDXyN66lajfI3bDPXzUqDwmVInE=;
 b=gJy71bJB2Q9caJEUn+LDcfoZ+VE8XUshQKlyBZ0u11Bx5azYSHO/YVVMZ8/RP6dH/yZhYA
 d3EXLgxJNQkQWkAVzAAqPKZiVsWTfkgSfbt+JkdE1sXbM/Tq/StDd9KJ6niqPFGE6v5Dxs
 RWlFlgbhJziu9AYgKSU1ACBuwWN86kQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-kf4scoX2NFOwQcvbtP7Y1g-1; Mon, 15 Feb 2021 10:45:45 -0500
X-MC-Unique: kf4scoX2NFOwQcvbtP7Y1g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BF09874980;
 Mon, 15 Feb 2021 15:45:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BB4A519C99;
 Mon, 15 Feb 2021 15:45:36 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:45:35 +0000
Message-ID: <161340393568.1303470.4997526899111310530.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBg4P-009o8R-Ai
Subject: [V9fs-developer] [PATCH 07/33] netfs,
 mm: Add unlock_page_fscache() and wait_on_page_fscache()
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

Add unlock_page_fscache() as an alias of unlock_page_private_2().  This
allows a page 'locked' with PG_fscache to be unlocked.

Add wait_on_page_fscache() to wait for PG_fscache to be unlocked.

[Linus suggested putting the fscache-themed functions into the
 caching-specific headers rather than pagemap.h]

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Linus Torvalds <torvalds@linux-foundation.org>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/linux-fsdevel/1330473.1612974547@warthog.procyon.org.uk/
Link: https://lore.kernel.org/linux-fsdevel/CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com/
---

 include/linux/netfs.h |   29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index b3d869ec7d2a..f69703543788 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -22,4 +22,33 @@
 #define TestSetPageFsCache(page)	TestSetPagePrivate2((page))
 #define TestClearPageFsCache(page)	TestClearPagePrivate2((page))
 
+/**
+ * unlock_page_fscache - Unlock a page that's locked with PG_fscache
+ * @page: The page
+ *
+ * Unlocks a page that's locked with PG_fscache and wakes up sleepers in
+ * wait_on_page_fscache().  This page bit is used by the netfs helpers when a
+ * netfs page is being written to a local disk cache, thereby allowing writes
+ * to the cache for the same page to be serialised.
+ */
+static inline void unlock_page_fscache(struct page *page)
+{
+	unlock_page_private_2(page);
+}
+
+/**
+ * wait_on_page_fscache - Wait for PG_fscache to be cleared on a page
+ * @page: The page
+ *
+ * Wait for the PG_fscache (PG_private_2) page bit to be removed from a page.
+ * This is, for example, used to handle a netfs page being written to a local
+ * disk cache, thereby allowing writes to the cache for the same page to be
+ * serialised.
+ */
+static inline void wait_on_page_fscache(struct page *page)
+{
+	if (PageFsCache(page))
+		wait_on_page_bit(compound_head(page), PG_fscache);
+}
+
 #endif /* _LINUX_NETFS_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
