Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A564B437DD6
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:07:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdztP-000479-Ck; Fri, 22 Oct 2021 19:07:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdztO-00046u-0n
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JH5U06J+jBtzM7E+T1W282ZqeNfTrBwNbqexnEyNrKs=; b=RhVbXIup3BmlfhUto3gLZ9IpDw
 BjW39ZARGpfopdFpiMbB2FQWC6eFhlEcsMtFodtUzJPzOJjnPv5qRskiB8zUv4CcjGFWjtQu/kR2a
 UjsKTnScRYgiJFN1eFwh0KH1j1qd28CaTkayba9jVtkULarzQKs6VgxXW+daJB5f8o+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JH5U06J+jBtzM7E+T1W282ZqeNfTrBwNbqexnEyNrKs=; b=N6lf8SHRefiQtAvYUocwFplayS
 iAXV69eWmfbrbyHL7qAVB+c+zAql3f+fRUtKz1zJ6Avj2czaqU86hISTqzlsMU1UDv6rLiEm3g4ZM
 fnuIWVg2L8pfefCBT5EEbbASo8B2CV1JoqQaaUx0xr9Kc1OKp5Hs54n00P7YYNw/vpXs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdztN-00CHdd-2u
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JH5U06J+jBtzM7E+T1W282ZqeNfTrBwNbqexnEyNrKs=;
 b=KEye8k0CxYKmTqzTydJwtsiHd+BjbQxg1y+p8//RxOu/UgRFi3a3ehi5g12BFF1R0FEB16
 ClpOJwiif2eje9rjdg4YKdlM7C6fq0vnXGoePugMw0Ncbis6JnELP/dz6S4wCrOkH5xa9k
 TS4nMxtGfA4pDeKIdRWFNKlp6p5p2nk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-whylEpMOMxysyhwKKvRT2g-1; Fri, 22 Oct 2021 15:07:40 -0400
X-MC-Unique: whylEpMOMxysyhwKKvRT2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEE15108087A;
 Fri, 22 Oct 2021 19:07:37 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 579C65C1A3;
 Fri, 22 Oct 2021 19:07:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:07:31 +0100
Message-ID: <163492965148.1038219.9649181508116300227.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview:  Implement support for creating the directory layout for a
 volume on disk and setting up and withdrawing volume caching. Each volume
 has a directory named for the volume key under the root of the cache (prefixed
 with an 'I' to indicate to cachefilesd that it's an index) and then creates
 a bunch of hash bucket subdirecto [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdztN-00CHdd-2u
Subject: [V9fs-developer] [PATCH v2 37/53] cachefiles: Implement volume
 support
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

Implement support for creating the directory layout for a volume on disk
and setting up and withdrawing volume caching.

Each volume has a directory named for the volume key under the root of the
cache (prefixed with an 'I' to indicate to cachefilesd that it's an index)
and then creates a bunch of hash bucket subdirectories under that (named as
'@' plus a hex number) in which cookie files will be created.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/Makefile    |    3 +
 fs/cachefiles/bind.c      |   28 +++++++++-
 fs/cachefiles/interface.c |    2 +
 fs/cachefiles/internal.h  |    7 ++
 fs/cachefiles/volume.c    |  128 +++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 166 insertions(+), 2 deletions(-)
 create mode 100644 fs/cachefiles/volume.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index 7017c9113074..607f7c684a97 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -9,7 +9,8 @@ cachefiles-y := \
 	interface.o \
 	main.o \
 	namei.o \
-	security.o
+	security.o \
+	volume.o
 
 cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
 
diff --git a/fs/cachefiles/bind.c b/fs/cachefiles/bind.c
index 9ca10290064b..70924997b0cc 100644
--- a/fs/cachefiles/bind.c
+++ b/fs/cachefiles/bind.c
@@ -236,6 +236,32 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 	return ret;
 }
 
+/*
+ * Withdraw volumes.
+ */
+static void cachefiles_withdraw_volumes(struct cachefiles_cache *cache)
+{
+	_enter("");
+
+	for (;;) {
+		struct cachefiles_volume *volume = NULL;
+
+		spin_lock(&cache->object_list_lock);
+		if (!list_empty(&cache->volumes)) {
+			volume = list_first_entry(&cache->volumes,
+						  struct cachefiles_volume, cache_link);
+			list_del_init(&volume->cache_link);
+		}
+		spin_unlock(&cache->object_list_lock);
+		if (!volume)
+			break;
+
+		cachefiles_withdraw_volume(volume);
+	}
+
+	_leave("");
+}
+
 /*
  * Withdraw cache objects.
  */
@@ -259,7 +285,7 @@ static void cachefiles_withdraw_cache(struct cachefiles_cache *cache)
 		   atomic_read(&fscache->object_count) == 0);
 	_debug("cleared");
 
-	// PLACEHOLDER: Withdraw volume
+	cachefiles_withdraw_volumes(cache);
 
 	/* make sure all outstanding data is written to disk */
 	cachefiles_sync_cache(cache);
diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 236d55c13fb1..8624ee52b98b 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -39,4 +39,6 @@ void cachefiles_sync_cache(struct cachefiles_cache *cache)
 
 const struct fscache_cache_ops cachefiles_cache_ops = {
 	.name			= "cachefiles",
+	.acquire_volume		= cachefiles_acquire_volume,
+	.free_volume		= cachefiles_free_volume,
 };
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index c472766cdce3..828b888a8bf3 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -211,6 +211,13 @@ static inline void cachefiles_end_secure(struct cachefiles_cache *cache,
 	revert_creds(saved_cred);
 }
 
+/*
+ * volume.c
+ */
+void cachefiles_acquire_volume(struct fscache_volume *volume);
+void cachefiles_free_volume(struct fscache_volume *volume);
+void cachefiles_withdraw_volume(struct cachefiles_volume *volume);
+
 /*
  * error handling
  */
diff --git a/fs/cachefiles/volume.c b/fs/cachefiles/volume.c
new file mode 100644
index 000000000000..f5e527b56228
--- /dev/null
+++ b/fs/cachefiles/volume.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Volume handling.
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include "internal.h"
+#include <trace/events/fscache.h>
+
+/*
+ * Allocate and set up a volume representation.  We make sure all the fanout
+ * directories are created and pinned.
+ */
+void cachefiles_acquire_volume(struct fscache_volume *vcookie)
+{
+	struct cachefiles_volume *volume;
+	struct cachefiles_cache *cache = vcookie->cache->cache_priv;
+	const struct cred *saved_cred;
+	struct dentry *vdentry, *fan;
+	size_t len;
+	char *name;
+	int n_accesses, i;
+
+	_enter("");
+
+	volume = kzalloc(sizeof(struct cachefiles_volume), GFP_KERNEL);
+	if (!volume)
+		return;
+	volume->vcookie = vcookie;
+	volume->cache = cache;
+	INIT_LIST_HEAD(&volume->cache_link);
+
+	cachefiles_begin_secure(cache, &saved_cred);
+
+	len = vcookie->key[0];
+	name = kmalloc(len + 3, GFP_NOFS);
+	if (!name)
+		goto error_vol;
+	name[0] = 'I';
+	memcpy(name + 1, vcookie->key + 1, len);
+	name[len + 1] = 0;
+
+	vdentry = cachefiles_get_directory(cache, cache->store, name);
+	if (IS_ERR(vdentry))
+		goto error_name;
+	volume->dentry = vdentry;
+
+	for (i = 0; i < 256; i++) {
+		sprintf(name, "@%02x", i);
+		fan = cachefiles_get_directory(cache, vdentry, name);
+		if (IS_ERR(fan))
+			goto error_fan;
+		volume->fanout[i] = fan;
+	}
+
+	cachefiles_end_secure(cache, saved_cred);
+
+	vcookie->cache_priv = volume;
+	n_accesses = atomic_inc_return(&vcookie->n_accesses); /* Stop wakeups on dec-to-0 */
+	trace_fscache_access_volume(vcookie->debug_id, refcount_read(&vcookie->ref),
+				    n_accesses, fscache_access_cache_pin);
+
+	spin_lock(&cache->object_list_lock);
+	list_add(&volume->cache_link, &volume->cache->volumes);
+	spin_unlock(&cache->object_list_lock);
+
+	kfree(name);
+	return;
+
+error_fan:
+	for (i = 0; i < 256; i++)
+		dput(volume->fanout[i]);
+	dput(volume->dentry);
+error_name:
+	kfree(name);
+error_vol:
+	kfree(volume);
+	cachefiles_end_secure(cache, saved_cred);
+}
+
+/*
+ * Release a volume representation.
+ */
+static void __cachefiles_free_volume(struct cachefiles_volume *volume)
+{
+	int i;
+
+	_enter("");
+
+	volume->vcookie->cache_priv = NULL;
+
+	for (i = 0; i < 256; i++)
+		dput(volume->fanout[i]);
+	dput(volume->dentry);
+	kfree(volume);
+}
+
+void cachefiles_free_volume(struct fscache_volume *vcookie)
+{
+	struct cachefiles_volume *volume = vcookie->cache_priv;
+
+	if (volume) {
+		spin_lock(&volume->cache->object_list_lock);
+		list_del_init(&volume->cache_link);
+		spin_unlock(&volume->cache->object_list_lock);
+		__cachefiles_free_volume(volume);
+	}
+}
+
+void cachefiles_withdraw_volume(struct cachefiles_volume *volume)
+{
+	struct fscache_volume *vcookie = volume->vcookie;
+	int n_accesses;
+
+	_debug("withdraw V=%x", vcookie->debug_id);
+
+	/* Allow wakeups on dec-to-0 */
+	n_accesses = atomic_dec_return(&vcookie->n_accesses);
+	trace_fscache_access_volume(vcookie->debug_id, refcount_read(&vcookie->ref),
+				    n_accesses, fscache_access_cache_unpin);
+
+	wait_var_event(&vcookie->n_accesses,
+		       atomic_read(&vcookie->n_accesses) == 0);
+	__cachefiles_free_volume(volume);
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
