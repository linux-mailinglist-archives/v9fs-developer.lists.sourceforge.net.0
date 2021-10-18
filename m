Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EE6432174
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:02:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU9e-00043x-Le; Mon, 18 Oct 2021 15:02:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU9d-00043q-GS
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UhcaIo/ficWK/PPSZVzJujLXQ8djt/id9tCh3dUyTWg=; b=XnfW5PO9wD7j3nnjr+TZmleyE1
 f9htBJtaiod6HmiIHK2A9Ux/VoXaXqjYpe3Hdufhn2aBzWAc6XZLkWsP2gXddkly1gVEDV/EywVZ3
 WeKbPIHHFZufMBCtljH3RnG8gTKhNpULb1+iKJurywqo8kygYsV0ZfP0od7U2uYbCgyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UhcaIo/ficWK/PPSZVzJujLXQ8djt/id9tCh3dUyTWg=; b=iJ+l3ge4Do48FSsyv2X3ZCvzky
 H0j0yGb8/EWKpLS4groo2YiKI6uenAqhftic81Mdsgaq9QlOUKSZxKAOtPl94LrRbj28x7sVLS3sy
 10aKNVSvVAd73/pfbpuLK0ZOU/fnVpjVKvSNCgOZxKqOlEkQFkE0iNTzWUll8TGMikjE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU9c-004UC6-7O
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UhcaIo/ficWK/PPSZVzJujLXQ8djt/id9tCh3dUyTWg=;
 b=ZIFLOUW5bpLsAeDWNfhpvLfroG6jhlqYvvoq1q55Hd81DQft8CaiasO2+QMHssaehPoML1
 9dLCymP9dxiHrKWd8zCKXA702rJoZcGQraVwyW0OlfDsgI9UT/4FFccSUzyWWjr+udOScM
 f6E/zP1kx/yWqHunqz+pCg4G3D29FTI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-CyF1J0hxMHmBDKdcq6LdIg-1; Mon, 18 Oct 2021 11:02:11 -0400
X-MC-Unique: CyF1J0hxMHmBDKdcq6LdIg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDD67801FCE;
 Mon, 18 Oct 2021 15:02:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A731D62A44;
 Mon, 18 Oct 2021 15:02:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:02:01 +0100
Message-ID: <163456932180.2614702.9793858366854318097.stgit@warthog.procyon.org.uk>
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
 Content preview: Put some more information into the xattr attached to a cache
 file including the size of the object (i_size may get rounded to a block
 size for DIO purposes), the point after which the server has no da [...] 
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
X-Headers-End: 1mcU9c-004UC6-7O
Subject: [V9fs-developer] [PATCH 47/67] cachefiles: Put more information in
 the xattr attached to the cache file
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

Put some more information into the xattr attached to a cache file including
the size of the object (i_size may get rounded to a block size for DIO
purposes), the point after which the server has no data and a content
mapping type.

Note that the new cache and the old cache will see each other's cache files
as being incoherent and discard them.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c |    1 +
 fs/cachefiles/internal.h  |   11 +++++++++++
 fs/cachefiles/xattr.c     |   25 +++++++++++++++++++------
 3 files changed, 31 insertions(+), 6 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index f90f6ddd07a5..751b0fec4591 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -420,6 +420,7 @@ static bool cachefiles_invalidate_cookie(struct fscache_cookie *cookie)
 
 	old_file = object->file;
 	object->file = new_file;
+	object->content_info = CACHEFILES_CONTENT_NO_DATA;
 	set_bit(CACHEFILES_OBJECT_USING_TMPFILE, &object->flags);
 	set_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &object->cookie->flags);
 
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index a2d2ed2f19eb..1d3e37bca087 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -31,6 +31,16 @@ extern unsigned cachefiles_debug;
 
 #define cachefiles_gfp (__GFP_RECLAIM | __GFP_NORETRY | __GFP_NOMEMALLOC)
 
+enum cachefiles_content {
+	/* These values are saved on disk */
+	CACHEFILES_CONTENT_NO_DATA	= 0, /* No content stored */
+	CACHEFILES_CONTENT_SINGLE	= 1, /* Content is monolithic, all is present */
+	CACHEFILES_CONTENT_ALL		= 2, /* Content is all present, no map */
+	CACHEFILES_CONTENT_BACKFS_MAP	= 3, /* Content is piecemeal, mapped through backing fs */
+	CACHEFILES_CONTENT_DIRTY	= 4, /* Content is dirty (only seen on disk) */
+	nr__cachefiles_content
+};
+
 /*
  * Cached volume representation.
  */
@@ -59,6 +69,7 @@ struct cachefiles_object {
 	u8				key_hash;	/* Hash of object key */
 	unsigned long			flags;
 #define CACHEFILES_OBJECT_USING_TMPFILE	0		/* Have an unlinked tmpfile */
+	enum cachefiles_content		content_info:8;	/* Info about content presence */
 };
 
 extern struct kmem_cache *cachefiles_object_jar;
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index 50b2a4588946..ba3d050a5174 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -18,8 +18,11 @@
 #define CACHEFILES_COOKIE_TYPE_DATA 1
 
 struct cachefiles_xattr {
-	uint8_t				type;
-	uint8_t				data[];
+	__be64	object_size;	/* Actual size of the object */
+	__be64	zero_point;	/* Size after which server has no data not written by us */
+	__u8	type;		/* Type of object */
+	__u8	content;	/* Content presence (enum cachefiles_content) */
+	__u8	data[];		/* netfs coherency data */
 } __packed;
 
 static const char cachefiles_xattr_cache[] =
@@ -46,7 +49,10 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object)
 	if (!buf)
 		return -ENOMEM;
 
-	buf->type = CACHEFILES_COOKIE_TYPE_DATA;
+	buf->object_size	= cpu_to_be64(object->cookie->object_size);
+	buf->zero_point		= 0;
+	buf->type		= CACHEFILES_COOKIE_TYPE_DATA;
+	buf->content		= object->content_info;
 	if (len > 0)
 		memcpy(buf->data, fscache_get_aux(object->cookie), len);
 
@@ -54,7 +60,7 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object)
 			   buf, sizeof(struct cachefiles_xattr) + len, 0);
 	if (ret < 0) {
 		trace_cachefiles_coherency(object, file_inode(file)->i_ino,
-					   0,
+					   buf->content,
 					   cachefiles_coherency_set_fail);
 		if (ret != -ENOMEM)
 			cachefiles_io_error_obj(
@@ -62,7 +68,7 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object)
 				"Failed to set xattr with error %d", ret);
 	} else {
 		trace_cachefiles_coherency(object, file_inode(file)->i_ino,
-					   0,
+					   buf->content,
 					   cachefiles_coherency_set_ok);
 	}
 
@@ -100,12 +106,19 @@ int cachefiles_check_auxdata(struct cachefiles_object *object, struct file *file
 		why = cachefiles_coherency_check_type;
 	} else if (memcmp(buf->data, p, len) != 0) {
 		why = cachefiles_coherency_check_aux;
+	} else if (be64_to_cpu(buf->object_size) != object->cookie->object_size) {
+		why = cachefiles_coherency_check_objsize;
+	} else if (buf->content == CACHEFILES_CONTENT_DIRTY) {
+		// TODO: Begin conflict resolution
+		pr_warn("Dirty object in cache\n");
+		why = cachefiles_coherency_check_dirty;
 	} else {
 		why = cachefiles_coherency_check_ok;
 		ret = 0;
 	}
 
-	trace_cachefiles_coherency(object, file_inode(file)->i_ino, 0, why);
+	trace_cachefiles_coherency(object, file_inode(file)->i_ino,
+				   buf->content, why);
 	kfree(buf);
 	return ret;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
