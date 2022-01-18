Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA6749278F
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:53:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9ovS-0003al-A3; Tue, 18 Jan 2022 13:53:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9ovQ-0003aP-7t
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f1/6bttthYxGZ2PNoIYnYIvi+O9+QETgRx4g1YmnfF8=; b=FJSoPDhS18W+Hqq+3urObK3vyz
 XcM+g82VplocM5Xpmo4sGIovdnxNSpCySwyCzR0rdvsbYbKLY9f/Dg6UxLd/QfA9O+BbxggNMQj0O
 CIIIy3DKfeTPj1Sf58yNQs7BP+5ejF7GfXNWldByzZVDXWLuhckIBtV47eODLUjZFiLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f1/6bttthYxGZ2PNoIYnYIvi+O9+QETgRx4g1YmnfF8=; b=DoqXkBhSmuXzee+NqOhhdcz0cw
 LIKwOAEkfVoHuCKQLYh4FbNKKXdDjcrdl5cORGj37MhmrzqmknnAFHc3JrrXQOJMLCdUniGmOpnGH
 LB6EacCFFwpCU78zghpbtG/YSfHaeLItQg0LdfGuZnXGCvvQX4VRG/GO70sJquNYE830=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9ovN-0026km-W5
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642513999;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f1/6bttthYxGZ2PNoIYnYIvi+O9+QETgRx4g1YmnfF8=;
 b=jAaQsiTjVILPUUYLbFHkDMzERjS2nuS+5ky2c5gB3yEe19xKRgrCzJuoZtDvAWL3ZIwIrL
 5TTYpzEdfGUKDiZac46hJt+l+SVtnlrPfoGFsoYX/hwJoLj1J5BVL8p/eL6pY+xvyLm9iF
 vtg9MrbFWjzb2t0+p/2DuviyyU+UdYM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-396-1AjLwm_8PmusG_GxXabdTQ-1; Tue, 18 Jan 2022 08:53:16 -0500
X-MC-Unique: 1AjLwm_8PmusG_GxXabdTQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1D0710199B9;
 Tue, 18 Jan 2022 13:53:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 686FD798DA;
 Tue, 18 Jan 2022 13:53:10 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:53:09 +0000
Message-ID: <164251398954.3435901.7138806620218474123.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Cachefiles keeps track of how much space is available on the
 backing filesystem and refuses new writes permission to start if there isn't
 enough (we especially don't want ENOSPC happening). It also tr [...] 
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
X-Headers-End: 1n9ovN-0026km-W5
Subject: [V9fs-developer] [PATCH 02/11] cachefiles: Calculate the blockshift
 in terms of bytes, not pages
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Cachefiles keeps track of how much space is available on the backing
filesystem and refuses new writes permission to start if there isn't enough
(we especially don't want ENOSPC happening).  It also tracks the amount of
data pending in DIO writes (cache->b_writing) and reduces the amount of
free space available by this amount before deciding if it can set up a new
write.

However, the old fscache I/O API was very much page-granularity dependent
and, as such, cachefiles's cache->bshift was meant to be a multiplier to
get from PAGE_SIZE to block size (ie. a blocksize of 512 would give a shift
of 3 for a 4KiB page) - and this was incorrectly being used to turn the
number of bytes in a DIO write into a number of blocks, leading to a
massive over estimation of the amount of data in flight.

Fix this by changing cache->bshift to be a multiplier from bytes to
blocksize and deal with quantities of blocks, not quantities of pages.

Fix also the rounding in the calculation in cachefiles_write() which needs
a "- 1" inserting.

Fixes: 047487c947e8 ("cachefiles: Implement the I/O routines")
Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/cache.c    |    7 ++-----
 fs/cachefiles/internal.h |    2 +-
 fs/cachefiles/io.c       |    2 +-
 3 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
index ce4d4785003c..1e9c71666c6a 100644
--- a/fs/cachefiles/cache.c
+++ b/fs/cachefiles/cache.c
@@ -84,9 +84,7 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
 		goto error_unsupported;
 
 	cache->bsize = stats.f_bsize;
-	cache->bshift = 0;
-	if (stats.f_bsize < PAGE_SIZE)
-		cache->bshift = PAGE_SHIFT - ilog2(stats.f_bsize);
+	cache->bshift = ilog2(stats.f_bsize);
 
 	_debug("blksize %u (shift %u)",
 	       cache->bsize, cache->bshift);
@@ -106,7 +104,6 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
 	       (unsigned long long) cache->fcull,
 	       (unsigned long long) cache->fstop);
 
-	stats.f_blocks >>= cache->bshift;
 	do_div(stats.f_blocks, 100);
 	cache->bstop = stats.f_blocks * cache->bstop_percent;
 	cache->bcull = stats.f_blocks * cache->bcull_percent;
@@ -209,7 +206,7 @@ int cachefiles_has_space(struct cachefiles_cache *cache,
 		return ret;
 	}
 
-	b_avail = stats.f_bavail >> cache->bshift;
+	b_avail = stats.f_bavail;
 	b_writing = atomic_long_read(&cache->b_writing);
 	if (b_avail > b_writing)
 		b_avail -= b_writing;
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 8dd54d9375b6..c793d33b0224 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -86,7 +86,7 @@ struct cachefiles_cache {
 	unsigned			bcull_percent;	/* when to start culling (% blocks) */
 	unsigned			bstop_percent;	/* when to stop allocating (% blocks) */
 	unsigned			bsize;		/* cache's block size */
-	unsigned			bshift;		/* min(ilog2(PAGE_SIZE / bsize), 0) */
+	unsigned			bshift;		/* ilog2(bsize) */
 	uint64_t			frun;		/* when to stop culling */
 	uint64_t			fcull;		/* when to start culling */
 	uint64_t			fstop;		/* when to stop allocating */
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 60b1eac2ce78..04eb52736990 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -264,7 +264,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 	ki->term_func		= term_func;
 	ki->term_func_priv	= term_func_priv;
 	ki->was_async		= true;
-	ki->b_writing		= (len + (1 << cache->bshift)) >> cache->bshift;
+	ki->b_writing		= (len + (1 << cache->bshift) - 1) >> cache->bshift;
 
 	if (ki->term_func)
 		ki->iocb.ki_complete = cachefiles_write_complete;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
