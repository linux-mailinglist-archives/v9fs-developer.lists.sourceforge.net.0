Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC994CA72B
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Mar 2022 15:05:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPPbm-0002Wm-Kq; Wed, 02 Mar 2022 14:05:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nPPbk-0002Wf-1i
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IetQs8ytzH9K4JXJeSaAeAjiXEuL1U3Biq66VWVR9d4=; b=lW8SyOoOQhAK9ZK/RAsmiwKT1z
 51dCLw9Em0i2yZmvrnSLeoO69TcVhYqgc9KREmU2i1o7TsOqqzHLP1hUaeYwslcb7Pyx0YUKUM7d5
 h8e/ABizmAFOu34r4Ruq8oSYRiaY3juIvlgEWMtbQfbH83iBJjf6sybtfO8GbbJTmLBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IetQs8ytzH9K4JXJeSaAeAjiXEuL1U3Biq66VWVR9d4=; b=dyXH/jLZAlLjJCsihlycvktwre
 fuUfkxGFklTb9/fYY+c3nGkCCTaDgi7BagVDu+d/5UEpoLbaskdiM95zuNbBr+/L7Rf1oNDSUsiFQ
 wAjJVsxGRp6FmWLmDNCVyVZUn55efs7AITNuVQoqwNR0+tRVDUI6squM3n/HtaNyqA3k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPPbg-000877-BB
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646229926;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IetQs8ytzH9K4JXJeSaAeAjiXEuL1U3Biq66VWVR9d4=;
 b=FuobiaLGZcilkFHgCiZDfPmpuOFWuot5cA7rKtXh6F+9hm7Lpdma4aGl8ebvN1rZ+7NdpU
 VaF9dUzNtXAasb0i1RgijcRcey9nlPMtXyP0Sc6hdDp3DmGjmpl2sKlLpymrv4tvwS5HZ/
 2MCiHqf0tIr+hvWWGKt+tQOny/QHG10=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-336-5_GE-VIjNbSHUyixARMaYA-1; Wed, 02 Mar 2022 09:05:21 -0500
X-MC-Unique: 5_GE-VIjNbSHUyixARMaYA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AC42A0C03;
 Wed,  2 Mar 2022 14:05:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E74926E45;
 Wed,  2 Mar 2022 14:04:50 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 02 Mar 2022 14:04:50 +0000
Message-ID: <164622989020.3564931.17517006047854958747.stgit@warthog.procyon.org.uk>
In-Reply-To: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
References: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Jeff Layton <jlayton@kernel.org> Pass start and len
 to the rreq allocator. This should ensure that the fields are set so that
 init_rreq can use them. Also add a parameter to indicates the origin of the
 request. Ceph can use this to tell whether to get caps. 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nPPbg-000877-BB
Subject: [V9fs-developer] [PATCH 05/19] netfs: Refactor arguments for
 netfs_alloc_read_request
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Jeffle Xu <jefflexu@linux.alibaba.com>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeff Layton <jlayton@kernel.org>

Pass start and len to the rreq allocator. This should ensure that the
fields are set so that init_rreq can use them.

Also add a parameter to indicates the origin of the request.  Ceph can use
this to tell whether to get caps.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/netfs/read_helper.c |   25 ++++++++++++++++---------
 include/linux/netfs.h  |    7 +++++++
 2 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index a90b3fbcb93f..37125ed95d1a 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -36,8 +36,11 @@ static void netfs_put_subrequest(struct netfs_io_subrequest *subreq,
 		__netfs_put_subrequest(subreq, was_async);
 }
 
-static struct netfs_io_request *netfs_alloc_read_request(struct address_space *mapping,
-							   struct file *file)
+static struct netfs_io_request *netfs_alloc_read_request(
+	struct address_space *mapping,
+	struct file *file,
+	loff_t start, size_t len,
+	enum netfs_read_origin origin)
 {
 	static atomic_t debug_ids;
 	struct inode *inode = file ? file_inode(file) : mapping->host;
@@ -46,8 +49,11 @@ static struct netfs_io_request *netfs_alloc_read_request(struct address_space *m
 
 	rreq = kzalloc(sizeof(struct netfs_io_request), GFP_KERNEL);
 	if (rreq) {
+		rreq->start	= start;
+		rreq->len	= len;
 		rreq->mapping	= mapping;
 		rreq->inode	= inode;
+		rreq->origin	= origin;
 		rreq->netfs_ops	= ctx->ops;
 		rreq->i_size	= i_size_read(inode);
 		rreq->debug_id	= atomic_inc_return(&debug_ids);
@@ -874,11 +880,12 @@ void netfs_readahead(struct readahead_control *ractl)
 	if (readahead_count(ractl) == 0)
 		return;
 
-	rreq = netfs_alloc_read_request(ractl->mapping, ractl->file);
+	rreq = netfs_alloc_read_request(ractl->mapping, ractl->file,
+					readahead_pos(ractl),
+					readahead_length(ractl),
+					NETFS_READAHEAD);
 	if (!rreq)
 		return;
-	rreq->start	= readahead_pos(ractl);
-	rreq->len	= readahead_length(ractl);
 
 	if (ctx->ops->begin_cache_operation) {
 		ret = ctx->ops->begin_cache_operation(rreq);
@@ -941,11 +948,10 @@ int netfs_readpage(struct file *file, struct page *subpage)
 
 	_enter("%lx", folio_index(folio));
 
-	rreq = netfs_alloc_read_request(mapping, file);
+	rreq = netfs_alloc_read_request(mapping, file, folio_file_pos(folio),
+					folio_size(folio), NETFS_READPAGE);
 	if (!rreq)
 		goto nomem;
-	rreq->start	= folio_file_pos(folio);
-	rreq->len	= folio_size(folio);
 
 	if (ctx->ops->begin_cache_operation) {
 		ret = ctx->ops->begin_cache_operation(rreq);
@@ -1118,7 +1124,8 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	}
 
 	ret = -ENOMEM;
-	rreq = netfs_alloc_read_request(mapping, file);
+	rreq = netfs_alloc_read_request(mapping, file, folio_file_pos(folio),
+					folio_size(folio), NETFS_READ_FOR_WRITE);
 	if (!rreq)
 		goto error;
 	rreq->start		= folio_file_pos(folio);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 630b0400e9fa..a5434bc80e1c 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -158,6 +158,12 @@ struct netfs_io_subrequest {
 #define NETFS_SREQ_NO_PROGRESS		4	/* Set if we didn't manage to read any data */
 };
 
+enum netfs_read_origin {
+	NETFS_READAHEAD,		/* This read was triggered by readahead */
+	NETFS_READPAGE,			/* This read is a synchronous read */
+	NETFS_READ_FOR_WRITE,		/* This read is to prepare a write */
+} __mode(byte);
+
 /*
  * Descriptor for a read helper request.  This is used to make multiple I/O
  * requests on a variety of sources and then stitch the result together.
@@ -175,6 +181,7 @@ struct netfs_io_request {
 	size_t			submitted;	/* Amount submitted for I/O so far */
 	size_t			len;		/* Length of the request */
 	short			error;		/* 0 or error that occurred */
+	enum netfs_read_origin	origin;		/* Origin of the read */
 	loff_t			i_size;		/* Size of the file */
 	loff_t			start;		/* Start position */
 	pgoff_t			no_unlock_folio; /* Don't unlock this folio after read */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
