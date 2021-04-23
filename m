Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC4336A698
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:20:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labsU-0007iR-Oy; Sun, 25 Apr 2021 10:20:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1labrE-0007Kh-UL
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QeznpStb+QZXrFIpQsqwTeuQeft9y2EpZxKS25L+ORg=; b=RXd5xK+nzaXnMT0jMzpzaZGPHL
 atLhIM1aovviyTRK8FKCPD6R8g0Yugw7zf21G9zML4bqw6Xf/akZY5LpPChb2wmu3No5fV+B6Hdkz
 9yUi0xEf2fNkEJWHoVrgNEnrWDQ6aIdgoCZ/6lSJuorvBDCcPXasglLlNBfjwtkK6jUQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QeznpStb+QZXrFIpQsqwTeuQeft9y2EpZxKS25L+ORg=; b=Z1LDisQb757UjerLEE40WwBK5F
 g7PPI8RT9HAP9iPX4jJxfk4pBqsKH5TdGXUsgX5S1waHxMRpNzSzAk1zohz/o21QNaX5+//6+/CWI
 6ykYcslwT327jctrVG19Qk1X8aUWDTAZ7Qqh0Q6C+wO3OOvug+6Eg6UnvIIiLRFHEqA0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1labr6-0008BE-5Z
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345946;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QeznpStb+QZXrFIpQsqwTeuQeft9y2EpZxKS25L+ORg=;
 b=GMfGfDdOOmRSR7eEBfq8ZelNbGJnr/58+ykSEy4YNLyBg6YyFM9xD8bxNAMrwTMha0S8IB
 eIMcdCi7cQzav5fPNC9QfNWBvTTRX87oGLrLuND8GZ8Zyya4FJm6rNmwK7zx9NGiIaJTlP
 6IL9Se6HZnabROP2F2dMh7ij9njbzwM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-453-CyJTLYMpMielQKfmXVl1eg-1; Fri, 23 Apr 2021 09:34:02 -0400
X-MC-Unique: CyJTLYMpMielQKfmXVl1eg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F06DE1922023;
 Fri, 23 Apr 2021 13:33:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6B68019D9B;
 Fri, 23 Apr 2021 13:33:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:33:55 +0100
Message-ID: <161918483555.3145707.11368355545275201782.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Headers-End: 1labr6-0008BE-5Z
Subject: [V9fs-developer] [PATCH v7 26/31] afs: Wait on PG_fscache before
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

PG_fscache is going to be used to indicate that a page is being written to
the cache, and that the page should not be modified or released until it's
finished.

Make afs_invalidatepage() and afs_releasepage() wait for it.

Signed-off-by: David Howells <dhowells@redhat.com>
Tested-By: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/158861253957.340223.7465334678444521655.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/159465832417.1377938.3571599385208729791.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/160588536286.3465195.13231895135369807920.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118153708.1232039.3535103645871176749.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161049369.2537118.11591934943429117060.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340412903.1303470.6424701655031380012.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539556890.286939.5873470593519458598.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653812726.2770958.18167145829938766503.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789096241.6155.5907241930823579235.stgit@warthog.procyon.org.uk/ # v6
---

 fs/afs/file.c  |    9 +++++++++
 fs/afs/write.c |   10 ++++++++++
 2 files changed, 19 insertions(+)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 4a34ffaf6de4..f1e30b89e41c 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -593,6 +593,7 @@ static void afs_invalidatepage(struct page *page, unsigned int offset,
 	if (PagePrivate(page))
 		afs_invalidate_dirty(page, offset, length);
 
+	wait_on_page_fscache(page);
 	_leave("");
 }
 
@@ -610,6 +611,14 @@ static int afs_releasepage(struct page *page, gfp_t gfp_flags)
 
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
index 6e41b982c71b..1b8cabf5ac92 100644
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
 
 	if (wait_on_page_writeback_killable(vmf->page))
 		return VM_FAULT_RETRY;
@@ -947,5 +956,6 @@ int afs_launder_page(struct page *page)
 
 	detach_page_private(page);
 	trace_afs_page_dirty(vnode, tracepoint_string("laundered"), page);
+	wait_on_page_fscache(page);
 	return ret;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
