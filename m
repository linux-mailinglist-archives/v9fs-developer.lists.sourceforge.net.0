Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C8A46F07D
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 18:05:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvMri-0002zN-GG; Thu, 09 Dec 2021 17:05:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvMrh-0002zH-FM
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nTsYzsbhjzO8akduVH3be0K1T/49c9XXVljnNC7bVjc=; b=VatVbn4NxWNMmA2bIie025onlD
 WIrYhlDXQ4WdiPOmYOpL4bZpyDrlSNjz76gnYB7m41OumK7mvtUnE4lreFtRIbDmXigMEs28wjI9j
 qxmjN14OyJ1UYnefKiP8792Vwxp0hOU7D6mv4dtRI37LOH4saLTI0Igngqb7ZT30yErY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nTsYzsbhjzO8akduVH3be0K1T/49c9XXVljnNC7bVjc=; b=gaktQgLGtWmficWIpLmYZ4BXsI
 Zv3csBcdmlqb0BNKyPMnyshB3qLQoB87E81mECT5knDxvywQfYpW6sLPsvDufcZUeQ2snqSqibkxW
 IU3QI1xms/f7urWq83qfkbgOAqFTD2xApLqspcq6t/wDi3SnNlxKm9Hyru3X1i3im9II=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvMrh-0001Gv-GB
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639069547;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nTsYzsbhjzO8akduVH3be0K1T/49c9XXVljnNC7bVjc=;
 b=SOrh3E3QmIZeI1ZWprKjtjvU4wekt1itwAMcB10lW9+hPyyKJ3cGgalmqwQjzOLTbfBOOR
 PkzyemcqGaEeM/knCzlqKQJdIf3ksZmeDYNYN7ur72tx/bvW08kR4N+CcoznEqEx/HXynR
 PdfQqkj4ZIbKO/AwMBRvYapfd++ENxM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93--UJYxMn5OQWO0traVK2erg-1; Thu, 09 Dec 2021 12:05:44 -0500
X-MC-Unique: -UJYxMn5OQWO0traVK2erg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E775801962;
 Thu,  9 Dec 2021 17:05:41 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 976D560C82;
 Thu,  9 Dec 2021 17:05:29 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 09 Dec 2021 17:05:28 +0000
Message-ID: <163906952877.143852.4140962906331914859.stgit@warthog.procyon.org.uk>
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
 Content preview:  Implement resizing an object, using truncate and/or fallocate
 to adjust the object. Signed-off-by: David Howells <dhowells@redhat.com>
 cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163819646631.215744.13819016478175576761.stgit@warthog.procyon.org.uk/
 # v1 --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvMrh-0001Gv-GB
Subject: [V9fs-developer] [PATCH v2 50/67] cachefiles: Implement cookie
 resize for truncate
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

Implement resizing an object, using truncate and/or fallocate to adjust the
object.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819646631.215744.13819016478175576761.stgit@warthog.procyon.org.uk/ # v1
---

 fs/cachefiles/interface.c |   78 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index ad9d311413ff..51c968cd00a6 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -220,6 +220,83 @@ static bool cachefiles_lookup_cookie(struct fscache_cookie *cookie)
 	return false;
 }
 
+/*
+ * Shorten the backing object to discard any dirty data and free up
+ * any unused granules.
+ */
+static bool cachefiles_shorten_object(struct cachefiles_object *object,
+				      struct file *file, loff_t new_size)
+{
+	struct cachefiles_cache *cache = object->volume->cache;
+	struct inode *inode = file_inode(file);
+	loff_t i_size, dio_size;
+	int ret;
+
+	dio_size = round_up(new_size, CACHEFILES_DIO_BLOCK_SIZE);
+	i_size = i_size_read(inode);
+
+	trace_cachefiles_trunc(object, inode, i_size, dio_size,
+			       cachefiles_trunc_shrink);
+	ret = cachefiles_inject_remove_error();
+	if (ret == 0)
+		ret = vfs_truncate(&file->f_path, dio_size);
+	if (ret < 0) {
+		trace_cachefiles_io_error(object, file_inode(file), ret,
+					  cachefiles_trace_trunc_error);
+		cachefiles_io_error_obj(object, "Trunc-to-size failed %d", ret);
+		cachefiles_remove_object_xattr(cache, object, file->f_path.dentry);
+		return false;
+	}
+
+	if (new_size < dio_size) {
+		trace_cachefiles_trunc(object, inode, dio_size, new_size,
+				       cachefiles_trunc_dio_adjust);
+		ret = cachefiles_inject_write_error();
+		if (ret == 0)
+			ret = vfs_fallocate(file, FALLOC_FL_ZERO_RANGE,
+					    new_size, dio_size);
+		if (ret < 0) {
+			trace_cachefiles_io_error(object, file_inode(file), ret,
+						  cachefiles_trace_fallocate_error);
+			cachefiles_io_error_obj(object, "Trunc-to-dio-size failed %d", ret);
+			cachefiles_remove_object_xattr(cache, object, file->f_path.dentry);
+			return false;
+		}
+	}
+
+	return true;
+}
+
+/*
+ * Resize the backing object.
+ */
+static void cachefiles_resize_cookie(struct netfs_cache_resources *cres,
+				     loff_t new_size)
+{
+	struct cachefiles_object *object = cachefiles_cres_object(cres);
+	struct cachefiles_cache *cache = object->volume->cache;
+	struct fscache_cookie *cookie = object->cookie;
+	const struct cred *saved_cred;
+	struct file *file = cachefiles_cres_file(cres);
+	loff_t old_size = cookie->object_size;
+
+	_enter("%llu->%llu", old_size, new_size);
+
+	if (new_size < old_size) {
+		cachefiles_begin_secure(cache, &saved_cred);
+		cachefiles_shorten_object(object, file, new_size);
+		cachefiles_end_secure(cache, saved_cred);
+		object->cookie->object_size = new_size;
+		return;
+	}
+
+	/* The file is being expanded.  We don't need to do anything
+	 * particularly.  cookie->initial_size doesn't change and so the point
+	 * at which we have to download before doesn't change.
+	 */
+	cookie->object_size = new_size;
+}
+
 /*
  * Commit changes to the object as we drop it.
  */
@@ -363,5 +440,6 @@ const struct fscache_cache_ops cachefiles_cache_ops = {
 	.withdraw_cookie	= cachefiles_withdraw_cookie,
 	.invalidate_cookie	= cachefiles_invalidate_cookie,
 	.begin_operation	= cachefiles_begin_operation,
+	.resize_cookie		= cachefiles_resize_cookie,
 	.prepare_to_write	= cachefiles_prepare_to_write,
 };




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
