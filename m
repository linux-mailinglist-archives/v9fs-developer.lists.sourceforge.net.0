Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5847536A671
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:11:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labjR-0001ar-Ti; Sun, 25 Apr 2021 10:11:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1labic-0001Yg-ID
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9B1vHJ9NTPIU2lMPTPyoi9+R6pB3SqLDxaY8MhSV7FM=; b=VOJdIHG5lFQLPoJAfxj2ONDsJB
 roqbshZ9sE32axB3YW4w8UszizKQ55SefXL/Lp2kUjAiD7pCYWKAShK8E6bxH8Z9q4vnrQIUYBm/R
 hYkm41AyGc8/0067dOQ1TUAHc98vk7rMXCO4P2+mJfsXvjgZqRmBYdaybKAFF40G377s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9B1vHJ9NTPIU2lMPTPyoi9+R6pB3SqLDxaY8MhSV7FM=; b=CytNVFttHis/gNpXsCwqlpChqB
 5dERzRYVcvPBHUptOFxJHw2FApFch6yOKMKjXD9acttNN95JQw+3QMbPK/1XLZvVV3XzRBw7HeIlZ
 mq/+ctKnL8le3EkHsc10n7W1veir2AR42A9UVD+6vldFaG24rG2C0m6Vm6ISgpXND3/k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1labiX-00074T-Ue
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345416;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9B1vHJ9NTPIU2lMPTPyoi9+R6pB3SqLDxaY8MhSV7FM=;
 b=dF4KVGcPpb8jvxLBFi3iTMo47GhNVCv3hDLjnlrxvcPzFhEsS9lHwR+MnNhPew9m8YI4Q/
 9Nr4OKMQmT/uxvYtDs3KbfzLNTg6h5+o2EgJ/EqH4YEo4/irT7nqxzsQi+X9fP1ocd3ndA
 eFPPjgrgqCswQ2RAEKvMZBKy4DzExqU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-zgfvv0nzPqGOm9na6PLY4Q-1; Fri, 23 Apr 2021 09:31:24 -0400
X-MC-Unique: zgfvv0nzPqGOm9na6PLY4Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD63618BE166;
 Fri, 23 Apr 2021 13:31:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27B3E60C13;
 Fri, 23 Apr 2021 13:31:07 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:31:06 +0100
Message-ID: <161918466635.3145707.1724702987175928422.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1labiX-00074T-Ue
Subject: [V9fs-developer] [PATCH v7 15/31] netfs: Define an interface to
 talk to a cache
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add an interface to the netfs helper library for reading data from the
cache instead of downloading it from the server and support for writing
data just downloaded or cleared to the cache.

The API passes an iov_iter to the cache read/write routines to indicate the
data/buffer to be used.  This is done using the ITER_XARRAY type to provide
direct access to the netfs inode's pagecache.

When the netfs's ->begin_cache_operation() method is called, this must fill
in the cache_resources in the netfs_read_request struct, including the
netfs_cache_ops used by the helper lib to talk to the cache.  The helper
lib does not directly access the cache.

Changes:
v6:
- Call trace_netfs_read() after beginning the cache op so that the cookie
  debug ID can be logged[3].
- Don't record the error from writing to the cache.  We don't want to pass
  it back to the netfs[4].
- Fix copy-to-cache subreq amalgamation to not round up as it goes along
  otherwise it overcalculates the length of the write[5].

v5:
- Use end_page_fscache() rather than unlock_page_fscache()[2].

v4:
- Added flag to netfs_subreq_terminated() to indicate that the caller may
  have been running async and stuff that might sleep needs punting to a
  workqueue (can't use in_softirq()[1]).
- Add missing inc of netfs_n_rh_read stat.
- Move initial definition of fscache_begin_read_operation() elsewhere.
- Need to call op->begin_cache_operation() from netfs_write_begin().

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-and-tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dave Wysochanski <dwysocha@redhat.com>
Tested-By: Marc Dionne <marc.dionne@auristor.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/20210216084230.GA23669@lst.de/ [1]
Link: https://lore.kernel.org/r/2499407.1616505440@warthog.procyon.org.uk/ [2]
Link: https://lore.kernel.org/r/161781045123.463527.14533348855710902201.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/161781046256.463527.18158681600085556192.stgit@warthog.procyon.org.uk/ [4]
Link: https://lore.kernel.org/r/161781047695.463527.7463536103593997492.stgit@warthog.procyon.org.uk/ [5]
Link: https://lore.kernel.org/r/161118141321.1232039.8296910406755622458.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161036700.2537118.11170748455436854978.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340399569.1303470.1138884774643385730.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539542874.286939.13337898213448136687.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653799826.2770958.9015430297426331950.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789081462.6155.3853904866933313256.stgit@warthog.procyon.org.uk/ # v6
---

 fs/netfs/read_helper.c       |  239 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/netfs.h        |   55 ++++++++++
 include/trace/events/netfs.h |    2 
 3 files changed, 295 insertions(+), 1 deletion(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index da34aedea053..cd3b61d5e192 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -88,6 +88,8 @@ static void netfs_free_read_request(struct work_struct *work)
 	if (rreq->netfs_priv)
 		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
 	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
+	if (rreq->cache_resources.ops)
+		rreq->cache_resources.ops->end_operation(&rreq->cache_resources);
 	kfree(rreq);
 	netfs_stat_d(&netfs_n_rh_rreq);
 }
@@ -154,6 +156,34 @@ static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
 	iov_iter_zero(iov_iter_count(&iter), &iter);
 }
 
+static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error,
+					bool was_async)
+{
+	struct netfs_read_subrequest *subreq = priv;
+
+	netfs_subreq_terminated(subreq, transferred_or_error, was_async);
+}
+
+/*
+ * Issue a read against the cache.
+ * - Eats the caller's ref on subreq.
+ */
+static void netfs_read_from_cache(struct netfs_read_request *rreq,
+				  struct netfs_read_subrequest *subreq,
+				  bool seek_data)
+{
+	struct netfs_cache_resources *cres = &rreq->cache_resources;
+	struct iov_iter iter;
+
+	netfs_stat(&netfs_n_rh_read);
+	iov_iter_xarray(&iter, READ, &rreq->mapping->i_pages,
+			subreq->start + subreq->transferred,
+			subreq->len   - subreq->transferred);
+
+	cres->ops->read(cres, subreq->start, &iter, seek_data,
+			netfs_cache_read_terminated, subreq);
+}
+
 /*
  * Fill a subrequest region with zeroes.
  */
@@ -198,6 +228,141 @@ static void netfs_rreq_completed(struct netfs_read_request *rreq, bool was_async
 	netfs_put_read_request(rreq, was_async);
 }
 
+/*
+ * Deal with the completion of writing the data to the cache.  We have to clear
+ * the PG_fscache bits on the pages involved and release the caller's ref.
+ *
+ * May be called in softirq mode and we inherit a ref from the caller.
+ */
+static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq,
+					  bool was_async)
+{
+	struct netfs_read_subrequest *subreq;
+	struct page *page;
+	pgoff_t unlocked = 0;
+	bool have_unlocked = false;
+
+	rcu_read_lock();
+
+	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
+		XA_STATE(xas, &rreq->mapping->i_pages, subreq->start / PAGE_SIZE);
+
+		xas_for_each(&xas, page, (subreq->start + subreq->len - 1) / PAGE_SIZE) {
+			/* We might have multiple writes from the same huge
+			 * page, but we mustn't unlock a page more than once.
+			 */
+			if (have_unlocked && page->index <= unlocked)
+				continue;
+			unlocked = page->index;
+			end_page_fscache(page);
+			have_unlocked = true;
+		}
+	}
+
+	rcu_read_unlock();
+	netfs_rreq_completed(rreq, was_async);
+}
+
+static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error,
+				       bool was_async)
+{
+	struct netfs_read_subrequest *subreq = priv;
+	struct netfs_read_request *rreq = subreq->rreq;
+
+	if (IS_ERR_VALUE(transferred_or_error)) {
+		netfs_stat(&netfs_n_rh_write_failed);
+	} else {
+		netfs_stat(&netfs_n_rh_write_done);
+	}
+
+	trace_netfs_sreq(subreq, netfs_sreq_trace_write_term);
+
+	/* If we decrement nr_wr_ops to 0, the ref belongs to us. */
+	if (atomic_dec_and_test(&rreq->nr_wr_ops))
+		netfs_rreq_unmark_after_write(rreq, was_async);
+
+	netfs_put_subrequest(subreq, was_async);
+}
+
+/*
+ * Perform any outstanding writes to the cache.  We inherit a ref from the
+ * caller.
+ */
+static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
+{
+	struct netfs_cache_resources *cres = &rreq->cache_resources;
+	struct netfs_read_subrequest *subreq, *next, *p;
+	struct iov_iter iter;
+	int ret;
+
+	trace_netfs_rreq(rreq, netfs_rreq_trace_write);
+
+	/* We don't want terminating writes trying to wake us up whilst we're
+	 * still going through the list.
+	 */
+	atomic_inc(&rreq->nr_wr_ops);
+
+	list_for_each_entry_safe(subreq, p, &rreq->subrequests, rreq_link) {
+		if (!test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags)) {
+			list_del_init(&subreq->rreq_link);
+			netfs_put_subrequest(subreq, false);
+		}
+	}
+
+	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
+		/* Amalgamate adjacent writes */
+		while (!list_is_last(&subreq->rreq_link, &rreq->subrequests)) {
+			next = list_next_entry(subreq, rreq_link);
+			if (next->start != subreq->start + subreq->len)
+				break;
+			subreq->len += next->len;
+			list_del_init(&next->rreq_link);
+			netfs_put_subrequest(next, false);
+		}
+
+		ret = cres->ops->prepare_write(cres, &subreq->start, &subreq->len,
+					       rreq->i_size);
+		if (ret < 0) {
+			trace_netfs_sreq(subreq, netfs_sreq_trace_write_skip);
+			continue;
+		}
+
+		iov_iter_xarray(&iter, WRITE, &rreq->mapping->i_pages,
+				subreq->start, subreq->len);
+
+		atomic_inc(&rreq->nr_wr_ops);
+		netfs_stat(&netfs_n_rh_write);
+		netfs_get_read_subrequest(subreq);
+		trace_netfs_sreq(subreq, netfs_sreq_trace_write);
+		cres->ops->write(cres, subreq->start, &iter,
+				 netfs_rreq_copy_terminated, subreq);
+	}
+
+	/* If we decrement nr_wr_ops to 0, the usage ref belongs to us. */
+	if (atomic_dec_and_test(&rreq->nr_wr_ops))
+		netfs_rreq_unmark_after_write(rreq, false);
+}
+
+static void netfs_rreq_write_to_cache_work(struct work_struct *work)
+{
+	struct netfs_read_request *rreq =
+		container_of(work, struct netfs_read_request, work);
+
+	netfs_rreq_do_write_to_cache(rreq);
+}
+
+static void netfs_rreq_write_to_cache(struct netfs_read_request *rreq,
+				      bool was_async)
+{
+	if (was_async) {
+		rreq->work.func = netfs_rreq_write_to_cache_work;
+		if (!queue_work(system_unbound_wq, &rreq->work))
+			BUG();
+	} else {
+		netfs_rreq_do_write_to_cache(rreq);
+	}
+}
+
 /*
  * Unlock the pages in a read operation.  We need to set PG_fscache on any
  * pages we're going to write back before we unlock them.
@@ -299,7 +464,10 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
 
 	netfs_get_read_subrequest(subreq);
 	atomic_inc(&rreq->nr_rd_ops);
-	netfs_read_from_server(rreq, subreq);
+	if (subreq->source == NETFS_READ_FROM_CACHE)
+		netfs_read_from_cache(rreq, subreq, true);
+	else
+		netfs_read_from_server(rreq, subreq);
 }
 
 /*
@@ -344,6 +512,25 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
 	return false;
 }
 
+/*
+ * Check to see if the data read is still valid.
+ */
+static void netfs_rreq_is_still_valid(struct netfs_read_request *rreq)
+{
+	struct netfs_read_subrequest *subreq;
+
+	if (!rreq->netfs_ops->is_still_valid ||
+	    rreq->netfs_ops->is_still_valid(rreq))
+		return;
+
+	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
+		if (subreq->source == NETFS_READ_FROM_CACHE) {
+			subreq->error = -ESTALE;
+			__set_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags);
+		}
+	}
+}
+
 /*
  * Assess the state of a read request and decide what to do next.
  *
@@ -355,6 +542,8 @@ static void netfs_rreq_assess(struct netfs_read_request *rreq, bool was_async)
 	trace_netfs_rreq(rreq, netfs_rreq_trace_assess);
 
 again:
+	netfs_rreq_is_still_valid(rreq);
+
 	if (!test_bit(NETFS_RREQ_FAILED, &rreq->flags) &&
 	    test_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags)) {
 		if (netfs_rreq_perform_resubmissions(rreq))
@@ -367,6 +556,9 @@ static void netfs_rreq_assess(struct netfs_read_request *rreq, bool was_async)
 	clear_bit_unlock(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 	wake_up_bit(&rreq->flags, NETFS_RREQ_IN_PROGRESS);
 
+	if (test_bit(NETFS_RREQ_WRITE_TO_CACHE, &rreq->flags))
+		return netfs_rreq_write_to_cache(rreq, was_async);
+
 	netfs_rreq_completed(rreq, was_async);
 }
 
@@ -504,7 +696,10 @@ static enum netfs_read_source netfs_cache_prepare_read(struct netfs_read_subrequ
 						       loff_t i_size)
 {
 	struct netfs_read_request *rreq = subreq->rreq;
+	struct netfs_cache_resources *cres = &rreq->cache_resources;
 
+	if (cres->ops)
+		return cres->ops->prepare_read(subreq, i_size);
 	if (subreq->start >= rreq->i_size)
 		return NETFS_FILL_WITH_ZEROES;
 	return NETFS_DOWNLOAD_FROM_SERVER;
@@ -595,6 +790,9 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
 	case NETFS_DOWNLOAD_FROM_SERVER:
 		netfs_read_from_server(rreq, subreq);
 		break;
+	case NETFS_READ_FROM_CACHE:
+		netfs_read_from_cache(rreq, subreq, false);
+		break;
 	default:
 		BUG();
 	}
@@ -607,9 +805,23 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
 	return false;
 }
 
+static void netfs_cache_expand_readahead(struct netfs_read_request *rreq,
+					 loff_t *_start, size_t *_len, loff_t i_size)
+{
+	struct netfs_cache_resources *cres = &rreq->cache_resources;
+
+	if (cres->ops && cres->ops->expand_readahead)
+		cres->ops->expand_readahead(cres, _start, _len, i_size);
+}
+
 static void netfs_rreq_expand(struct netfs_read_request *rreq,
 			      struct readahead_control *ractl)
 {
+	/* Give the cache a chance to change the request parameters.  The
+	 * resultant request must contain the original region.
+	 */
+	netfs_cache_expand_readahead(rreq, &rreq->start, &rreq->len, rreq->i_size);
+
 	/* Give the netfs a chance to change the request parameters.  The
 	 * resultant request must contain the original region.
 	 */
@@ -661,6 +873,7 @@ void netfs_readahead(struct readahead_control *ractl,
 	struct netfs_read_request *rreq;
 	struct page *page;
 	unsigned int debug_index = 0;
+	int ret;
 
 	_enter("%lx,%x", readahead_index(ractl), readahead_count(ractl));
 
@@ -674,6 +887,12 @@ void netfs_readahead(struct readahead_control *ractl,
 	rreq->start	= readahead_pos(ractl);
 	rreq->len	= readahead_length(ractl);
 
+	if (ops->begin_cache_operation) {
+		ret = ops->begin_cache_operation(rreq);
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
+			goto cleanup_free;
+	}
+
 	netfs_stat(&netfs_n_rh_readahead);
 	trace_netfs_read(rreq, readahead_pos(ractl), readahead_length(ractl),
 			 netfs_read_trace_readahead);
@@ -698,6 +917,9 @@ void netfs_readahead(struct readahead_control *ractl,
 		netfs_rreq_assess(rreq, false);
 	return;
 
+cleanup_free:
+	netfs_put_read_request(rreq, false);
+	return;
 cleanup:
 	if (netfs_priv)
 		ops->cleanup(ractl->mapping, netfs_priv);
@@ -744,6 +966,14 @@ int netfs_readpage(struct file *file,
 	rreq->start	= page_index(page) * PAGE_SIZE;
 	rreq->len	= thp_size(page);
 
+	if (ops->begin_cache_operation) {
+		ret = ops->begin_cache_operation(rreq);
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS) {
+			unlock_page(page);
+			goto out;
+		}
+	}
+
 	netfs_stat(&netfs_n_rh_readpage);
 	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
 
@@ -768,6 +998,7 @@ int netfs_readpage(struct file *file,
 	ret = rreq->error;
 	if (ret == 0 && rreq->submitted < rreq->len)
 		ret = -EIO;
+out:
 	netfs_put_read_request(rreq, false);
 	return ret;
 }
@@ -873,6 +1104,12 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	__set_bit(NETFS_RREQ_NO_UNLOCK_PAGE, &rreq->flags);
 	netfs_priv = NULL;
 
+	if (ops->begin_cache_operation) {
+		ret = ops->begin_cache_operation(rreq);
+		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
+			goto error_put;
+	}
+
 	netfs_stat(&netfs_n_rh_write_begin);
 	trace_netfs_read(rreq, pos, len, netfs_read_trace_write_begin);
 
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 99659ed9524e..9062adfa2fb9 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -92,6 +92,18 @@ enum netfs_read_source {
 	NETFS_INVALID_READ,
 } __mode(byte);
 
+typedef void (*netfs_io_terminated_t)(void *priv, ssize_t transferred_or_error,
+				      bool was_async);
+
+/*
+ * Resources required to do operations on a cache.
+ */
+struct netfs_cache_resources {
+	const struct netfs_cache_ops	*ops;
+	void				*cache_priv;
+	void				*cache_priv2;
+};
+
 /*
  * Descriptor for a single component subrequest.
  */
@@ -121,11 +133,13 @@ struct netfs_read_request {
 	struct work_struct	work;
 	struct inode		*inode;		/* The file being accessed */
 	struct address_space	*mapping;	/* The mapping being accessed */
+	struct netfs_cache_resources cache_resources;
 	struct list_head	subrequests;	/* Requests to fetch I/O from disk or net */
 	void			*netfs_priv;	/* Private data for the netfs */
 	unsigned int		debug_id;
 	unsigned int		cookie_debug_id;
 	atomic_t		nr_rd_ops;	/* Number of read ops in progress */
+	atomic_t		nr_wr_ops;	/* Number of write ops in progress */
 	size_t			submitted;	/* Amount submitted for I/O so far */
 	size_t			len;		/* Length of the request */
 	short			error;		/* 0 or error that occurred */
@@ -149,6 +163,7 @@ struct netfs_read_request {
 struct netfs_read_request_ops {
 	bool (*is_cache_enabled)(struct inode *inode);
 	void (*init_rreq)(struct netfs_read_request *rreq, struct file *file);
+	int (*begin_cache_operation)(struct netfs_read_request *rreq);
 	void (*expand_readahead)(struct netfs_read_request *rreq);
 	bool (*clamp_length)(struct netfs_read_subrequest *subreq);
 	void (*issue_op)(struct netfs_read_subrequest *subreq);
@@ -159,6 +174,46 @@ struct netfs_read_request_ops {
 	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
 };
 
+/*
+ * Table of operations for access to a cache.  This is obtained by
+ * rreq->ops->begin_cache_operation().
+ */
+struct netfs_cache_ops {
+	/* End an operation */
+	void (*end_operation)(struct netfs_cache_resources *cres);
+
+	/* Read data from the cache */
+	int (*read)(struct netfs_cache_resources *cres,
+		    loff_t start_pos,
+		    struct iov_iter *iter,
+		    bool seek_data,
+		    netfs_io_terminated_t term_func,
+		    void *term_func_priv);
+
+	/* Write data to the cache */
+	int (*write)(struct netfs_cache_resources *cres,
+		     loff_t start_pos,
+		     struct iov_iter *iter,
+		     netfs_io_terminated_t term_func,
+		     void *term_func_priv);
+
+	/* Expand readahead request */
+	void (*expand_readahead)(struct netfs_cache_resources *cres,
+				 loff_t *_start, size_t *_len, loff_t i_size);
+
+	/* Prepare a read operation, shortening it to a cached/uncached
+	 * boundary as appropriate.
+	 */
+	enum netfs_read_source (*prepare_read)(struct netfs_read_subrequest *subreq,
+					       loff_t i_size);
+
+	/* Prepare a write operation, working out what part of the write we can
+	 * actually do.
+	 */
+	int (*prepare_write)(struct netfs_cache_resources *cres,
+			     loff_t *_start, size_t *_len, loff_t i_size);
+};
+
 struct readahead_control;
 extern void netfs_readahead(struct readahead_control *,
 			    const struct netfs_read_request_ops *,
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index a2bf6cd84bd4..e3ebeabd3852 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -43,6 +43,7 @@ enum netfs_sreq_trace {
 	netfs_sreq_trace_submit,
 	netfs_sreq_trace_terminated,
 	netfs_sreq_trace_write,
+	netfs_sreq_trace_write_skip,
 	netfs_sreq_trace_write_term,
 };
 
@@ -77,6 +78,7 @@ enum netfs_sreq_trace {
 	EM(netfs_sreq_trace_submit,		"SUBMT")	\
 	EM(netfs_sreq_trace_terminated,		"TERM ")	\
 	EM(netfs_sreq_trace_write,		"WRITE")	\
+	EM(netfs_sreq_trace_write_skip,		"SKIP ")	\
 	E_(netfs_sreq_trace_write_term,		"WTERM")
 
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
