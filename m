Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A6F47DA1B
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:19:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AtO-0000mt-U0; Wed, 22 Dec 2021 23:19:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AtN-0000ml-KC
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BwAR1/0SSUdVdQbBju9s1LgosalHelU86LvM4qm4Pug=; b=O8qK1+Lk3JQ5+X9BFYX9vEiHyr
 jgLjWZBxrdCOxUnxWX4sKuEPaVxEocdTPMGxPalhwf2pYBjYa+THttvQfj4WBlWfgxLWu0A/I/r+y
 S9cSDsMz4s0A0JEMxdgLtSdn9x6fBxWeBJx+5Zn4aqJolfJhbCdXlwWbhDB4/3EyHkzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BwAR1/0SSUdVdQbBju9s1LgosalHelU86LvM4qm4Pug=; b=lWEe3tBE87h35hiGWIiw7YJL0N
 xYLeKD0DToVNvo3qE5ylV4QxsvWXMG4NAT+frZs54OIG0Dfx3a0aOfoTzPzy1tPUfGcC8dj61JI8j
 7Gu9+CSxT5gIlPgf7bMHTUOmsdfnyaZftYgBCxYHYUpKMO4mV2wsobqqvx6HUOvqvNbA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0AtM-006hUK-Iy
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215162;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BwAR1/0SSUdVdQbBju9s1LgosalHelU86LvM4qm4Pug=;
 b=Qh3XRZyP8IyDR/ibzSr9atIyF0aECQGgQ/3x5j0X5XTDybfHRpUMx0ITdwmtwkFTIaEwKM
 tz/K4b7lQaVt5JfEiiQRl0Y4Rt1MjTVuRaaRx823S78bUONiyxhLT/DzbymCO4DWbwkNqe
 Ay/7ShHeNQXaU8bKiiEWqL5eEcEU5vg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-75--w5E2oixMwicuiYOkMhawA-1; Wed, 22 Dec 2021 18:19:19 -0500
X-MC-Unique: -w5E2oixMwicuiYOkMhawA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB17210168C0;
 Wed, 22 Dec 2021 23:19:16 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12044798BF;
 Wed, 22 Dec 2021 23:18:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:18:56 +0000
Message-ID: <164021513617.640689.16627329360866150606.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview: Provide a function to begin a read operation: int
 fscache_begin_read_operation(
 struct netfs_cache_resources *cres, struct fscache_cookie *cookie) This is
 primarily intended to be called by network filesystems on behalf of netfslib, 
 but may also be called to use the I/O access functions directly. It attaches
 the resources required by the cache t [...] 
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
X-Headers-End: 1n0AtM-006hUK-Iy
Subject: [V9fs-developer] [PATCH v4 20/68] fscache: Provide a means to begin
 an operation
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

Provide a function to begin a read operation:

	int fscache_begin_read_operation(
		struct netfs_cache_resources *cres,
		struct fscache_cookie *cookie)

This is primarily intended to be called by network filesystems on behalf of
netfslib, but may also be called to use the I/O access functions directly.
It attaches the resources required by the cache to cres struct from the
supplied cookie.

This holds access to the cache behind the cookie for the duration of the
operation and forces cache withdrawal and cookie invalidation to perform
synchronisation on the operation.  cres->inval_counter is set from the
cookie at this point so that it can be compared at the end of the
operation.

Note that this does not guarantee that the cache state is fully set up and
able to perform I/O immediately; looking up and creation may be left in
progress in the background.  The operations intended to be called by the
network filesystem, such as reading and writing, are expected to wait for
the cookie to move to the correct state.

This will, however, potentially sleep, waiting for a certain minimum state
to be set or for operations such as invalidate to advance far enough that
I/O can resume.


Also provide a function for the cache to call to wait for the cache object
to get to a state where it can be used for certain things:

	bool fscache_wait_for_operation(struct netfs_cache_resources *cres,
					enum fscache_want_stage stage);

This looks at the cache resources provided by the begin function and waits
for them to get to an appropriate stage.  There's a choice of wanting just
some parameters (FSCACHE_WANT_PARAM) or the ability to do I/O
(FSCACHE_WANT_READ or FSCACHE_WANT_WRITE).

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819603692.215744.146724961588817028.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906910672.143852.13856103384424986357.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967110245.1823006.2239170567540431836.stgit@warthog.procyon.org.uk/ # v3
---

 fs/fscache/Makefile            |    1 
 fs/fscache/internal.h          |   11 +++
 fs/fscache/io.c                |  151 ++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache-cache.h  |   11 +++
 include/linux/fscache.h        |   49 +++++++++++++
 include/trace/events/fscache.h |    6 ++
 6 files changed, 229 insertions(+)
 create mode 100644 fs/fscache/io.c

diff --git a/fs/fscache/Makefile b/fs/fscache/Makefile
index bcc79615f93a..afb090ea16c4 100644
--- a/fs/fscache/Makefile
+++ b/fs/fscache/Makefile
@@ -6,6 +6,7 @@
 fscache-y := \
 	cache.o \
 	cookie.o \
+	io.o \
 	main.o \
 	volume.o
 
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 7fb83d216360..017bf3d346a4 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -70,6 +70,17 @@ static inline void fscache_see_cookie(struct fscache_cookie *cookie,
 			     where);
 }
 
+/*
+ * io.c
+ */
+static inline void fscache_end_operation(struct netfs_cache_resources *cres)
+{
+	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
+
+	if (ops)
+		ops->end_operation(cres);
+}
+
 /*
  * main.c
  */
diff --git a/fs/fscache/io.c b/fs/fscache/io.c
new file mode 100644
index 000000000000..460a43473019
--- /dev/null
+++ b/fs/fscache/io.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Cache data I/O routines
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+#define FSCACHE_DEBUG_LEVEL OPERATION
+#include <linux/fscache-cache.h>
+#include <linux/uio.h>
+#include <linux/bvec.h>
+#include <linux/slab.h>
+#include <linux/uio.h>
+#include "internal.h"
+
+/**
+ * fscache_wait_for_operation - Wait for an object become accessible
+ * @cres: The cache resources for the operation being performed
+ * @want_state: The minimum state the object must be at
+ *
+ * See if the target cache object is at the specified minimum state of
+ * accessibility yet, and if not, wait for it.
+ */
+bool fscache_wait_for_operation(struct netfs_cache_resources *cres,
+				enum fscache_want_state want_state)
+{
+	struct fscache_cookie *cookie = fscache_cres_cookie(cres);
+	enum fscache_cookie_state state;
+
+again:
+	if (!fscache_cache_is_live(cookie->volume->cache)) {
+		_leave(" [broken]");
+		return false;
+	}
+
+	state = fscache_cookie_state(cookie);
+	_enter("c=%08x{%u},%x", cookie->debug_id, state, want_state);
+
+	switch (state) {
+	case FSCACHE_COOKIE_STATE_CREATING:
+	case FSCACHE_COOKIE_STATE_INVALIDATING:
+		if (want_state == FSCACHE_WANT_PARAMS)
+			goto ready; /* There can be no content */
+		fallthrough;
+	case FSCACHE_COOKIE_STATE_LOOKING_UP:
+	case FSCACHE_COOKIE_STATE_LRU_DISCARDING:
+		wait_var_event(&cookie->state,
+			       fscache_cookie_state(cookie) != state);
+		goto again;
+
+	case FSCACHE_COOKIE_STATE_ACTIVE:
+		goto ready;
+	case FSCACHE_COOKIE_STATE_DROPPED:
+	case FSCACHE_COOKIE_STATE_RELINQUISHING:
+	default:
+		_leave(" [not live]");
+		return false;
+	}
+
+ready:
+	if (!cres->cache_priv2)
+		return cookie->volume->cache->ops->begin_operation(cres, want_state);
+	return true;
+}
+EXPORT_SYMBOL(fscache_wait_for_operation);
+
+/*
+ * Begin an I/O operation on the cache, waiting till we reach the right state.
+ *
+ * Attaches the resources required to the operation resources record.
+ */
+static int fscache_begin_operation(struct netfs_cache_resources *cres,
+				   struct fscache_cookie *cookie,
+				   enum fscache_want_state want_state,
+				   enum fscache_access_trace why)
+{
+	enum fscache_cookie_state state;
+	long timeo;
+	bool once_only = false;
+
+	cres->ops		= NULL;
+	cres->cache_priv	= cookie;
+	cres->cache_priv2	= NULL;
+	cres->debug_id		= cookie->debug_id;
+	cres->inval_counter	= cookie->inval_counter;
+
+	if (!fscache_begin_cookie_access(cookie, why))
+		return -ENOBUFS;
+
+again:
+	spin_lock(&cookie->lock);
+
+	state = fscache_cookie_state(cookie);
+	_enter("c=%08x{%u},%x", cookie->debug_id, state, want_state);
+
+	switch (state) {
+	case FSCACHE_COOKIE_STATE_LOOKING_UP:
+	case FSCACHE_COOKIE_STATE_LRU_DISCARDING:
+	case FSCACHE_COOKIE_STATE_INVALIDATING:
+		goto wait_for_file_wrangling;
+	case FSCACHE_COOKIE_STATE_CREATING:
+		if (want_state == FSCACHE_WANT_PARAMS)
+			goto ready; /* There can be no content */
+		goto wait_for_file_wrangling;
+	case FSCACHE_COOKIE_STATE_ACTIVE:
+		goto ready;
+	case FSCACHE_COOKIE_STATE_DROPPED:
+	case FSCACHE_COOKIE_STATE_RELINQUISHING:
+		WARN(1, "Can't use cookie in state %u\n", cookie->state);
+		goto not_live;
+	default:
+		goto not_live;
+	}
+
+ready:
+	spin_unlock(&cookie->lock);
+	if (!cookie->volume->cache->ops->begin_operation(cres, want_state))
+		goto failed;
+	return 0;
+
+wait_for_file_wrangling:
+	spin_unlock(&cookie->lock);
+	trace_fscache_access(cookie->debug_id, refcount_read(&cookie->ref),
+			     atomic_read(&cookie->n_accesses),
+			     fscache_access_io_wait);
+	timeo = wait_var_event_timeout(&cookie->state,
+				       fscache_cookie_state(cookie) != state, 20 * HZ);
+	if (timeo <= 1 && !once_only) {
+		pr_warn("%s: cookie state change wait timed out: cookie->state=%u state=%u",
+			__func__, fscache_cookie_state(cookie), state);
+		fscache_print_cookie(cookie, 'O');
+		once_only = true;
+	}
+	goto again;
+
+not_live:
+	spin_unlock(&cookie->lock);
+failed:
+	cres->cache_priv = NULL;
+	cres->ops = NULL;
+	fscache_end_cookie_access(cookie, fscache_access_io_not_live);
+	_leave(" = -ENOBUFS");
+	return -ENOBUFS;
+}
+
+int __fscache_begin_read_operation(struct netfs_cache_resources *cres,
+				   struct fscache_cookie *cookie)
+{
+	return fscache_begin_operation(cres, cookie, FSCACHE_WANT_PARAMS,
+				       fscache_access_io_read);
+}
+EXPORT_SYMBOL(__fscache_begin_read_operation);
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 1ad56bfd9d72..566497cf5f13 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -67,6 +67,10 @@ struct fscache_cache_ops {
 	/* Invalidate an object */
 	bool (*invalidate_cookie)(struct fscache_cookie *cookie);
 
+	/* Begin an operation for the netfs lib */
+	bool (*begin_operation)(struct netfs_cache_resources *cres,
+				enum fscache_want_state want_state);
+
 	/* Prepare to write to a live cache object */
 	void (*prepare_to_write)(struct fscache_cookie *cookie);
 };
@@ -101,6 +105,8 @@ extern void fscache_end_cookie_access(struct fscache_cookie *cookie,
 extern void fscache_cookie_lookup_negative(struct fscache_cookie *cookie);
 extern void fscache_resume_after_invalidation(struct fscache_cookie *cookie);
 extern void fscache_caching_failed(struct fscache_cookie *cookie);
+extern bool fscache_wait_for_operation(struct netfs_cache_resources *cred,
+				       enum fscache_want_state state);
 
 /**
  * fscache_cookie_state - Read the state of a cookie
@@ -129,4 +135,9 @@ static inline void *fscache_get_key(struct fscache_cookie *cookie)
 		return cookie->key;
 }
 
+static inline struct fscache_cookie *fscache_cres_cookie(struct netfs_cache_resources *cres)
+{
+	return cres->cache_priv;
+}
+
 #endif /* _LINUX_FSCACHE_CACHE_H */
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 0f36d1fac237..7cdc63c4fe35 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -41,6 +41,12 @@ struct fscache_cookie;
 
 #define FSCACHE_INVAL_DIO_WRITE		0x01 /* Invalidate due to DIO write */
 
+enum fscache_want_state {
+	FSCACHE_WANT_PARAMS,
+	FSCACHE_WANT_WRITE,
+	FSCACHE_WANT_READ,
+};
+
 /*
  * Data object state.
  */
@@ -157,6 +163,7 @@ extern void __fscache_use_cookie(struct fscache_cookie *, bool);
 extern void __fscache_unuse_cookie(struct fscache_cookie *, const void *, const loff_t *);
 extern void __fscache_relinquish_cookie(struct fscache_cookie *, bool);
 extern void __fscache_invalidate(struct fscache_cookie *, const void *, loff_t, unsigned int);
+extern int __fscache_begin_read_operation(struct netfs_cache_resources *, struct fscache_cookie *);
 
 /**
  * fscache_acquire_volume - Register a volume as desiring caching services
@@ -358,4 +365,46 @@ void fscache_invalidate(struct fscache_cookie *cookie,
 		__fscache_invalidate(cookie, aux_data, size, flags);
 }
 
+/**
+ * fscache_operation_valid - Return true if operations resources are usable
+ * @cres: The resources to check.
+ *
+ * Returns a pointer to the operations table if usable or NULL if not.
+ */
+static inline
+const struct netfs_cache_ops *fscache_operation_valid(const struct netfs_cache_resources *cres)
+{
+	return fscache_resources_valid(cres) ? cres->ops : NULL;
+}
+
+/**
+ * fscache_begin_read_operation - Begin a read operation for the netfs lib
+ * @cres: The cache resources for the read being performed
+ * @cookie: The cookie representing the cache object
+ *
+ * Begin a read operation on behalf of the netfs helper library.  @cres
+ * indicates the cache resources to which the operation state should be
+ * attached; @cookie indicates the cache object that will be accessed.
+ *
+ * This is intended to be called from the ->begin_cache_operation() netfs lib
+ * operation as implemented by the network filesystem.
+ *
+ * @cres->inval_counter is set from @cookie->inval_counter for comparison at
+ * the end of the operation.  This allows invalidation during the operation to
+ * be detected by the caller.
+ *
+ * Returns:
+ * * 0		- Success
+ * * -ENOBUFS	- No caching available
+ * * Other error code from the cache, such as -ENOMEM.
+ */
+static inline
+int fscache_begin_read_operation(struct netfs_cache_resources *cres,
+				 struct fscache_cookie *cookie)
+{
+	if (fscache_cookie_enabled(cookie))
+		return __fscache_begin_read_operation(cres, cookie);
+	return -ENOBUFS;
+}
+
 #endif /* _LINUX_FSCACHE_H */
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 294792881434..9f78c903b00a 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -76,6 +76,9 @@ enum fscache_access_trace {
 	fscache_access_cache_unpin,
 	fscache_access_invalidate_cookie,
 	fscache_access_invalidate_cookie_end,
+	fscache_access_io_not_live,
+	fscache_access_io_read,
+	fscache_access_io_wait,
 	fscache_access_lookup_cookie,
 	fscache_access_lookup_cookie_end,
 	fscache_access_lookup_cookie_end_failed,
@@ -143,6 +146,9 @@ enum fscache_access_trace {
 	EM(fscache_access_cache_unpin,		"UNPIN cache  ")	\
 	EM(fscache_access_invalidate_cookie,	"BEGIN inval  ")	\
 	EM(fscache_access_invalidate_cookie_end,"END   inval  ")	\
+	EM(fscache_access_io_not_live,		"END   io_notl")	\
+	EM(fscache_access_io_read,		"BEGIN io_read")	\
+	EM(fscache_access_io_wait,		"WAIT  io     ")	\
 	EM(fscache_access_lookup_cookie,	"BEGIN lookup ")	\
 	EM(fscache_access_lookup_cookie_end,	"END   lookup ")	\
 	EM(fscache_access_lookup_cookie_end_failed,"END   lookupf")	\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
