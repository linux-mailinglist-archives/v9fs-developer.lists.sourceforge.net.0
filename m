Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E56CE47773D
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:11:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtLT-0003BL-BS; Thu, 16 Dec 2021 16:11:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtLR-0003B7-Rx
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sutZgL9X30MGJK6zq3yqN4N3QXbscUdjoQ7h6zXochA=; b=iGTg83K4LjKocall/3d0kOGntB
 4lV/vZ0D55TZE7Af+8cbYkqzJ4r3KDzqOOBzYrh+vB0G0xjSKzyXEIcOukab2Sp+KBNU14xrPxVrd
 0ZGg7/+bTxR6n+Td1LIUSWez7lsvZqazFmNZhBAr25HHG8yO1jrNNWafsKLX1gPFtj+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sutZgL9X30MGJK6zq3yqN4N3QXbscUdjoQ7h6zXochA=; b=KRumMP+WWhtVeyBmC+xJNWegGp
 oVRuFmt7FIYV8aAF4hYCb//UM/4pJOZzJelYPVkBGCwsudqqRIPouh5/RW8XbsHehnDsJfGatGbt3
 9vyGYV17gac1pucBCevle03xY6ploNU1d+UOzNV0IzfXq6DiKuMl9wr113D1MI31cWLw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtLS-0004Az-BK
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671056;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sutZgL9X30MGJK6zq3yqN4N3QXbscUdjoQ7h6zXochA=;
 b=Mm0BxNxK1gwGsd3Uywc5MFvJ5q8Y9DWsmlOoy0pXrJn5+UiLz0g9cMlpVIeCKqvy4j5Pj2
 RKV2s2OJGZ9ZqR/fQU0AMrkapD4vXSvldxeCC0eydC23UyjMAyJQvdDSkVHTe4TikTPzds
 bw6PtR0zVvhc/pbWt7MpEM/873c4eGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-443-tf_i_P8ROLmG4OY4shUnHA-1; Thu, 16 Dec 2021 11:10:53 -0500
X-MC-Unique: tf_i_P8ROLmG4OY4shUnHA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7482B1853020;
 Thu, 16 Dec 2021 16:10:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1907FE2F0;
 Thu, 16 Dec 2021 16:10:07 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:10:07 +0000
Message-ID: <163967100721.1823006.16435671567428949398.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
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
 Content preview:  Add a function to the backend API to note an I/O error in
 a cache. Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163819598741.215744.891281275151382095.stgit@warthog.procyon.org.uk/
 # v1 Link: https:// [...] 
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
X-Headers-End: 1mxtLS-0004Az-BK
Subject: [V9fs-developer] [PATCH v3 16/68] fscache: Add a function for a
 cache backend to note an I/O error
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

Add a function to the backend API to note an I/O error in a cache.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819598741.215744.891281275151382095.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906901316.143852.15225412215771586528.stgit@warthog.procyon.org.uk/ # v2
---

 fs/fscache/cache.c            |   20 ++++++++++++++++++++
 include/linux/fscache-cache.h |    2 ++
 2 files changed, 22 insertions(+)

diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
index bbd102be91c4..25eac61f1c29 100644
--- a/fs/fscache/cache.c
+++ b/fs/fscache/cache.c
@@ -321,6 +321,26 @@ void fscache_end_cache_access(struct fscache_cache *cache, enum fscache_access_t
 		wake_up_var(&cache->n_accesses);
 }
 
+/**
+ * fscache_io_error - Note a cache I/O error
+ * @cache: The record describing the cache
+ *
+ * Note that an I/O error occurred in a cache and that it should no longer be
+ * used for anything.  This also reports the error into the kernel log.
+ *
+ * See Documentation/filesystems/caching/backend-api.rst for a complete
+ * description.
+ */
+void fscache_io_error(struct fscache_cache *cache)
+{
+	if (fscache_set_cache_state_maybe(cache,
+					  FSCACHE_CACHE_IS_ACTIVE,
+					  FSCACHE_CACHE_GOT_IOERROR))
+		pr_err("Cache '%s' stopped due to I/O error\n",
+		       cache->name);
+}
+EXPORT_SYMBOL(fscache_io_error);
+
 /**
  * fscache_withdraw_cache - Withdraw a cache from the active service
  * @cache: The cache cookie
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index a10b66ca3544..936ef731bbc7 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -73,6 +73,8 @@ extern int fscache_add_cache(struct fscache_cache *cache,
 extern void fscache_withdraw_cache(struct fscache_cache *cache);
 extern void fscache_withdraw_volume(struct fscache_volume *volume);
 
+extern void fscache_io_error(struct fscache_cache *cache);
+
 extern void fscache_end_volume_access(struct fscache_volume *volume,
 				      struct fscache_cookie *cookie,
 				      enum fscache_access_trace why);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
