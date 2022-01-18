Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA10A49279E
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:54:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9owE-0004Gs-KQ; Tue, 18 Jan 2022 13:54:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9owD-0004Gm-7l
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+py/gRGrREoMG+NM+Uf9rJAEg0pDCMyCGnd93uOAb1I=; b=PlRo502lXBIoVfFYlMz7LjBdwY
 C+T8XNMWWrxQs0g86yWHd+VZI9oRDXPR3v0c2W70wDZ3VDeIjso1suPIQPhiSPiU4re6XM6CsXaX9
 ctRhIPeEXiaJRj2jplidZAdgaQSd/YopxIKJrrj/ZPy2GuPkeT5/ypc0o1HhG7t3Ooz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+py/gRGrREoMG+NM+Uf9rJAEg0pDCMyCGnd93uOAb1I=; b=mV01E7l/q4jq2L5Ge4qKHrkQQN
 yE7M1pFdA6YlwC4akE6mQtN23dMmBf0xrrz7uKj1Szs573LoAPX6IjECmCJM3advU5aHC8Jv9VDE/
 Vs3eWL39CFGopWZBe4IJlTkKQubUjvQ92UlluCzsoRvryZWf5CJh9M8ozc4EHIQ+i43g=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9owA-0005uK-Qg
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642514048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+py/gRGrREoMG+NM+Uf9rJAEg0pDCMyCGnd93uOAb1I=;
 b=edzcCJ/FxyekDpz6wqHV9T5bxDKpom7cS8DkDz2pO8kxWQUoSbRqH23k/y9MxOnYfIqnCn
 IwB1g7xCgp4w5nqS2sGVHQeSF8Npib5dSl6Sz2weiE6/cEotE/CiE2eR8DRG3OdF5Ch935
 cZ+IYAHcGWcBYpGXHe4+U9zT+nN2UTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-258-47CvRf9qPZSy91azXS3j6Q-1; Tue, 18 Jan 2022 08:54:03 -0500
X-MC-Unique: 47CvRf9qPZSy91azXS3j6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A4111018723;
 Tue, 18 Jan 2022 13:54:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DFC1C78ABA;
 Tue, 18 Jan 2022 13:53:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:53:56 +0000
Message-ID: <164251403694.3435901.9797725381831316715.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
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
 Content preview:  Make some adjustments to tracepoints to make the tracing a
 bit more followable: (1) Standardise on displaying the backing inode number
 as "B=<hex>" with no leading zeros. (2) Make the cachefiles_lookup tracepoint
 log the directory inode number as well as the looked-up inode number. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9owA-0005uK-Qg
Subject: [V9fs-developer] [PATCH 04/11] cachefiles: Make some tracepoint
 adjustments
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make some adjustments to tracepoints to make the tracing a bit more
followable:

 (1) Standardise on displaying the backing inode number as "B=<hex>" with
     no leading zeros.

 (2) Make the cachefiles_lookup tracepoint log the directory inode number
     as well as the looked-up inode number.

 (3) Add a cachefiles_lookup tracepoint into cachefiles_get_directory() to
     log directory lookup.

 (4) Add a new cachefiles_mkdir tracepoint and use that to log a successful
     mkdir from cachefiles_get_directory().

 (5) Make the cachefiles_unlink and cachefiles_rename tracepoints log the
     inode number of the affected file/dir rather than dentry struct
     pointers.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/namei.c             |    8 ++--
 include/trace/events/cachefiles.h |   82 +++++++++++++++++++++++--------------
 2 files changed, 56 insertions(+), 34 deletions(-)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 9bd692870617..52c9f0864a87 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -101,6 +101,7 @@ struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
 		subdir = lookup_one_len(dirname, dir, strlen(dirname));
 	else
 		subdir = ERR_PTR(ret);
+	trace_cachefiles_lookup(NULL, dir, subdir);
 	if (IS_ERR(subdir)) {
 		trace_cachefiles_vfs_error(NULL, d_backing_inode(dir),
 					   PTR_ERR(subdir),
@@ -135,6 +136,7 @@ struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
 						   cachefiles_trace_mkdir_error);
 			goto mkdir_error;
 		}
+		trace_cachefiles_mkdir(dir, subdir);
 
 		if (unlikely(d_unhashed(subdir))) {
 			cachefiles_put_directory(subdir);
@@ -233,7 +235,7 @@ static int cachefiles_unlink(struct cachefiles_cache *cache,
 	};
 	int ret;
 
-	trace_cachefiles_unlink(object, dentry, why);
+	trace_cachefiles_unlink(object, d_inode(dentry)->i_ino, why);
 	ret = security_path_unlink(&path, dentry);
 	if (ret < 0) {
 		cachefiles_io_error(cache, "Unlink security error");
@@ -386,7 +388,7 @@ int cachefiles_bury_object(struct cachefiles_cache *cache,
 			.new_dir	= d_inode(cache->graveyard),
 			.new_dentry	= grave,
 		};
-		trace_cachefiles_rename(object, rep, grave, why);
+		trace_cachefiles_rename(object, d_inode(rep)->i_ino, why);
 		ret = cachefiles_inject_read_error();
 		if (ret == 0)
 			ret = vfs_rename(&rd);
@@ -617,7 +619,7 @@ bool cachefiles_look_up_object(struct cachefiles_object *object)
 						  object->d_name_len);
 	else
 		dentry = ERR_PTR(ret);
-	trace_cachefiles_lookup(object, dentry);
+	trace_cachefiles_lookup(object, fan, dentry);
 	if (IS_ERR(dentry)) {
 		if (dentry == ERR_PTR(-ENOENT))
 			goto new_file;
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 1172529b5b49..093c4acb7a3a 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -233,25 +233,48 @@ TRACE_EVENT(cachefiles_ref,
 
 TRACE_EVENT(cachefiles_lookup,
 	    TP_PROTO(struct cachefiles_object *obj,
+		     struct dentry *dir,
 		     struct dentry *de),
 
-	    TP_ARGS(obj, de),
+	    TP_ARGS(obj, dir, de),
 
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		obj	)
 		    __field(short,			error	)
+		    __field(unsigned long,		dino	)
 		    __field(unsigned long,		ino	)
 			     ),
 
 	    TP_fast_assign(
-		    __entry->obj	= obj->debug_id;
+		    __entry->obj	= obj ? obj->debug_id : 0;
+		    __entry->dino	= d_backing_inode(dir)->i_ino;
 		    __entry->ino	= (!IS_ERR(de) && d_backing_inode(de) ?
 					   d_backing_inode(de)->i_ino : 0);
 		    __entry->error	= IS_ERR(de) ? PTR_ERR(de) : 0;
 			   ),
 
-	    TP_printk("o=%08x i=%lx e=%d",
-		      __entry->obj, __entry->ino, __entry->error)
+	    TP_printk("o=%08x dB=%lx B=%lx e=%d",
+		      __entry->obj, __entry->dino, __entry->ino, __entry->error)
+	    );
+
+TRACE_EVENT(cachefiles_mkdir,
+	    TP_PROTO(struct dentry *dir, struct dentry *subdir),
+
+	    TP_ARGS(dir, subdir),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			dir	)
+		    __field(unsigned int,			subdir	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->dir	= d_backing_inode(dir)->i_ino;
+		    __entry->subdir	= d_backing_inode(subdir)->i_ino;
+			   ),
+
+	    TP_printk("dB=%x sB=%x",
+		      __entry->dir,
+		      __entry->subdir)
 	    );
 
 TRACE_EVENT(cachefiles_tmpfile,
@@ -269,7 +292,7 @@ TRACE_EVENT(cachefiles_tmpfile,
 		    __entry->backer	= backer->i_ino;
 			   ),
 
-	    TP_printk("o=%08x b=%08x",
+	    TP_printk("o=%08x B=%x",
 		      __entry->obj,
 		      __entry->backer)
 	    );
@@ -289,61 +312,58 @@ TRACE_EVENT(cachefiles_link,
 		    __entry->backer	= backer->i_ino;
 			   ),
 
-	    TP_printk("o=%08x b=%08x",
+	    TP_printk("o=%08x B=%x",
 		      __entry->obj,
 		      __entry->backer)
 	    );
 
 TRACE_EVENT(cachefiles_unlink,
 	    TP_PROTO(struct cachefiles_object *obj,
-		     struct dentry *de,
+		     ino_t ino,
 		     enum fscache_why_object_killed why),
 
-	    TP_ARGS(obj, de, why),
+	    TP_ARGS(obj, ino, why),
 
 	    /* Note that obj may be NULL */
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		obj		)
-		    __field(struct dentry *,		de		)
+		    __field(unsigned int,		ino		)
 		    __field(enum fscache_why_object_killed, why		)
 			     ),
 
 	    TP_fast_assign(
 		    __entry->obj	= obj ? obj->debug_id : UINT_MAX;
-		    __entry->de		= de;
+		    __entry->ino	= ino;
 		    __entry->why	= why;
 			   ),
 
-	    TP_printk("o=%08x d=%p w=%s",
-		      __entry->obj, __entry->de,
+	    TP_printk("o=%08x B=%x w=%s",
+		      __entry->obj, __entry->ino,
 		      __print_symbolic(__entry->why, cachefiles_obj_kill_traces))
 	    );
 
 TRACE_EVENT(cachefiles_rename,
 	    TP_PROTO(struct cachefiles_object *obj,
-		     struct dentry *de,
-		     struct dentry *to,
+		     ino_t ino,
 		     enum fscache_why_object_killed why),
 
-	    TP_ARGS(obj, de, to, why),
+	    TP_ARGS(obj, ino, why),
 
 	    /* Note that obj may be NULL */
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		obj		)
-		    __field(struct dentry *,		de		)
-		    __field(struct dentry *,		to		)
+		    __field(unsigned int,		ino		)
 		    __field(enum fscache_why_object_killed, why		)
 			     ),
 
 	    TP_fast_assign(
 		    __entry->obj	= obj ? obj->debug_id : UINT_MAX;
-		    __entry->de		= de;
-		    __entry->to		= to;
+		    __entry->ino	= ino;
 		    __entry->why	= why;
 			   ),
 
-	    TP_printk("o=%08x d=%p t=%p w=%s",
-		      __entry->obj, __entry->de, __entry->to,
+	    TP_printk("o=%08x B=%x w=%s",
+		      __entry->obj, __entry->ino,
 		      __print_symbolic(__entry->why, cachefiles_obj_kill_traces))
 	    );
 
@@ -370,7 +390,7 @@ TRACE_EVENT(cachefiles_coherency,
 		    __entry->ino	= ino;
 			   ),
 
-	    TP_printk("o=%08x %s i=%llx c=%u",
+	    TP_printk("o=%08x %s B=%llx c=%u",
 		      __entry->obj,
 		      __print_symbolic(__entry->why, cachefiles_coherency_traces),
 		      __entry->ino,
@@ -397,7 +417,7 @@ TRACE_EVENT(cachefiles_vol_coherency,
 		    __entry->ino	= ino;
 			   ),
 
-	    TP_printk("V=%08x %s i=%llx",
+	    TP_printk("V=%08x %s B=%llx",
 		      __entry->vol,
 		      __print_symbolic(__entry->why, cachefiles_coherency_traces),
 		      __entry->ino)
@@ -435,7 +455,7 @@ TRACE_EVENT(cachefiles_prep_read,
 		    __entry->cache_inode = cache_inode;
 			   ),
 
-	    TP_printk("R=%08x[%u] %s %s f=%02x s=%llx %zx ni=%x b=%x",
+	    TP_printk("R=%08x[%u] %s %s f=%02x s=%llx %zx ni=%x B=%x",
 		      __entry->rreq, __entry->index,
 		      __print_symbolic(__entry->source, netfs_sreq_sources),
 		      __print_symbolic(__entry->why, cachefiles_prepare_read_traces),
@@ -466,7 +486,7 @@ TRACE_EVENT(cachefiles_read,
 		    __entry->len	= len;
 			   ),
 
-	    TP_printk("o=%08x b=%08x s=%llx l=%zx",
+	    TP_printk("o=%08x B=%x s=%llx l=%zx",
 		      __entry->obj,
 		      __entry->backer,
 		      __entry->start,
@@ -495,7 +515,7 @@ TRACE_EVENT(cachefiles_write,
 		    __entry->len	= len;
 			   ),
 
-	    TP_printk("o=%08x b=%08x s=%llx l=%zx",
+	    TP_printk("o=%08x B=%x s=%llx l=%zx",
 		      __entry->obj,
 		      __entry->backer,
 		      __entry->start,
@@ -524,7 +544,7 @@ TRACE_EVENT(cachefiles_trunc,
 		    __entry->why	= why;
 			   ),
 
-	    TP_printk("o=%08x b=%08x %s l=%llx->%llx",
+	    TP_printk("o=%08x B=%x %s l=%llx->%llx",
 		      __entry->obj,
 		      __entry->backer,
 		      __print_symbolic(__entry->why, cachefiles_trunc_traces),
@@ -549,7 +569,7 @@ TRACE_EVENT(cachefiles_mark_active,
 		    __entry->inode	= inode->i_ino;
 			   ),
 
-	    TP_printk("o=%08x i=%lx",
+	    TP_printk("o=%08x B=%lx",
 		      __entry->obj, __entry->inode)
 	    );
 
@@ -570,7 +590,7 @@ TRACE_EVENT(cachefiles_mark_inactive,
 		    __entry->inode	= inode->i_ino;
 			   ),
 
-	    TP_printk("o=%08x i=%lx",
+	    TP_printk("o=%08x B=%lx",
 		      __entry->obj, __entry->inode)
 	    );
 
@@ -594,7 +614,7 @@ TRACE_EVENT(cachefiles_vfs_error,
 		    __entry->where	= where;
 			   ),
 
-	    TP_printk("o=%08x b=%08x %s e=%d",
+	    TP_printk("o=%08x B=%x %s e=%d",
 		      __entry->obj,
 		      __entry->backer,
 		      __print_symbolic(__entry->where, cachefiles_error_traces),
@@ -621,7 +641,7 @@ TRACE_EVENT(cachefiles_io_error,
 		    __entry->where	= where;
 			   ),
 
-	    TP_printk("o=%08x b=%08x %s e=%d",
+	    TP_printk("o=%08x B=%x %s e=%d",
 		      __entry->obj,
 		      __entry->backer,
 		      __print_symbolic(__entry->where, cachefiles_error_traces),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
