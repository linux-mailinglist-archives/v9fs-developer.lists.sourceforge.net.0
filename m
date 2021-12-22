Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ACB47DA30
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:20:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AuD-0002US-7e; Wed, 22 Dec 2021 23:20:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AuC-0002UM-FW
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eep+ryAWNVucKzGZ6E2+0I0TQMScoqdyCSE2KdzIxJM=; b=YcbNeewvIgx2H2tn9OO9Zzo9mE
 FO7oY/XpYfTQmmHq28nyhk1zChmhNWR1h8rSFhtdq+VR1qgrEplcP1yFXsjeoQZmR0qIPI58a6nul
 h7tXjnpRxB+spKwUn+JM5jhmGVfTQJzwC3C0DRZBfOuug3/QTBeywQrUPFbgGdbYGa8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Eep+ryAWNVucKzGZ6E2+0I0TQMScoqdyCSE2KdzIxJM=; b=HUb1SbzX34HiV5tSvuScCCOxJJ
 l52SY3fk8hRlpfR20dmy9u5hodoNq70JeBtf4JWn/yrkPAK3rBu9LYsKgXzIWBPD4c/VqoZvQjyOG
 y5dQq1xZVkQ5j4BlHjnWvkBeMUZyGRFn100qmfg9mJTfVL83CuCfVHiFqyZZ7mw2sQU0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0AuC-006hXn-K2
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eep+ryAWNVucKzGZ6E2+0I0TQMScoqdyCSE2KdzIxJM=;
 b=P71PshSGvfahctfxQ3/GJ9k9PST833p8XBJCXVY+kyoO1ZtAGW2pp3/NUiu1M43hc3Z9Bd
 4Cli2Y5k/RgXCDIv7LvBUtY0GaUGeOaFa3o2tFSDrVBVICRH2OUCD+zrH2V6wve2f+Ef36
 EdCQBo+4Fec21BFf6vyNvm2hNEDuLSA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-403-Iux-TXzEPpWwhGqoA1SzVA-1; Wed, 22 Dec 2021 18:20:11 -0500
X-MC-Unique: Iux-TXzEPpWwhGqoA1SzVA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEDC91006AA4;
 Wed, 22 Dec 2021 23:20:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E4662B5AC;
 Wed, 22 Dec 2021 23:19:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:19:57 +0000
Message-ID: <164021519762.640689.16994364383313159319.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview: Pass more information to the cache on how to deal with a hole
 if it encounters one when trying to read from the cache. Three options are
 provided: (1) NETFS_READ_HOLE_IGNORE. Read the hole along with the data,
 assuming it to be a punched-out extent by the backing filesystem. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0AuC-006hXn-K2
Subject: [V9fs-developer] [PATCH v4 24/68] netfs: Pass more information on
 how to deal with a hole in the cache
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

Pass more information to the cache on how to deal with a hole if it
encounters one when trying to read from the cache.  Three options are
provided:

 (1) NETFS_READ_HOLE_IGNORE.  Read the hole along with the data, assuming
     it to be a punched-out extent by the backing filesystem.

 (2) NETFS_READ_HOLE_CLEAR.  If there's a hole, erase the requested region
     of the cache and clear the read buffer.

 (3) NETFS_READ_HOLE_FAIL.  Fail the read if a hole is detected.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819612321.215744.9738308885948264476.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906914460.143852.6284247083607910189.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967119923.1823006.15637375885194297582.stgit@warthog.procyon.org.uk/ # v3
---

 fs/netfs/read_helper.c |    8 ++++----
 include/linux/netfs.h  |   11 ++++++++++-
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 9dd76b8914f2..6169659857b3 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -170,7 +170,7 @@ static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error
  */
 static void netfs_read_from_cache(struct netfs_read_request *rreq,
 				  struct netfs_read_subrequest *subreq,
-				  bool seek_data)
+				  enum netfs_read_from_hole read_hole)
 {
 	struct netfs_cache_resources *cres = &rreq->cache_resources;
 	struct iov_iter iter;
@@ -180,7 +180,7 @@ static void netfs_read_from_cache(struct netfs_read_request *rreq,
 			subreq->start + subreq->transferred,
 			subreq->len   - subreq->transferred);
 
-	cres->ops->read(cres, subreq->start, &iter, seek_data,
+	cres->ops->read(cres, subreq->start, &iter, read_hole,
 			netfs_cache_read_terminated, subreq);
 }
 
@@ -461,7 +461,7 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
 	netfs_get_read_subrequest(subreq);
 	atomic_inc(&rreq->nr_rd_ops);
 	if (subreq->source == NETFS_READ_FROM_CACHE)
-		netfs_read_from_cache(rreq, subreq, true);
+		netfs_read_from_cache(rreq, subreq, NETFS_READ_HOLE_CLEAR);
 	else
 		netfs_read_from_server(rreq, subreq);
 }
@@ -789,7 +789,7 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
 		netfs_read_from_server(rreq, subreq);
 		break;
 	case NETFS_READ_FROM_CACHE:
-		netfs_read_from_cache(rreq, subreq, false);
+		netfs_read_from_cache(rreq, subreq, NETFS_READ_HOLE_IGNORE);
 		break;
 	default:
 		BUG();
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 5a46fde65759..b46c39d98bbd 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -196,6 +196,15 @@ struct netfs_read_request_ops {
 	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
 };
 
+/*
+ * How to handle reading from a hole.
+ */
+enum netfs_read_from_hole {
+	NETFS_READ_HOLE_IGNORE,
+	NETFS_READ_HOLE_CLEAR,
+	NETFS_READ_HOLE_FAIL,
+};
+
 /*
  * Table of operations for access to a cache.  This is obtained by
  * rreq->ops->begin_cache_operation().
@@ -208,7 +217,7 @@ struct netfs_cache_ops {
 	int (*read)(struct netfs_cache_resources *cres,
 		    loff_t start_pos,
 		    struct iov_iter *iter,
-		    bool seek_data,
+		    enum netfs_read_from_hole read_hole,
 		    netfs_io_terminated_t term_func,
 		    void *term_func_priv);
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
