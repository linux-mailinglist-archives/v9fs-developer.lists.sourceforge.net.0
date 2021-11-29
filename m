Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E344618DD
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:31:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhh1-0002kX-Eb; Mon, 29 Nov 2021 14:31:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhgo-0002jv-7N
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pIhRJx7HDQBwG/sJUGK3dK+KYCH7vHe6U+UpunR8FyU=; b=Ay+QsaHlch3OjtJ52b+Y+NAkwl
 XKYasJXCqLcLu83cSCLe+CpRqdS1vrqoHG337ysr3zndJkm/kN7U4PFGShwiT09LSe4U21lwaQQMv
 aCaFlxyvyphFBVIwVPJC6oL0+MTouXny43gscrXF0XMmxckQybC2Ysi871yPuB9AOBfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pIhRJx7HDQBwG/sJUGK3dK+KYCH7vHe6U+UpunR8FyU=; b=ZBmDaDVg+J7xCtTykEbZ27mYlL
 +4Vo2iLrjevTM6gRhBkAKr9ytLYsAJtLU4E0kQj3GEKmbMTu5fd7ljq8TiHvzUZG5HOM6WoPU83CW
 F5AoQODabMCAEuFeff/VTqtGJiCGRg3VTSWkrhYplH3h0VOLDbl+gbqnaDHDZRjm9xW4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhgo-00EDk8-Bv
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pIhRJx7HDQBwG/sJUGK3dK+KYCH7vHe6U+UpunR8FyU=;
 b=YH06EozetbC5JZHaypmt8BEUaVgd4Pwgj5wsOgiwKJS+Fd9pYZsRNVYnSntWN9QSpDwaGe
 aBKWeI7fm3LyVUes86KkRq2uLWXSDb+l82bd/ZBxsC2F/gaCloIW8sqj1mJ0RJj1TdcEAC
 bSXjNHHA/YBvLGW/VPlvp+N3GJbEM0E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-wbEBxu3jNyqvMlnL16nBqQ-1; Mon, 29 Nov 2021 09:31:21 -0500
X-MC-Unique: wbEBxu3jNyqvMlnL16nBqQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 764522F7A3;
 Mon, 29 Nov 2021 14:31:09 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 75EB419D9F;
 Mon, 29 Nov 2021 14:31:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:31:05 +0000
Message-ID: <163819626562.215744.1503690975344731661.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a macro to report a cache I/O error and to tell fscache
 that the cache is in trouble. Also add a pointer to the fscache cache cookie
 from the cachefiles_cache struct as we need that to pass to
 fscache_io_error().
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhgo-00EDk8-Bv
Subject: [V9fs-developer] [PATCH 34/64] cachefiles: Add cache error
 reporting macro
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a macro to report a cache I/O error and to tell fscache that the cache
is in trouble.

Also add a pointer to the fscache cache cookie from the cachefiles_cache
struct as we need that to pass to fscache_io_error().

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/internal.h |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index b51146a29aca..b2adcb59b4ce 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -30,6 +30,7 @@ struct cachefiles_object {
  * Cache files cache definition
  */
 struct cachefiles_cache {
+	struct fscache_cache		*cache;		/* Cache cookie */
 	struct vfsmount			*mnt;		/* mountpoint holding the cache */
 	struct file			*cachefilesd;	/* manager daemon handle */
 	const struct cred		*cache_cred;	/* security override for accessing cache */
@@ -103,6 +104,16 @@ static inline int cachefiles_inject_remove_error(void)
 	return cachefiles_error_injection_state & 2 ? -EIO : 0;
 }
 
+/*
+ * Error handling
+ */
+#define cachefiles_io_error(___cache, FMT, ...)		\
+do {							\
+	pr_err("I/O Error: " FMT"\n", ##__VA_ARGS__);	\
+	fscache_io_error((___cache)->cache);		\
+	set_bit(CACHEFILES_DEAD, &(___cache)->flags);	\
+} while (0)
+
 
 /*
  * Debug tracing




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
