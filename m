Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8376747DA32
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:20:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AuQ-0000oR-3i; Wed, 22 Dec 2021 23:20:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AuP-0000oL-OP
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:20:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gz1iPNoVY9fi12YKSjSP3lb/+yx91NIhFv4wEVgJUx0=; b=IyfmkN1nIQY3hYujYCU0WxfQfg
 PdxnK5paawUYnHvdWEe6WNn+Bc05qkCZ3BPZmSlLjz4t+5C81F1uupNZ38qYez+jJmZ96LG5D59hx
 Xrzi815FPsYKcgLGYN8vFbUD9DbY9+wNZJB/UFYEGPksqsvdhp6l996Fa3TfhHZYOitk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gz1iPNoVY9fi12YKSjSP3lb/+yx91NIhFv4wEVgJUx0=; b=Xn/FDDXMWtlM0HaaSnL8TmXnZd
 U2AanpqTVGj2wNyh2cyxLzuH/weCOMwxhi4kEPoK/jNcpVP9lxG9RUslEa/lzTk3yx01gUDwnHmLw
 UKCOzI9mdT5oI5zliErjEt5F+sFK0oMY7MVaYIkYd1kOyCzObNRS9S9fsJiSqHnNqUAE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0AuO-0006uk-S9
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:20:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215227;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gz1iPNoVY9fi12YKSjSP3lb/+yx91NIhFv4wEVgJUx0=;
 b=aq7KByYe/TAK+MESu2rCj/C28Xrbh2vov9ABL7LSUR/I3JZJbRRzZn0pgeOuj/CRWCa9T6
 Dzv6k1K4WRhmLAwVLEpQ46w81+UiMlgJN+p5N06OM3vky/FeLXMHmq2GqPhAhvqlR8o3Xg
 ua3TtXj7IZxuyTGAkeA6hBHUhiamjB0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-103-IcZHYqnQMV2SfoESrwIJDg-1; Wed, 22 Dec 2021 18:20:23 -0500
X-MC-Unique: IcZHYqnQMV2SfoESrwIJDg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7AFBF10168C0;
 Wed, 22 Dec 2021 23:20:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 174FE8476A;
 Wed, 22 Dec 2021 23:20:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:20:14 +0000
Message-ID: <164021521420.640689.12747258780542678309.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Provide a pair of functions to perform raw I/O on the cache.
 The first function allows an arbitrary asynchronous direct-IO read to be
 made against a cache object, though the read should be aligned and [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0AuO-0006uk-S9
Subject: [V9fs-developer] [PATCH v4 25/68] fscache: Implement raw I/O
 interface
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
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide a pair of functions to perform raw I/O on the cache.  The first
function allows an arbitrary asynchronous direct-IO read to be made against
a cache object, though the read should be aligned and sized appropriately
for the backing device:

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

If there is a hole in the data it can be ignored and left to the backing
filesystem to deal with (NETFS_READ_HOLE_IGNORE), a hole at the beginning
can be skipped over and the buffer padded with zeros
(NETFS_READ_HOLE_CLEAR) or -ENODATA can be given (NETFS_READ_HOLE_FAIL).

If term_func is not NULL, the operation may be performed asynchronously.
Upon completion, successful or otherwise, (*term_func)() will be called and
passed term_func_priv, along with an error or the amount of data
transferred.  If the op is run asynchronously, fscache_read() will return
-EIOCBQUEUED.

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

The caller is responsible for preventing concurrent overlapping writes.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819613224.215744.7877577215582621254.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906915386.143852.16936177636106480724.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967122632.1823006.7487049517698562172.stgit@warthog.procyon.org.uk/ # v3
---

 include/linux/fscache.h        |   74 ++++++++++++++++++++++++++++++++++++++++
 include/trace/events/fscache.h |    2 +
 2 files changed, 76 insertions(+)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index fc77648c8af6..ae753cae0fdd 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -429,4 +429,78 @@ int fscache_begin_read_operation(struct netfs_cache_resources *cres,
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
+ *
+ * @read_hole indicates how a partially populated region in the cache should be
+ * handled.  It can be one of a number of settings:
+ *
+ *	NETFS_READ_HOLE_IGNORE - Just try to read (may return a short read).
+ *
+ *	NETFS_READ_HOLE_CLEAR - Seek for data, clearing the part of the buffer
+ *				skipped over, then do as for IGNORE.
+ *
+ *	NETFS_READ_HOLE_FAIL - Give ENODATA if we encounter a hole.
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
 #endif /* _LINUX_FSCACHE_H */
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 9f78c903b00a..2459d75659cf 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -79,6 +79,7 @@ enum fscache_access_trace {
 	fscache_access_io_not_live,
 	fscache_access_io_read,
 	fscache_access_io_wait,
+	fscache_access_io_write,
 	fscache_access_lookup_cookie,
 	fscache_access_lookup_cookie_end,
 	fscache_access_lookup_cookie_end_failed,
@@ -149,6 +150,7 @@ enum fscache_access_trace {
 	EM(fscache_access_io_not_live,		"END   io_notl")	\
 	EM(fscache_access_io_read,		"BEGIN io_read")	\
 	EM(fscache_access_io_wait,		"WAIT  io     ")	\
+	EM(fscache_access_io_write,		"BEGIN io_writ")	\
 	EM(fscache_access_lookup_cookie,	"BEGIN lookup ")	\
 	EM(fscache_access_lookup_cookie_end,	"END   lookup ")	\
 	EM(fscache_access_lookup_cookie_end_failed,"END   lookupf")	\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
