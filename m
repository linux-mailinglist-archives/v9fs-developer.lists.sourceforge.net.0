Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DB74CA760
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Mar 2022 15:08:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPPe4-0002b0-7q; Wed, 02 Mar 2022 14:08:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nPPe1-0002aq-6K
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:07:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DX7ey7N1KNpM5HlW1gbi3WHBo/tfb9AsWxgKsAa2/c4=; b=iSAB0IXyv69WSyD3IBEIBAVlR2
 VMhi16HHzS/NKND1tNNQZiomxX8+jt44r4v9E1VAHFDoFFhdOiWhLbJlF1ZRBuCiKNBgRaV+J1iDa
 F5ltqmEge/8Rhw/IGIHGe4ijOeXVL0CDsEtXyjaeIp+BIEOqpIvsM+F31//E0AfcnBbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DX7ey7N1KNpM5HlW1gbi3WHBo/tfb9AsWxgKsAa2/c4=; b=iPW+5XdYSqFmjyAkw5oEr6gvTu
 nBVk5KWKy0HJohXN+3er+jeVAsiwMJwWY1Ea53Th5+1lF2viKCk7s8LyLmC/woNpFTvTX9cGW792Y
 /35XPNxSrNa3MVr0DzeROUnR7Zy5vRQAXoIqfabCvLFR8d4LDS/jkQ+f6Am0CxKeWL3g=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPPdx-0008FO-QG
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646230067;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DX7ey7N1KNpM5HlW1gbi3WHBo/tfb9AsWxgKsAa2/c4=;
 b=VS+YWcj9KrOEz2bMsice2B04XL1u3sRyfGd/AZorrjC8R3eeTLVqN+9C4KS+FU9iIw1RAE
 mcZ0zrsqMIWNK7E8kY8lsxdThKSvcBMQMQnx/2mLtlsN7vnkoql8efZoUq+Rhys8CzoKFW
 vguTX8yd2Lv7S9YVdy7MSrr4ke8d+fs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-201-np1-8M4hMl21yCWbSD2Xxw-1; Wed, 02 Mar 2022 09:07:46 -0500
X-MC-Unique: np1-8M4hMl21yCWbSD2Xxw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CA20801AFE;
 Wed,  2 Mar 2022 14:07:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B1C8A797D3;
 Wed,  2 Mar 2022 14:07:36 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 02 Mar 2022 14:07:35 +0000
Message-ID: <164623005586.3564931.6149556072728481767.stgit@warthog.procyon.org.uk>
In-Reply-To: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
References: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Split fs/netfs/read_helper.c into two pieces, one to deal
 with buffered writes and one to deal with the I/O mechanism. Signed-off-by:
 David Howells <dhowells@redhat.com> cc: linux-cachefs@redhat.com --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
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
X-Headers-End: 1nPPdx-0008FO-QG
Subject: [V9fs-developer] [PATCH 14/19] netfs: Split fs/netfs/read_helper.c
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Split fs/netfs/read_helper.c into two pieces, one to deal with buffered
writes and one to deal with the I/O mechanism.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/netfs/Makefile        |    1 
 fs/netfs/buffered_read.c |  426 ++++++++++++++++++++++++++++++++++++++++++++++
 fs/netfs/read_helper.c   |  416 ---------------------------------------------
 3 files changed, 427 insertions(+), 416 deletions(-)
 create mode 100644 fs/netfs/buffered_read.c

diff --git a/fs/netfs/Makefile b/fs/netfs/Makefile
index 939fd00a1fc9..0466159b8222 100644
--- a/fs/netfs/Makefile
+++ b/fs/netfs/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 netfs-y := \
+	buffered_read.o \
 	objects.o \
 	read_helper.o
 
diff --git a/fs/netfs/buffered_read.c b/fs/netfs/buffered_read.c
new file mode 100644
index 000000000000..343c0957ae27
--- /dev/null
+++ b/fs/netfs/buffered_read.c
@@ -0,0 +1,426 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Network filesystem high-level buffered read support.
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/export.h>
+#include <linux/task_io_accounting_ops.h>
+#include "internal.h"
+
+/*
+ * Unlock the folios in a read operation.  We need to set PG_fscache on any
+ * folios we're going to write back before we unlock them.
+ */
+void netfs_rreq_unlock_folios(struct netfs_io_request *rreq)
+{
+	struct netfs_io_subrequest *subreq;
+	struct folio *folio;
+	unsigned int iopos, account = 0;
+	pgoff_t start_page = rreq->start / PAGE_SIZE;
+	pgoff_t last_page = ((rreq->start + rreq->len) / PAGE_SIZE) - 1;
+	bool subreq_failed = false;
+
+	XA_STATE(xas, &rreq->mapping->i_pages, start_page);
+
+	if (test_bit(NETFS_RREQ_FAILED, &rreq->flags)) {
+		__clear_bit(NETFS_RREQ_COPY_TO_CACHE, &rreq->flags);
+		list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
+			__clear_bit(NETFS_SREQ_COPY_TO_CACHE, &subreq->flags);
+		}
+	}
+
+	/* Walk through the pagecache and the I/O request lists simultaneously.
+	 * We may have a mixture of cached and uncached sections and we only
+	 * really want to write out the uncached sections.  This is slightly
+	 * complicated by the possibility that we might have huge pages with a
+	 * mixture inside.
+	 */
+	subreq = list_first_entry(&rreq->subrequests,
+				  struct netfs_io_subrequest, rreq_link);
+	iopos = 0;
+	subreq_failed = (subreq->error < 0);
+
+	trace_netfs_rreq(rreq, netfs_rreq_trace_unlock);
+
+	rcu_read_lock();
+	xas_for_each(&xas, folio, last_page) {
+		unsigned int pgpos = (folio_index(folio) - start_page) * PAGE_SIZE;
+		unsigned int pgend = pgpos + folio_size(folio);
+		bool pg_failed = false;
+
+		for (;;) {
+			if (!subreq) {
+				pg_failed = true;
+				break;
+			}
+			if (test_bit(NETFS_SREQ_COPY_TO_CACHE, &subreq->flags))
+				folio_start_fscache(folio);
+			pg_failed |= subreq_failed;
+			if (pgend < iopos + subreq->len)
+				break;
+
+			account += subreq->transferred;
+			iopos += subreq->len;
+			if (!list_is_last(&subreq->rreq_link, &rreq->subrequests)) {
+				subreq = list_next_entry(subreq, rreq_link);
+				subreq_failed = (subreq->error < 0);
+			} else {
+				subreq = NULL;
+				subreq_failed = false;
+			}
+			if (pgend == iopos)
+				break;
+		}
+
+		if (!pg_failed) {
+			flush_dcache_folio(folio);
+			folio_mark_uptodate(folio);
+		}
+
+		if (!test_bit(NETFS_RREQ_DONT_UNLOCK_FOLIOS, &rreq->flags)) {
+			if (folio_index(folio) == rreq->no_unlock_folio &&
+			    test_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags))
+				_debug("no unlock");
+			else
+				folio_unlock(folio);
+		}
+	}
+	rcu_read_unlock();
+
+	task_io_account_read(account);
+	if (rreq->netfs_ops->done)
+		rreq->netfs_ops->done(rreq);
+}
+
+static void netfs_cache_expand_readahead(struct netfs_io_request *rreq,
+					 loff_t *_start, size_t *_len, loff_t i_size)
+{
+	struct netfs_cache_resources *cres = &rreq->cache_resources;
+
+	if (cres->ops && cres->ops->expand_readahead)
+		cres->ops->expand_readahead(cres, _start, _len, i_size);
+}
+
+static void netfs_rreq_expand(struct netfs_io_request *rreq,
+			      struct readahead_control *ractl)
+{
+	/* Give the cache a chance to change the request parameters.  The
+	 * resultant request must contain the original region.
+	 */
+	netfs_cache_expand_readahead(rreq, &rreq->start, &rreq->len, rreq->i_size);
+
+	/* Give the netfs a chance to change the request parameters.  The
+	 * resultant request must contain the original region.
+	 */
+	if (rreq->netfs_ops->expand_readahead)
+		rreq->netfs_ops->expand_readahead(rreq);
+
+	/* Expand the request if the cache wants it to start earlier.  Note
+	 * that the expansion may get further extended if the VM wishes to
+	 * insert THPs and the preferred start and/or end wind up in the middle
+	 * of THPs.
+	 *
+	 * If this is the case, however, the THP size should be an integer
+	 * multiple of the cache granule size, so we get a whole number of
+	 * granules to deal with.
+	 */
+	if (rreq->start  != readahead_pos(ractl) ||
+	    rreq->len != readahead_length(ractl)) {
+		readahead_expand(ractl, rreq->start, rreq->len);
+		rreq->start  = readahead_pos(ractl);
+		rreq->len = readahead_length(ractl);
+
+		trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
+				 netfs_read_trace_expanded);
+	}
+}
+
+/**
+ * netfs_readahead - Helper to manage a read request
+ * @ractl: The description of the readahead request
+ *
+ * Fulfil a readahead request by drawing data from the cache if possible, or
+ * the netfs if not.  Space beyond the EOF is zero-filled.  Multiple I/O
+ * requests from different sources will get munged together.  If necessary, the
+ * readahead window can be expanded in either direction to a more convenient
+ * alighment for RPC efficiency or to make storage in the cache feasible.
+ *
+ * The calling netfs must initialise a netfs context contiguous to the vfs
+ * inode before calling this.
+ *
+ * This is usable whether or not caching is enabled.
+ */
+void netfs_readahead(struct readahead_control *ractl)
+{
+	struct netfs_io_request *rreq;
+	struct netfs_i_context *ctx = netfs_i_context(ractl->mapping->host);
+	int ret;
+
+	_enter("%lx,%x", readahead_index(ractl), readahead_count(ractl));
+
+	if (readahead_count(ractl) == 0)
+		return;
+
+	rreq = netfs_alloc_request(ractl->mapping, ractl->file,
+				   readahead_pos(ractl),
+				   readahead_length(ractl),
+				   NETFS_READAHEAD);
+	if (!rreq)
+		return;
+
+	if (ctx->ops->begin_cache_operation) {
+		ret = ctx->ops->begin_cache_operation(rreq);
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
+			goto cleanup_free;
+	}
+
+	netfs_stat(&netfs_n_rh_readahead);
+	trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
+			 netfs_read_trace_readahead);
+
+	netfs_rreq_expand(rreq, ractl);
+
+	/* Drop the refs on the folios here rather than in the cache or
+	 * filesystem.  The locks will be dropped in netfs_rreq_unlock().
+	 */
+	while (readahead_folio(ractl))
+		;
+
+	netfs_begin_read(rreq, false);
+	return;
+
+cleanup_free:
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_failed);
+	return;
+}
+EXPORT_SYMBOL(netfs_readahead);
+
+/**
+ * netfs_readpage - Helper to manage a readpage request
+ * @file: The file to read from
+ * @subpage: A subpage of the folio to read
+ *
+ * Fulfil a readpage request by drawing data from the cache if possible, or the
+ * netfs if not.  Space beyond the EOF is zero-filled.  Multiple I/O requests
+ * from different sources will get munged together.
+ *
+ * The calling netfs must initialise a netfs context contiguous to the vfs
+ * inode before calling this.
+ *
+ * This is usable whether or not caching is enabled.
+ */
+int netfs_readpage(struct file *file, struct page *subpage)
+{
+	struct folio *folio = page_folio(subpage);
+	struct address_space *mapping = folio_file_mapping(folio);
+	struct netfs_io_request *rreq;
+	struct netfs_i_context *ctx = netfs_i_context(mapping->host);
+	int ret = -ENOMEM;
+
+	_enter("%lx", folio_index(folio));
+
+	rreq = netfs_alloc_request(mapping, file, folio_file_pos(folio),
+				   folio_size(folio), NETFS_READPAGE);
+	if (!rreq)
+		goto nomem;
+
+	if (ctx->ops->begin_cache_operation) {
+		ret = ctx->ops->begin_cache_operation(rreq);
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
+			goto discard;
+	}
+
+	netfs_stat(&netfs_n_rh_readpage);
+	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
+	return netfs_begin_read(rreq, true);
+
+discard:
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_discard);
+nomem:
+	folio_unlock(folio);
+	return ret;
+}
+EXPORT_SYMBOL(netfs_readpage);
+
+/*
+ * Prepare a folio for writing without reading first
+ * @folio: The folio being prepared
+ * @pos: starting position for the write
+ * @len: length of write
+ * @always_fill: T if the folio should always be completely filled/cleared
+ *
+ * In some cases, write_begin doesn't need to read at all:
+ * - full folio write
+ * - write that lies in a folio that is completely beyond EOF
+ * - write that covers the folio from start to EOF or beyond it
+ *
+ * If any of these criteria are met, then zero out the unwritten parts
+ * of the folio and return true. Otherwise, return false.
+ */
+static bool netfs_skip_folio_read(struct folio *folio, loff_t pos, size_t len,
+				 bool always_fill)
+{
+	struct inode *inode = folio_inode(folio);
+	loff_t i_size = i_size_read(inode);
+	size_t offset = offset_in_folio(folio, pos);
+	size_t plen = folio_size(folio);
+
+	if (unlikely(always_fill)) {
+		if (pos - offset + len <= i_size)
+			return false; /* Page entirely before EOF */
+		zero_user_segment(&folio->page, 0, plen);
+		folio_mark_uptodate(folio);
+		return true;
+	}
+
+	/* Full folio write */
+	if (offset == 0 && len >= plen)
+		return true;
+
+	/* Page entirely beyond the end of the file */
+	if (pos - offset >= i_size)
+		goto zero_out;
+
+	/* Write that covers from the start of the folio to EOF or beyond */
+	if (offset == 0 && (pos + len) >= i_size)
+		goto zero_out;
+
+	return false;
+zero_out:
+	zero_user_segments(&folio->page, 0, offset, offset + len, len);
+	return true;
+}
+
+/**
+ * netfs_write_begin - Helper to prepare for writing
+ * @file: The file to read from
+ * @mapping: The mapping to read from
+ * @pos: File position at which the write will begin
+ * @len: The length of the write (may extend beyond the end of the folio chosen)
+ * @aop_flags: AOP_* flags
+ * @_folio: Where to put the resultant folio
+ * @_fsdata: Place for the netfs to store a cookie
+ *
+ * Pre-read data for a write-begin request by drawing data from the cache if
+ * possible, or the netfs if not.  Space beyond the EOF is zero-filled.
+ * Multiple I/O requests from different sources will get munged together.  If
+ * necessary, the readahead window can be expanded in either direction to a
+ * more convenient alighment for RPC efficiency or to make storage in the cache
+ * feasible.
+ *
+ * The calling netfs must provide a table of operations, only one of which,
+ * issue_op, is mandatory.
+ *
+ * The check_write_begin() operation can be provided to check for and flush
+ * conflicting writes once the folio is grabbed and locked.  It is passed a
+ * pointer to the fsdata cookie that gets returned to the VM to be passed to
+ * write_end.  It is permitted to sleep.  It should return 0 if the request
+ * should go ahead; unlock the folio and return -EAGAIN to cause the folio to
+ * be regot; or return an error.
+ *
+ * The calling netfs must initialise a netfs context contiguous to the vfs
+ * inode before calling this.
+ *
+ * This is usable whether or not caching is enabled.
+ */
+int netfs_write_begin(struct file *file, struct address_space *mapping,
+		      loff_t pos, unsigned int len, unsigned int aop_flags,
+		      struct folio **_folio, void **_fsdata)
+{
+	struct netfs_io_request *rreq;
+	struct netfs_i_context *ctx = netfs_i_context(file_inode(file ));
+	struct folio *folio;
+	unsigned int fgp_flags;
+	pgoff_t index = pos >> PAGE_SHIFT;
+	int ret;
+
+	DEFINE_READAHEAD(ractl, file, NULL, mapping, index);
+
+retry:
+	fgp_flags = FGP_LOCK | FGP_WRITE | FGP_CREAT | FGP_STABLE;
+	if (aop_flags & AOP_FLAG_NOFS)
+		fgp_flags |= FGP_NOFS;
+	folio = __filemap_get_folio(mapping, index, fgp_flags,
+				    mapping_gfp_mask(mapping));
+	if (!folio)
+		return -ENOMEM;
+
+	if (ctx->ops->check_write_begin) {
+		/* Allow the netfs (eg. ceph) to flush conflicts. */
+		ret = ctx->ops->check_write_begin(file, pos, len, folio, _fsdata);
+		if (ret < 0) {
+			trace_netfs_failure(NULL, NULL, ret, netfs_fail_check_write_begin);
+			if (ret == -EAGAIN)
+				goto retry;
+			goto error;
+		}
+	}
+
+	if (folio_test_uptodate(folio))
+		goto have_folio;
+
+	/* If the page is beyond the EOF, we want to clear it - unless it's
+	 * within the cache granule containing the EOF, in which case we need
+	 * to preload the granule.
+	 */
+	if (!netfs_is_cache_enabled(ctx) &&
+	    netfs_skip_folio_read(folio, pos, len, false)) {
+		netfs_stat(&netfs_n_rh_write_zskip);
+		goto have_folio_no_wait;
+	}
+
+	ret = -ENOMEM;
+	rreq = netfs_alloc_request(mapping, file, folio_file_pos(folio),
+				   folio_size(folio), NETFS_READ_FOR_WRITE);
+	if (!rreq)
+		goto error;
+	rreq->start		= folio_file_pos(folio);
+	rreq->len		= folio_size(folio);
+	rreq->no_unlock_folio	= folio_index(folio);
+	__set_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags);
+
+	if (ctx->ops->begin_cache_operation) {
+		ret = ctx->ops->begin_cache_operation(rreq);
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
+			goto error_put;
+	}
+
+	netfs_stat(&netfs_n_rh_write_begin);
+	trace_netfs_read(rreq, pos, len, netfs_read_trace_write_begin);
+
+	/* Expand the request to meet caching requirements and download
+	 * preferences.
+	 */
+	ractl._nr_pages = folio_nr_pages(folio);
+	netfs_rreq_expand(rreq, &ractl);
+	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
+
+	/* We hold the folio locks, so we can drop the references */
+	folio_get(folio);
+	while (readahead_folio(&ractl))
+		;
+
+	ret = netfs_begin_read(rreq, true);
+	if (ret < 0)
+		goto error;
+
+have_folio:
+	ret = folio_wait_fscache_killable(folio);
+	if (ret < 0)
+		goto error;
+have_folio_no_wait:
+	*_folio = folio;
+	_leave(" = 0");
+	return 0;
+
+error_put:
+	netfs_put_request(rreq, false, netfs_rreq_trace_put_failed);
+error:
+	folio_unlock(folio);
+	folio_put(folio);
+	_leave(" = %d", ret);
+	return ret;
+}
+EXPORT_SYMBOL(netfs_write_begin);
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index df73e276decd..78843820d9f1 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -246,91 +246,6 @@ static void netfs_rreq_write_to_cache(struct netfs_io_request *rreq)
 		BUG();
 }
 
-/*
- * Unlock the folios in a read operation.  We need to set PG_fscache on any
- * folios we're going to write back before we unlock them.
- */
-void netfs_rreq_unlock_folios(struct netfs_io_request *rreq)
-{
-	struct netfs_io_subrequest *subreq;
-	struct folio *folio;
-	unsigned int iopos, account = 0;
-	pgoff_t start_page = rreq->start / PAGE_SIZE;
-	pgoff_t last_page = ((rreq->start + rreq->len) / PAGE_SIZE) - 1;
-	bool subreq_failed = false;
-
-	XA_STATE(xas, &rreq->mapping->i_pages, start_page);
-
-	if (test_bit(NETFS_RREQ_FAILED, &rreq->flags)) {
-		__clear_bit(NETFS_RREQ_COPY_TO_CACHE, &rreq->flags);
-		list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
-			__clear_bit(NETFS_SREQ_COPY_TO_CACHE, &subreq->flags);
-		}
-	}
-
-	/* Walk through the pagecache and the I/O request lists simultaneously.
-	 * We may have a mixture of cached and uncached sections and we only
-	 * really want to write out the uncached sections.  This is slightly
-	 * complicated by the possibility that we might have huge pages with a
-	 * mixture inside.
-	 */
-	subreq = list_first_entry(&rreq->subrequests,
-				  struct netfs_io_subrequest, rreq_link);
-	iopos = 0;
-	subreq_failed = (subreq->error < 0);
-
-	trace_netfs_rreq(rreq, netfs_rreq_trace_unlock);
-
-	rcu_read_lock();
-	xas_for_each(&xas, folio, last_page) {
-		unsigned int pgpos = (folio_index(folio) - start_page) * PAGE_SIZE;
-		unsigned int pgend = pgpos + folio_size(folio);
-		bool pg_failed = false;
-
-		for (;;) {
-			if (!subreq) {
-				pg_failed = true;
-				break;
-			}
-			if (test_bit(NETFS_SREQ_COPY_TO_CACHE, &subreq->flags))
-				folio_start_fscache(folio);
-			pg_failed |= subreq_failed;
-			if (pgend < iopos + subreq->len)
-				break;
-
-			account += subreq->transferred;
-			iopos += subreq->len;
-			if (!list_is_last(&subreq->rreq_link, &rreq->subrequests)) {
-				subreq = list_next_entry(subreq, rreq_link);
-				subreq_failed = (subreq->error < 0);
-			} else {
-				subreq = NULL;
-				subreq_failed = false;
-			}
-			if (pgend == iopos)
-				break;
-		}
-
-		if (!pg_failed) {
-			flush_dcache_folio(folio);
-			folio_mark_uptodate(folio);
-		}
-
-		if (!test_bit(NETFS_RREQ_DONT_UNLOCK_FOLIOS, &rreq->flags)) {
-			if (folio_index(folio) == rreq->no_unlock_folio &&
-			    test_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags))
-				_debug("no unlock");
-			else
-				folio_unlock(folio);
-		}
-	}
-	rcu_read_unlock();
-
-	task_io_account_read(account);
-	if (rreq->netfs_ops->done)
-		rreq->netfs_ops->done(rreq);
-}
-
 /*
  * Handle a short read.
  */
@@ -749,334 +664,3 @@ int netfs_begin_read(struct netfs_io_request *rreq, bool sync)
 	}
 	return ret;
 }
-
-static void netfs_cache_expand_readahead(struct netfs_io_request *rreq,
-					 loff_t *_start, size_t *_len, loff_t i_size)
-{
-	struct netfs_cache_resources *cres = &rreq->cache_resources;
-
-	if (cres->ops && cres->ops->expand_readahead)
-		cres->ops->expand_readahead(cres, _start, _len, i_size);
-}
-
-static void netfs_rreq_expand(struct netfs_io_request *rreq,
-			      struct readahead_control *ractl)
-{
-	/* Give the cache a chance to change the request parameters.  The
-	 * resultant request must contain the original region.
-	 */
-	netfs_cache_expand_readahead(rreq, &rreq->start, &rreq->len, rreq->i_size);
-
-	/* Give the netfs a chance to change the request parameters.  The
-	 * resultant request must contain the original region.
-	 */
-	if (rreq->netfs_ops->expand_readahead)
-		rreq->netfs_ops->expand_readahead(rreq);
-
-	/* Expand the request if the cache wants it to start earlier.  Note
-	 * that the expansion may get further extended if the VM wishes to
-	 * insert THPs and the preferred start and/or end wind up in the middle
-	 * of THPs.
-	 *
-	 * If this is the case, however, the THP size should be an integer
-	 * multiple of the cache granule size, so we get a whole number of
-	 * granules to deal with.
-	 */
-	if (rreq->start  != readahead_pos(ractl) ||
-	    rreq->len != readahead_length(ractl)) {
-		readahead_expand(ractl, rreq->start, rreq->len);
-		rreq->start  = readahead_pos(ractl);
-		rreq->len = readahead_length(ractl);
-
-		trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
-				 netfs_read_trace_expanded);
-	}
-}
-
-/**
- * netfs_readahead - Helper to manage a read request
- * @ractl: The description of the readahead request
- *
- * Fulfil a readahead request by drawing data from the cache if possible, or
- * the netfs if not.  Space beyond the EOF is zero-filled.  Multiple I/O
- * requests from different sources will get munged together.  If necessary, the
- * readahead window can be expanded in either direction to a more convenient
- * alighment for RPC efficiency or to make storage in the cache feasible.
- *
- * The calling netfs must initialise a netfs context contiguous to the vfs
- * inode before calling this.
- *
- * This is usable whether or not caching is enabled.
- */
-void netfs_readahead(struct readahead_control *ractl)
-{
-	struct netfs_io_request *rreq;
-	struct netfs_i_context *ctx = netfs_i_context(ractl->mapping->host);
-	int ret;
-
-	_enter("%lx,%x", readahead_index(ractl), readahead_count(ractl));
-
-	if (readahead_count(ractl) == 0)
-		return;
-
-	rreq = netfs_alloc_request(ractl->mapping, ractl->file,
-				   readahead_pos(ractl),
-				   readahead_length(ractl),
-				   NETFS_READAHEAD);
-	if (!rreq)
-		return;
-
-	if (ctx->ops->begin_cache_operation) {
-		ret = ctx->ops->begin_cache_operation(rreq);
-		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
-			goto cleanup_free;
-	}
-
-	netfs_stat(&netfs_n_rh_readahead);
-	trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
-			 netfs_read_trace_readahead);
-
-	netfs_rreq_expand(rreq, ractl);
-
-	/* Drop the refs on the folios here rather than in the cache or
-	 * filesystem.  The locks will be dropped in netfs_rreq_unlock().
-	 */
-	while (readahead_folio(ractl))
-		;
-
-	netfs_begin_read(rreq, false);
-	return;
-
-cleanup_free:
-	netfs_put_request(rreq, false, netfs_rreq_trace_put_failed);
-	return;
-}
-EXPORT_SYMBOL(netfs_readahead);
-
-/**
- * netfs_readpage - Helper to manage a readpage request
- * @file: The file to read from
- * @subpage: A subpage of the folio to read
- *
- * Fulfil a readpage request by drawing data from the cache if possible, or the
- * netfs if not.  Space beyond the EOF is zero-filled.  Multiple I/O requests
- * from different sources will get munged together.
- *
- * The calling netfs must initialise a netfs context contiguous to the vfs
- * inode before calling this.
- *
- * This is usable whether or not caching is enabled.
- */
-int netfs_readpage(struct file *file, struct page *subpage)
-{
-	struct folio *folio = page_folio(subpage);
-	struct address_space *mapping = folio_file_mapping(folio);
-	struct netfs_io_request *rreq;
-	struct netfs_i_context *ctx = netfs_i_context(mapping->host);
-	int ret = -ENOMEM;
-
-	_enter("%lx", folio_index(folio));
-
-	rreq = netfs_alloc_request(mapping, file, folio_file_pos(folio),
-				   folio_size(folio), NETFS_READPAGE);
-	if (!rreq)
-		goto nomem;
-
-	if (ctx->ops->begin_cache_operation) {
-		ret = ctx->ops->begin_cache_operation(rreq);
-		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
-			goto discard;
-	}
-
-	netfs_stat(&netfs_n_rh_readpage);
-	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
-	return netfs_begin_read(rreq, true);
-
-discard:
-	netfs_put_request(rreq, false, netfs_rreq_trace_put_discard);
-nomem:
-	folio_unlock(folio);
-	return ret;
-}
-EXPORT_SYMBOL(netfs_readpage);
-
-/*
- * Prepare a folio for writing without reading first
- * @folio: The folio being prepared
- * @pos: starting position for the write
- * @len: length of write
- * @always_fill: T if the folio should always be completely filled/cleared
- *
- * In some cases, write_begin doesn't need to read at all:
- * - full folio write
- * - write that lies in a folio that is completely beyond EOF
- * - write that covers the folio from start to EOF or beyond it
- *
- * If any of these criteria are met, then zero out the unwritten parts
- * of the folio and return true. Otherwise, return false.
- */
-static bool netfs_skip_folio_read(struct folio *folio, loff_t pos, size_t len,
-				 bool always_fill)
-{
-	struct inode *inode = folio_inode(folio);
-	loff_t i_size = i_size_read(inode);
-	size_t offset = offset_in_folio(folio, pos);
-	size_t plen = folio_size(folio);
-
-	if (unlikely(always_fill)) {
-		if (pos - offset + len <= i_size)
-			return false; /* Page entirely before EOF */
-		zero_user_segment(&folio->page, 0, plen);
-		folio_mark_uptodate(folio);
-		return true;
-	}
-
-	/* Full folio write */
-	if (offset == 0 && len >= plen)
-		return true;
-
-	/* Page entirely beyond the end of the file */
-	if (pos - offset >= i_size)
-		goto zero_out;
-
-	/* Write that covers from the start of the folio to EOF or beyond */
-	if (offset == 0 && (pos + len) >= i_size)
-		goto zero_out;
-
-	return false;
-zero_out:
-	zero_user_segments(&folio->page, 0, offset, offset + len, len);
-	return true;
-}
-
-/**
- * netfs_write_begin - Helper to prepare for writing
- * @file: The file to read from
- * @mapping: The mapping to read from
- * @pos: File position at which the write will begin
- * @len: The length of the write (may extend beyond the end of the folio chosen)
- * @aop_flags: AOP_* flags
- * @_folio: Where to put the resultant folio
- * @_fsdata: Place for the netfs to store a cookie
- *
- * Pre-read data for a write-begin request by drawing data from the cache if
- * possible, or the netfs if not.  Space beyond the EOF is zero-filled.
- * Multiple I/O requests from different sources will get munged together.  If
- * necessary, the readahead window can be expanded in either direction to a
- * more convenient alighment for RPC efficiency or to make storage in the cache
- * feasible.
- *
- * The calling netfs must provide a table of operations, only one of which,
- * issue_op, is mandatory.
- *
- * The check_write_begin() operation can be provided to check for and flush
- * conflicting writes once the folio is grabbed and locked.  It is passed a
- * pointer to the fsdata cookie that gets returned to the VM to be passed to
- * write_end.  It is permitted to sleep.  It should return 0 if the request
- * should go ahead; unlock the folio and return -EAGAIN to cause the folio to
- * be regot; or return an error.
- *
- * The calling netfs must initialise a netfs context contiguous to the vfs
- * inode before calling this.
- *
- * This is usable whether or not caching is enabled.
- */
-int netfs_write_begin(struct file *file, struct address_space *mapping,
-		      loff_t pos, unsigned int len, unsigned int aop_flags,
-		      struct folio **_folio, void **_fsdata)
-{
-	struct netfs_io_request *rreq;
-	struct netfs_i_context *ctx = netfs_i_context(file_inode(file ));
-	struct folio *folio;
-	unsigned int fgp_flags;
-	pgoff_t index = pos >> PAGE_SHIFT;
-	int ret;
-
-	DEFINE_READAHEAD(ractl, file, NULL, mapping, index);
-
-retry:
-	fgp_flags = FGP_LOCK | FGP_WRITE | FGP_CREAT | FGP_STABLE;
-	if (aop_flags & AOP_FLAG_NOFS)
-		fgp_flags |= FGP_NOFS;
-	folio = __filemap_get_folio(mapping, index, fgp_flags,
-				    mapping_gfp_mask(mapping));
-	if (!folio)
-		return -ENOMEM;
-
-	if (ctx->ops->check_write_begin) {
-		/* Allow the netfs (eg. ceph) to flush conflicts. */
-		ret = ctx->ops->check_write_begin(file, pos, len, folio, _fsdata);
-		if (ret < 0) {
-			trace_netfs_failure(NULL, NULL, ret, netfs_fail_check_write_begin);
-			if (ret == -EAGAIN)
-				goto retry;
-			goto error;
-		}
-	}
-
-	if (folio_test_uptodate(folio))
-		goto have_folio;
-
-	/* If the page is beyond the EOF, we want to clear it - unless it's
-	 * within the cache granule containing the EOF, in which case we need
-	 * to preload the granule.
-	 */
-	if (!netfs_is_cache_enabled(ctx) &&
-	    netfs_skip_folio_read(folio, pos, len, false)) {
-		netfs_stat(&netfs_n_rh_write_zskip);
-		goto have_folio_no_wait;
-	}
-
-	ret = -ENOMEM;
-	rreq = netfs_alloc_request(mapping, file, folio_file_pos(folio),
-				   folio_size(folio), NETFS_READ_FOR_WRITE);
-	if (!rreq)
-		goto error;
-	rreq->start		= folio_file_pos(folio);
-	rreq->len		= folio_size(folio);
-	rreq->no_unlock_folio	= folio_index(folio);
-	__set_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags);
-
-	if (ctx->ops->begin_cache_operation) {
-		ret = ctx->ops->begin_cache_operation(rreq);
-		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
-			goto error_put;
-	}
-
-	netfs_stat(&netfs_n_rh_write_begin);
-	trace_netfs_read(rreq, pos, len, netfs_read_trace_write_begin);
-
-	/* Expand the request to meet caching requirements and download
-	 * preferences.
-	 */
-	ractl._nr_pages = folio_nr_pages(folio);
-	netfs_rreq_expand(rreq, &ractl);
-	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
-
-	/* We hold the folio locks, so we can drop the references */
-	folio_get(folio);
-	while (readahead_folio(&ractl))
-		;
-
-	ret = netfs_begin_read(rreq, true);
-	if (ret < 0)
-		goto error;
-
-have_folio:
-	ret = folio_wait_fscache_killable(folio);
-	if (ret < 0)
-		goto error;
-have_folio_no_wait:
-	*_folio = folio;
-	_leave(" = 0");
-	return 0;
-
-error_put:
-	netfs_put_request(rreq, false, netfs_rreq_trace_put_failed);
-error:
-	folio_unlock(folio);
-	folio_put(folio);
-	_leave(" = %d", ret);
-	return ret;
-}
-EXPORT_SYMBOL(netfs_write_begin);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
