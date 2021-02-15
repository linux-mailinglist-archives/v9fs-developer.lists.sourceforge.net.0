Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5713F31BD78
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:49:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg7w-0002HS-4l; Mon, 15 Feb 2021 15:49:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg7q-0002DB-Ef
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+Ma1jifx8c9sln++i63HLx2QkPzzZKsDVw7/yoiDNY0=; b=Ydd5Osjyj4kSdL3FCVGRB/Y5MM
 70RdWIwLhmM5dgBSsw7zBDSNHYjgdrogkAJO7T3VATgYwPLl0pjNhRkjkFYF3YQg/uNGNjKpirM5k
 bI/WxXt0Rj5WAcPGvYLaEOI9lB8NyWdEtrq6UBQ/HJMqwR99uNIrKRG24qkQ37V68RIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+Ma1jifx8c9sln++i63HLx2QkPzzZKsDVw7/yoiDNY0=; b=PWrz/A9DWrnFyzGC9ASP2nBPvR
 f6X1niK7234U/E0WTwZPaAkosHnNebgYNIbaM5iTsoQXAGwW7q6R9phG0PHuhNZ3D1Y7zGUHTzzoj
 TxaWqujEPy2OOOM72hgw21Ws55FgFVirY3KqG9rCg6gqQ0oDTSUTOllcJnpM6FWYeBBM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBg7V-009oKb-Ae
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613404139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Ma1jifx8c9sln++i63HLx2QkPzzZKsDVw7/yoiDNY0=;
 b=Kv8BsMKp1e34O2uzbfRaV7gVjCk1uaAqpzQGWz4naZ0UAe5XXtDSGiPn+xW1k8SBuAQriE
 sECOnFy5DSNy/MZ4OXtRemFVa13W5PAVYuS9Zk/Uai0VA79Vi9DOmYD5l1FweTJefYjy+Y
 IEmZAEYcGUi+LOnXe20le3W1D6ZaQu0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-y1a_94veNferUpBG-rne-Q-1; Mon, 15 Feb 2021 10:48:57 -0500
X-MC-Unique: y1a_94veNferUpBG-rne-Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C45D7100A690;
 Mon, 15 Feb 2021 15:48:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E7E1E5B697;
 Mon, 15 Feb 2021 15:48:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:48:49 +0000
Message-ID: <161340412903.1303470.6424701655031380012.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBg7V-009oKb-Ae
Subject: [V9fs-developer] [PATCH 23/33] afs: Wait on PG_fscache before
 modifying/releasing a page
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
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

PG_fscache is going to be used to indicate that a page is being written to
the cache, and that the page should not be modified or released until it's
finished.

Make afs_invalidatepage() and afs_releasepage() wait for it.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
---

 fs/afs/file.c  |    9 +++++++++
 fs/afs/write.c |   10 ++++++++++
 2 files changed, 19 insertions(+)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index f1bab69e99d4..acbc21a8c80e 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -594,6 +594,7 @@ static void afs_invalidatepage(struct page *page, unsigned int offset,
 	if (PagePrivate(page))
 		afs_invalidate_dirty(page, offset, length);
 
+	wait_on_page_fscache(page);
 	_leave("");
 }
 
@@ -611,6 +612,14 @@ static int afs_releasepage(struct page *page, gfp_t gfp_flags)
 
 	/* deny if page is being written to the cache and the caller hasn't
 	 * elected to wait */
+#ifdef CONFIG_AFS_FSCACHE
+	if (PageFsCache(page)) {
+		if (!(gfp_flags & __GFP_DIRECT_RECLAIM) || !(gfp_flags & __GFP_FS))
+			return false;
+		wait_on_page_fscache(page);
+	}
+#endif
+
 	if (PagePrivate(page)) {
 		detach_page_private(page);
 		trace_afs_page_dirty(vnode, tracepoint_string("rel"), page);
diff --git a/fs/afs/write.c b/fs/afs/write.c
index dd4dc1c868b5..e1791de90478 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -117,6 +117,10 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 		SetPageUptodate(page);
 	}
 
+#ifdef CONFIG_AFS_FSCACHE
+	wait_on_page_fscache(page);
+#endif
+
 try_again:
 	/* See if this page is already partially written in a way that we can
 	 * merge the new write with.
@@ -857,6 +861,11 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
 	/* Wait for the page to be written to the cache before we allow it to
 	 * be modified.  We then assume the entire page will need writing back.
 	 */
+#ifdef CONFIG_AFS_FSCACHE
+	if (PageFsCache(vmf->page) &&
+	    wait_on_page_bit_killable(vmf->page, PG_fscache) < 0)
+		return VM_FAULT_RETRY;
+#endif
 
 	if (PageWriteback(vmf->page) &&
 	    wait_on_page_bit_killable(vmf->page, PG_writeback) < 0)
@@ -948,5 +957,6 @@ int afs_launder_page(struct page *page)
 
 	detach_page_private(page);
 	trace_afs_page_dirty(vnode, tracepoint_string("laundered"), page);
+	wait_on_page_fscache(page);
 	return ret;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
