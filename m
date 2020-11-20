Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F0B2BAD69
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:21:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8EJ-0005o4-F8; Fri, 20 Nov 2020 15:21:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg86u-0004Gh-Bi
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uomWbsImiumFICDtRpb1G8QZPYUTXnwJ7BaEhbKeStk=; b=dUCx8TSuyxJ8tNBiHqfIY5176x
 wfRhwl6ZGtKRiA+y+RCP6OfBO9RE/OpJy6sGwgfn6vYkYDx5TzP/e3UTra4ccs5uFdJO/oKr4dNhk
 IbH86pXySRNJoUYkpVyuRMy+ydqbda7QA/Y6wBj9w3WQdlfNfso/iKhGHUgEIRK00I9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uomWbsImiumFICDtRpb1G8QZPYUTXnwJ7BaEhbKeStk=; b=BtdJqKyKi8hj7pF90wwJlFy+oF
 3cHWLT2hejMTDX4E0MYnD8vsESUXbRtoyqmzGa5MhmtVu4MCAwoI5fw4p51Dh/Qavw5J5TXGG0w5A
 MuJgoMyu1SE56En5KFgv9OafhiL4/dUckWuYV1xF6gaq6GVUyVfYTopv+BpmZLMKC1hs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg86s-00AdHd-Px
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uomWbsImiumFICDtRpb1G8QZPYUTXnwJ7BaEhbKeStk=;
 b=M3hZ9tFr6aBRStxxUYnf1m6ZZd1M5DlrMN2Z2/eTa1DfFcvVnmziLx03XcMD5Vbgi4Nt1W
 Sdv9YjJ4b0m83hT9OwgK9OS5vxV3hE4uV7amoh865aSrxg7gZxWS1HtIJvpiNgYVWSrKqQ
 CMntdGQjZNQijysnkWeVgUWTh9Mw4M4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-531-vWdiV8ipNHmYaGCZrhouZg-1; Fri, 20 Nov 2020 10:13:52 -0500
X-MC-Unique: vWdiV8ipNHmYaGCZrhouZg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 538EC1005D65;
 Fri, 20 Nov 2020 15:13:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 271235C1D5;
 Fri, 20 Nov 2020 15:13:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:13:43 +0000
Message-ID: <160588522336.3465195.4306404507840267540.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg86s-00AdHd-Px
Subject: [V9fs-developer] [RFC PATCH 52/76] fscache: disable cookie when
 doing an invalidation for DIO write
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
 Jeff Layton <jlayton@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeff Layton <jlayton@kernel.org>

O_DIRECT I/O is probably a good indicator that we don't need to be
caching this file at the moment. Disable the cookie by treating it
as we would a NULL cookie after the invalidation completes. Reenable
when the last unuse is done.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/cookie.c     |    9 ++++++++-
 include/linux/fscache.h |    9 ++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 1b30b28f7cf6..d20028535a86 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -427,8 +427,11 @@ void __fscache_unuse_cookie(struct fscache_cookie *cookie,
 {
 	if (aux_data || object_size)
 		__fscache_update_cookie(cookie, aux_data, object_size);
-	if (atomic_dec_and_test(&cookie->n_active))
+	if (atomic_dec_and_test(&cookie->n_active)) {
+		clear_bit(FSCACHE_COOKIE_DISABLED, &cookie->flags);
+		smp_mb__after_atomic();
 		wake_up_var(&cookie->n_active);
+	}
 }
 EXPORT_SYMBOL(__fscache_unuse_cookie);
 
@@ -554,6 +557,10 @@ void __fscache_invalidate(struct fscache_cookie *cookie,
 	 */
 	ASSERTCMP(cookie->type, !=, FSCACHE_COOKIE_TYPE_INDEX);
 
+	if ((flags & FSCACHE_INVAL_DIO_WRITE) &&
+	    test_and_set_bit(FSCACHE_COOKIE_DISABLED, &cookie->flags))
+		return;
+
 	spin_lock(&cookie->lock);
 	fscache_update_aux(cookie, aux_data, &new_size);
 	cookie->zero_point = new_size;
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 1d141d17f63b..3c173fb660a6 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -26,11 +26,13 @@
 #define fscache_available() (1)
 #define fscache_cookie_valid(cookie) (cookie)
 #define fscache_object_valid(object) (object)
+#define fscache_cookie_enabled(cookie) (cookie && !test_bit(FSCACHE_COOKIE_DISABLED, &cookie->flags))
 #else
 #define __fscache_available (0)
 #define fscache_available() (0)
 #define fscache_cookie_valid(cookie) (0)
 #define fscache_object_valid(object) (NULL)
+#define fscache_cookie_enabled(cookie) (0)
 #endif
 
 
@@ -127,6 +129,7 @@ struct fscache_cookie {
 
 	unsigned long			flags;
 #define FSCACHE_COOKIE_RELINQUISHED	6		/* T if cookie has been relinquished */
+#define FSCACHE_COOKIE_DISABLED		7		/* T if cookie has been disabled */
 
 	enum fscache_cookie_stage	stage;
 	enum fscache_cookie_type	type:8;
@@ -410,7 +413,7 @@ static inline
 void fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data,
 			   const loff_t *object_size)
 {
-	if (fscache_cookie_valid(cookie))
+	if (fscache_cookie_enabled(cookie))
 		__fscache_update_cookie(cookie, aux_data, object_size);
 }
 
@@ -468,7 +471,7 @@ static inline
 void fscache_invalidate(struct fscache_cookie *cookie,
 			const void *aux_data, loff_t size, unsigned int flags)
 {
-	if (fscache_cookie_valid(cookie))
+	if (fscache_cookie_enabled(cookie))
 		__fscache_invalidate(cookie, aux_data, size, flags);
 }
 
@@ -492,7 +495,7 @@ int fscache_begin_operation(struct fscache_cookie *cookie,
 			    struct fscache_op_resources *opr,
 			    enum fscache_want_stage want_stage)
 {
-	if (fscache_cookie_valid(cookie))
+	if (fscache_cookie_enabled(cookie))
 		return __fscache_begin_operation(cookie, opr, want_stage);
 	return -ENOBUFS;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
