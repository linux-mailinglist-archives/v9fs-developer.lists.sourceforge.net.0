Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B250147772F
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:10:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtKw-0001C6-7y; Thu, 16 Dec 2021 16:10:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtKu-0001BV-Jv
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=77b/FllxFDPx3JlXOhEYkSd2yNZkpApUMo40jIU5140=; b=TSnhFBz5icnBpcNLssx/OsR6YA
 sWXg0ZW6GMKjQW+pB17zsYyS7DLRI1F6+8m7n+JjSUWZOxic9YzNsbGzMF0v4hF15ANu1Xvo4n+Va
 AOw9gLjt235L9N+37DcerBoDDH6AOKubH5tfRe+aONKT+TgQnnfcbgqNoQacPbXBV3Ls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=77b/FllxFDPx3JlXOhEYkSd2yNZkpApUMo40jIU5140=; b=d18ParKJWWOucVO4nX2MAQ+YCh
 g/CMVKxX1iwy7JltSmgVLUs4afOm3MExT9dZJckoNMpOQZ7QG290dR0QPA8AT8Ye7RaNsGRdnn6wM
 UIsaVa+tnWzO/NHZDkbpkhLq/Bo6bsr1s+f7XRIzeKaPVOAqElcf/J19IKg11h3Wp51o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtKf-0007Ul-Cw
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=77b/FllxFDPx3JlXOhEYkSd2yNZkpApUMo40jIU5140=;
 b=Y45iJ3z4xTPEnIB3FAdttX0bUk2Vx7GZTDHph19qmAhQDVPXnuk8NB2RgndavoIdDFN9sm
 fk3tp1YbEeLmCBtFWLo9O+BO28mjU58xauU80D9kVzc5E6FFWeEiELGKJLXJgGCWyQLeOs
 inPbujvO5yilfK80tQyXZTC8v28w5w8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-368-E-k1LPn3ORGa395H512XKg-1; Thu, 16 Dec 2021 11:10:04 -0500
X-MC-Unique: E-k1LPn3ORGa395H512XKg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F25EE104FC0F;
 Thu, 16 Dec 2021 16:10:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 92B135BE3E;
 Thu, 16 Dec 2021 16:09:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:09:57 +0000
Message-ID: <163967099771.1823006.1455197910571061835.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add cache methods to lookup,
 create and remove a volume. Looking
 up or creating the volume requires the cache pinning for access; freeing
 the volume requires the volume pinning for access. The ->acquire_volume()
 method is used to ask the cache backend to lo [...] 
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
X-Headers-End: 1mxtKf-0007Ul-Cw
Subject: [V9fs-developer] [PATCH v3 15/68] fscache: Provide and use cache
 methods to lookup/create/free a volume
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

Add cache methods to lookup, create and remove a volume.

Looking up or creating the volume requires the cache pinning for access;
freeing the volume requires the volume pinning for access.  The
->acquire_volume() method is used to ask the cache backend to lookup and,
if necessary, create a volume; the ->free_volume() method is used to free
the resources for a volume.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819597821.215744.5225318658134989949.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906898645.143852.8537799955945956818.stgit@warthog.procyon.org.uk/ # v2
---

 fs/fscache/volume.c            |   89 +++++++++++++++++++++++++++++++++++++++-
 include/linux/fscache-cache.h  |    7 +++
 include/trace/events/fscache.h |   11 ++++-
 3 files changed, 103 insertions(+), 4 deletions(-)

diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index 20497f0f10bb..e1a8e92a6adb 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -15,6 +15,8 @@ static struct hlist_bl_head fscache_volume_hash[1 << fscache_volume_hash_shift];
 static atomic_t fscache_volume_debug_id;
 static LIST_HEAD(fscache_volumes);
 
+static void fscache_create_volume_work(struct work_struct *work);
+
 struct fscache_volume *fscache_get_volume(struct fscache_volume *volume,
 					  enum fscache_volume_trace where)
 {
@@ -213,7 +215,7 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 
 	volume->cache = cache;
 	INIT_LIST_HEAD(&volume->proc_link);
-	INIT_WORK(&volume->work, NULL /* PLACEHOLDER */);
+	INIT_WORK(&volume->work, fscache_create_volume_work);
 	refcount_set(&volume->ref, 1);
 	spin_lock_init(&volume->lock);
 
@@ -249,6 +251,58 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	return NULL;
 }
 
+/*
+ * Create a volume's representation on disk.  Have a volume ref and a cache
+ * access we have to release.
+ */
+static void fscache_create_volume_work(struct work_struct *work)
+{
+	const struct fscache_cache_ops *ops;
+	struct fscache_volume *volume =
+		container_of(work, struct fscache_volume, work);
+
+	fscache_see_volume(volume, fscache_volume_see_create_work);
+
+	ops = volume->cache->ops;
+	if (ops->acquire_volume)
+		ops->acquire_volume(volume);
+	fscache_end_cache_access(volume->cache,
+				 fscache_access_acquire_volume_end);
+
+	clear_bit_unlock(FSCACHE_VOLUME_CREATING, &volume->flags);
+	wake_up_bit(&volume->flags, FSCACHE_VOLUME_CREATING);
+	fscache_put_volume(volume, fscache_volume_put_create_work);
+}
+
+/*
+ * Dispatch a worker thread to create a volume's representation on disk.
+ */
+void fscache_create_volume(struct fscache_volume *volume, bool wait)
+{
+	if (test_and_set_bit(FSCACHE_VOLUME_CREATING, &volume->flags))
+		goto maybe_wait;
+	if (volume->cache_priv)
+		goto no_wait; /* We raced */
+	if (!fscache_begin_cache_access(volume->cache,
+					fscache_access_acquire_volume))
+		goto no_wait;
+
+	fscache_get_volume(volume, fscache_volume_get_create_work);
+	if (!schedule_work(&volume->work))
+		fscache_put_volume(volume, fscache_volume_put_create_work);
+
+maybe_wait:
+	if (wait) {
+		fscache_see_volume(volume, fscache_volume_wait_create_work);
+		wait_on_bit(&volume->flags, FSCACHE_VOLUME_CREATING,
+			    TASK_UNINTERRUPTIBLE);
+	}
+	return;
+no_wait:
+	clear_bit_unlock(FSCACHE_VOLUME_CREATING, &volume->flags);
+	wake_up_bit(&volume->flags, FSCACHE_VOLUME_CREATING);
+}
+
 /*
  * Acquire a volume representation cookie and link it to a (proposed) cache.
  */
@@ -269,7 +323,7 @@ struct fscache_volume *__fscache_acquire_volume(const char *volume_key,
 		return ERR_PTR(-EBUSY);
 	}
 
-	// PLACEHOLDER: Create the volume if we have a cache available
+	fscache_create_volume(volume, false);
 	return volume;
 }
 EXPORT_SYMBOL(__fscache_acquire_volume);
@@ -316,7 +370,12 @@ static void fscache_free_volume(struct fscache_volume *volume)
 	struct fscache_cache *cache = volume->cache;
 
 	if (volume->cache_priv) {
-		// PLACEHOLDER: Detach any attached cache
+		__fscache_begin_volume_access(volume, NULL,
+					      fscache_access_relinquish_volume);
+		if (volume->cache_priv)
+			cache->ops->free_volume(volume);
+		fscache_end_volume_access(volume, NULL,
+					  fscache_access_relinquish_volume_end);
 	}
 
 	down_write(&fscache_addremove_sem);
@@ -369,6 +428,30 @@ void __fscache_relinquish_volume(struct fscache_volume *volume,
 }
 EXPORT_SYMBOL(__fscache_relinquish_volume);
 
+/**
+ * fscache_withdraw_volume - Withdraw a volume from being cached
+ * @volume: Volume cookie
+ *
+ * Withdraw a cache volume from service, waiting for all accesses to complete
+ * before returning.
+ */
+void fscache_withdraw_volume(struct fscache_volume *volume)
+{
+	int n_accesses;
+
+	_debug("withdraw V=%x", volume->debug_id);
+
+	/* Allow wakeups on dec-to-0 */
+	n_accesses = atomic_dec_return(&volume->n_accesses);
+	trace_fscache_access_volume(volume->debug_id, 0,
+				    refcount_read(&volume->ref),
+				    n_accesses, fscache_access_cache_unpin);
+
+	wait_var_event(&volume->n_accesses,
+		       atomic_read(&volume->n_accesses) == 0);
+}
+EXPORT_SYMBOL(fscache_withdraw_volume);
+
 #ifdef CONFIG_PROC_FS
 /*
  * Generate a list of volumes in /proc/fs/fscache/volumes
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index f78add6e7823..a10b66ca3544 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -51,6 +51,12 @@ struct fscache_cache {
 struct fscache_cache_ops {
 	/* name of cache provider */
 	const char *name;
+
+	/* Acquire a volume */
+	void (*acquire_volume)(struct fscache_volume *volume);
+
+	/* Free the cache's data attached to a volume */
+	void (*free_volume)(struct fscache_volume *volume);
 };
 
 extern struct workqueue_struct *fscache_wq;
@@ -65,6 +71,7 @@ extern int fscache_add_cache(struct fscache_cache *cache,
 			     const struct fscache_cache_ops *ops,
 			     void *cache_priv);
 extern void fscache_withdraw_cache(struct fscache_cache *cache);
+extern void fscache_withdraw_volume(struct fscache_volume *volume);
 
 extern void fscache_end_volume_access(struct fscache_volume *volume,
 				      struct fscache_cookie *cookie,
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index b1a962adfd16..1d576bd8112e 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -64,8 +64,12 @@ enum fscache_cookie_trace {
 };
 
 enum fscache_access_trace {
+	fscache_access_acquire_volume,
+	fscache_access_acquire_volume_end,
 	fscache_access_cache_pin,
 	fscache_access_cache_unpin,
+	fscache_access_relinquish_volume,
+	fscache_access_relinquish_volume_end,
 	fscache_access_unlive,
 };
 
@@ -96,7 +100,8 @@ enum fscache_access_trace {
 	EM(fscache_volume_put_hash_collision,	"PUT hcoll")		\
 	EM(fscache_volume_put_relinquish,	"PUT relnq")		\
 	EM(fscache_volume_see_create_work,	"SEE creat")		\
-	E_(fscache_volume_see_hash_wake,	"SEE hwake")
+	EM(fscache_volume_see_hash_wake,	"SEE hwake")		\
+	E_(fscache_volume_wait_create_work,	"WAIT crea")
 
 #define fscache_cookie_traces						\
 	EM(fscache_cookie_collision,		"*COLLIDE*")		\
@@ -115,8 +120,12 @@ enum fscache_access_trace {
 	E_(fscache_cookie_see_work,		"-   work ")
 
 #define fscache_access_traces		\
+	EM(fscache_access_acquire_volume,	"BEGIN acq_vol")	\
+	EM(fscache_access_acquire_volume_end,	"END   acq_vol")	\
 	EM(fscache_access_cache_pin,		"PIN   cache  ")	\
 	EM(fscache_access_cache_unpin,		"UNPIN cache  ")	\
+	EM(fscache_access_relinquish_volume,	"BEGIN rlq_vol")	\
+	EM(fscache_access_relinquish_volume_end,"END   rlq_vol")	\
 	E_(fscache_access_unlive,		"END   unlive ")
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
