Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B69472BADBA
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:22:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8Ek-0005w0-GY; Fri, 20 Nov 2020 15:22:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg86d-0004DK-JG
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:13:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1hpLkd3e1GFxX5HiVLrld/21xrzQQ6riD4cN3B8XnlM=; b=LlUTa/2ehEl2eSa72nCX9jVCfv
 86dzDtP49C5vZtBAKkqZxgtkXu2hLOwL1+6++OC+jpg/G3vUHzvdyZvoaupLDmUgV0VLRuKZ0/ybk
 thKckpJW7iKu7iMCbrDvDIQU7wyaEeU6sCYEEP0qz6HDI2A3qm195siUI8iHM0edYHZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1hpLkd3e1GFxX5HiVLrld/21xrzQQ6riD4cN3B8XnlM=; b=XQ3XT1tYYsv/mEvwFHWOIedjln
 qhsPdJOURqqidtjR5dkEVJfhtTgtTlJDQb61Vfmtqs5MFiwxGyXzxMavU67u2BoKKPX+eOMTm+KUi
 Wrc1jBz/opiIdz6s/IpZn3aWgUgCVyicFs9oFoM8/fMekSJvLSEEW5VQbPdVQBhadQwI=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg86W-003Bsd-10
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:13:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885206;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1hpLkd3e1GFxX5HiVLrld/21xrzQQ6riD4cN3B8XnlM=;
 b=QkezMBsW39XIICxmZ/eaW5LIpCSHqURFQORkHuSf5QDOKH6p9O6diKyJHvvjRa7wKQUij0
 I8cmiI5fNLT6WBrJJ3n/eLyktYGmvJZhC4DsVNffjaaKpUmd6Ep8aIKqxO5lc/WNc1vrZD
 yq1A4MronmfIm0xcW9wDGbYUqetWtlM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-kepO-NyjMsm7F9O0tQxt9Q-1; Fri, 20 Nov 2020 10:13:24 -0500
X-MC-Unique: kepO-NyjMsm7F9O0tQxt9Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A576D1868408;
 Fri, 20 Nov 2020 15:13:22 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BDBFF6064B;
 Fri, 20 Nov 2020 15:13:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:13:15 +0000
Message-ID: <160588519591.3465195.13700401271599881928.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg86W-003Bsd-10
Subject: [V9fs-developer] [RFC PATCH 50/76] fscache: New stats
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

Create some new stat counters appropriate to the reworked code.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c            |    2 ++
 fs/fscache/Kconfig            |    1 +
 fs/fscache/dispatcher.c       |    6 ++++++
 fs/fscache/internal.h         |    8 ++++++--
 fs/fscache/stats.c            |   27 ++++++++++++++++++++++++---
 include/linux/fscache-cache.h |   10 ++++++++++
 6 files changed, 49 insertions(+), 5 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index c9866bd5e010..1060c1c57008 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -84,6 +84,7 @@ int cachefiles_read(struct fscache_op_resources *opr,
 
 	__fscache_wait_for_operation(opr, FSCACHE_WANT_READ);
 	fscache_count_io_operation(opr->object->cookie);
+	fscache_count_read();
 
 	/* If the caller asked us to seek for data before doing the read, then
 	 * we should do that now.  If we find a gap, we fill it with zeros.
@@ -233,6 +234,7 @@ int cachefiles_write(struct fscache_op_resources *opr,
 
 	__fscache_wait_for_operation(opr, FSCACHE_WANT_WRITE);
 	fscache_count_io_operation(opr->object->cookie);
+	fscache_count_write();
 
 	ki = kzalloc(sizeof(struct cachefiles_kiocb), GFP_KERNEL);
 	if (!ki)
diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
index b04f07160e5e..fe7f856a4037 100644
--- a/fs/fscache/Kconfig
+++ b/fs/fscache/Kconfig
@@ -14,6 +14,7 @@ config FSCACHE
 config FSCACHE_STATS
 	bool "Gather statistical information on local caching"
 	depends on FSCACHE && PROC_FS
+	select NETFS_STATS
 	help
 	  This option causes statistical information to be gathered on local
 	  caching and exported through file:
diff --git a/fs/fscache/dispatcher.c b/fs/fscache/dispatcher.c
index 3d957e499da3..2663bd4b36e8 100644
--- a/fs/fscache/dispatcher.c
+++ b/fs/fscache/dispatcher.c
@@ -41,6 +41,8 @@ void fscache_dispatch(struct fscache_cookie *cookie,
 	struct fscache_work *work;
 	bool queued = false;
 
+	fscache_stat(&fscache_n_dispatch_count);
+
 	work = kzalloc(sizeof(struct fscache_work), GFP_KERNEL);
 	if (work) {
 		work->cookie = cookie;
@@ -57,10 +59,13 @@ void fscache_dispatch(struct fscache_cookie *cookie,
 			queued = true;
 		}
 		spin_unlock(&fscache_work_lock);
+		if (queued)
+			fscache_stat(&fscache_n_dispatch_deferred);
 	}
 
 	if (!queued) {
 		kfree(work);
+		fscache_stat(&fscache_n_dispatch_inline);
 		func(cookie, object, param);
 	}
 }
@@ -86,6 +91,7 @@ static int fscache_dispatcher(void *data)
 
 			if (work) {
 				work->func(work->cookie, work->object, work->param);
+				fscache_stat(&fscache_n_dispatch_in_pool);
 				fscache_cookie_put(work->cookie, fscache_cookie_put_work);
 				kfree(work);
 			}
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 1721823b8cac..73568e84fe3d 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -221,6 +221,11 @@ extern atomic_t fscache_n_cache_stale_objects;
 extern atomic_t fscache_n_cache_retired_objects;
 extern atomic_t fscache_n_cache_culled_objects;
 
+extern atomic_t fscache_n_dispatch_count;
+extern atomic_t fscache_n_dispatch_deferred;
+extern atomic_t fscache_n_dispatch_inline;
+extern atomic_t fscache_n_dispatch_in_pool;
+
 static inline void fscache_stat(atomic_t *stat)
 {
 	atomic_inc(stat);
@@ -233,10 +238,9 @@ static inline void fscache_stat_d(atomic_t *stat)
 
 #define __fscache_stat(stat) (stat)
 
-int fscache_stats_show(struct seq_file *m, void *v);
 extern int __init fscache_proc_stats_init(void);
-#else
 
+#else
 #define __fscache_stat(stat) (NULL)
 #define fscache_stat(stat) do {} while (0)
 #define fscache_stat_d(stat) do {} while (0)
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index bf2935571de5..952214305853 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -6,9 +6,9 @@
  */
 
 #define FSCACHE_DEBUG_LEVEL CACHE
-#include <linux/module.h>
 #include <linux/proc_fs.h>
 #include <linux/seq_file.h>
+#include <linux/netfs.h>
 #include "internal.h"
 
 /*
@@ -56,13 +56,22 @@ atomic_t fscache_n_cache_stale_objects;
 atomic_t fscache_n_cache_retired_objects;
 atomic_t fscache_n_cache_culled_objects;
 
+atomic_t fscache_n_dispatch_count;
+atomic_t fscache_n_dispatch_deferred;
+atomic_t fscache_n_dispatch_inline;
+atomic_t fscache_n_dispatch_in_pool;
+
+atomic_t fscache_n_read;
+EXPORT_SYMBOL(fscache_n_read);
+atomic_t fscache_n_write;
+EXPORT_SYMBOL(fscache_n_write);
+
 /*
  * display the general statistics
  */
-int fscache_stats_show(struct seq_file *m, void *v)
+static int fscache_stats_show(struct seq_file *m, void *v)
 {
 	seq_puts(m, "FS-Cache statistics\n");
-
 	seq_printf(m, "Cookies: idx=%u dat=%u spc=%u\n",
 		   atomic_read(&fscache_n_cookie_index),
 		   atomic_read(&fscache_n_cookie_data),
@@ -113,6 +122,18 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_cache_stale_objects),
 		   atomic_read(&fscache_n_cache_retired_objects),
 		   atomic_read(&fscache_n_cache_culled_objects));
+
+	seq_printf(m, "Disp   : n=%u il=%u df=%u pl=%u\n",
+		   atomic_read(&fscache_n_dispatch_count),
+		   atomic_read(&fscache_n_dispatch_inline),
+		   atomic_read(&fscache_n_dispatch_deferred),
+		   atomic_read(&fscache_n_dispatch_in_pool));
+
+	seq_printf(m, "IO     : rd=%u wr=%u\n",
+		   atomic_read(&fscache_n_read),
+		   atomic_read(&fscache_n_write));
+
+	netfs_stats_show(m);
 	return 0;
 }
 
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 54625464a109..dacfda1d3c20 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -259,4 +259,14 @@ static inline void fscache_uncount_io_operation(struct fscache_cookie *cookie)
 extern void __fscache_wait_for_operation(struct fscache_op_resources *, enum fscache_want_stage);
 extern void __fscache_end_operation(struct fscache_op_resources *);
 
+#ifdef CONFIG_FSCACHE_STATS
+extern atomic_t fscache_n_read;
+extern atomic_t fscache_n_write;
+#define fscache_count_read() atomic_inc(&fscache_n_read)
+#define fscache_count_write() atomic_inc(&fscache_n_write)
+#else
+#define fscache_count_read() do {} while(0)
+#define fscache_count_write() do {} while(0)
+#endif
+
 #endif /* _LINUX_FSCACHE_CACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
