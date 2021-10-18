Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F10432118
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:58:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU6L-0003sY-JV; Mon, 18 Oct 2021 14:58:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU6K-0003sN-JV
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K5FTLf3BYt9yC5gnmuuFov8Yi7OVdM9eRPeEUyTv68E=; b=dSNSRH86yprwMVwH4oqX1k0aGr
 qHzI7LnsgUnMukN93/4J8tKA85reG+JP9Zq2d4BQRmvmXaFhEsRKfZyRTA1+5LKu8yZxx6OzmxE7T
 pzJBcOnrHvkp+yH71Ia98tKGFeeDGevvS/4hA4T/MrYeTsw/leBkbY5OltfwZOrSsEHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K5FTLf3BYt9yC5gnmuuFov8Yi7OVdM9eRPeEUyTv68E=; b=QFov/4Z/NQJmZ2MjydZP6UpWVO
 7m9Oblm7R28RKM1aQ4dkj9gtnxN48yhTiVXesLTLvOyzVS5maKVgkx9EHVpf7dWKnF+pRYYNNhQLP
 4+JQOy8JOYDrcdJec1c7gGi2tBBPmymUH5HbbMjSkPQV+RaZcf/tm7Uq/reOlGt3I2FQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU6J-004TP6-TD
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569130;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K5FTLf3BYt9yC5gnmuuFov8Yi7OVdM9eRPeEUyTv68E=;
 b=RQLwGGOJLiHu/mfSRqNWFym00YDLbJfmB9EI/T3Q/WRyG8Sd2IqPHZAxGnn9+202ozd6zk
 Wa8tb8Q4QTlKi4R6ZsJ4SWXR5ptcBSKDRlKdrPY4CyNCjQKDvDg7OdC5gFrFeWx8yZU1Di
 uWcKRDJ/V6W+a90l/dJSHyuiGsCdjJc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-j8jdinTONVS7GUILmqYu9Q-1; Mon, 18 Oct 2021 10:58:48 -0400
X-MC-Unique: j8jdinTONVS7GUILmqYu9Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E3E991278;
 Mon, 18 Oct 2021 14:58:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2B9076788F;
 Mon, 18 Oct 2021 14:58:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:58:04 +0100
Message-ID: <163456908429.2614702.18199815281243741948.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
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
 Content preview:  Round the size of a cachefile up to DIO block size so that
 we can always read back the last partial page of a file using direct I/O.
 Signed-off-by: David Howells <dhowells@redhat.com> --- fs/cachefiles/bind.c
 | 3 ++- fs/cachefiles/interface.c | 2 ++ fs/cachefiles/internal.h | 2 ++
 3 files changed, 6 insertions(+), 1 deletion(-) 
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
X-Headers-End: 1mcU6J-004TP6-TD
Subject: [V9fs-developer] [PATCH 30/67] cachefiles: Round the cachefile size
 up to DIO block size
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Round the size of a cachefile up to DIO block size so that we can always
read back the last partial page of a file using direct I/O.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/bind.c      |    3 ++-
 fs/cachefiles/interface.c |    2 ++
 fs/cachefiles/internal.h  |    2 ++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/fs/cachefiles/bind.c b/fs/cachefiles/bind.c
index af7386ad14af..4ea8c93e14d8 100644
--- a/fs/cachefiles/bind.c
+++ b/fs/cachefiles/bind.c
@@ -126,7 +126,8 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 	    !d_backing_inode(root)->i_op->mkdir ||
 	    !(d_backing_inode(root)->i_opflags & IOP_XATTR) ||
 	    !root->d_sb->s_op->statfs ||
-	    !root->d_sb->s_op->sync_fs)
+	    !root->d_sb->s_op->sync_fs ||
+	    root->d_sb->s_blocksize > PAGE_SIZE)
 		goto error_unsupported;
 
 	ret = -EROFS;
diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 8f98e5c27d66..3e678ab14c85 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -268,6 +268,7 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 	int ret;
 
 	ni_size = object->cookie->object_size;
+	ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 
 	_enter("{OBJ%x},[%llu]",
 	       object->debug_id, (unsigned long long) ni_size);
@@ -346,6 +347,7 @@ static void cachefiles_invalidate_object(struct cachefiles_object *object)
 				       cachefiles_trunc_invalidate);
 		ret = vfs_truncate(&file->f_path, 0);
 		if (ret == 0) {
+			ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 			trace_cachefiles_trunc(object, file_inode(file),
 					       0, ni_size,
 					       cachefiles_trunc_set_size);
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 4705f968e661..ff00c5249f4f 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -19,6 +19,8 @@
 #include <linux/workqueue.h>
 #include <linux/security.h>
 
+#define CACHEFILES_DIO_BLOCK_SIZE 4096
+
 struct cachefiles_cache;
 struct cachefiles_object;
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
