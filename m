Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E74C2437DE8
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:08:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzu7-0004Cg-Ks; Fri, 22 Oct 2021 19:08:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzu5-0004CQ-Nl
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:08:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x0vMs89lbKIvv77HDWLfkiKl93g6M7RmmJVwa+wH8Ww=; b=DntoeZ1YBTaZaKTJ+kLx2tUY2b
 aucvNcmY1TSDetBO9r8tQ5a+0tULIJomhUguMHcr7ThXISWYsjgWbqx4Hbi907ATAIipv4M5DsMXz
 aZS8ERr61qEv3gmivmJm03NPnAcwkSkhggQaYRxnIGHKLcokbWxKALBLa9jnpXwFLEIs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x0vMs89lbKIvv77HDWLfkiKl93g6M7RmmJVwa+wH8Ww=; b=gqps2X1xPKqEAhChaRObckacV8
 W3DHDNSaUH8YSNgy3jbs5Q6lgL0h2PU5ldlnXhoIK57fZ8A3o+7NrNc8/LwrY8LuH52F4y67Lx+6k
 tdrEieGt2XHD5V0AZMPADS+rwXXwS1GjeZc2O27adEdgIsSDmgs7OJcA7r9Y68Ukhn7k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzu4-00CHiE-PS
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:08:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929706;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x0vMs89lbKIvv77HDWLfkiKl93g6M7RmmJVwa+wH8Ww=;
 b=d32Ro62z/jGFF3UPlyinobi6tkgAI3sH2rXtrIPej1lYv//udzNBFA9vTLz+YWOGPMDQft
 /+1G5KampVdvbTwjJpCp1Sj/mso/tXtKIflp1/l67Utbbyhzk4xR8/7UXeAz8uvr5Scgwj
 9MqyRt3W+vTSbSl9rcKKF6q0QSZeZ2c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-utPonfrpOiy9HDloa8csrQ-1; Fri, 22 Oct 2021 15:07:04 -0400
X-MC-Unique: utPonfrpOiy9HDloa8csrQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8519418D6A2A;
 Fri, 22 Oct 2021 19:07:02 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 67F3217CDB;
 Fri, 22 Oct 2021 19:06:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:06:54 +0100
Message-ID: <163492961456.1038219.2922367243827932852.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Provide a function to check how much space there is. This
 also flips the state on the cache and will signal the daemon to inform it
 of the change and to ask it to do some culling if necessary. Signed-off-by:
 David Howells <dhowells@redhat.com> cc: linux-cachefs@redhat.com --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzu4-00CHiE-PS
Subject: [V9fs-developer] [PATCH v2 34/53] cachefiles: Provide a function to
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide a function to check how much space there is.  This also flips the
state on the cache and will signal the daemon to inform it of the change
and to ask it to do some culling if necessary.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/Makefile   |    1 
 fs/cachefiles/daemon.c   |  108 ++++++++++++++++++++++++++++++++++++++++++++++
 fs/cachefiles/internal.h |   15 ++++++
 3 files changed, 124 insertions(+)
 create mode 100644 fs/cachefiles/daemon.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 183fb5f3b8b1..4c80d9af151f 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -4,6 +4,7 @@
 #
 
 cachefiles-y := \
+	daemon.o \
 	main.o
 
 cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
new file mode 100644
index 000000000000..dca2520a14ee
--- /dev/null
+++ b/fs/cachefiles/daemon.c
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Daemon interface
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/sched.h>
+#include <linux/completion.h>
+#include <linux/slab.h>
+#include <linux/fs.h>
+#include <linux/file.h>
+#include <linux/namei.h>
+#include <linux/poll.h>
+#include <linux/mount.h>
+#include <linux/statfs.h>
+#include <linux/ctype.h>
+#include <linux/string.h>
+#include <linux/fs_struct.h>
+#include "internal.h"
+
+/*
+ * see if we have space for a number of pages and/or a number of files in the
+ * cache
+ */
+int cachefiles_has_space(struct cachefiles_cache *cache,
+			 unsigned fnr, unsigned bnr)
+{
+	struct kstatfs stats;
+	int ret;
+
+	struct path path = {
+		.mnt	= cache->mnt,
+		.dentry	= cache->store,
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
+		trace_cachefiles_vfs_error(NULL, d_inode(cache->store), ret,
+					   cachefiles_trace_statfs_error);
+		if (ret == -EIO)
+			cachefiles_io_error(cache, "statfs failed");
+		_leave(" = %d", ret);
+		return ret;
+	}
+
+	stats.f_bavail >>= cache->bshift;
+
+	//_debug("avail %llu,%llu",
+	//       (unsigned long long) stats.f_ffree,
+	//       (unsigned long long) stats.f_bavail);
+
+	/* see if there is sufficient space */
+	if (stats.f_ffree > fnr)
+		stats.f_ffree -= fnr;
+	else
+		stats.f_ffree = 0;
+
+	if (stats.f_bavail > bnr)
+		stats.f_bavail -= bnr;
+	else
+		stats.f_bavail = 0;
+
+	ret = -ENOBUFS;
+	if (stats.f_ffree < cache->fstop ||
+	    stats.f_bavail < cache->bstop)
+		goto begin_cull;
+
+	ret = 0;
+	if (stats.f_ffree < cache->fcull ||
+	    stats.f_bavail < cache->bcull)
+		goto begin_cull;
+
+	if (test_bit(CACHEFILES_CULLING, &cache->flags) &&
+	    stats.f_ffree >= cache->frun &&
+	    stats.f_bavail >= cache->brun &&
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
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 230a1a2bf01d..3ccc8411c502 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -114,6 +114,21 @@ struct cachefiles_cache {
 
 #include <trace/events/cachefiles.h>
 
+/*
+ * note change of state for daemon
+ */
+static inline void cachefiles_state_changed(struct cachefiles_cache *cache)
+{
+	set_bit(CACHEFILES_STATE_CHANGED, &cache->flags);
+	wake_up_all(&cache->daemon_pollwq);
+}
+
+/*
+ * daemon.c
+ */
+extern int cachefiles_has_space(struct cachefiles_cache *cache,
+				unsigned fnr, unsigned bnr);
+
 /*
  * error_inject.c
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
