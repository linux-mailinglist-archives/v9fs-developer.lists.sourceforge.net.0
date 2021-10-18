Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C480C432142
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:00:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU8E-0006sO-Go; Mon, 18 Oct 2021 15:00:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU80-0006qo-Vv
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1PPrqrxGOJrlgwg8gulFUWciRFXvDwTO+SwsfF1Gf8=; b=DzwZePZw5Cro9ITYdmXrwVshpr
 xJUBJlgDVJ3QM27lOdBEYSUK18kKimcfwK4baT0pRo2GDZI96CYbWU9rswY3O8TmNACitNdYLSUBu
 1zQcavI0KFP23Z2rwaWkZhtQvvvv2sSBfi2w98KcGUkkUqwVp/EZx76q7gxKtHSI5hXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d1PPrqrxGOJrlgwg8gulFUWciRFXvDwTO+SwsfF1Gf8=; b=VJk8zS2hF/6ZVMiFXpwSY0ksCE
 vYk9i3qVREedNLbvRLl1QBg6U0GUYcg8P96SemF1FS0qJsEfhnkBj1YHzuXi1uTYo1UE8aIQRd9Xi
 ntNTUtlBYyK8ABvxIg13GoFpb558CdoDjrkIJURZIdJCajHS0RX7WuQSHeTp8blKpA/s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU80-0004ea-5e
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569229;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=d1PPrqrxGOJrlgwg8gulFUWciRFXvDwTO+SwsfF1Gf8=;
 b=TzL3NXnKFFviPj6fqB5Eqh13wWEAfDDtGVVf86yjhFzf35kodNDv72HzcSyJn8jsPWaoSM
 tYzwcxkZHgHIqATluztHahsK2qP+Bmt0c0WnJOZMyjtu4tav1G+x28omFlrS3384slzf86
 MPcJVJ2OMq586dwlkdv8/HRgodadSrs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-386-HreReUItP1K4SxpQq7cwIA-1; Mon, 18 Oct 2021 11:00:25 -0400
X-MC-Unique: HreReUItP1K4SxpQq7cwIA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC8B6A40C3;
 Mon, 18 Oct 2021 15:00:23 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 73D9360D30;
 Mon, 18 Oct 2021 15:00:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:00:19 +0100
Message-ID: <163456921953.2614702.8851027265019457749.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: --- fs/fscache/cookie.c | 18 fs/fscache/internal.h | 18
 fs/fscache/stats.c
 | 9 +++------ include/linux/fscache-cache.h | 11 include/linux/fscache.h
 | 43 +++ [...] 
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
X-Headers-End: 1mcU80-0004ea-5e
Subject: [V9fs-developer] [PATCH 37/67] fscache: Move
 fscache_update_cookie() complete inline
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


---

 fs/fscache/cookie.c           |   18 -----------------
 fs/fscache/internal.h         |   18 -----------------
 fs/fscache/stats.c            |    9 +++------
 include/linux/fscache-cache.h |   11 ----------
 include/linux/fscache.h       |   43 ++++++++++++++++++++++++++++++++++++++++-
 5 files changed, 45 insertions(+), 54 deletions(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index c6b553609f33..94976f90dc71 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -748,24 +748,6 @@ void __fscache_invalidate(struct fscache_cookie *cookie)
 }
 EXPORT_SYMBOL(__fscache_invalidate);
 
-/*
- * Update the index entries backing a cookie.  The writeback is done lazily.
- */
-void __fscache_update_cookie(struct fscache_cookie *cookie,
-			     const void *aux_data, const loff_t *object_size)
-{
-	fscache_stat(&fscache_n_updates);
-
-	spin_lock(&cookie->lock);
-
-	fscache_update_aux(cookie, aux_data, object_size);
-	set_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
-
-	spin_unlock(&cookie->lock);
-	_leave("");
-}
-EXPORT_SYMBOL(__fscache_update_cookie);
-
 /*
  * Remove a cookie from the hash table.
  */
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 62e6a5bbef8e..1cb1effa7cba 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -107,10 +107,6 @@ extern atomic_t fscache_n_acquires_oom;
 extern atomic_t fscache_n_invalidates;
 extern atomic_t fscache_n_invalidates_run;
 
-extern atomic_t fscache_n_updates;
-extern atomic_t fscache_n_updates_null;
-extern atomic_t fscache_n_updates_run;
-
 extern atomic_t fscache_n_relinquishes;
 extern atomic_t fscache_n_relinquishes_null;
 extern atomic_t fscache_n_relinquishes_retire;
@@ -152,20 +148,6 @@ bool fscache_begin_volume_access(struct fscache_volume *volume,
 				 enum fscache_access_trace why);
 void fscache_create_volume(struct fscache_volume *volume, bool wait);
 
-/*
- * Update the auxiliary data on a cookie.
- */
-static inline
-void fscache_update_aux(struct fscache_cookie *cookie,
-			const void *aux_data, const loff_t *object_size)
-{
-	void *p = fscache_get_aux(cookie);
-
-	if (aux_data && p)
-		memcpy(p, aux_data, cookie->aux_len);
-	if (object_size)
-		cookie->object_size = *object_size;
-}
 
 /*****************************************************************************/
 /*
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 5700e5712018..a16473df8be0 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -55,8 +55,7 @@ atomic_t fscache_n_invalidates;
 atomic_t fscache_n_invalidates_run;
 
 atomic_t fscache_n_updates;
-atomic_t fscache_n_updates_null;
-atomic_t fscache_n_updates_run;
+EXPORT_SYMBOL(fscache_n_updates);
 
 atomic_t fscache_n_relinquishes;
 atomic_t fscache_n_relinquishes_null;
@@ -105,10 +104,8 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_invalidates),
 		   atomic_read(&fscache_n_invalidates_run));
 
-	seq_printf(m, "Updates: n=%u nul=%u run=%u\n",
-		   atomic_read(&fscache_n_updates),
-		   atomic_read(&fscache_n_updates_null),
-		   atomic_read(&fscache_n_updates_run));
+	seq_printf(m, "Updates: n=%u\n",
+		   atomic_read(&fscache_n_updates));
 
 	seq_printf(m, "Relinqs: n=%u rtr=%u drop=%u\n",
 		   atomic_read(&fscache_n_relinquishes),
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 657e54b4cd90..bf0d3e862915 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -139,17 +139,6 @@ static inline void *fscache_get_key(struct fscache_cookie *cookie)
 		return cookie->key;
 }
 
-/*
- * Find the auxiliary data on a cookie.
- */
-static inline void *fscache_get_aux(struct fscache_cookie *cookie)
-{
-	if (cookie->aux_len <= sizeof(cookie->inline_aux))
-		return cookie->inline_aux;
-	else
-		return cookie->aux;
-}
-
 /**
  * fscache_cookie_lookup_negative - Note negative lookup
  * @cookie: The cookie that was being looked up
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index c6ee09661351..41e579ff65ee 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -159,7 +159,6 @@ extern struct fscache_cookie *__fscache_acquire_cookie(
 extern void __fscache_use_cookie(struct fscache_cookie *, bool);
 extern void __fscache_unuse_cookie(struct fscache_cookie *, const void *, const loff_t *);
 extern void __fscache_relinquish_cookie(struct fscache_cookie *, bool);
-extern void __fscache_update_cookie(struct fscache_cookie *, const void *, const loff_t *);
 extern void __fscache_invalidate(struct fscache_cookie *);
 #ifdef FSCACHE_USE_NEW_IO_API
 extern int __fscache_begin_read_operation(struct netfs_cache_resources *, struct fscache_cookie *);
@@ -293,6 +292,48 @@ void fscache_relinquish_cookie(struct fscache_cookie *cookie, bool retire)
 		__fscache_relinquish_cookie(cookie, retire);
 }
 
+/*
+ * Find the auxiliary data on a cookie.
+ */
+static inline void *fscache_get_aux(struct fscache_cookie *cookie)
+{
+	if (cookie->aux_len <= sizeof(cookie->inline_aux))
+		return cookie->inline_aux;
+	else
+		return cookie->aux;
+}
+
+/*
+ * Update the auxiliary data on a cookie.
+ */
+static inline
+void fscache_update_aux(struct fscache_cookie *cookie,
+			const void *aux_data, const loff_t *object_size)
+{
+	void *p = fscache_get_aux(cookie);
+
+	if (aux_data && p)
+		memcpy(p, aux_data, cookie->aux_len);
+	if (object_size)
+		cookie->object_size = *object_size;
+}
+
+#ifdef CONFIG_FSCACHE_STATS
+extern atomic_t fscache_n_updates;
+#endif
+
+static inline
+void __fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data,
+			     const loff_t *object_size)
+{
+#ifdef CONFIG_FSCACHE_STATS
+	atomic_inc(&fscache_n_updates);
+#endif
+	fscache_update_aux(cookie, aux_data, object_size);
+	smp_wmb();
+	set_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
+}
+
 /**
  * fscache_update_cookie - Request that a cache object be updated
  * @cookie: The cookie representing the cache object




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
