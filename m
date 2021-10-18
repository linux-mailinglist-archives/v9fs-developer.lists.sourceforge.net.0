Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9EE4320BD
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:55:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU3M-0006hE-Ai; Mon, 18 Oct 2021 14:55:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcU3K-0006h5-Fq
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vWJr+o5XEJdul/wxaFN3vlOPvUxwAzrbc+cKwab9/Mo=; b=E8W5TvQC3WztUCiiXm36Xeg4Pb
 fvHBHLvZdXkM3+AlNurOrOArs5Cpgm19Xtzv0fuRA2aJnKKDRufDQuMgsgzkwSejXzGC7RVYmxUYt
 h+KD9BkAWXNPVobuHmMOr6Oz/lsFP30ZPqjnDpTjnkJxwKFalC/dWUkkzTZD2U9OO8Ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vWJr+o5XEJdul/wxaFN3vlOPvUxwAzrbc+cKwab9/Mo=; b=IV1gO8bVZjDHch3RVcrIGDfi8j
 eXhI5+1tdf2SjIpGaiv+bmrcm+K4k6GvgyMj6ImzSMZQJ95rG+Kw84iN5q7vT4mL03q6mlA0WLvMH
 H8N48E4pXCDe1eqU5AlhmzyzDaXkKjjUdAKlun8OHPPpsRRr/A+y/UdOVeqoHHbbkHBo=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU3J-004Sr4-Oe
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vWJr+o5XEJdul/wxaFN3vlOPvUxwAzrbc+cKwab9/Mo=;
 b=C37zNjI77r98/KlpvdRB+7UF79HTODUhvPxy9RbhmcHBCUjzFfqWz8EnQ26ch8dKMHpCpi
 ioAN4fL5ucR+D49cK28Qv1ExJTLC9ltdlFo4f52G4qAkoyJ7DxpodQSD+jN0f8WqzMH64F
 UZADACBz+M0hbviNbwnigvkVTxFdTbU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-Fg7w_fGOOiS33-k-QeKtrg-1; Mon, 18 Oct 2021 10:55:42 -0400
X-MC-Unique: Fg7w_fGOOiS33-k-QeKtrg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7541E806668;
 Mon, 18 Oct 2021 14:55:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 97EE85D6D7;
 Mon, 18 Oct 2021 14:55:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:55:33 +0100
Message-ID: <163456893374.2614702.11747731163000539462.stgit@warthog.procyon.org.uk>
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
 Content preview: cachefiles_check_object_type() sets an xattr on the root of
 the cache, but it's pointless because it never conveys any useful information, 
 so don't do that. Signed-off-by: David Howells <dhowells@redhat.com> --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU3J-004Sr4-Oe
Subject: [V9fs-developer] [PATCH 19/67] cachefiles: Don't set an xattr on
 the root of the cache
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

cachefiles_check_object_type() sets an xattr on the root of the cache, but
it's pointless because it never conveys any useful information, so don't do
that.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/bind.c     |    4 --
 fs/cachefiles/internal.h |    1 -
 fs/cachefiles/xattr.c    |   76 ----------------------------------------------
 3 files changed, 81 deletions(-)

diff --git a/fs/cachefiles/bind.c b/fs/cachefiles/bind.c
index d463d89f5db8..6720c07f3d85 100644
--- a/fs/cachefiles/bind.c
+++ b/fs/cachefiles/bind.c
@@ -199,10 +199,6 @@ static int cachefiles_daemon_add_cache(struct cachefiles_cache *cache)
 	fsdef->dentry = cachedir;
 	fsdef->fscache.cookie = NULL;
 
-	ret = cachefiles_check_object_type(fsdef);
-	if (ret < 0)
-		goto error_unsupported;
-
 	/* get the graveyard directory */
 	graveyard = cachefiles_get_directory(cache, root, "graveyard");
 	if (IS_ERR(graveyard)) {
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 0515add2b7e8..6464a6821bfb 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -169,7 +169,6 @@ static inline void cachefiles_end_secure(struct cachefiles_cache *cache,
 /*
  * xattr.c
  */
-extern int cachefiles_check_object_type(struct cachefiles_object *object);
 extern int cachefiles_set_object_xattr(struct cachefiles_object *object,
 				       unsigned int xattr_flags);
 extern int cachefiles_check_auxdata(struct cachefiles_object *object);
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index bcc4a2dfe1e8..8b9f30f9ce21 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -23,82 +23,6 @@ struct cachefiles_xattr {
 static const char cachefiles_xattr_cache[] =
 	XATTR_USER_PREFIX "CacheFiles.cache";
 
-/*
- * check the type label on an object
- * - done using xattrs
- */
-int cachefiles_check_object_type(struct cachefiles_object *object)
-{
-	struct dentry *dentry = object->dentry;
-	char type[3], xtype[3];
-	int ret;
-
-	ASSERT(dentry);
-	ASSERT(d_backing_inode(dentry));
-
-	if (!object->fscache.cookie)
-		strcpy(type, "C3");
-	else
-		snprintf(type, 3, "%02x", object->fscache.cookie->type);
-
-	_enter("%x{%s}", object->fscache.debug_id, type);
-
-	/* attempt to install a type label directly */
-	ret = vfs_setxattr(&init_user_ns, dentry, cachefiles_xattr_cache, type,
-			   2, XATTR_CREATE);
-	if (ret == 0) {
-		_debug("SET"); /* we succeeded */
-		goto error;
-	}
-
-	if (ret != -EEXIST) {
-		pr_err("Can't set xattr on %pd [%lu] (err %d)\n",
-		       dentry, d_backing_inode(dentry)->i_ino,
-		       -ret);
-		goto error;
-	}
-
-	/* read the current type label */
-	ret = vfs_getxattr(&init_user_ns, dentry, cachefiles_xattr_cache, xtype,
-			   3);
-	if (ret < 0) {
-		if (ret == -ERANGE)
-			goto bad_type_length;
-
-		pr_err("Can't read xattr on %pd [%lu] (err %d)\n",
-		       dentry, d_backing_inode(dentry)->i_ino,
-		       -ret);
-		goto error;
-	}
-
-	/* check the type is what we're expecting */
-	if (ret != 2)
-		goto bad_type_length;
-
-	if (xtype[0] != type[0] || xtype[1] != type[1])
-		goto bad_type;
-
-	ret = 0;
-
-error:
-	_leave(" = %d", ret);
-	return ret;
-
-bad_type_length:
-	pr_err("Cache object %lu type xattr length incorrect\n",
-	       d_backing_inode(dentry)->i_ino);
-	ret = -EIO;
-	goto error;
-
-bad_type:
-	xtype[2] = 0;
-	pr_err("Cache object %pd [%lu] type %s not %s\n",
-	       dentry, d_backing_inode(dentry)->i_ino,
-	       xtype, type);
-	ret = -EIO;
-	goto error;
-}
-
 /*
  * set the state xattr on a cache file
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
