Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E73CD4320A0
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:54:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU2S-0006dK-Ky; Mon, 18 Oct 2021 14:54:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcU2R-0006dA-Fn
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HLyJpHLHgdEk/dLhjAzTgQqnW46fpcyamO0/BfGexg0=; b=HUER+NpStVu0BcfOoEB7741Wvc
 LA1AYYy7KvwkKZIcFvU8NS8NFAxt3RkenEvAHHc2KHgjMJMIH1d9aBkq+Sh2/sHEzlCdkeextcRAP
 jEhPdGMJa7q7SkbHrHO6EShmR6kJN0MCagXJnrI1JRWxfJ8mO1y8Plm3ZZcHZOoo0Yuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HLyJpHLHgdEk/dLhjAzTgQqnW46fpcyamO0/BfGexg0=; b=GSAHflJRwmn8q9KPrlOxjX993d
 M6NM0QWxx0hF9BwjwJLZlmMQlJtFz4EzlAu6N7IbdOnTRs+zkH4wwysh+6ymHdzJd0fQrgKSLQMT1
 0XCoPxVK6sa35+saxAlcWf+cV1eVw+VmDjMEfPYDkfOVD6ZFsR6s9mqgWQIJwnwdHi3o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU2Q-0003dr-Ae
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HLyJpHLHgdEk/dLhjAzTgQqnW46fpcyamO0/BfGexg0=;
 b=OtUHS+LK6MCdR7OsylDBtzpSspNoJRuAKP9ejm4jnKoZQuHCQLSnUdtIcHwDiWXQHURghp
 61cy44Bmnj9NUHAbdfh5fFwqEQOM5wehln97xA92mTBAUsMtj6Uwl7PWaSvclf5i2daccX
 HP2nQ0YeL9yrEaR/8MSvRtJEklqggsg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-490-4SBX_taHOHi2d4qgCr4dFg-1; Mon, 18 Oct 2021 10:54:45 -0400
X-MC-Unique: 4SBX_taHOHi2d4qgCr4dFg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F116800685;
 Mon, 18 Oct 2021 14:54:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F03675DF21;
 Mon, 18 Oct 2021 14:54:39 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:54:39 +0100
Message-ID: <163456887921.2614702.840718814028578881.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
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
 Content preview: Disable fscache_begin_operation() so that the operation
 manager
 can be removed and replaced. Signed-off-by: David Howells
 <dhowells@redhat.com>
 --- fs/cachefiles/io.c | 13 ++++++++++++- fs/fscache/io.c | 2 ++ 2 files
 changed, 14 insertions(+), 1 deletion(-) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU2Q-0003dr-Ae
Subject: [V9fs-developer] [PATCH 15/67] fscache: Disable
 fscache_begin_operation()
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

Disable fscache_begin_operation() so that the operation manager can be
removed and replaced.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c |   13 ++++++++++++-
 fs/fscache/io.c    |    2 ++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 5ead97de4bb7..4cc57be88f37 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -271,6 +271,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subrequest *subreq,
 						      loff_t i_size)
 {
+#if 0
 	struct fscache_operation *op = subreq->rreq->cache_resources.cache_priv;
 	struct cachefiles_object *object;
 	struct cachefiles_cache *cache;
@@ -335,6 +336,9 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 out:
 	cachefiles_end_secure(cache, saved_cred);
 	return ret;
+#endif
+	return subreq->start >= i_size ?
+		NETFS_FILL_WITH_ZEROES : NETFS_DOWNLOAD_FROM_SERVER;
 }
 
 /*
@@ -359,6 +363,7 @@ static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
 static int cachefiles_prepare_fallback_write(struct netfs_cache_resources *cres,
 					     pgoff_t index)
 {
+#if 0
 	struct fscache_operation *op = cres->cache_priv;
 	struct cachefiles_object *object;
 	struct cachefiles_cache *cache;
@@ -369,6 +374,8 @@ static int cachefiles_prepare_fallback_write(struct netfs_cache_resources *cres,
 	cache = container_of(object->fscache.cache,
 			     struct cachefiles_cache, cache);
 	return cachefiles_has_space(cache, 0, 1);
+#endif
+	return -ENOBUFS;
 }
 
 /*
@@ -376,6 +383,7 @@ static int cachefiles_prepare_fallback_write(struct netfs_cache_resources *cres,
  */
 static void cachefiles_end_operation(struct netfs_cache_resources *cres)
 {
+#if 0
 	struct fscache_operation *op = cres->cache_priv;
 	struct file *file = cres->cache_priv2;
 
@@ -387,8 +395,8 @@ static void cachefiles_end_operation(struct netfs_cache_resources *cres)
 		fscache_op_complete(op, false);
 		fscache_put_operation(op);
 	}
-
 	_leave("");
+#endif
 }
 
 static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
@@ -406,6 +414,7 @@ static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
 int cachefiles_begin_operation(struct netfs_cache_resources *cres,
 			       struct fscache_operation *op)
 {
+#if 0
 	struct cachefiles_object *object;
 	struct cachefiles_cache *cache;
 	struct path path;
@@ -441,5 +450,7 @@ int cachefiles_begin_operation(struct netfs_cache_resources *cres,
 
 error_file:
 	fput(file);
+#endif
+	cres->ops = &cachefiles_netfs_cache_ops;
 	return -EIO;
 }
diff --git a/fs/fscache/io.c b/fs/fscache/io.c
index 7ac34c2e45fe..2547892a6064 100644
--- a/fs/fscache/io.c
+++ b/fs/fscache/io.c
@@ -31,6 +31,7 @@ int __fscache_begin_operation(struct netfs_cache_resources *cres,
 			      struct fscache_cookie *cookie,
 			      bool for_write)
 {
+#if 0
 	struct fscache_operation *op;
 	struct fscache_object *object;
 	bool wake_cookie = false;
@@ -144,6 +145,7 @@ int __fscache_begin_operation(struct netfs_cache_resources *cres,
 		fscache_stat(&fscache_n_stores_nobufs);
 	else
 		fscache_stat(&fscache_n_retrievals_nobufs);
+#endif
 	_leave(" = -ENOBUFS");
 	return -ENOBUFS;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
