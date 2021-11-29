Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6667A46198A
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:36:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhlV-00033w-U4; Mon, 29 Nov 2021 14:36:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhlT-00033h-EA
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pJDPFxgX06oOQ2c/dIGfi7miyqMxm6oCFsrN75aNgPo=; b=ATcY1ARUDL92qCZzy5Ztlo7q6f
 toxF6kXfe6wkzcKoj/3SYP9JSIGDc4Kda5TvwcNiP29KrEi3hgrzorRbhN3nfCjAOyGvo3/aU7EDt
 VyOU01GQ76BiCf/IMR0JvaywGnYx2iPLTKwRUSAzCZXQIsX3SFERRFGDO3NdkzXMsMsA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pJDPFxgX06oOQ2c/dIGfi7miyqMxm6oCFsrN75aNgPo=; b=PtSRrun02zeOJUmP/f+49zL0/o
 KrRb3kbfuRftAJHlFKAOj4P0sC3G08xoDfBBDuNDGzp6a90XKEag0BQrJpjJZrV/JQohymAXQxI/T
 /vkUrXsou/ReaWj+4XQSsR/EKLfNsfA8Cy7/fUtFFNJ/LML65fR3qQ5dE8+hA1p/2+as=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhlS-0000de-MQ
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196572;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pJDPFxgX06oOQ2c/dIGfi7miyqMxm6oCFsrN75aNgPo=;
 b=fvXOUZw9o5aYRjyUB5BWUuGi7+bHlVeFhyCbY+EnHNWT9ohf7Mk0kGjgcZQU+CNloRGSGP
 bIYSXk75KuybEFWv/g7BEcEM3G5su6k5tUWFBlgkrDJu6FXj+LCDh3WZwXcvUmEmtCpv7L
 lzIGxZ3kpcuP57JnN2vumcAvJCBjFqg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-NA8WHczfPH61ksIitEOFOw-1; Mon, 29 Nov 2021 09:36:07 -0500
X-MC-Unique: NA8WHczfPH61ksIitEOFOw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71C4010168C0;
 Mon, 29 Nov 2021 14:36:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 75F4371CBF;
 Mon, 29 Nov 2021 14:35:42 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:35:41 +0000
Message-ID: <163819654165.215744.3797804661644212436.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a stat counter of culling events whereby the cache
 backend
 culls a file to make space (when asked by cachefilesd in this case) and
 display
 in /proc/fs/fscache/stats. Signed-off-by: David Howells <dhowells@redhat.com>
 cc: linux-cachefs@redhat.com --- 
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
X-Headers-End: 1mrhlS-0000de-MQ
Subject: [V9fs-developer] [PATCH 54/64] fscache,
 cachefiles: Display stat of culling events
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

Add a stat counter of culling events whereby the cache backend culls a file
to make space (when asked by cachefilesd in this case) and display in
/proc/fs/fscache/stats.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/namei.c         |    1 +
 fs/fscache/stats.c            |    7 +++++--
 include/linux/fscache-cache.h |    3 +++
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 7e24a7a2234d..a651da35dcd0 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -803,6 +803,7 @@ int cachefiles_cull(struct cachefiles_cache *cache, struct dentry *dir,
 	if (ret < 0)
 		goto error;
 
+	fscache_count_culled();
 	dput(victim);
 	_leave(" = 0");
 	return 0;
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index db2f4e225dd9..fc94e5e79f1c 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -46,6 +46,8 @@ atomic_t fscache_n_no_write_space;
 EXPORT_SYMBOL(fscache_n_no_write_space);
 atomic_t fscache_n_no_create_space;
 EXPORT_SYMBOL(fscache_n_no_create_space);
+atomic_t fscache_n_culled;
+EXPORT_SYMBOL(fscache_n_culled);
 
 /*
  * display the general statistics
@@ -86,9 +88,10 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_relinquishes_retire),
 		   atomic_read(&fscache_n_relinquishes_dropped));
 
-	seq_printf(m, "NoSpace: nwr=%u ncr=%u\n",
+	seq_printf(m, "NoSpace: nwr=%u ncr=%u cull=%u\n",
 		   atomic_read(&fscache_n_no_write_space),
-		   atomic_read(&fscache_n_no_create_space));
+		   atomic_read(&fscache_n_no_create_space),
+		   atomic_read(&fscache_n_culled));
 
 	seq_printf(m, "IO     : rd=%u wr=%u\n",
 		   atomic_read(&fscache_n_read),
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 1d7d43171243..7665bcab945e 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -188,15 +188,18 @@ extern atomic_t fscache_n_read;
 extern atomic_t fscache_n_write;
 extern atomic_t fscache_n_no_write_space;
 extern atomic_t fscache_n_no_create_space;
+extern atomic_t fscache_n_culled;
 #define fscache_count_read() atomic_inc(&fscache_n_read)
 #define fscache_count_write() atomic_inc(&fscache_n_write)
 #define fscache_count_no_write_space() atomic_inc(&fscache_n_no_write_space)
 #define fscache_count_no_create_space() atomic_inc(&fscache_n_no_create_space)
+#define fscache_count_culled() atomic_inc(&fscache_n_culled)
 #else
 #define fscache_count_read() do {} while(0)
 #define fscache_count_write() do {} while(0)
 #define fscache_count_no_write_space() do {} while(0)
 #define fscache_count_no_create_space() do {} while(0)
+#define fscache_count_culled() do {} while(0)
 #endif
 
 #endif /* _LINUX_FSCACHE_CACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
