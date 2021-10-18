Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F213C4321AB
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:03:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUBA-00047K-N0; Mon, 18 Oct 2021 15:03:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcUB9-00047C-4w
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:03:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K6n7Lxx/u+7TeXaM45gQ3O34r9vcGaUxwGu9AnBokAQ=; b=K+R/NuY3FiFaZd+//61FTJQJz3
 zdDZvvH6C0bao14GRtkrN1GCebeUbKvbBssJkwD3fAg+qSGC+UkohxdIwHk2bSsmQN0yqWOROMlDW
 21pZaPUDXQURpGfCklqvZfQzQ51/ks60WedItg8rmYvYX98voU9UJNbUvewI5qY2xPCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K6n7Lxx/u+7TeXaM45gQ3O34r9vcGaUxwGu9AnBokAQ=; b=givZbvt4k3nE5g1rD5Rxy4NaL9
 Hp/qAxcMqjuExjO5qxg4MwxeiJ8ZKcHW/yU2IOtaaN0QIURpyEblgFklzNTjOgIt803UBAI/gzcR6
 mjyQZs0b3NwJEMrvN4Et+jWGKv9wDxm8jhERaEJ3GL2CruuIbgzWLUs9IoUqxMbbiMvY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUB8-004URu-B4
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:03:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569427;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K6n7Lxx/u+7TeXaM45gQ3O34r9vcGaUxwGu9AnBokAQ=;
 b=I9vC7QeSmZJVXlf6WnXqncnb464GdK2jfS/FfU/RJbL99JxJG+TNBFnSAtsC92sykf0EYH
 7C3aGo91+wacrbgWdnfO+o5YFMbzbwJrSmK1lQL1OORxsowpuydm6uCuEcsmZUsApDaBoR
 i3ws8KfHh8/a+eP2feftHnVg8K6uTJc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-3SzqldG0NTe8vAbqLe2UXg-1; Mon, 18 Oct 2021 11:03:43 -0400
X-MC-Unique: 3SzqldG0NTe8vAbqLe2UXg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85B2710168DE;
 Mon, 18 Oct 2021 15:03:41 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7723A60CCC;
 Mon, 18 Oct 2021 15:03:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:03:22 +0100
Message-ID: <163456940271.2614702.17009440990784553871.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
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
 Content preview: Make fscache_clear_page_bits() conditional on cookie not
 being
 NULL, rather than merely conditional on CONFIG_FSCACHE=[ym]. The problem
 with the latter is if a filesystem, say afs, has CONFIG_AFS_FSCA [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUB8-004URu-B4
Subject: [V9fs-developer] [PATCH 50/67] fscache: Make
 fscache_clear_page_bits() conditional on cookie
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make fscache_clear_page_bits() conditional on cookie not being NULL, rather
than merely conditional on CONFIG_FSCACHE=[ym].  The problem with the
latter is if a filesystem, say afs, has CONFIG_AFS_FSCACHE=n but calls into
this function - in which it linkage will fail if CONFIG_FSCACHE is less
than CONFIG_AFS.  Analogous problems can affect other filesystems, e.g. 9p.

Making fscache_clear_page_bits() conditional on the cookie achieves two
things:

 (1) If cookie optimised down to constant NULL, the rest of the function is
     thrown away and the slow path is never called.

 (2) __fscache_clear_page_bits() isn't called if there's no cookie - and
     so, in such a case, the pages won't iterated over attempting to clear
     PG_fscache bits that haven't been set.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/io.c         |    5 +++--
 include/linux/fscache.h |    8 +++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 3910cba65545..bc8d1ac0e85c 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -316,7 +316,8 @@ static void fscache_wreq_done(void *priv, ssize_t transferred_or_error,
 {
 	struct fscache_write_request *wreq = priv;
 
-	fscache_clear_page_bits(wreq->mapping, wreq->start, wreq->len);
+	fscache_clear_page_bits(fscache_cres_cookie(&wreq->cache_resources),
+				wreq->mapping, wreq->start, wreq->len);
 
 	if (wreq->term_func)
 		wreq->term_func(wreq->term_func_priv, transferred_or_error,
@@ -373,7 +374,7 @@ void __fscache_write_to_cache(struct fscache_cookie *cookie,
 abandon_free:
 	kfree(wreq);
 abandon:
-	fscache_clear_page_bits(mapping, start, len);
+	fscache_clear_page_bits(cookie, mapping, start, len);
 	if (term_func)
 		term_func(term_func_priv, ret, false);
 }
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index fe4d588641da..847c076d05a6 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -549,6 +549,7 @@ int fscache_write(struct netfs_cache_resources *cres,
 
 /**
  * fscache_clear_page_bits - Clear the PG_fscache bits from a set of pages
+ * @cookie: The cookie representing the cache object
  * @mapping: The netfs inode to use as the source
  * @start: The start position in @mapping
  * @len: The amount of data to unlock
@@ -556,10 +557,11 @@ int fscache_write(struct netfs_cache_resources *cres,
  * Clear the PG_fscache flag from a sequence of pages and wake up anyone who's
  * waiting.
  */
-static inline void fscache_clear_page_bits(struct address_space *mapping,
+static inline void fscache_clear_page_bits(struct fscache_cookie *cookie,
+					   struct address_space *mapping,
 					   loff_t start, size_t len)
 {
-	if (fscache_available())
+	if (fscache_cookie_valid(cookie))
 		__fscache_clear_page_bits(mapping, start, len);
 }
 
@@ -595,7 +597,7 @@ static inline void fscache_write_to_cache(struct fscache_cookie *cookie,
 		__fscache_write_to_cache(cookie, mapping, start, len, i_size,
 					 term_func, term_func_priv);
 	} else {
-		fscache_clear_page_bits(mapping, start, len);
+		fscache_clear_page_bits(cookie, mapping, start, len);
 		if (term_func)
 			term_func(term_func_priv, -ENOBUFS, false);
 	}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
