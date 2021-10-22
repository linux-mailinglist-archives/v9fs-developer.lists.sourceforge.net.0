Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4990E437FC8
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 23:07:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1me1ku-00014F-AU; Fri, 22 Oct 2021 21:07:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1me1ks-000141-P1
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 21:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zHUKkYiZuKV6vgl+98Rw6W/HHUSavkoU45Gl/DYqAqI=; b=KvwEgzFfr3qYGPatKEinwlB22w
 MWI+BXK1FocyfU9l8aNCEC2DQlvhKB5NWuIZfUhu4KYQuLOGGETooY7zpVPD+8cTCwNsyekgig7ms
 3tC8A5SWp1vuJQMzi26iTHCyi1U7i7vuaVamA8P3eHsguJXo0eFajZq2FbwB9hgBGftY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zHUKkYiZuKV6vgl+98Rw6W/HHUSavkoU45Gl/DYqAqI=; b=l3wH7BqmENKHQQM65cZh5UsW2Q
 RDHBdMubP5XGmmFIWZkCLt9OqUjb4OOkdEJB8Fsg1fJ2XSpNnnCDqV8m5sG+DbUSdOvUWB1usDx4c
 hQO9XGHyMASqCj1NjaXszoWcG5s8kEerW5exYMT+AquBUCwEZEcbL5Tuaw4Ytivhx2lA=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1me1kr-00COyO-J7
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 21:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634936823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zHUKkYiZuKV6vgl+98Rw6W/HHUSavkoU45Gl/DYqAqI=;
 b=O3Fiq0B6/nzbyHgIIPk2FqBMNPZP1ctNOZ8Lc2EviBSALCkyBR+b6zJws/3cEC3UEsdQN+
 oC3R5uwiDBbCvtsiKkbUMojhosqcOFwTvCrXewnUoVd1FK8EAHxQT0Tp6XuDZGFSxG3mOw
 vbcwe8Pt0CRDc2s/brHlAsnTBwdcbnw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-Oc17vkthP-qAtZ2Y2VE0-w-1; Fri, 22 Oct 2021 15:04:51 -0400
X-MC-Unique: Oc17vkthP-qAtZ2Y2VE0-w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 157A018D6A2A;
 Fri, 22 Oct 2021 19:04:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 114ED19723;
 Fri, 22 Oct 2021 19:04:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:04:35 +0100
Message-ID: <163492947519.1038219.10011806240425457489.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Provide three functions to perform I/O to the cache and a
 helper function for use with them. The first function allows an arbitrary
 asynchronous direct-IO read to be made against a cache object, though the
 read should be aligned and sized appropriately for the backing device: 
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
X-Headers-End: 1me1kr-00COyO-J7
Subject: [V9fs-developer] [PATCH v2 24/53] fscache: Implement I/O interface
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

Provide three functions to perform I/O to the cache and a helper function
for use with them.

The first function allows an arbitrary asynchronous direct-IO read to be
made against a cache object, though the read should be aligned and sized
appropriately for the backing device:

	int fscache_read(struct netfs_cache_resources *cres,
			 loff_t start_pos,
			 struct iov_iter *iter,
			 enum netfs_read_from_hole read_hole,
			 netfs_io_terminated_t term_func,
			 void *term_func_priv);

The cache resources must have been previously initialised by
fscache_begin_read_operation().  A read operation is sent to the backing
filesystem, starting at start_pos within the file.  The size of the read is
specified by the iterator, as is the location of the output buffer.

If there is a hole in the data it can be ignored (NETFS_READ_HOLE_IGNORE)
and the data padded with zeros, the area of the read can be excised
(NETFS_READ_HOLE_CLEAR) or -ENODATA can be given (NETFS_READ_HOLE_FAIL).

If term_func is given, the operation may be done asynchronously; in such a
case (*term_func)() will be called upon completion, successful or
otherwise, of the I/O operation and passed term_func_priv.  If the op is
asynchronous and doesn't complete before this returns, -EIOCBQUEUED will be
returned.

The second function allows an arbitrary asynchronous direct-IO write to be
made against a cache object, though the write should be aligned and sized
appropriately for the backing device:

	int fscache_write(struct netfs_cache_resources *cres,
			  loff_t start_pos,
			  struct iov_iter *iter,
			  netfs_io_terminated_t term_func,
			  void *term_func_priv);

This works in very similar way to fscache_read(), except that there's no
need to deal with holes (they're just overwritten).

The third function is a bit higher level than that and allows a write to be
made from the pagecache of an inode:

	void fscache_write_to_cache(struct fscache_cookie *cookie,
				    struct address_space *mapping,
				    loff_t start,
				    size_t len,
				    loff_t i_size,
				    netfs_io_terminated_t term_func,
				    void *term_func_priv);

If cookie is NULL, this function does nothing except call (*term_func)() if
given.  It assumes that, in such a case, PG_fscache will not have been set
on the pages.

Otherwise, this function requires the pages to be written from to have
PG_fscache set on them before it is called.  start and len define the
region of the file to be modified and i_size indicates the new file size.
The source data is expected to be on pages attached to mapping.

term_func and term_func_priv work as for fscache_write().  The PG_fscache
bits will be set at the end of the operation, before term_func is called or
the function otherwise returns.

There is an additonal helper function to clear the PG_fscache bits from a
range of pages:

	void fscache_clear_page_bits(struct fscache_cookie *cookie,
				     struct address_space *mapping,
				     loff_t start, size_t len);

The pages to be modified are expected to be located on mapping in the range
defined by start and len.  If cookie is NULL, it does nothing.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/io.c                |  100 ++++++++++++++++++++++++++++++++
 include/linux/fscache.h        |  124 ++++++++++++++++++++++++++++++++++++++++
 include/trace/events/fscache.h |    2 +
 3 files changed, 226 insertions(+)

diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 9c747069b923..0c74dbb91fea 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -150,3 +150,103 @@ int __fscache_begin_read_operation(struct netfs_cache_resources *cres,
 				       fscache_access_io_read);
 }
 EXPORT_SYMBOL(__fscache_begin_read_operation);
+
+struct fscache_write_request {
+	struct netfs_cache_resources cache_resources;
+	struct address_space	*mapping;
+	loff_t			start;
+	size_t			len;
+	netfs_io_terminated_t	term_func;
+	void			*term_func_priv;
+};
+
+void __fscache_clear_page_bits(struct address_space *mapping,
+			       loff_t start, size_t len)
+{
+	pgoff_t first = start / PAGE_SIZE;
+	pgoff_t last = (start + len - 1) / PAGE_SIZE;
+	struct page *page;
+
+	if (len) {
+		XA_STATE(xas, &mapping->i_pages, first);
+
+		rcu_read_lock();
+		xas_for_each(&xas, page, last) {
+			end_page_fscache(page);
+		}
+		rcu_read_unlock();
+	}
+}
+EXPORT_SYMBOL(__fscache_clear_page_bits);
+
+/*
+ * Deal with the completion of writing the data to the cache.
+ */
+static void fscache_wreq_done(void *priv, ssize_t transferred_or_error,
+			      bool was_async)
+{
+	struct fscache_write_request *wreq = priv;
+
+	fscache_clear_page_bits(fscache_cres_cookie(&wreq->cache_resources),
+				wreq->mapping, wreq->start, wreq->len);
+
+	if (wreq->term_func)
+		wreq->term_func(wreq->term_func_priv, transferred_or_error,
+				was_async);
+	fscache_end_operation(&wreq->cache_resources);
+	kfree(wreq);
+}
+
+void __fscache_write_to_cache(struct fscache_cookie *cookie,
+			      struct address_space *mapping,
+			      loff_t start, size_t len, loff_t i_size,
+			      netfs_io_terminated_t term_func,
+			      void *term_func_priv)
+{
+	struct fscache_write_request *wreq;
+	struct netfs_cache_resources *cres;
+	struct iov_iter iter;
+	int ret = -ENOBUFS;
+
+	if (!fscache_cookie_valid(cookie) || len == 0)
+		goto abandon;
+
+	_enter("%llx,%zx", start, len);
+
+	wreq = kzalloc(sizeof(struct fscache_write_request), GFP_NOFS);
+	if (!wreq)
+		goto abandon;
+	wreq->mapping		= mapping;
+	wreq->start		= start;
+	wreq->len		= len;
+	wreq->term_func		= term_func;
+	wreq->term_func_priv	= term_func_priv;
+
+	cres = &wreq->cache_resources;
+	if (fscache_begin_operation(cres, cookie, FSCACHE_WANT_WRITE,
+				    fscache_access_io_write) < 0)
+		goto abandon_free;
+
+	ret = cres->ops->prepare_write(cres, &start, &len, i_size, false);
+	if (ret < 0)
+		goto abandon_end;
+
+	/* TODO: Consider clearing page bits now for space the write isn't
+	 * covering.  This is more complicated than it appears when THPs are
+	 * taken into account.
+	 */
+
+	iov_iter_xarray(&iter, WRITE, &mapping->i_pages, start, len);
+	fscache_write(cres, start, &iter, fscache_wreq_done, wreq);
+	return;
+
+abandon_end:
+	return fscache_wreq_done(wreq, ret, false);
+abandon_free:
+	kfree(wreq);
+abandon:
+	fscache_clear_page_bits(cookie, mapping, start, len);
+	if (term_func)
+		term_func(term_func_priv, ret, false);
+}
+EXPORT_SYMBOL(__fscache_write_to_cache);
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index f24604f0f818..b3b625d0834c 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -172,6 +172,10 @@ extern void __fscache_invalidate(struct fscache_cookie *, const void *, loff_t,
 extern int __fscache_begin_read_operation(struct netfs_cache_resources *, struct fscache_cookie *);
 #endif
 
+extern void __fscache_write_to_cache(struct fscache_cookie *, struct address_space *,
+				     loff_t, size_t, loff_t, netfs_io_terminated_t, void *);
+extern void __fscache_clear_page_bits(struct address_space *, loff_t, size_t);
+
 /**
  * fscache_acquire_volume - Register a volume as desiring caching services
  * @volume_key: An identification string for the volume
@@ -429,6 +433,126 @@ int fscache_begin_read_operation(struct netfs_cache_resources *cres,
 	return -ENOBUFS;
 }
 
+/**
+ * fscache_read - Start a read from the cache.
+ * @cres: The cache resources to use
+ * @start_pos: The beginning file offset in the cache file
+ * @iter: The buffer to fill - and also the length
+ * @read_hole: How to handle a hole in the data.
+ * @term_func: The function to call upon completion
+ * @term_func_priv: The private data for @term_func
+ *
+ * Start a read from the cache.  @cres indicates the cache object to read from
+ * and must be obtained by a call to fscache_begin_operation() beforehand.
+ *
+ * The data is read into the iterator, @iter, and that also indicates the size
+ * of the operation.  @start_pos is the start position in the file, though if
+ * @seek_data is set appropriately, the cache can use SEEK_DATA to find the
+ * next piece of data, writing zeros for the hole into the iterator.
+ *
+ * Upon termination of the operation, @term_func will be called and supplied
+ * with @term_func_priv plus the amount of data written, if successful, or the
+ * error code otherwise.
+ */
+static inline
+int fscache_read(struct netfs_cache_resources *cres,
+		 loff_t start_pos,
+		 struct iov_iter *iter,
+		 enum netfs_read_from_hole read_hole,
+		 netfs_io_terminated_t term_func,
+		 void *term_func_priv)
+{
+	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
+	return ops->read(cres, start_pos, iter, read_hole,
+			 term_func, term_func_priv);
+}
+
+/**
+ * fscache_write - Start a write to the cache.
+ * @cres: The cache resources to use
+ * @start_pos: The beginning file offset in the cache file
+ * @iter: The data to write - and also the length
+ * @term_func: The function to call upon completion
+ * @term_func_priv: The private data for @term_func
+ *
+ * Start a write to the cache.  @cres indicates the cache object to write to and
+ * must be obtained by a call to fscache_begin_operation() beforehand.
+ *
+ * The data to be written is obtained from the iterator, @iter, and that also
+ * indicates the size of the operation.  @start_pos is the start position in
+ * the file.
+ *
+ * Upon termination of the operation, @term_func will be called and supplied
+ * with @term_func_priv plus the amount of data written, if successful, or the
+ * error code otherwise.
+ */
+static inline
+int fscache_write(struct netfs_cache_resources *cres,
+		  loff_t start_pos,
+		  struct iov_iter *iter,
+		  netfs_io_terminated_t term_func,
+		  void *term_func_priv)
+{
+	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
+	return ops->write(cres, start_pos, iter, term_func, term_func_priv);
+}
+
+/**
+ * fscache_clear_page_bits - Clear the PG_fscache bits from a set of pages
+ * @cookie: The cookie representing the cache object
+ * @mapping: The netfs inode to use as the source
+ * @start: The start position in @mapping
+ * @len: The amount of data to unlock
+ *
+ * Clear the PG_fscache flag from a sequence of pages and wake up anyone who's
+ * waiting.
+ */
+static inline void fscache_clear_page_bits(struct fscache_cookie *cookie,
+					   struct address_space *mapping,
+					   loff_t start, size_t len)
+{
+	if (fscache_cookie_valid(cookie))
+		__fscache_clear_page_bits(mapping, start, len);
+}
+
+/**
+ * fscache_write_to_cache - Save a write to the cache and clear PG_fscache
+ * @cookie: The cookie representing the cache object
+ * @mapping: The netfs inode to use as the source
+ * @start: The start position in @mapping
+ * @len: The amount of data to write back
+ * @i_size: The new size of the inode
+ * @term_func: The function to call upon completion
+ * @term_func_priv: The private data for @term_func
+ *
+ * Helper function for a netfs to write dirty data from an inode into the cache
+ * object that's backing it.
+ *
+ * @start and @len describe the range of the data.  This does not need to be
+ * page-aligned, but to satisfy DIO requirements, the cache may expand it up to
+ * the page boundaries on either end.  All the pages covering the range must be
+ * marked with PG_fscache.
+ *
+ * If given, @term_func will be called upon completion and supplied with
+ * @term_func_priv.  Note that the PG_fscache flags will have been cleared by
+ * this point, so the netfs must retain its own pin on the mapping.
+ */
+static inline void fscache_write_to_cache(struct fscache_cookie *cookie,
+					  struct address_space *mapping,
+					  loff_t start, size_t len, loff_t i_size,
+					  netfs_io_terminated_t term_func,
+					  void *term_func_priv)
+{
+	if (fscache_cookie_valid(cookie)) {
+		__fscache_write_to_cache(cookie, mapping, start, len, i_size,
+					 term_func, term_func_priv);
+	} else {
+		fscache_clear_page_bits(cookie, mapping, start, len);
+		if (term_func)
+			term_func(term_func_priv, -ENOBUFS, false);
+	}
+
+}
 #endif /* FSCACHE_USE_NEW_IO_API */
 
 #endif /* _LINUX_FSCACHE_H */
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 4ccaf4490b1b..63820b807494 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -78,6 +78,7 @@ enum fscache_access_trace {
 	fscache_access_io_not_live,
 	fscache_access_io_read,
 	fscache_access_io_wait,
+	fscache_access_io_write,
 	fscache_access_lookup_cookie,
 	fscache_access_lookup_cookie_end,
 	fscache_access_relinquish_volume,
@@ -146,6 +147,7 @@ enum fscache_access_trace {
 	EM(fscache_access_io_not_live,		"END   io_notl")	\
 	EM(fscache_access_io_read,		"BEGIN io_read")	\
 	EM(fscache_access_io_wait,		"WAIT  io    ")		\
+	EM(fscache_access_io_write,		"BEGIN io_writ")	\
 	EM(fscache_access_lookup_cookie,	"BEGIN lookup ")	\
 	EM(fscache_access_lookup_cookie_end,	"END   lookup ")	\
 	EM(fscache_access_relinquish_volume,	"BEGIN rlq_vol")	\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
