Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E60324D4E87
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 17:19:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSLVr-0002ru-Sy; Thu, 10 Mar 2022 16:19:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nSLVq-0002rR-8e
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hj8bAINGHaG2GF71IxEolwOwG7LzctTbX0iZeo0PTB4=; b=cAJ/tPvVdzh3B+HZS/dmYrCWsN
 IrLKYn//dlVROgjp7wZViYtmhaVLp1tSHFz+MXGLbKNsoP4zTQczSXvv87ljqWwrk2yD5Lyx5qO6r
 YY2BXy/ywAwjC31kUTTcQ3t0qDAKEI87DqKFSQ0doVZoAp8fAnhV4d4kBhiawLq5M5KI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hj8bAINGHaG2GF71IxEolwOwG7LzctTbX0iZeo0PTB4=; b=Nk6nHlX5QT29vlQU5plAWYNGVW
 ODSG3OFDe4ZuBTWAQm1YufrsKyvr25dyGFV+oT51i7dvDeHhKrdQoO4u3XhV0JjudqCYrtSKiJmV2
 5MjbTpN2SvMRnrnZ2Ko8x7/X/fgDGs4GP6Z/NaTW3bL3MJzlEUJGdwhCS+Qz+LfCQnIg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSLVn-000624-Qs
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646929169;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hj8bAINGHaG2GF71IxEolwOwG7LzctTbX0iZeo0PTB4=;
 b=WL0jbdLGFGTvkDbQwfsmOndAYtcxP3shuxU0JlwKzqDRinFrDKtnaXlzGpfzMaulh3ks1r
 h4iJsgARmfGYlDBtZNof2L3purLo9WdvJA+cNQPVF/NEX9R2Qws9Twke/WMLT6Vu2wkxQG
 gBsyvgqSGapJNDTdVK7IIbw+/Zw9ccs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-36-yZLQgkHPNIaYe5MYKaT8UA-1; Thu, 10 Mar 2022 11:19:15 -0500
X-MC-Unique: yZLQgkHPNIaYe5MYKaT8UA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF33D51E6;
 Thu, 10 Mar 2022 16:17:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 814D3106F979;
 Thu, 10 Mar 2022 16:17:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 16:17:34 +0000
Message-ID: <164692905398.2099075.5238033621684646524.stgit@warthog.procyon.org.uk>
In-Reply-To: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Change the request initialisation function to return an error
 code so that the network filesystem can return a failure (ENOMEM, for example).
 This will also allow ceph to abort a ->readahead() op if the server refuses
 to give it a cap allowing local caching from within the netfslib framework
 (errors aren't passed back through ->readahead(), [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1nSLVn-000624-Qs
Subject: [V9fs-developer] [PATCH v3 11/20] netfs: Change ->init_request() to
 return an error code
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

Change the request initialisation function to return an error code so that
the network filesystem can return a failure (ENOMEM, for example).

This will also allow ceph to abort a ->readahead() op if the server refuses
to give it a cap allowing local caching from within the netfslib framework
(errors aren't passed back through ->readahead(), so returning, say,
-ENOBUFS will cause the op to be aborted).

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/164678212401.1200972.16537041523832944934.stgit@warthog.procyon.org.uk/ # v2
---

 fs/9p/vfs_addr.c       |    3 ++-
 fs/afs/file.c          |    3 ++-
 fs/netfs/objects.c     |   41 ++++++++++++++++++++++++-----------------
 fs/netfs/read_helper.c |   20 ++++++++++++--------
 include/linux/netfs.h  |    2 +-
 5 files changed, 41 insertions(+), 28 deletions(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index fdc1033a1546..91d3926c9559 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -56,12 +56,13 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
  * @rreq: The read request
  * @file: The file being read from
  */
-static void v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
+static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
 {
 	struct p9_fid *fid = file->private_data;
 
 	refcount_inc(&fid->count);
 	rreq->netfs_priv = fid;
+	return 0;
 }
 
 /**
diff --git a/fs/afs/file.c b/fs/afs/file.c
index b19d635eed12..6469d7f98ef5 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -359,9 +359,10 @@ static int afs_symlink_readpage(struct file *file, struct page *page)
 	return ret;
 }
 
-static void afs_init_request(struct netfs_io_request *rreq, struct file *file)
+static int afs_init_request(struct netfs_io_request *rreq, struct file *file)
 {
 	rreq->netfs_priv = key_get(afs_file_key(file));
+	return 0;
 }
 
 static bool afs_is_cache_enabled(struct inode *inode)
diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
index 986d7a9d25dd..ae18827e156b 100644
--- a/fs/netfs/objects.c
+++ b/fs/netfs/objects.c
@@ -20,27 +20,34 @@ struct netfs_io_request *netfs_alloc_request(struct address_space *mapping,
 {
 	static atomic_t debug_ids;
 	struct netfs_io_request *rreq;
+	int ret;
 
 	rreq = kzalloc(sizeof(struct netfs_io_request), GFP_KERNEL);
-	if (rreq) {
-		rreq->start	= start;
-		rreq->len	= len;
-		rreq->origin	= origin;
-		rreq->netfs_ops	= ops;
-		rreq->netfs_priv = netfs_priv;
-		rreq->mapping	= mapping;
-		rreq->inode	= file_inode(file);
-		rreq->i_size	= i_size_read(rreq->inode);
-		rreq->debug_id	= atomic_inc_return(&debug_ids);
-		INIT_LIST_HEAD(&rreq->subrequests);
-		INIT_WORK(&rreq->work, netfs_rreq_work);
-		refcount_set(&rreq->ref, 1);
-		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
-		if (ops->init_request)
-			ops->init_request(rreq, file);
-		netfs_stat(&netfs_n_rh_rreq);
+	if (!rreq)
+		return ERR_PTR(-ENOMEM);
+
+	rreq->start	= start;
+	rreq->len	= len;
+	rreq->origin	= origin;
+	rreq->netfs_ops	= ops;
+	rreq->netfs_priv = netfs_priv;
+	rreq->mapping	= mapping;
+	rreq->inode	= file_inode(file);
+	rreq->i_size	= i_size_read(rreq->inode);
+	rreq->debug_id	= atomic_inc_return(&debug_ids);
+	INIT_LIST_HEAD(&rreq->subrequests);
+	INIT_WORK(&rreq->work, netfs_rreq_work);
+	refcount_set(&rreq->ref, 1);
+	__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
+	if (rreq->netfs_ops->init_request) {
+		ret = rreq->netfs_ops->init_request(rreq, file);
+		if (ret < 0) {
+			kfree(rreq);
+			return ERR_PTR(ret);
+		}
 	}
 
+	netfs_stat(&netfs_n_rh_rreq);
 	return rreq;
 }
 
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index dea085715286..b5176f4320f4 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -768,7 +768,7 @@ void netfs_readahead(struct readahead_control *ractl,
 				   readahead_pos(ractl),
 				   readahead_length(ractl),
 				   NETFS_READAHEAD);
-	if (!rreq)
+	if (IS_ERR(rreq))
 		goto cleanup;
 
 	if (ops->begin_cache_operation) {
@@ -842,11 +842,9 @@ int netfs_readpage(struct file *file,
 	rreq = netfs_alloc_request(folio->mapping, file, ops, netfs_priv,
 				   folio_file_pos(folio), folio_size(folio),
 				   NETFS_READPAGE);
-	if (!rreq) {
-		if (netfs_priv)
-			ops->cleanup(folio_file_mapping(folio), netfs_priv);
-		folio_unlock(folio);
-		return -ENOMEM;
+	if (IS_ERR(rreq)) {
+		ret = PTR_ERR(rreq);
+		goto alloc_error;
 	}
 
 	if (ops->begin_cache_operation) {
@@ -887,6 +885,11 @@ int netfs_readpage(struct file *file,
 out:
 	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
 	return ret;
+alloc_error:
+	if (netfs_priv)
+		ops->cleanup(folio_file_mapping(folio), netfs_priv);
+	folio_unlock(folio);
+	return ret;
 }
 EXPORT_SYMBOL(netfs_readpage);
 
@@ -1007,12 +1010,13 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 		goto have_folio_no_wait;
 	}
 
-	ret = -ENOMEM;
 	rreq = netfs_alloc_request(mapping, file, ops, netfs_priv,
 				   folio_file_pos(folio), folio_size(folio),
 				   NETFS_READ_FOR_WRITE);
-	if (!rreq)
+	if (IS_ERR(rreq)) {
+		ret = PTR_ERR(rreq);
 		goto error;
+	}
 	rreq->no_unlock_folio	= folio_index(folio);
 	__set_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags);
 	netfs_priv = NULL;
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 7dc741d9b21b..4b99e38f73d9 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -193,7 +193,7 @@ struct netfs_io_request {
  */
 struct netfs_request_ops {
 	bool (*is_cache_enabled)(struct inode *inode);
-	void (*init_request)(struct netfs_io_request *rreq, struct file *file);
+	int (*init_request)(struct netfs_io_request *rreq, struct file *file);
 	int (*begin_cache_operation)(struct netfs_io_request *rreq);
 	void (*expand_readahead)(struct netfs_io_request *rreq);
 	bool (*clamp_length)(struct netfs_io_subrequest *subreq);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
