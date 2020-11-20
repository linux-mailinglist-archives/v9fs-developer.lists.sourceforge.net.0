Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 139412BAD55
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:19:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8CU-00032V-RD; Fri, 20 Nov 2020 15:19:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg83P-0002ex-A5
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1Fc0lNxMiIDpxqwWLHfiKydIckFFR6M8sjHQnyQcXA=; b=VNLAL9JRD8wRVoctnosCJp88fL
 ZyXZ2EyjDRxRepI9Oq/aj2fRenR4iBgSn4di5Mp3Ak9PZZXVCP0rMmuKPPwdInUUWoBrDZICqNkNB
 FGCVG8/cUbWuW0K5vtXhTwtciPds+ufjE5WCJsEyA9BlUr/TB270KyYYmuO4h90eFHUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d1Fc0lNxMiIDpxqwWLHfiKydIckFFR6M8sjHQnyQcXA=; b=QVLhBCtVYBlCiDqNDVy5x4Rt8a
 yITjEK1A+jdioL0oTA24vuEczkbk85cn37HafjO4PhR9v1/hTCwJ0GcNtwp+iVg5QPaOOyzD/r4jw
 OHup1Gse1wnAWqWVykv8GEWLhB9MOgRbpm0iF6aNuPCgVz8x+23DEPTH8ifx/dbiVEV0=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg83L-003BTf-MQ
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885017;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=d1Fc0lNxMiIDpxqwWLHfiKydIckFFR6M8sjHQnyQcXA=;
 b=DyYL0fMxyG2mEp1DQHoJUzd+yAW8wJ2y0gs8wVshBM7YtafcVkaAjyrRSxPTU1CAEE6mmI
 UYWerJyratFuNJsF3NCVFwcnxzfi8XoodNeYD7inIaHEbFwxj+X3J92a/GpQAZiEXGrwiz
 hDHjPfGl2uzVr0OHXO0l22jHHx0jY9I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-Z9q_S-D1MqClzmz0s9PzVQ-1; Fri, 20 Nov 2020 10:10:14 -0500
X-MC-Unique: Z9q_S-D1MqClzmz0s9PzVQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB318190D345;
 Fri, 20 Nov 2020 15:10:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E5BC60C61;
 Fri, 20 Nov 2020 15:09:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:09:54 +0000
Message-ID: <160588499435.3465195.10676629484149032256.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg83L-003BTf-MQ
Subject: [V9fs-developer] [RFC PATCH 34/76] netfs: Use the cache
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add support to the netfs support read helpers for reading data from the
cache instead of downloading it from the server and support for writing
data just downloaded or cleared to the cache.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/io.c         |    1 
 fs/netfs/read_helper.c  |  197 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache.h |   11 +++
 include/linux/netfs.h   |    5 +
 4 files changed, 213 insertions(+), 1 deletion(-)

diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index de9ffc16eb4f..90c056e85cea 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -9,6 +9,7 @@
 #include <linux/module.h>
 #include <linux/fscache-cache.h>
 #include <linux/slab.h>
+#include <linux/netfs.h>
 #include "internal.h"
 
 /*
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index d0e3d5e0ced4..f5185402b504 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -79,6 +79,7 @@ static void netfs_put_read_request(struct netfs_read_request *rreq)
 		netfs_rreq_clear_subreqs(rreq);
 		if (rreq->netfs_priv)
 			rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
+		fscache_end_operation(&rreq->cache_resources);
 		kfree(rreq);
 	}
 }
@@ -125,6 +126,31 @@ static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
 	iov_iter_zero(iov_iter_count(&iter), &iter);
 }
 
+static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error)
+{
+	struct netfs_read_subrequest *subreq = priv;
+
+	netfs_subreq_terminated(subreq, transferred_or_error);
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
+	struct iov_iter iter;
+
+	iov_iter_xarray(&iter, READ, &rreq->mapping->i_pages,
+			subreq->start + subreq->transferred,
+			subreq->len   - subreq->transferred);
+
+	fscache_read(&rreq->cache_resources, subreq->start, &iter, seek_data,
+		     netfs_cache_read_terminated, subreq);
+}
+
 /*
  * Fill a subrequest region with zeroes.
  */
@@ -166,6 +192,122 @@ static void netfs_rreq_completed(struct netfs_read_request *rreq)
 	netfs_put_read_request(rreq);
 }
 
+/*
+ * Deal with the completion of writing the data to the cache.  We have to clear
+ * the PG_fscache bits on the pages involved and release the caller's ref.
+ *
+ * May be called in softirq mode and we inherit a ref from the caller.
+ */
+static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
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
+			unlock_page_fscache(page);
+			have_unlocked = true;
+		}
+	}
+
+	rcu_read_unlock();
+	netfs_rreq_completed(rreq);
+}
+
+static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error)
+{
+	struct netfs_read_subrequest *subreq = priv;
+	struct netfs_read_request *rreq = subreq->rreq;
+
+	if (IS_ERR_VALUE(transferred_or_error))
+		subreq->error = transferred_or_error;
+	else
+		subreq->error = 0;
+
+	/* If we decrement nr_wr_ops to 0, the ref belongs to us. */
+	if (atomic_dec_and_test(&rreq->nr_wr_ops))
+		netfs_rreq_unmark_after_write(rreq);
+
+	netfs_put_subrequest(subreq);
+}
+
+/*
+ * Perform any outstanding writes to the cache.  We inherit a ref from the
+ * caller.
+ */
+static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
+{
+	struct netfs_read_subrequest *subreq, *next, *p;
+	struct iov_iter iter;
+
+	/* We don't want terminating writes trying to wake us up whilst we're
+	 * still going through the list.
+	 */
+	atomic_inc(&rreq->nr_wr_ops);
+
+	list_for_each_entry_safe(subreq, p, &rreq->subrequests, rreq_link) {
+		if (!test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags)) {
+			list_del_init(&subreq->rreq_link);
+			netfs_put_subrequest(subreq);
+		}
+	}
+
+	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
+		/* Amalgamate adjacent writes */
+		while (!list_is_last(&subreq->rreq_link, &rreq->subrequests)) {
+			next = list_next_entry(subreq, rreq_link);
+			if (next->start > subreq->start + subreq->len)
+				break;
+			subreq->len += next->len;
+			list_del_init(&next->rreq_link);
+			netfs_put_subrequest(next);
+		}
+
+		iov_iter_xarray(&iter, WRITE, &rreq->mapping->i_pages,
+				subreq->start, subreq->len);
+
+		atomic_inc(&rreq->nr_wr_ops);
+		netfs_get_read_subrequest(subreq);
+		fscache_write(&rreq->cache_resources, subreq->start, &iter,
+			      netfs_rreq_copy_terminated, subreq);
+	}
+
+	/* If we decrement nr_wr_ops to 0, the usage ref belongs to us. */
+	if (atomic_dec_and_test(&rreq->nr_wr_ops))
+		netfs_rreq_unmark_after_write(rreq);
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
+static void netfs_rreq_write_to_cache(struct netfs_read_request *rreq)
+{
+	if (in_softirq()) {
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
@@ -258,7 +400,10 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
 
 	netfs_get_read_subrequest(subreq);
 	atomic_inc(&rreq->nr_rd_ops);
-	netfs_read_from_server(rreq, subreq);
+	if (subreq->source == NETFS_READ_FROM_CACHE)
+		netfs_read_from_cache(rreq, subreq, true);
+	else
+		netfs_read_from_server(rreq, subreq);
 }
 
 /*
@@ -299,6 +444,25 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
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
@@ -308,6 +472,8 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
 static void netfs_rreq_assess(struct netfs_read_request *rreq)
 {
 again:
+	netfs_rreq_is_still_valid(rreq);
+
 	if (!test_bit(NETFS_RREQ_FAILED, &rreq->flags) &&
 	    test_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags)) {
 		if (netfs_rreq_perform_resubmissions(rreq))
@@ -320,6 +486,9 @@ static void netfs_rreq_assess(struct netfs_read_request *rreq)
 	clear_bit_unlock(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 	wake_up_bit(&rreq->flags, NETFS_RREQ_IN_PROGRESS);
 
+	if (test_bit(NETFS_RREQ_WRITE_TO_CACHE, &rreq->flags))
+		return netfs_rreq_write_to_cache(rreq);
+
 	netfs_rreq_completed(rreq);
 }
 
@@ -434,7 +603,11 @@ static enum netfs_read_source netfs_cache_prepare_read(struct netfs_read_subrequ
 						       loff_t i_size)
 {
 	struct netfs_read_request *rreq = subreq->rreq;
+	struct fscache_op_resources *opr = &rreq->cache_resources;
+	const struct fscache_op_ops *ops = fscache_operation_valid(opr);
 
+	if (ops)
+		return ops->prepare_read(subreq, i_size);
 	if (subreq->start >= rreq->i_size)
 		return NETFS_FILL_WITH_ZEROES;
 	return NETFS_DOWNLOAD_FROM_SERVER;
@@ -524,6 +697,9 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
 	case NETFS_DOWNLOAD_FROM_SERVER:
 		netfs_read_from_server(rreq, subreq);
 		break;
+	case NETFS_READ_FROM_CACHE:
+		netfs_read_from_cache(rreq, subreq, false);
+		break;
 	default:
 		BUG();
 	}
@@ -536,9 +712,24 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
 	return false;
 }
 
+static void netfs_cache_expand_readahead(struct netfs_read_request *rreq,
+					 loff_t *_start, size_t *_len, loff_t i_size)
+{
+	struct fscache_op_resources *opr = &rreq->cache_resources;
+	const struct fscache_op_ops *ops = fscache_operation_valid(opr);
+
+	if (ops)
+		ops->expand_readahead(opr, _start, _len, i_size);
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
@@ -600,6 +791,8 @@ void netfs_readahead(struct readahead_control *ractl,
 	rreq->start	= readahead_pos(ractl);
 	rreq->len	= readahead_length(ractl);
 
+	if (ops->begin_cache_operation)
+		ops->begin_cache_operation(rreq);
 	netfs_rreq_expand(rreq, ractl);
 
 	atomic_set(&rreq->nr_rd_ops, 1);
@@ -670,6 +863,8 @@ int netfs_readpage(struct file *file,
 	rreq->start		= page->index * PAGE_SIZE;
 	rreq->len		= thp_size(page);
 
+	if (ops->begin_cache_operation)
+		ops->begin_cache_operation(rreq);
 	netfs_get_read_request(rreq);
 
 	atomic_set(&rreq->nr_rd_ops, 1);
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 38a252b06b54..3c53386e4f6e 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -52,6 +52,7 @@ struct fscache_cookie;
 struct fscache_netfs;
 struct fscache_op_resources;
 struct fscache_op_ops;
+struct netfs_read_subrequest;
 
 typedef void (*fscache_io_terminated_t)(void *priv, ssize_t transferred_or_error);
 
@@ -174,6 +175,16 @@ struct fscache_op_ops {
 		     struct iov_iter *iter,
 		     fscache_io_terminated_t term_func,
 		     void *term_func_priv);
+
+	/* Expand readahead request */
+	void (*expand_readahead)(struct fscache_op_resources *opr,
+				 loff_t *_start, size_t *_len, loff_t i_size);
+
+	/* Prepare a read operation, shortening it to a cached/uncached
+	 * boundary as appropriate.
+	 */
+	enum netfs_read_source (*prepare_read)(struct netfs_read_subrequest *subreq,
+					       loff_t i_size);
 };
 
 /*
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 722b8131a1ea..f2ffea11ea9b 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -12,6 +12,8 @@
 #ifndef _LINUX_NETFS_H
 #define _LINUX_NETFS_H
 
+#include <linux/fscache.h>
+
 enum netfs_read_source {
 	NETFS_FILL_WITH_ZEROES,
 	NETFS_DOWNLOAD_FROM_SERVER,
@@ -47,10 +49,12 @@ struct netfs_read_subrequest {
 struct netfs_read_request {
 	struct inode		*inode;		/* The file being accessed */
 	struct address_space	*mapping;	/* The mapping being accessed */
+	struct fscache_op_resources cache_resources;
 	struct list_head	subrequests;	/* Requests to fetch I/O from disk or net */
 	struct work_struct	work;
 	void			*netfs_priv;	/* Private data for the netfs */
 	atomic_t		nr_rd_ops;	/* Number of read ops in progress */
+	atomic_t		nr_wr_ops;	/* Number of write ops in progress */
 	size_t			submitted;	/* Amount submitted for I/O so far */
 	size_t			len;		/* Length of the request */
 	short			error;		/* 0 or error that occurred */
@@ -73,6 +77,7 @@ struct netfs_read_request {
  */
 struct netfs_read_request_ops {
 	void (*init_rreq)(struct netfs_read_request *rreq, struct file *file);
+	int (*begin_cache_operation)(struct netfs_read_request *rreq);
 	void (*expand_readahead)(struct netfs_read_request *rreq);
 	bool (*clamp_length)(struct netfs_read_subrequest *subreq);
 	void (*issue_op)(struct netfs_read_subrequest *subreq);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
