Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F2D3343DE
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Mar 2021 17:56:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lK28G-0001an-Em; Wed, 10 Mar 2021 16:56:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lK28E-0001af-Ut
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Mar 2021 16:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RkMaKS84Erw5iqrERot0PwU2wMGkYNCFnxXlts7pQU=; b=g+9sabLHNLcB0q0zzl8qpAR0pO
 wAhf710bQlu10mNGOp3t7oY9661FTM5VCVfrgZHXsmDHy88EVggasrDUnppd0xcAJ7nQC+NQ8EloM
 9XuijwnZuEwsW++J2IDlrhhTcXWQx5b6rmNGTDEmhsjJerVUEHkmtrLf4zPPv4jqXJS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3RkMaKS84Erw5iqrERot0PwU2wMGkYNCFnxXlts7pQU=; b=VfI4nt9nZOm10+WTQpdRqNcW35
 1sWHiPYsZgJv9FHsFnlLyrPB5CHDrhfu1idVLg7R73omN6TNV45ZaL2isuaHcr4N8/mEgcMuN2qvy
 nfUML075CUktO7jHUDocTU2gX9kTAhGTUqAdmj6SwXMwpBCZtIaXzNCUQyk/32W8yy+s=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lK28A-00A0sB-8n
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Mar 2021 16:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615395372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3RkMaKS84Erw5iqrERot0PwU2wMGkYNCFnxXlts7pQU=;
 b=cZvc+RPOpdqi2rwFzA+mVbQyFjOrgjS/c+M4dh25FVErPIzJmfH6/MxwFQweQ0+2Rx8URn
 MMfeNV/mwLl0+4eLIzChmWeWtzg1posGSsIn0kHXhmBCphlDnV/5u1eK4QxKFXQgJr+Ybo
 viZ25wYQojw7MIlVAKRn7LuF8HK7LPU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-w3Zuq-KbOdGbIIgAEsl6Sg-1; Wed, 10 Mar 2021 11:56:10 -0500
X-MC-Unique: w3Zuq-KbOdGbIIgAEsl6Sg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83A101934106;
 Wed, 10 Mar 2021 16:56:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 537A010013C1;
 Wed, 10 Mar 2021 16:56:01 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 10 Mar 2021 16:56:00 +0000
Message-ID: <161539536093.286939.5076448803512118764.stgit@warthog.procyon.org.uk>
In-Reply-To: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lK28A-00A0sB-8n
Subject: [V9fs-developer] [PATCH v4 07/28] netfs,
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
 caching-specific headers rather than pagemap.h[1]]

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
Link: https://lore.kernel.org/r/1330473.1612974547@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com/ [1]
Link: https://lore.kernel.org/r/161340393568.1303470.4997526899111310530.stgit@warthog.procyon.org.uk/ # v3
---

 include/linux/netfs.h |   29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index cc1102040488..5ed8c6dc7453 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -26,4 +26,33 @@
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
