Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FDE46199D
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:36:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhm2-0006Cn-1I; Mon, 29 Nov 2021 14:36:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhm0-0006Cc-Ng
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nz50a8CCWuVnDeJtKioENPtwI92YM9+kvJ+TjMjcCOs=; b=IzYvmv5JbJ+vxHN2m/wqWJAxVg
 RDlKKJvkL7B6HQ+xxpa2/mrZ57t7XCptPLP3UNTGKtTs5OcfNXZDJSxYQ/Uepu40+XGy9m/mX5Iry
 i30oBwE7owdlVpDUsjBwJmmjDzndxe6Rn/fdRVtwfY0WPmxbLsGE/YgUOm3qzRzvv6QQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nz50a8CCWuVnDeJtKioENPtwI92YM9+kvJ+TjMjcCOs=; b=nWV/Aj+RR85E4+CV0M569CSrO7
 RsblaRsmkYmvzZOtpP4BghbLAJBCGFnCVwkHuGuYmCrpu3a50OaqDf5lZp9P4AKTMsDaydsuM9Tz+
 NeETWwnyTYTdffSVSlQJHYUNBEx3mdWJkSpmGwZBW4RGePMXi0eoUN/v4hdaMsrpNkYA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhlz-00EDzA-Tq
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196606;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nz50a8CCWuVnDeJtKioENPtwI92YM9+kvJ+TjMjcCOs=;
 b=bxV/VOEzcvoA7kwlZBYxC68acweE1NW60crw1IgbrDQZR1Y7urm4UQcfaM5ICuKRwo6h4e
 OrNi0YImcKJ6WkL9ydBnNrGyzJbsxLvglCb7lq7C6oz3CoQjCqKWAOuBkoTFv2KHaUpM3d
 wMNKiMKYOWZPx0F+aZyIeAsUwpNuhC8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-343-fw3rqT9qNGGeSIUnEb1eyA-1; Mon, 29 Nov 2021 09:36:42 -0500
X-MC-Unique: fw3rqT9qNGGeSIUnEb1eyA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72E29100C663;
 Mon, 29 Nov 2021 14:36:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D2D871CBF;
 Mon, 29 Nov 2021 14:36:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:36:10 +0000
Message-ID: <163819657068.215744.601051542491746150.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  With transparent huge pages, in the future, write_begin()
 and write_end() may be passed a length parameter that, in combination with
 the offset into the page, exceeds the length of that page. This all [...]
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhlz-00EDzA-Tq
Subject: [V9fs-developer] [PATCH 55/64] afs: Handle len being extending over
 page end in write_begin/write_end
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
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

With transparent huge pages, in the future, write_begin() and write_end()
may be passed a length parameter that, in combination with the offset into
the page, exceeds the length of that page.  This allows
grab_cache_page_write_begin() to better choose the size of THP to allocate.

Fix afs's functions to handle this by trimming the length as needed after
the page has been allocated.

[Removed the now-unnecessary index var; spotted by kernel test robot]

Fixes: e1b1240c1ff5 ("netfs: Add write_begin helper")
Reported-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Acked-by: Jeff Layton <jlayton@kernel.org>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
Link: https://lore.kernel.org/r/162367681795.460125.11729955608839747375.stgit@warthog.procyon.org.uk/ # v1
---

 fs/afs/write.c |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/fs/afs/write.c b/fs/afs/write.c
index ca4909baf5e6..8e4e87d66855 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -25,7 +25,8 @@ int afs_set_page_dirty(struct page *page)
 }
 
 /*
- * prepare to perform part of a write to a page
+ * Prepare to perform part of a write to a page.  Note that len may extend
+ * beyond the end of the page.
  */
 int afs_write_begin(struct file *file, struct address_space *mapping,
 		    loff_t pos, unsigned len, unsigned flags,
@@ -36,7 +37,6 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 	unsigned long priv;
 	unsigned f, from;
 	unsigned t, to;
-	pgoff_t index;
 	int ret;
 
 	_enter("{%llx:%llu},%llx,%x",
@@ -51,8 +51,8 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 	if (ret < 0)
 		return ret;
 
-	index = folio_index(folio);
-	from = pos - index * PAGE_SIZE;
+	from = offset_in_folio(folio, pos);
+	len = min_t(size_t, len, folio_size(folio) - from);
 	to = from + len;
 
 try_again:
@@ -103,7 +103,8 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 }
 
 /*
- * finalise part of a write to a page
+ * Finalise part of a write to a page.  Note that len may extend beyond the end
+ * of the page.
  */
 int afs_write_end(struct file *file, struct address_space *mapping,
 		  loff_t pos, unsigned len, unsigned copied,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
