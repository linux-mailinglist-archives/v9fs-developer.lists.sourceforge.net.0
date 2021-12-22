Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 169E947DB75
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:32:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0B5e-00015M-Ln; Wed, 22 Dec 2021 23:32:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0B5c-00015G-8P
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:32:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XfI7gqBYYhaYDC/XKjIvpYFWGl28/kPgLuT23IL8FM0=; b=gYz/GKbEwUdcGa2MV/diHDmZzi
 rQyO6Eg/7xvY53onMDPku4xkgtoTtlSVN7LkNMkJx3slbQYylI/nF1JQ/Rjb802vxpojAC4ODnQ64
 nhQxaeU7UCtomPF9NiJ4i4UKnDW4IK+e0VfIljY3mywTHztIUY/WGy7KndNhwkCjKk7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XfI7gqBYYhaYDC/XKjIvpYFWGl28/kPgLuT23IL8FM0=; b=TOcosTdCWmdi86xNQnjk2A0JGN
 C8jXp9IduxzdnbBRuhBayu89NWwscvblK1Z3HKRehqhdPJYFKJY2hqIcuCapXXnrjpML0D0ED19TB
 JjsaC1qlY47s/9JO3NKHzxoCIYqShAgKajDFzrXhf/vv2lvaLvNr2D02Dph0eDwK1HDE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0B5b-0007q7-1W
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XfI7gqBYYhaYDC/XKjIvpYFWGl28/kPgLuT23IL8FM0=;
 b=P1oc1fVNcmVIZHtfMFqVYat+SMIZ+1xPwCeq/Ht5ITBcOmzO4Eysr3D0JhV8keRx+QBIwy
 DJwpt0lMi/Ell/QwZcP0W4whXfeojMil3w0CuJkZV/pKLloyYnSU9rhT9QeTQldHL8uDXE
 fwz8JLVAlRB9FCjxwVDmcKS9tJXP31s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-82-xqCE2pPyOEe1DQYWm9JOXg-1; Wed, 22 Dec 2021 18:31:58 -0500
X-MC-Unique: xqCE2pPyOEe1DQYWm9JOXg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7F358042E0;
 Wed, 22 Dec 2021 23:31:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B6667EFC3;
 Wed, 22 Dec 2021 23:31:48 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:31:47 +0000
Message-ID: <164021590773.640689.16777975200823659231.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 9p, afs ceph, cifs and nfs,
 gfpflags_allow_blocking() (which
 wraps a test for __GFP_DIRECT_RECLAIM being set) is used to determine if
 ->releasepage() should wait for the completion of a DIO write t [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0B5b-0007q7-1W
Subject: [V9fs-developer] [PATCH v4 68/68] 9p, afs, ceph, cifs,
 nfs: Use current_is_kswapd() rather than gfpflags_allow_blocking()
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
Cc: dhowells@redhat.com, linux-mm@kvack.org,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 linux-cifs@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Zhaoyang Huang <zhaoyang.huang@unisoc.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In 9p, afs ceph, cifs and nfs, gfpflags_allow_blocking() (which wraps a
test for __GFP_DIRECT_RECLAIM being set) is used to determine if
->releasepage() should wait for the completion of a DIO write to fscache
with something like:

	if (folio_test_fscache(folio)) {
		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
			return false;
		folio_wait_fscache(folio);
	}

Instead, current_is_kswapd() should be used instead.

Note that this is based on a patch originally by Zhaoyang Huang[1].  In
addition to extending it to the other network filesystems and putting it on
top of my fscache rewrite, it also needs to include linux/swap.h in a bunch
of places.  Can current_is_kswapd() be moved to linux/mm.h?

Originally-signed-off-by: Zhaoyang Huang <zhaoyang.huang@unisoc.com>
Co-developed-by: David Howells <dhowells@redhat.com>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Zhaoyang Huang <zhaoyang.huang@unisoc.com>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: Jeff Layton <jlayton@kernel.org>
cc: Steve French <sfrench@samba.org>
cc: Trond Myklebust <trond.myklebust@hammerspace.com>
cc: linux-cachefs@redhat.com
cc: v9fs-developer@lists.sourceforge.net
cc: linux-afs@lists.infradead.org
cc: ceph-devel@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: linux-nfs@vger.kernel.org
cc: linux-mm@kvack.org
Link: https://lore.kernel.org/r/1638952658-20285-1-git-send-email-huangzhaoyang@gmail.com/ [1]
---

 fs/9p/vfs_addr.c |    3 ++-
 fs/afs/file.c    |    3 ++-
 fs/ceph/addr.c   |    3 ++-
 fs/cifs/file.c   |    2 +-
 fs/nfs/fscache.h |    3 ++-
 5 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index f3f349f460e5..c72e9f8f5f32 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -16,6 +16,7 @@
 #include <linux/pagemap.h>
 #include <linux/idr.h>
 #include <linux/sched.h>
+#include <linux/swap.h>
 #include <linux/uio.h>
 #include <linux/netfs.h>
 #include <net/9p/9p.h>
@@ -143,7 +144,7 @@ static int v9fs_release_page(struct page *page, gfp_t gfp)
 		return 0;
 #ifdef CONFIG_9P_FSCACHE
 	if (folio_test_fscache(folio)) {
-		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
+		if (current_is_kswapd() || !(gfp & __GFP_FS))
 			return 0;
 		folio_wait_fscache(folio);
 	}
diff --git a/fs/afs/file.c b/fs/afs/file.c
index 572063dad0b3..5b98db127a1b 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -14,6 +14,7 @@
 #include <linux/gfp.h>
 #include <linux/task_io_accounting_ops.h>
 #include <linux/mm.h>
+#include <linux/swap.h>
 #include <linux/netfs.h>
 #include "internal.h"
 
@@ -517,7 +518,7 @@ static int afs_releasepage(struct page *page, gfp_t gfp)
 	 * elected to wait */
 #ifdef CONFIG_AFS_FSCACHE
 	if (folio_test_fscache(folio)) {
-		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
+		if (current_is_kswapd() || !(gfp & __GFP_FS))
 			return false;
 		folio_wait_fscache(folio);
 	}
diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index e836f8f1d4f8..b3d9459c9bbd 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -4,6 +4,7 @@
 #include <linux/backing-dev.h>
 #include <linux/fs.h>
 #include <linux/mm.h>
+#include <linux/swap.h>
 #include <linux/pagemap.h>
 #include <linux/slab.h>
 #include <linux/pagevec.h>
@@ -174,7 +175,7 @@ static int ceph_releasepage(struct page *page, gfp_t gfp)
 		return 0;
 
 	if (PageFsCache(page)) {
-		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
+		if (current_is_kswapd() || !(gfp & __GFP_FS))
 			return 0;
 		wait_on_page_fscache(page);
 	}
diff --git a/fs/cifs/file.c b/fs/cifs/file.c
index 22b66ce10115..d872f6fe8e7d 100644
--- a/fs/cifs/file.c
+++ b/fs/cifs/file.c
@@ -4809,7 +4809,7 @@ static int cifs_release_page(struct page *page, gfp_t gfp)
 	if (PagePrivate(page))
 		return 0;
 	if (PageFsCache(page)) {
-		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
+		if (current_is_kswapd() || !(gfp & __GFP_FS))
 			return false;
 		wait_on_page_fscache(page);
 	}
diff --git a/fs/nfs/fscache.h b/fs/nfs/fscache.h
index e0220fc40366..25a5c0f82392 100644
--- a/fs/nfs/fscache.h
+++ b/fs/nfs/fscache.h
@@ -8,6 +8,7 @@
 #ifndef _NFS_FSCACHE_H
 #define _NFS_FSCACHE_H
 
+#include <linux/swap.h>
 #include <linux/nfs_fs.h>
 #include <linux/nfs_mount.h>
 #include <linux/nfs4_mount.h>
@@ -52,7 +53,7 @@ extern void __nfs_readpage_to_fscache(struct inode *, struct page *);
 static inline int nfs_fscache_release_page(struct page *page, gfp_t gfp)
 {
 	if (PageFsCache(page)) {
-		if (!gfpflags_allow_blocking(gfp) || !(gfp & __GFP_FS))
+		if (current_is_kswapd() || !(gfp & __GFP_FS))
 			return false;
 		wait_on_page_fscache(page);
 		fscache_note_page_release(nfs_i_fscache(page->mapping->host));




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
