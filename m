Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC4C1C417E
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:12:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVedd-0007yD-BF; Mon, 04 May 2020 17:12:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVedd-0007y7-2c
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YIrjlq2VnpmK/3Hp0Ssw1MB4Ua57/058b88LSE0s9AA=; b=LDVWuXFQruft7T7J6tw7+HpgOR
 kPIaEDtL7s3b4kWOq2ZZsojlc9+p/2ifM/KSxXt+fClV6mEJNmNT2e3mDSNQk2nfLtsBAeNHjVts4
 aXbfJzwEP2T61weugyx0Ke5OjJ+RxT4ki/YM1RMD8WlVuyhGIo57UPClatI6gn8PeUqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YIrjlq2VnpmK/3Hp0Ssw1MB4Ua57/058b88LSE0s9AA=; b=AWhkefX7JwBsL8CS6AkzRUsmW5
 vc/yyYlG4yQYITHo7om6ZFN39CuBQaNqeK1r5g2ouSEqejU4VOYI4VVXD/O6DJ2b2vDOSn8Ghy7Fn
 iKzdNtLhqnonEZcFdsJjOaMnEartUCWOW4X9xJuBfvXIbCtFO5NztN6VFMhBoM5z/NDA=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVedb-0079yh-QE
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612329;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YIrjlq2VnpmK/3Hp0Ssw1MB4Ua57/058b88LSE0s9AA=;
 b=e7hOYZV849P1/OIAwbDJ3GZOm63wvWIw7HIAfGOdtJ5VeggCOILzqnID43/naMORyL0rLE
 O3p6oBmH6ZKZdmJs0HtZKmjp4LeSarMMq2Cin6JmIqP0YblfjOFgLp1jcJ81sWOH0QY9Gu
 tifch57ph+ONIlaDcJ5gbpQpLCmEZDw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-NVnMB4uBNJWy30i3867d-w-1; Mon, 04 May 2020 13:12:06 -0400
X-MC-Unique: NVnMB4uBNJWy30i3867d-w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4777E107ACF2;
 Mon,  4 May 2020 17:12:04 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1DB262DE74;
 Mon,  4 May 2020 17:12:00 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:12:00 +0100
Message-ID: <158861232027.340223.4423626519002421674.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVedb-0079yh-QE
Subject: [V9fs-developer] [RFC PATCH 30/61] cachefiles: Split
 cachefiles_drop_object() up a bit
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Split cachefiles_drop_object() up a bit to make it easier to modify later.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c |   58 ++++++++++++++++++++++++++++++---------------
 1 file changed, 39 insertions(+), 19 deletions(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index daa4f316d104..47596b58c2da 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -192,6 +192,42 @@ static void cachefiles_update_object(struct fscache_object *_object)
 	_leave("");
 }
 
+/*
+ * Commit changes to the object as we drop it.
+ */
+static void cachefiles_commit_object(struct cachefiles_object *object,
+				     struct cachefiles_cache *cache)
+{
+}
+
+/*
+ * Finalise and object and close the VFS structs that we have.
+ */
+static void cachefiles_clean_up_object(struct cachefiles_object *object,
+				       struct cachefiles_cache *cache,
+				       bool invalidate)
+{
+	if (invalidate && &object->fscache != cache->cache.fsdef) {
+		_debug("- inval object OBJ%x", object->fscache.debug_id);
+		cachefiles_delete_object(cache, object);
+	} else {
+		cachefiles_commit_object(object, cache);
+ 	}
+
+	/* close the filesystem stuff attached to the object */
+	if (object->backing_file)
+		fput(object->backing_file);
+	object->backing_file = NULL;
+
+	if (object->backer != object->dentry)
+		dput(object->backer);
+	object->backer = NULL;
+
+	cachefiles_unmark_inode_in_use(object, object->dentry);
+	dput(object->dentry);
+	object->dentry = NULL;
+}
+
 /*
  * discard the resources pinned by an object and effect retirement if
  * requested
@@ -223,25 +259,9 @@ static void cachefiles_drop_object(struct fscache_object *_object,
 	 * before we set it up.
 	 */
 	if (object->dentry) {
-		if (invalidate && _object != cache->cache.fsdef) {
-			_debug("- inval object OBJ%x", object->fscache.debug_id);
-			cachefiles_begin_secure(cache, &saved_cred);
-			cachefiles_delete_object(cache, object);
-			cachefiles_end_secure(cache, saved_cred);
-		}
-
-		/* close the filesystem stuff attached to the object */
-		if (object->backing_file)
-			fput(object->backing_file);
-		object->backing_file = NULL;
-
-		if (object->backer != object->dentry)
-			dput(object->backer);
-		object->backer = NULL;
-
-		cachefiles_unmark_inode_in_use(object, object->dentry);
-		dput(object->dentry);
-		object->dentry = NULL;
+		cachefiles_begin_secure(cache, &saved_cred);
+		cachefiles_clean_up_object(object, cache, invalidate);
+		cachefiles_end_secure(cache, saved_cred);
 	}
 
 	_leave("");




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
