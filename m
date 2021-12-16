Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC85477762
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:12:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtMq-0003Hy-IP; Thu, 16 Dec 2021 16:12:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtMo-0003Hi-LI
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+j2N+6C0zW1Pkb/6ZERucFAmQaa5wZCkjoIGt40/jHw=; b=blkYfx5cXjhueFEOLmNZjHN7dZ
 orwKK+ZCAy7/uVuMmsRpexOXOx6WiFk6DwxETck4gV1eH7CRCl2lrAMXcZItwMCk6If+f1alwOWaO
 TVNYMqJ0EaTRKDonJrXoPIIV2ya/0J8Yl6Eqjh26lPntiVSVe4AnnTw/2Aee5NGavicM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+j2N+6C0zW1Pkb/6ZERucFAmQaa5wZCkjoIGt40/jHw=; b=jZCAA0ac2YcxjS3KD6mzb4P0tt
 +a3ob4hBmefyaubqva2/8HsI8S3COpPLJXJ8NYf+I8ldUT9UbyNtIyEjbqDC+iSczKiOBznNgX3KN
 GALTiKqqP7cEaVzf2asOtxcsKwn9f8/c4SclkW9GPzAjlXTfRW86MpfFuj7dFS86Pr8s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtMo-0004El-Vx
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+j2N+6C0zW1Pkb/6ZERucFAmQaa5wZCkjoIGt40/jHw=;
 b=FAE87IYU0rkTqPmlYc/NPIwgQ6gnl+h6b4SMaqagNSVpk93uAMR1qGMf0R79naIudhfg/V
 kCHcqLdOilwstaopsqKKIEnVt2LVjcUl6B978WfwwtXQ+SGHsUBDOTSVkd0XHgFXC3ts5K
 LkdBPZMcEsHhu2/N/vvaOl5f6yWLeSQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-220-Xifaw1s9NX6CcRB1CsATXA-1; Thu, 16 Dec 2021 11:12:15 -0500
X-MC-Unique: Xifaw1s9NX6CcRB1CsATXA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14C3492532;
 Thu, 16 Dec 2021 16:12:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3D06D1037F52;
 Thu, 16 Dec 2021 16:11:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:11:58 +0000
Message-ID: <163967111846.1823006.9868154941573671255.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
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
 Content preview: Count the data storage objects that are currently allocated
 in a cache. This is used to pin certain cache structures until cache
 withdrawal
 is complete. Three helpers are provided to manage and make use of the count:
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxtMo-0004El-Vx
Subject: [V9fs-developer] [PATCH v3 21/68] fscache: Count data storage
 objects in a cache
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

Count the data storage objects that are currently allocated in a cache.
This is used to pin certain cache structures until cache withdrawal is
complete.

Three helpers are provided to manage and make use of the count:

 (1) void fscache_count_object(struct fscache_cache *cache);

     This should be called by the cache backend to note that an object has
     been allocated and attached to the cache.

 (2) void fscache_uncount_object(struct fscache_cache *cache);

     This should be called by the backend to note that an object has been
     destroyed.  This sends a wakeup event that allows cache withdrawal to
     proceed if it was waiting for that object.

 (3) void fscache_wait_for_objects(struct fscache_cache *cache);

     This can be used by the backend to wait for all outstanding cache
     object to be destroyed.

Each cache's counter is displayed as part of /proc/fs/fscache/caches.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819608594.215744.1812706538117388252.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906911646.143852.168184059935530127.stgit@warthog.procyon.org.uk/ # v2
---

 fs/fscache/cache.c            |    2 ++
 include/linux/fscache-cache.h |   39 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index 25eac61f1c29..2749933852a9 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -13,6 +13,8 @@
 static LIST_HEAD(fscache_caches);
 DECLARE_RWSEM(fscache_addremove_sem);
 EXPORT_SYMBOL(fscache_addremove_sem);
+DECLARE_WAIT_QUEUE_HEAD(fscache_clearance_waiters);
+EXPORT_SYMBOL(fscache_clearance_waiters);
 
 static atomic_t fscache_cache_debug_id;
 
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 566497cf5f13..337335d7a5e2 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -76,6 +76,7 @@ struct fscache_cache_ops {
 };
 
 extern struct workqueue_struct *fscache_wq;
+extern wait_queue_head_t fscache_clearance_waiters;
 
 /*
  * out-of-line cache backend functions
@@ -140,4 +141,42 @@ static inline struct fscache_cookie *fscache_cres_cookie(struct netfs_cache_reso
 	return cres->cache_priv;
 }
 
+/**
+ * fscache_count_object - Tell fscache that an object has been added
+ * @cache: The cache to account to
+ *
+ * Tell fscache that an object has been added to the cache.  This prevents the
+ * cache from tearing down the cache structure until the object is uncounted.
+ */
+static inline void fscache_count_object(struct fscache_cache *cache)
+{
+	atomic_inc(&cache->object_count);
+}
+
+/**
+ * fscache_uncount_object - Tell fscache that an object has been removed
+ * @cache: The cache to account to
+ *
+ * Tell fscache that an object has been removed from the cache and will no
+ * longer be accessed.  After this point, the cache cookie may be destroyed.
+ */
+static inline void fscache_uncount_object(struct fscache_cache *cache)
+{
+	if (atomic_dec_and_test(&cache->object_count))
+		wake_up_all(&fscache_clearance_waiters);
+}
+
+/**
+ * fscache_wait_for_objects - Wait for all objects to be withdrawn
+ * @cache: The cache to query
+ *
+ * Wait for all extant objects in a cache to finish being withdrawn
+ * and go away.
+ */
+static inline void fscache_wait_for_objects(struct fscache_cache *cache)
+{
+	wait_event(fscache_clearance_waiters,
+		   atomic_read(&cache->object_count) == 0);
+}
+
 #endif /* _LINUX_FSCACHE_CACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
