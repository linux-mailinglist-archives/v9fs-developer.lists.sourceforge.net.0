Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2A5432120
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:59:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU6Z-0006at-Ey; Mon, 18 Oct 2021 14:59:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU6Y-0006ad-IR
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qpmC6KV6XlN7tGrzNmQxvfZVaWj4hw0BElRSYjH98xU=; b=b7VCSLiIm8Hig2lLLPgxsg6/k4
 1luKqSVwFlyTsn2sf5ql9EAbdYDsdtqg7FG+Jjz2YI0cmW3jGqf4EjdtjOlqyDCzdUEQrAM02v/PE
 5N5EdZkx8sBAbfJHTDxVqZOHifYVxmj8FKAF+CqHxs2iStSmWcEAPfk+AEjb7H0yrQes=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qpmC6KV6XlN7tGrzNmQxvfZVaWj4hw0BElRSYjH98xU=; b=MnaxH2J1RFXjRKD/gZu/ftSEky
 4iM9NmdrAVlyx85Q8eESAtqMwJl+wMpD5/5cOLOwoSZHgdXPXsPwATABF1tJHrWXCmvsMCyrOu0rU
 MMi+kRvET/Ef7N18jeEZNQIWs4m2KiMdMW5a5qbeLal7QrVCpahbHX6CEsNdJywwES5Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU6X-004TSK-I7
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qpmC6KV6XlN7tGrzNmQxvfZVaWj4hw0BElRSYjH98xU=;
 b=fTLKzGAT4CDB0pcGljBFPZrxTSL1ayNf9dbRPEcjTE43E2yjyK8TlEVwWPahtbjHte/ULT
 BHPgGdZ87BotgUB+3N+XO/UX5zaa4XjoUBk1CHwjexuBjnQpP0EFQSCgtTVyDRZywzNKf0
 jbDU5V0I+qUc+RkI0H9dz8QaDWAXbaE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-ncCaC32SNx61rESZ2ISbmQ-1; Mon, 18 Oct 2021 10:59:00 -0400
X-MC-Unique: ncCaC32SNx61rESZ2ISbmQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3CD1B802682;
 Mon, 18 Oct 2021 14:58:58 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 84A8B5F4EE;
 Mon, 18 Oct 2021 14:58:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:58:51 +0100
Message-ID: <163456913173.2614702.12279776553978969628.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
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
 Content preview:  Don't pass XATTR_CREATE/XATTR_REPLACE to vfs_setxattr(); just
 pass 0 as we don't want to have to deal with the error or try to guess which
 we want to use. Signed-off-by: David Howells <dhowells@redhat.com> --- 
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
X-Headers-End: 1mcU6X-004TSK-I7
Subject: [V9fs-developer] [PATCH 31/67] cachefiles: Don't use XATTR_ flags
 with vfs_setxattr()
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

Don't pass XATTR_CREATE/XATTR_REPLACE to vfs_setxattr(); just pass 0 as we
don't want to have to deal with the error or try to guess which we want to
use.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c |    2 +-
 fs/cachefiles/internal.h  |    3 +--
 fs/cachefiles/namei.c     |    2 +-
 fs/cachefiles/xattr.c     |    6 ++----
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 3e678ab14c85..674d3d75fa70 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -132,7 +132,7 @@ static void cachefiles_update_object(struct cachefiles_object *object)
 	cache = container_of(object->cache, struct cachefiles_cache, cache);
 
 	cachefiles_begin_secure(cache, &saved_cred);
-	cachefiles_set_object_xattr(object, XATTR_REPLACE);
+	cachefiles_set_object_xattr(object);
 	cachefiles_end_secure(cache, saved_cred);
 	_leave("");
 }
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index ff00c5249f4f..92f90a5a4e93 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -162,8 +162,7 @@ static inline void cachefiles_end_secure(struct cachefiles_cache *cache,
 /*
  * xattr.c
  */
-extern int cachefiles_set_object_xattr(struct cachefiles_object *object,
-				       unsigned int xattr_flags);
+extern int cachefiles_set_object_xattr(struct cachefiles_object *object);
 extern int cachefiles_check_auxdata(struct cachefiles_object *object);
 extern int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
 					  struct dentry *dentry);
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index a60ef6f1cf1e..cb08be5fb28e 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -291,7 +291,7 @@ static int cachefiles_check_open_object(struct cachefiles_cache *cache,
 
 	if (object->new) {
 		/* attach data to a newly constructed terminal object */
-		ret = cachefiles_set_object_xattr(object, XATTR_CREATE);
+		ret = cachefiles_set_object_xattr(object);
 		if (ret < 0)
 			goto error_unmark;
 	} else {
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index bfb2f4d605af..82c822bb71af 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -26,8 +26,7 @@ static const char cachefiles_xattr_cache[] =
 /*
  * set the state xattr on a cache file
  */
-int cachefiles_set_object_xattr(struct cachefiles_object *object,
-				unsigned int xattr_flags)
+int cachefiles_set_object_xattr(struct cachefiles_object *object)
 {
 	struct cachefiles_xattr *buf;
 	struct dentry *dentry;
@@ -51,8 +50,7 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object,
 
 	clear_bit(FSCACHE_COOKIE_AUX_UPDATED, &object->cookie->flags);
 	ret = vfs_setxattr(&init_user_ns, dentry, cachefiles_xattr_cache,
-			   buf, sizeof(struct cachefiles_xattr) + len,
-			   xattr_flags);
+			   buf, sizeof(struct cachefiles_xattr) + len, 0);
 	if (ret < 0) {
 		trace_cachefiles_coherency(object, file_inode(file)->i_ino,
 					   0,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
