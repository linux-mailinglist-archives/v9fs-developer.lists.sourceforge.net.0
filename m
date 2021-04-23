Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 294C836A68D
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:16:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1laboT-0001xE-F9; Sun, 25 Apr 2021 10:16:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1labnI-0001ry-Mm
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JwXA95xpkdvKsThFqSoFgKkVO4UJfYvDK51YUGC/Cz0=; b=QOkFGsIQwjHmNmgDpuw/Yo3JJD
 k/87ZCXgv4Z9I5VAveVgYypvB43Xw5CPdfM4AIqvYmgoVM/R3DPuLQ9Frk7WscAPd+AnEY2ePA5pP
 wmRL1AyyF8UGqjXLF22jiX8WVfpLvwSYUnIOomEgGbcaC+FDp1JSqwy7gSFK9GPg/cJQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JwXA95xpkdvKsThFqSoFgKkVO4UJfYvDK51YUGC/Cz0=; b=lw8OsdNJEdZVJVq++g6M8u9LXT
 UOTuDTrZSn0nhbbVl8wUqk58Gz14/ZOIr7baxIJa5alcr6Ub6sQ8d9PuuFZXZy8PHdX/n893j0ggb
 /VzNb2gk56+yCMM66waFspFwYVN2oYF4UrG1ZoOBxVWKXhwfqga6iOgqoaPOgyGhmaK4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1labnE-0007f2-Rq
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JwXA95xpkdvKsThFqSoFgKkVO4UJfYvDK51YUGC/Cz0=;
 b=P/eSQcKvuFl5mUZXm9dbbVUXrNMiRygLPU2y1SVm4Ywbf3KLRln4WzvAcE0niBhCN2GSqo
 0pik7NmxTfx+eLLMNqavqR2SPwy5ercKdp+McKK6fiCK7CLOsoENy8QXrqSkmu/ghfDwQf
 UoOJ1l7lRVBAJTbam3/1HyIEopgeH0U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-j8WNcCryMEWhxNu3vGpGAA-1; Fri, 23 Apr 2021 09:31:45 -0400
X-MC-Unique: j8WNcCryMEWhxNu3vGpGAA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C3F1343BA;
 Fri, 23 Apr 2021 13:31:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC5C05C3FD;
 Fri, 23 Apr 2021 13:31:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:31:27 +0100
Message-ID: <161918468704.3145707.1831226581568224387.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Headers-End: 1labnE-0007f2-Rq
Subject: [V9fs-developer] [PATCH v7 16/31] netfs: Add a tracepoint to log
 failures that would be otherwise unseen
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
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
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

Add a tracepoint to log internal failures (such as cache errors) that we
don't otherwise want to pass back to the netfs.

Signed-off-by: David Howells <dhowells@redhat.com>
Tested-by: Jeff Layton <jlayton@kernel.org>
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
Link: https://lore.kernel.org/r/161781048813.463527.1557000804674707986.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/161789082749.6155.15498680577213140870.stgit@warthog.procyon.org.uk/ # v6
---

 fs/netfs/read_helper.c       |   14 +++++++++-
 include/trace/events/netfs.h |   58 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index cd3b61d5e192..1d3b50c5db6d 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -271,6 +271,8 @@ static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error,
 
 	if (IS_ERR_VALUE(transferred_or_error)) {
 		netfs_stat(&netfs_n_rh_write_failed);
+		trace_netfs_failure(rreq, subreq, transferred_or_error,
+				    netfs_fail_copy_to_cache);
 	} else {
 		netfs_stat(&netfs_n_rh_write_done);
 	}
@@ -323,6 +325,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
 		ret = cres->ops->prepare_write(cres, &subreq->start, &subreq->len,
 					       rreq->i_size);
 		if (ret < 0) {
+			trace_netfs_failure(rreq, subreq, ret, netfs_fail_prepare_write);
 			trace_netfs_sreq(subreq, netfs_sreq_trace_write_skip);
 			continue;
 		}
@@ -627,6 +630,8 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
 
 	if (IS_ERR_VALUE(transferred_or_error)) {
 		subreq->error = transferred_or_error;
+		trace_netfs_failure(rreq, subreq, transferred_or_error,
+				    netfs_fail_read);
 		goto failed;
 	}
 
@@ -996,8 +1001,10 @@ int netfs_readpage(struct file *file,
 	} while (test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags));
 
 	ret = rreq->error;
-	if (ret == 0 && rreq->submitted < rreq->len)
+	if (ret == 0 && rreq->submitted < rreq->len) {
+		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_readpage);
 		ret = -EIO;
+	}
 out:
 	netfs_put_read_request(rreq, false);
 	return ret;
@@ -1069,6 +1076,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 		/* Allow the netfs (eg. ceph) to flush conflicts. */
 		ret = ops->check_write_begin(file, pos, len, page, _fsdata);
 		if (ret < 0) {
+			trace_netfs_failure(NULL, NULL, ret, netfs_fail_check_write_begin);
 			if (ret == -EAGAIN)
 				goto retry;
 			goto error;
@@ -1145,8 +1153,10 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	}
 
 	ret = rreq->error;
-	if (ret == 0 && rreq->submitted < rreq->len)
+	if (ret == 0 && rreq->submitted < rreq->len) {
+		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_write_begin);
 		ret = -EIO;
+	}
 	netfs_put_read_request(rreq, false);
 	if (ret < 0)
 		goto error;
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index e3ebeabd3852..de1c64635e42 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -47,6 +47,15 @@ enum netfs_sreq_trace {
 	netfs_sreq_trace_write_term,
 };
 
+enum netfs_failure {
+	netfs_fail_check_write_begin,
+	netfs_fail_copy_to_cache,
+	netfs_fail_read,
+	netfs_fail_short_readpage,
+	netfs_fail_short_write_begin,
+	netfs_fail_prepare_write,
+};
+
 #endif
 
 #define netfs_read_traces					\
@@ -81,6 +90,14 @@ enum netfs_sreq_trace {
 	EM(netfs_sreq_trace_write_skip,		"SKIP ")	\
 	E_(netfs_sreq_trace_write_term,		"WTERM")
 
+#define netfs_failures							\
+	EM(netfs_fail_check_write_begin,	"check-write-begin")	\
+	EM(netfs_fail_copy_to_cache,		"copy-to-cache")	\
+	EM(netfs_fail_read,			"read")			\
+	EM(netfs_fail_short_readpage,		"short-readpage")	\
+	EM(netfs_fail_short_write_begin,	"short-write-begin")	\
+	E_(netfs_fail_prepare_write,		"prep-write")
+
 
 /*
  * Export enum symbols via userspace.
@@ -94,6 +111,7 @@ netfs_read_traces;
 netfs_rreq_traces;
 netfs_sreq_sources;
 netfs_sreq_traces;
+netfs_failures;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -197,6 +215,46 @@ TRACE_EVENT(netfs_sreq,
 		      __entry->error)
 	    );
 
+TRACE_EVENT(netfs_failure,
+	    TP_PROTO(struct netfs_read_request *rreq,
+		     struct netfs_read_subrequest *sreq,
+		     int error, enum netfs_failure what),
+
+	    TP_ARGS(rreq, sreq, error, what),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		rreq		)
+		    __field(unsigned short,		index		)
+		    __field(short,			error		)
+		    __field(unsigned short,		flags		)
+		    __field(enum netfs_read_source,	source		)
+		    __field(enum netfs_failure,		what		)
+		    __field(size_t,			len		)
+		    __field(size_t,			transferred	)
+		    __field(loff_t,			start		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->rreq	= rreq->debug_id;
+		    __entry->index	= sreq ? sreq->debug_index : 0;
+		    __entry->error	= error;
+		    __entry->flags	= sreq ? sreq->flags : 0;
+		    __entry->source	= sreq ? sreq->source : NETFS_INVALID_READ;
+		    __entry->what	= what;
+		    __entry->len	= sreq ? sreq->len : 0;
+		    __entry->transferred = sreq ? sreq->transferred : 0;
+		    __entry->start	= sreq ? sreq->start : 0;
+			   ),
+
+	    TP_printk("R=%08x[%u] %s f=%02x s=%llx %zx/%zx %s e=%d",
+		      __entry->rreq, __entry->index,
+		      __print_symbolic(__entry->source, netfs_sreq_sources),
+		      __entry->flags,
+		      __entry->start, __entry->transferred, __entry->len,
+		      __print_symbolic(__entry->what, netfs_failures),
+		      __entry->error)
+	    );
+
 #endif /* _TRACE_NETFS_H */
 
 /* This part must be outside protection */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
