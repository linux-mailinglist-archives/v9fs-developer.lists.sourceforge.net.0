Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A2D46F0A2
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 18:07:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvMso-000427-Gg; Thu, 09 Dec 2021 17:07:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvMsn-000421-BS
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L0YjhKRvGDbfZKBMgEZdGnB5jroGX3yh0qnJ2zVBoPY=; b=K9S0Mj8+iLLPRhx+qEqrGd+Tdq
 cAkvRYMLUTLE381dQx0J1QWZZeyELr8fugqh19/ZHRur1Ky9IPN5Vl+W0K64QwCPIj9akycfNBj9+
 //qXQvOs9ar7UK3U7/qpiBHkvXfVSnrCxRXBonPoPmXFt3Z2Qet632VncJ9ojwnxXjzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L0YjhKRvGDbfZKBMgEZdGnB5jroGX3yh0qnJ2zVBoPY=; b=TlCvS4V0QO5ot8uflMRSxWAboe
 sucnQ4UmRzG5PTTi8lTaNIeTjivWEuvXdAbPsi3EA1+OoFDVJOklOzWwJB2iVN1Iq9s5MKXnmPd4N
 Paow3xuUaKDgkwsLM56pB/l+HqsfT85TEQ3ec0KM+3nLW+xSuhlYTBs98xiSPZ9COiYA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvMsm-00AC9o-Aj
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639069614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=L0YjhKRvGDbfZKBMgEZdGnB5jroGX3yh0qnJ2zVBoPY=;
 b=CZgY0mZqfzLcPtQ6X2y9qAVBWezg2MsvulkH9zA8i2VgMwuTYfw/BVarM2yXAntEypyNrp
 W4KnBtKAB7nmoupmPcJYH6L5j3ve+rQnr3N2zgCR6dpmQRA8+8woIBvm/cLflDTQqRrNj9
 cVBeepQ5nKFfqd8fmArxfAwYAL539QU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-NmPDoxx-MuOOZWkFbKRGxg-1; Thu, 09 Dec 2021 12:06:51 -0500
X-MC-Unique: NmPDoxx-MuOOZWkFbKRGxg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1DD2805744;
 Thu,  9 Dec 2021 17:06:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 88C2460BF1;
 Thu,  9 Dec 2021 17:06:24 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 09 Dec 2021 17:06:23 +0000
Message-ID: <163906958369.143852.7257100711818401748.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add stat counters of no-space events that caused caching not
 to happen and display in /proc/fs/fscache/stats. Signed-off-by: David Howells
 <dhowells@redhat.com> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163819653216.215744.17210522251617386509.stgit@warthog.procyon.org.uk/
 # v1 --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1mvMsm-00AC9o-Aj
Subject: [V9fs-developer] [PATCH v2 53/67] fscache,
 cachefiles: Display stats of no-space events
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

Add stat counters of no-space events that caused caching not to happen and
display in /proc/fs/fscache/stats.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819653216.215744.17210522251617386509.stgit@warthog.procyon.org.uk/ # v1
---

 fs/cachefiles/cache.c         |   18 +++++++++++++++---
 fs/cachefiles/daemon.c        |    2 +-
 fs/cachefiles/internal.h      |   11 +++++++++--
 fs/cachefiles/io.c            |    7 +++++--
 fs/cachefiles/namei.c         |    6 ++++--
 fs/fscache/stats.c            |    8 ++++++++
 include/linux/fscache-cache.h |    6 ++++++
 7 files changed, 48 insertions(+), 10 deletions(-)

diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
index 2f7f5381afbe..327cea71557f 100644
--- a/fs/cachefiles/cache.c
+++ b/fs/cachefiles/cache.c
@@ -147,7 +147,7 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
 	pr_info("File cache on %s registered\n", cache_cookie->name);
 
 	/* check how much space the cache has */
-	cachefiles_has_space(cache, 0, 0);
+	cachefiles_has_space(cache, 0, 0, cachefiles_has_space_check);
 	cachefiles_end_secure(cache, saved_cred);
 	_leave(" = 0 [%px]", cache->cache);
 	return 0;
@@ -175,7 +175,8 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
  * cache
  */
 int cachefiles_has_space(struct cachefiles_cache *cache,
-			 unsigned fnr, unsigned bnr)
+			 unsigned fnr, unsigned bnr,
+			 enum cachefiles_has_space_for reason)
 {
 	struct kstatfs stats;
 	u64 b_avail, b_writing;
@@ -233,7 +234,7 @@ int cachefiles_has_space(struct cachefiles_cache *cache,
 	ret = -ENOBUFS;
 	if (stats.f_ffree < cache->fstop ||
 	    b_avail < cache->bstop)
-		goto begin_cull;
+		goto stop_and_begin_cull;
 
 	ret = 0;
 	if (stats.f_ffree < cache->fcull ||
@@ -252,6 +253,17 @@ int cachefiles_has_space(struct cachefiles_cache *cache,
 	//_leave(" = 0");
 	return 0;
 
+stop_and_begin_cull:
+	switch (reason) {
+	case cachefiles_has_space_for_write:
+		fscache_count_no_write_space();
+		break;
+	case cachefiles_has_space_for_create:
+		fscache_count_no_create_space();
+		break;
+	default:
+		break;
+	}
 begin_cull:
 	if (!test_and_set_bit(CACHEFILES_CULLING, &cache->flags)) {
 		_debug("### CULL CACHE ###");
diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
index 45af558a696e..40a792421fc1 100644
--- a/fs/cachefiles/daemon.c
+++ b/fs/cachefiles/daemon.c
@@ -170,7 +170,7 @@ static ssize_t cachefiles_daemon_read(struct file *file, char __user *_buffer,
 		return 0;
 
 	/* check how much space the cache has */
-	cachefiles_has_space(cache, 0, 0);
+	cachefiles_has_space(cache, 0, 0, cachefiles_has_space_check);
 
 	/* summarise */
 	f_released = atomic_xchg(&cache->f_released, 0);
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 77c899b3eaa5..5396baad45ed 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -130,10 +130,17 @@ static inline void cachefiles_state_changed(struct cachefiles_cache *cache)
  * cache.c
  */
 extern int cachefiles_add_cache(struct cachefiles_cache *cache);
-extern int cachefiles_has_space(struct cachefiles_cache *cache,
-				unsigned fnr, unsigned bnr);
 extern void cachefiles_withdraw_cache(struct cachefiles_cache *cache);
 
+enum cachefiles_has_space_for {
+	cachefiles_has_space_check,
+	cachefiles_has_space_for_write,
+	cachefiles_has_space_for_create,
+};
+extern int cachefiles_has_space(struct cachefiles_cache *cache,
+				unsigned fnr, unsigned bnr,
+				enum cachefiles_has_space_for reason);
+
 /*
  * daemon.c
  */
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 6f4dce0cfc36..60b1eac2ce78 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -468,7 +468,8 @@ static int __cachefiles_prepare_write(struct netfs_cache_resources *cres,
 	 * space, we need to see if it's fully allocated.  If it's not, we may
 	 * want to cull it.
 	 */
-	if (cachefiles_has_space(cache, 0, *_len / PAGE_SIZE) == 0)
+	if (cachefiles_has_space(cache, 0, *_len / PAGE_SIZE,
+				 cachefiles_has_space_check) == 0)
 		return 0; /* Enough space to simply overwrite the whole block */
 
 	pos = cachefiles_inject_read_error();
@@ -483,6 +484,7 @@ static int __cachefiles_prepare_write(struct netfs_cache_resources *cres,
 		return 0; /* Fully allocated */
 
 	/* Partially allocated, but insufficient space: cull. */
+	fscache_count_no_write_space();
 	ret = cachefiles_inject_remove_error();
 	if (ret == 0)
 		ret = vfs_fallocate(file, FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
@@ -498,7 +500,8 @@ static int __cachefiles_prepare_write(struct netfs_cache_resources *cres,
 	return ret;
 
 check_space:
-	return cachefiles_has_space(cache, 0, *_len / PAGE_SIZE);
+	return cachefiles_has_space(cache, 0, *_len / PAGE_SIZE,
+				    cachefiles_has_space_for_write);
 }
 
 static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 1e9845b8e939..f31d678159ac 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -115,7 +115,8 @@ struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
 
 	/* we need to create the subdir if it doesn't exist yet */
 	if (d_is_negative(subdir)) {
-		ret = cachefiles_has_space(cache, 1, 0);
+		ret = cachefiles_has_space(cache, 1, 0,
+					   cachefiles_has_space_for_create);
 		if (ret < 0)
 			goto mkdir_error;
 
@@ -511,7 +512,8 @@ static bool cachefiles_create_file(struct cachefiles_object *object)
 	struct file *file;
 	int ret;
 
-	ret = cachefiles_has_space(object->volume->cache, 1, 0);
+	ret = cachefiles_has_space(object->volume->cache, 1, 0,
+				   cachefiles_has_space_for_create);
 	if (ret < 0)
 		return false;
 
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 798ee68b3e9d..db2f4e225dd9 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -42,6 +42,10 @@ atomic_t fscache_n_read;
 EXPORT_SYMBOL(fscache_n_read);
 atomic_t fscache_n_write;
 EXPORT_SYMBOL(fscache_n_write);
+atomic_t fscache_n_no_write_space;
+EXPORT_SYMBOL(fscache_n_no_write_space);
+atomic_t fscache_n_no_create_space;
+EXPORT_SYMBOL(fscache_n_no_create_space);
 
 /*
  * display the general statistics
@@ -82,6 +86,10 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_relinquishes_retire),
 		   atomic_read(&fscache_n_relinquishes_dropped));
 
+	seq_printf(m, "NoSpace: nwr=%u ncr=%u\n",
+		   atomic_read(&fscache_n_no_write_space),
+		   atomic_read(&fscache_n_no_create_space));
+
 	seq_printf(m, "IO     : rd=%u wr=%u\n",
 		   atomic_read(&fscache_n_read),
 		   atomic_read(&fscache_n_write));
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 3fa4902dc87c..007e47f38610 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -186,11 +186,17 @@ static inline void fscache_wait_for_objects(struct fscache_cache *cache)
 #ifdef CONFIG_FSCACHE_STATS
 extern atomic_t fscache_n_read;
 extern atomic_t fscache_n_write;
+extern atomic_t fscache_n_no_write_space;
+extern atomic_t fscache_n_no_create_space;
 #define fscache_count_read() atomic_inc(&fscache_n_read)
 #define fscache_count_write() atomic_inc(&fscache_n_write)
+#define fscache_count_no_write_space() atomic_inc(&fscache_n_no_write_space)
+#define fscache_count_no_create_space() atomic_inc(&fscache_n_no_create_space)
 #else
 #define fscache_count_read() do {} while(0)
 #define fscache_count_write() do {} while(0)
+#define fscache_count_no_write_space() do {} while(0)
+#define fscache_count_no_create_space() do {} while(0)
 #endif
 
 #endif /* _LINUX_FSCACHE_CACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
