Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD714D24CA
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:25:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjCx-0004G2-4k; Tue, 08 Mar 2022 23:25:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjCv-0004Fv-Ne
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KBFHdKKHoDjr1TUu4BsB9HH3Wp0sMYIusKKTd5TPCQ0=; b=hWGrIhezMArMoc8fD3xbRr3zBJ
 9uQzlxra1DZcI5/LWm58AH2nqn3qrwmU3pc6NoGA26mwKMXNgOQxTvFkmbCPqhVyJP0h4Z0IfMFf4
 mnqBu6Sm+Mv5Iz2iAPpqQblJcXluUqC6/ryuvFrkv6nMz7CgJT4iwQ3+f0JWoHr/hfDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KBFHdKKHoDjr1TUu4BsB9HH3Wp0sMYIusKKTd5TPCQ0=; b=lLMpttdr7NKcx/HaUk04XkD4PS
 80d5p5KncpHVkAjb4VYVTj2HKsIIjYGFRxDEj+jBsRX7BcRoPLwlV+1MezUd6z7rBVsangL9xM159
 xJtfqvkzs18z0lVtGnlkoHULTU4yO9vRLPNqa2L0eyqeyoml6d33ped5N21gTMqahynQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjCt-0097C3-0P
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646781924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KBFHdKKHoDjr1TUu4BsB9HH3Wp0sMYIusKKTd5TPCQ0=;
 b=GCwUMTsajEFEFS0GZvqAuRujGFMUpUH+oMn9fvDLsPsqgcw/rnxGYjPpd6G7jMWDMiPKHI
 PRF1FuiaUImZJjZ4+U+lCq0X8/W+sf8qtr6U88Tfv43QHIP5MYJZn56qn5Aj4FPO1Nd4b8
 jBRr6W6M2eWGd+D4AyBxUk2l+X6dvx0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-658-a1TV6opdOWGPrxazKtqIXg-1; Tue, 08 Mar 2022 18:25:21 -0500
X-MC-Unique: a1TV6opdOWGPrxazKtqIXg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 746CC801AFE;
 Tue,  8 Mar 2022 23:25:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5A1021006910;
 Tue,  8 Mar 2022 23:25:04 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:25:03 +0000
Message-ID: <164678190346.1200972.7453733431978569479.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
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
 Content preview: From: Jeffle Xu <jefflexu@linux.alibaba.com> Export
 fscache_end_operation() to avoid code duplication. Besides,
 considering the paired fscache_begin_read_operation()
 is already exported,
 it shall make sense to also export fscache_end_operation().
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
X-Headers-End: 1nRjCt-0097C3-0P
Subject: [V9fs-developer] [PATCH v2 01/19] fscache: export
 fscache_end_operation()
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeffle Xu <jefflexu@linux.alibaba.com>

Export fscache_end_operation() to avoid code duplication.

Besides, considering the paired fscache_begin_read_operation() is
already exported, it shall make sense to also export
fscache_end_operation().

Signed-off-by: Jeffle Xu <jefflexu@linux.alibaba.com>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/20220302125134.131039-2-jefflexu@linux.alibaba.com/ # Jeffle's v4
Link: https://lore.kernel.org/r/164622971432.3564931.12184135678781328146.stgit@warthog.procyon.org.uk/ # v1
---

 fs/cifs/fscache.c       |    8 --------
 fs/fscache/internal.h   |   11 -----------
 fs/nfs/fscache.c        |    8 --------
 include/linux/fscache.h |   14 ++++++++++++++
 4 files changed, 14 insertions(+), 27 deletions(-)

diff --git a/fs/cifs/fscache.c b/fs/cifs/fscache.c
index 33af72e0ac0c..b47c2011ce5b 100644
--- a/fs/cifs/fscache.c
+++ b/fs/cifs/fscache.c
@@ -134,14 +134,6 @@ void cifs_fscache_release_inode_cookie(struct inode *inode)
 	}
 }
 
-static inline void fscache_end_operation(struct netfs_cache_resources *cres)
-{
-	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
-
-	if (ops)
-		ops->end_operation(cres);
-}
-
 /*
  * Fallback page reading interface.
  */
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index f121c21590dc..ed1c9ed737f2 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -70,17 +70,6 @@ static inline void fscache_see_cookie(struct fscache_cookie *cookie,
 			     where);
 }
 
-/*
- * io.c
- */
-static inline void fscache_end_operation(struct netfs_cache_resources *cres)
-{
-	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
-
-	if (ops)
-		ops->end_operation(cres);
-}
-
 /*
  * main.c
  */
diff --git a/fs/nfs/fscache.c b/fs/nfs/fscache.c
index cfe901650ab0..39654ca72d3d 100644
--- a/fs/nfs/fscache.c
+++ b/fs/nfs/fscache.c
@@ -249,14 +249,6 @@ void nfs_fscache_release_file(struct inode *inode, struct file *filp)
 	}
 }
 
-static inline void fscache_end_operation(struct netfs_cache_resources *cres)
-{
-	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
-
-	if (ops)
-		ops->end_operation(cres);
-}
-
 /*
  * Fallback page reading interface.
  */
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 296c5f1d9f35..d2430da8aa67 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -456,6 +456,20 @@ int fscache_begin_read_operation(struct netfs_cache_resources *cres,
 	return -ENOBUFS;
 }
 
+/**
+ * fscache_end_operation - End the read operation for the netfs lib
+ * @cres: The cache resources for the read operation
+ *
+ * Clean up the resources at the end of the read request.
+ */
+static inline void fscache_end_operation(struct netfs_cache_resources *cres)
+{
+	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
+
+	if (ops)
+		ops->end_operation(cres);
+}
+
 /**
  * fscache_read - Start a read from the cache.
  * @cres: The cache resources to use




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
