Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C4447DA8C
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:23:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AxO-0005HV-HJ; Wed, 22 Dec 2021 23:23:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AxN-0005HP-7v
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uSKsZp72odpgU6DOUB6pIZcgtcDea5qKi2+HKwhsdiU=; b=DaZ+AQ0eFEt/MAf6Rj9CBdUAB7
 iTs34ZIq9as/UG+xYlLKTxr04PV1aVxlL7XusNhxsKFAp7aXy8XuQPaVdqSoMosTnFJWarQ4xdtvG
 dqRP8ohPhgXrJM8LWh7HpCqLHt+zxDOhmx9YEQP9eppsOPgQBcHF/1w81q/sF0nhQz9U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uSKsZp72odpgU6DOUB6pIZcgtcDea5qKi2+HKwhsdiU=; b=i2sqkYOM5ASQ9I1sQ59OC7J0/h
 OZaSO7EJe8AYatS6y/5OCdVUDkWp4E0ESZXQRvkVMaTELDSYqW5jVtIRIhjkIoHq98iGAFvKL54lY
 RKPnxXuaDG0nZ4bkYGb/5aZckJWbBlGhinY8OTJOSQIOWX++SOpxNebHNblTJbwjtBms=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0AxL-006hsN-Uc
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uSKsZp72odpgU6DOUB6pIZcgtcDea5qKi2+HKwhsdiU=;
 b=i0iF+PeoFwv0I7d4c7C4X20W9TacNE3EHv2tXdFlhDQV1jY2JSOG6uidsxOiZVH5qGUksD
 De+WQCFkgHxT0t87IqyUpbYhAJp0wJPnzuah/czlF5VophxiWQhniH4DmksU6evvBVDslu
 eNEJdTgmnPo4o112td2ho6JQyQPgQ8k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584--tpzXJYsOWWKxmqBUR3hBw-1; Wed, 22 Dec 2021 18:23:29 -0500
X-MC-Unique: -tpzXJYsOWWKxmqBUR3hBw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 026EA2F45;
 Wed, 22 Dec 2021 23:23:27 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 677E610911BA;
 Wed, 22 Dec 2021 23:23:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:23:19 +0000
Message-ID: <164021539957.640689.12477177372616805706.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Provide a function to check how much space there is. This
 also flips the state on the cache and will signal the daemon to inform it
 of the change and to ask it to do some culling if necessary. We will also
 need to subtract the amount of data currently being written to the cache
 (cache->b_writing)
 from the amount of available space to avoid hitting ENOSPC accidentally. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1n0AxL-006hsN-Uc
Subject: [V9fs-developer] [PATCH v4 37/68] cachefiles: Provide a function to
 check how much space there is
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

Provide a function to check how much space there is.  This also flips the
state on the cache and will signal the daemon to inform it of the change
and to ask it to do some culling if necessary.

We will also need to subtract the amount of data currently being written to
the cache (cache->b_writing) from the amount of available space to avoid
hitting ENOSPC accidentally.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819629322.215744.13457425294680841213.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906930100.143852.1681026700865762069.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967140058.1823006.7781243664702837128.stgit@warthog.procyon.org.uk/ # v3
---

 fs/cachefiles/Makefile   |    1 
 fs/cachefiles/cache.c    |  103 ++++++++++++++++++++++++++++++++++++++++++++++
 fs/cachefiles/daemon.c   |    2 -
 fs/cachefiles/internal.h |    7 +++
 4 files changed, 112 insertions(+), 1 deletion(-)
 create mode 100644 fs/cachefiles/cache.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index f008524bb78f..463e3d608b75 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -4,6 +4,7 @@
 #
 
 cachefiles-y := \
+	cache.o \
 	daemon.o \
 	main.o \
 	security.o
diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
new file mode 100644
index 000000000000..73636f89eefa
--- /dev/null
+++ b/fs/cachefiles/cache.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Manage high-level VFS aspects of a cache.
+ *
+ * Copyright (C) 2007, 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/slab.h>
+#include <linux/statfs.h>
+#include <linux/namei.h>
+#include "internal.h"
+
+/*
+ * See if we have space for a number of pages and/or a number of files in the
+ * cache
+ */
+int cachefiles_has_space(struct cachefiles_cache *cache,
+			 unsigned fnr, unsigned bnr)
+{
+	struct kstatfs stats;
+	u64 b_avail, b_writing;
+	int ret;
+
+	struct path path = {
+		.mnt	= cache->mnt,
+		.dentry	= cache->mnt->mnt_root,
+	};
+
+	//_enter("{%llu,%llu,%llu,%llu,%llu,%llu},%u,%u",
+	//       (unsigned long long) cache->frun,
+	//       (unsigned long long) cache->fcull,
+	//       (unsigned long long) cache->fstop,
+	//       (unsigned long long) cache->brun,
+	//       (unsigned long long) cache->bcull,
+	//       (unsigned long long) cache->bstop,
+	//       fnr, bnr);
+
+	/* find out how many pages of blockdev are available */
+	memset(&stats, 0, sizeof(stats));
+
+	ret = vfs_statfs(&path, &stats);
+	if (ret < 0) {
+		trace_cachefiles_vfs_error(NULL, d_inode(path.dentry), ret,
+					   cachefiles_trace_statfs_error);
+		if (ret == -EIO)
+			cachefiles_io_error(cache, "statfs failed");
+		_leave(" = %d", ret);
+		return ret;
+	}
+
+	b_avail = stats.f_bavail >> cache->bshift;
+	b_writing = atomic_long_read(&cache->b_writing);
+	if (b_avail > b_writing)
+		b_avail -= b_writing;
+	else
+		b_avail = 0;
+
+	//_debug("avail %llu,%llu",
+	//       (unsigned long long)stats.f_ffree,
+	//       (unsigned long long)b_avail);
+
+	/* see if there is sufficient space */
+	if (stats.f_ffree > fnr)
+		stats.f_ffree -= fnr;
+	else
+		stats.f_ffree = 0;
+
+	if (b_avail > bnr)
+		b_avail -= bnr;
+	else
+		b_avail = 0;
+
+	ret = -ENOBUFS;
+	if (stats.f_ffree < cache->fstop ||
+	    b_avail < cache->bstop)
+		goto begin_cull;
+
+	ret = 0;
+	if (stats.f_ffree < cache->fcull ||
+	    b_avail < cache->bcull)
+		goto begin_cull;
+
+	if (test_bit(CACHEFILES_CULLING, &cache->flags) &&
+	    stats.f_ffree >= cache->frun &&
+	    b_avail >= cache->brun &&
+	    test_and_clear_bit(CACHEFILES_CULLING, &cache->flags)
+	    ) {
+		_debug("cease culling");
+		cachefiles_state_changed(cache);
+	}
+
+	//_leave(" = 0");
+	return 0;
+
+begin_cull:
+	if (!test_and_set_bit(CACHEFILES_CULLING, &cache->flags)) {
+		_debug("### CULL CACHE ###");
+		cachefiles_state_changed(cache);
+	}
+
+	_leave(" = %d", ret);
+	return ret;
+}
diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
index 4cfb7c8b37d0..7d4691614cec 100644
--- a/fs/cachefiles/daemon.c
+++ b/fs/cachefiles/daemon.c
@@ -167,7 +167,7 @@ static ssize_t cachefiles_daemon_read(struct file *file, char __user *_buffer,
 		return 0;
 
 	/* check how much space the cache has */
-	// PLACEHOLDER: Check space
+	cachefiles_has_space(cache, 0, 0);
 
 	/* summarise */
 	f_released = atomic_xchg(&cache->f_released, 0);
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 7fd5429715ea..3783a3e01027 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -39,6 +39,7 @@ struct cachefiles_cache {
 	atomic_t			gravecounter;	/* graveyard uniquifier */
 	atomic_t			f_released;	/* number of objects released lately */
 	atomic_long_t			b_released;	/* number of blocks released lately */
+	atomic_long_t			b_writing;	/* Number of blocks being written */
 	unsigned			frun_percent;	/* when to stop culling (% files) */
 	unsigned			fcull_percent;	/* when to start culling (% files) */
 	unsigned			fstop_percent;	/* when to stop allocating (% files) */
@@ -74,6 +75,12 @@ static inline void cachefiles_state_changed(struct cachefiles_cache *cache)
 	wake_up_all(&cache->daemon_pollwq);
 }
 
+/*
+ * cache.c
+ */
+extern int cachefiles_has_space(struct cachefiles_cache *cache,
+				unsigned fnr, unsigned bnr);
+
 /*
  * daemon.c
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
