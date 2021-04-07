Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC84D3570DE
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Apr 2021 17:48:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUAPm-0005la-If; Wed, 07 Apr 2021 15:48:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUAPi-0005kl-Bb
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WULWsN3uOe2W6umAHISiBdK6m4Z+piU8XcyQ1XGELSQ=; b=aTaHxF7M9mbi+/1k+Ur9q6FSCT
 nUvyYGeblg714J8mLCf36X84nGE012tPfUAsnuk67R7SANRaG90m6KzD49e74uYD3KYG1DU5Y5G8h
 DR0+7gWfaSKZAH2TLA1kj+U9gMBmXOgg1Rt9+MZ0tOj+plerhboi9tTjxQqzX53I9qvM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WULWsN3uOe2W6umAHISiBdK6m4Z+piU8XcyQ1XGELSQ=; b=lsp0AYiyl0ziD3Zu42fVO3op/i
 BtR8v9E8O8Jcn4mzvKk7v+1MjG38wDNcM/F8EtF8RaWz7nhYP7gRZAcktBguYwURc4Cq4jk4ECCHX
 zrkv9VyoxrmpgVRVHDTULTB7HnpO60vOQ1xxDK00Y3sGdzNH+j4Hv+7wJuB691zq/9xc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUAPe-0007Js-KV
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617810487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WULWsN3uOe2W6umAHISiBdK6m4Z+piU8XcyQ1XGELSQ=;
 b=Tx+418oYtc+WqjJEC1I4PqMJSWFVrBwEqXntALJl9ejLR/P+hmh+lKkcYnbIE72Avqf9p8
 emgUkVCveSwsxSysiEdxojY4VA9h5LbHjW8rQRLrSRdUGrMGeh/EKwPe89xEKVW7pw5dd/
 rCc+fgDp/cMrKSGUrBBRUywTWTwQ0aQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-mZS2mNHpOlyDiFJYF0vuxA-1; Wed, 07 Apr 2021 11:48:04 -0400
X-MC-Unique: mZS2mNHpOlyDiFJYF0vuxA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E55425B364;
 Wed,  7 Apr 2021 15:48:02 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-201.rdu2.redhat.com
 [10.10.115.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C805160C5C;
 Wed,  7 Apr 2021 15:47:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: jlayton@kernel.org
Date: Wed, 07 Apr 2021 16:47:56 +0100
Message-ID: <161781047695.463527.7463536103593997492.stgit@warthog.procyon.org.uk>
In-Reply-To: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
References: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUAPe-0007Js-KV
Subject: [V9fs-developer] [PATCH 4/5] netfs: Fix copy-to-cache amalgamation
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, dwysocha@redhat.com,
 linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix the amalgamation of subrequests when copying to the cache.  We
shouldn't be rounding up the size to PAGE_SIZE as we go along as that ends
up with the composite subrequest length being too long - and this leads to
EIO from the cache write because the source iterator doesn't contain enough
data.

Instead, we only need to deal with contiguous subreqs and then ask the
cache to round off as it needs - which also means we don't have to make any
assumptions about the cache granularity.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c           |   17 +++++++++++++++++
 fs/netfs/read_helper.c       |   19 +++++++++----------
 include/linux/netfs.h        |    6 ++++++
 include/trace/events/netfs.h |    2 ++
 4 files changed, 34 insertions(+), 10 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 620959d1e95b..b13fb45fc3f3 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -330,6 +330,22 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 	return NETFS_DOWNLOAD_FROM_SERVER;
 }
 
+/*
+ * Prepare for a write to occur.
+ */
+static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
+				    loff_t *_start, size_t *_len, loff_t i_size)
+{
+	loff_t start = *_start;
+	size_t len = *_len, down;
+
+	/* Round to DIO size */
+	down = start - round_down(start, PAGE_SIZE);
+	*_start = start - down;
+	*_len = round_up(down + len, PAGE_SIZE);
+	return 0;
+}
+
 /*
  * Clean up an operation.
  */
@@ -355,6 +371,7 @@ static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
 	.read			= cachefiles_read,
 	.write			= cachefiles_write,
 	.prepare_read		= cachefiles_prepare_read,
+	.prepare_write		= cachefiles_prepare_write,
 };
 
 /*
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index ad0dc01319ce..ce2f31d20250 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -293,7 +293,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
 	struct netfs_cache_resources *cres = &rreq->cache_resources;
 	struct netfs_read_subrequest *subreq, *next, *p;
 	struct iov_iter iter;
-	loff_t pos;
+	int ret;
 
 	trace_netfs_rreq(rreq, netfs_rreq_trace_write);
 
@@ -311,23 +311,22 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
 
 	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
 		/* Amalgamate adjacent writes */
-		pos = round_down(subreq->start, PAGE_SIZE);
-		if (pos != subreq->start) {
-			subreq->len += subreq->start - pos;
-			subreq->start = pos;
-		}
-		subreq->len = round_up(subreq->len, PAGE_SIZE);
-
 		while (!list_is_last(&subreq->rreq_link, &rreq->subrequests)) {
 			next = list_next_entry(subreq, rreq_link);
-			if (next->start > subreq->start + subreq->len)
+			if (next->start != subreq->start + subreq->len)
 				break;
 			subreq->len += next->len;
-			subreq->len = round_up(subreq->len, PAGE_SIZE);
 			list_del_init(&next->rreq_link);
 			netfs_put_subrequest(next, false);
 		}
 
+		ret = cres->ops->prepare_write(cres, &subreq->start, &subreq->len,
+					       rreq->i_size);
+		if (ret < 0) {
+			trace_netfs_sreq(subreq, netfs_sreq_trace_write_skip);
+			continue;
+		}
+
 		iov_iter_xarray(&iter, WRITE, &rreq->mapping->i_pages,
 				subreq->start, subreq->len);
 
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 2299e7662ff0..9062adfa2fb9 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -206,6 +206,12 @@ struct netfs_cache_ops {
 	 */
 	enum netfs_read_source (*prepare_read)(struct netfs_read_subrequest *subreq,
 					       loff_t i_size);
+
+	/* Prepare a write operation, working out what part of the write we can
+	 * actually do.
+	 */
+	int (*prepare_write)(struct netfs_cache_resources *cres,
+			     loff_t *_start, size_t *_len, loff_t i_size);
 };
 
 struct readahead_control;
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
