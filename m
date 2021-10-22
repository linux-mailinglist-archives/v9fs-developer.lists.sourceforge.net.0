Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC1C437DAE
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:06:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzs2-0003yX-5S; Fri, 22 Oct 2021 19:06:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzs1-0003yL-5E
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+EtOHSphb6Q0NtS/equNMZvHtnI/Q3HIjX9WVypO5RQ=; b=DzkZJLKJo5JgbEcorwBBzrKxlb
 Rz6b6mDmPS+QY5HYB0zpu7tAWCZHnqwPudQKRzl36oiOA+Xp7vTsA7btSwyTyRZeAkiqTC+YA2ot/
 DxS6inuJeni5EeQDmrqvPnzk03mN5+16oySMuTO8h0aaQuM1N9qt3vO9Tx1gk89oqwgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+EtOHSphb6Q0NtS/equNMZvHtnI/Q3HIjX9WVypO5RQ=; b=U/InMkSsP++WVYrR+H65srUksc
 JMMwx3KdEeQUp248Ms/oUYsQEgcwYsDV/gljSIrTLArY//WBrcY1ZHWils7eH5EhCvf0Ntdfc9Pvc
 Sj2KfPLRUMKoVKGtbEfK8U1y6IJ1APKKrYEn0VYpjJz1KR1tBCxjLlHJQn1TXvSfDDps=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzs0-00CHTo-16
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:06:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+EtOHSphb6Q0NtS/equNMZvHtnI/Q3HIjX9WVypO5RQ=;
 b=b5oz+XwfPYrUfRZASVA45HTbTsdywgpTYuO1l7+mb2t3YcNVp014wSDDPNx0n3nRbohHkS
 9hllI/FAzCtywB7NzvWBleOuFbFiypvJB6msrAodfP/53kpBiQlwb8tvD7Fijzw5qcwRqM
 +LsC3WquaFrQryZwg+Mf+/zKkuZP85A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-m22tksXfOniOuIbfClVuHg-1; Fri, 22 Oct 2021 15:05:05 -0400
X-MC-Unique: m22tksXfOniOuIbfClVuHg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B329802B4F;
 Fri, 22 Oct 2021 19:05:03 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4914460C04;
 Fri, 22 Oct 2021 19:04:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:04:54 +0100
Message-ID: <163492949429.1038219.2330338330511845559.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview: Provide functions to perform fallback I/O: int
 fscache_fallback_read_page(struct
 fscache_cookie *cookie, struct page *page);
 int fscache_fallback_write_page(struct
 fscache_cookie *cookie, struct page *page); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzs0-00CHTo-16
Subject: [V9fs-developer] [PATCH v2 25/53] fscache: Provide fallback I/O
 functions
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide functions to perform fallback I/O:

	int fscache_fallback_read_page(struct fscache_cookie *cookie,
				       struct page *page);
	int fscache_fallback_write_page(struct fscache_cookie *cookie,
					struct page *page);

These read and write a page to the cache described by the cookie.  The page
index and size indicate the size and location of the operation.  They operate
synchronously.

[!] NOTE: These should be considered dangerous and may malfunction if the
cache is backed by an extent-based filesystem such as ext4, xfs or btrfs due
to the disk filesystem inserting or removing bridging blocks of zeros to
optimise the extent layout.  This can cause data corruption.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/io.c         |   66 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache.h |   48 ++++++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+)

diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 0c74dbb91fea..0c128e61df81 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -151,6 +151,72 @@ int __fscache_begin_read_operation(struct netfs_cache_resources *cres,
 }
 EXPORT_SYMBOL(__fscache_begin_read_operation);
 
+/*
+ * Fallback page reading interface.
+ */
+int __fscache_fallback_read_page(struct fscache_cookie *cookie, struct page *page)
+{
+	struct netfs_cache_resources cres;
+	struct iov_iter iter;
+	struct bio_vec bvec[1];
+	int ret;
+
+	_enter("%lx", page->index);
+
+	memset(&cres, 0, sizeof(cres));
+	bvec[0].bv_page		= page;
+	bvec[0].bv_offset	= 0;
+	bvec[0].bv_len		= PAGE_SIZE;
+	iov_iter_bvec(&iter, READ, bvec, ARRAY_SIZE(bvec), PAGE_SIZE);
+
+	ret = fscache_begin_operation(&cres, cookie, FSCACHE_WANT_READ,
+				      fscache_access_io_write);
+	if (ret < 0)
+		return ret;
+
+	ret = fscache_read(&cres, page_offset(page), &iter, NETFS_READ_HOLE_FAIL,
+			   NULL, NULL);
+	fscache_end_operation(&cres);
+	_leave(" = %d", ret);
+	return ret;
+}
+EXPORT_SYMBOL(__fscache_fallback_read_page);
+
+/*
+ * Fallback page writing interface.
+ */
+int __fscache_fallback_write_page(struct fscache_cookie *cookie, struct page *page)
+{
+	struct netfs_cache_resources cres;
+	struct iov_iter iter;
+	struct bio_vec bvec[1];
+	int ret;
+
+	_enter("%lx", page->index);
+
+	memset(&cres, 0, sizeof(cres));
+	bvec[0].bv_page		= page;
+	bvec[0].bv_offset	= 0;
+	bvec[0].bv_len		= PAGE_SIZE;
+	iov_iter_bvec(&iter, WRITE, bvec, ARRAY_SIZE(bvec), PAGE_SIZE);
+
+	ret = fscache_begin_operation(&cres, cookie, FSCACHE_WANT_WRITE,
+				      fscache_access_io_write);
+	if (ret < 0)
+		return ret;
+
+	ret = cres.ops->prepare_fallback_write(&cres, page_index(page));
+	if (ret < 0)
+		goto out;
+
+	ret = fscache_write(&cres, page_offset(page), &iter, NULL, NULL);
+out:
+	fscache_end_operation(&cres);
+	_leave(" = %d", ret);
+	return ret;
+}
+EXPORT_SYMBOL(__fscache_fallback_write_page);
+
 struct fscache_write_request {
 	struct netfs_cache_resources cache_resources;
 	struct address_space	*mapping;
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index b3b625d0834c..2996b417c5d0 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -171,6 +171,10 @@ extern void __fscache_invalidate(struct fscache_cookie *, const void *, loff_t,
 #ifdef FSCACHE_USE_NEW_IO_API
 extern int __fscache_begin_read_operation(struct netfs_cache_resources *, struct fscache_cookie *);
 #endif
+#ifdef FSCACHE_USE_FALLBACK_IO_API
+extern int __fscache_fallback_read_page(struct fscache_cookie *, struct page *);
+extern int __fscache_fallback_write_page(struct fscache_cookie *, struct page *);
+#endif
 
 extern void __fscache_write_to_cache(struct fscache_cookie *, struct address_space *,
 				     loff_t, size_t, loff_t, netfs_io_terminated_t, void *);
@@ -555,4 +559,48 @@ static inline void fscache_write_to_cache(struct fscache_cookie *cookie,
 }
 #endif /* FSCACHE_USE_NEW_IO_API */
 
+#ifdef FSCACHE_USE_FALLBACK_IO_API
+
+/**
+ * fscache_fallback_read_page - Read a page from a cache object (DANGEROUS)
+ * @cookie: The cookie representing the cache object
+ * @page: The page to be read to
+ *
+ * Synchronously read a page from the cache.  The page's offset is used to
+ * indicate where to read.
+ *
+ * This is dangerous and should be moved away from as it relies on the
+ * assumption that the backing filesystem will exactly record the blocks we
+ * have stored there.
+ */
+static inline
+int fscache_fallback_read_page(struct fscache_cookie *cookie, struct page *page)
+{
+	if (fscache_cookie_enabled(cookie))
+		return __fscache_fallback_read_page(cookie, page);
+	return -ENOBUFS;
+}
+
+/**
+ * fscache_fallback_write_page - Write a page to a cache object (DANGEROUS)
+ * @cookie: The cookie representing the cache object
+ * @page: The page to be written from
+ *
+ * Synchronously write a page to the cache.  The page's offset is used to
+ * indicate where to write.
+ *
+ * This is dangerous and should be moved away from as it relies on the
+ * assumption that the backing filesystem will exactly record the blocks we
+ * have stored there.
+ */
+static inline
+int fscache_fallback_write_page(struct fscache_cookie *cookie, struct page *page)
+{
+	if (fscache_cookie_enabled(cookie))
+		return __fscache_fallback_write_page(cookie, page);
+	return -ENOBUFS;
+}
+
+#endif /* FSCACHE_USE_FALLBACK_IO_API */
+
 #endif /* _LINUX_FSCACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
