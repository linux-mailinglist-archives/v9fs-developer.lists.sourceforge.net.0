Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC802BAD3A
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:14:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg87X-0002pG-Sf; Fri, 20 Nov 2020 15:14:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg85l-0002kf-Er
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:12:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UbA8dPdq7nnWxfhxybiQzhAe4RhNPqZGUpRHw0CU3+Q=; b=gQSxbUVlBme95pGwk+ZKePWNSO
 c8MKExIrRAxS47z3CyufQHb8Ct/yyULb+2gCqIkz55QFW6MV/T0R4KI4HGR01vh+eekr51zrX5MIk
 78jJeajlV/tih1AE+Uz7pEvCVQ9g0H2eDf1UfKO9p6jXGBnj4oPKwaE/CfChnmTZsnAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UbA8dPdq7nnWxfhxybiQzhAe4RhNPqZGUpRHw0CU3+Q=; b=ipgI8NtE88APR73c8l/uSIoRc7
 vDyc+HGl8isQowhtqdcoBllCT5h4/+mOwSBAiGdXSdvkcl2BBFAn5yJcCFus+XUzXbXP917ZSSkZd
 g0f01PUnXKrH5mORtQbxqFqBCiDyd0o6mJz5Y4bde0rJEx8tAMQt7JUQ2zgyFhe6P7c8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg85a-003BlP-R0
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:12:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UbA8dPdq7nnWxfhxybiQzhAe4RhNPqZGUpRHw0CU3+Q=;
 b=VvtS3u26AhkAZfQw7OFM91REXjnjd8b8Lk1GoOvskK8soPhP9DRyIxkunfTaEIqHvxOJo8
 WXtw/wbsNzIkjX3t5GKLXFIWDVgTCvwvxed3CxAO1voEPChhUMOklv+3a1BKxGcMDFv5y1
 OHqC7/I+ErPB2D+PhY/PWJnQX+Ychmo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-LvWAQHbHMCqL8ffYdrxQbQ-1; Fri, 20 Nov 2020 10:12:27 -0500
X-MC-Unique: LvWAQHbHMCqL8ffYdrxQbQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B9F5107ACFC;
 Fri, 20 Nov 2020 15:12:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E1FC119C46;
 Fri, 20 Nov 2020 15:12:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:12:16 +0000
Message-ID: <160588513612.3465195.14647633831981307251.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg85a-003BlP-R0
Subject: [V9fs-developer] [RFC PATCH 45/76] cachefiles: Add I/O tracepoints
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add some cache I/O tracepoints.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c         |    2 +
 fs/cachefiles/io.c                |    2 +
 include/trace/events/cachefiles.h |  125 +++++++++++++++++++++++++++++++++++++
 3 files changed, 129 insertions(+)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index c14e2b4f5b24..654c6efb5a0a 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -179,6 +179,7 @@ static void cachefiles_update_object(struct fscache_object *_object)
 			.dentry	= object->dentry
 		};
 		_debug("trunc %llx -> %llx", i_size, object_size);
+		trace_cachefiles_trunc(object, inode, i_size, object_size);
 		ret = vfs_truncate(&path, object_size);
 		if (ret < 0) {
 			cachefiles_io_error_obj(object, "Trunc-to-size failed");
@@ -190,6 +191,7 @@ static void cachefiles_update_object(struct fscache_object *_object)
 		i_size = i_size_read(inode);
 		_debug("trunc %llx -> %llx", i_size, object_size);
 		if (i_size < object_size) {
+			trace_cachefiles_trunc(object, inode, i_size, object_size);
 			ret = vfs_truncate(&path, object_size);
 			if (ret < 0) {
 				cachefiles_io_error_obj(object, "Trunc-to-dio-size failed");
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 4c66b9183dd6..c9866bd5e010 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -139,6 +139,7 @@ int cachefiles_read(struct fscache_op_resources *opr,
 
 	cachefiles_grab_object(&object->fscache, fscache_obj_get_ioreq);
 
+	trace_cachefiles_read(object, file_inode(file), ki->iocb.ki_pos, len - skipped);
 	old_nofs = memalloc_nofs_save();
 	ret = call_read_iter(file, &ki->iocb, iter);
 	memalloc_nofs_restore(old_nofs);
@@ -267,6 +268,7 @@ int cachefiles_write(struct fscache_op_resources *opr,
 
 	cachefiles_grab_object(&object->fscache, fscache_obj_get_ioreq);
 
+	trace_cachefiles_write(object, inode, ki->iocb.ki_pos, len);
 	old_nofs = memalloc_nofs_save();
 	ret = call_write_iter(file, &ki->iocb, iter);
 	memalloc_nofs_restore(old_nofs);
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index e7af1d683009..f9f48c0f5080 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -351,6 +351,131 @@ TRACE_EVENT(cachefiles_coherency,
 		      __entry->content)
 	    );
 
+TRACE_EVENT(cachefiles_read,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct inode *backer,
+		     loff_t start,
+		     size_t len),
+
+	    TP_ARGS(obj, backer, start, len),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(unsigned int,			backer	)
+		    __field(size_t,				len	)
+		    __field(loff_t,				start	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->fscache.debug_id;
+		    __entry->backer	= backer->i_ino;
+		    __entry->start	= start;
+		    __entry->len	= len;
+			   ),
+
+	    TP_printk("o=%08x b=%08x s=%llx l=%zx",
+		      __entry->obj,
+		      __entry->backer,
+		      __entry->start,
+		      __entry->len)
+	    );
+
+TRACE_EVENT(cachefiles_write,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct inode *backer,
+		     loff_t start,
+		     size_t len),
+
+	    TP_ARGS(obj, backer, start, len),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(unsigned int,			backer	)
+		    __field(size_t,				len	)
+		    __field(loff_t,				start	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->fscache.debug_id;
+		    __entry->backer	= backer->i_ino;
+		    __entry->start	= start;
+		    __entry->len	= len;
+			   ),
+
+	    TP_printk("o=%08x b=%08x s=%llx l=%zx",
+		      __entry->obj,
+		      __entry->backer,
+		      __entry->start,
+		      __entry->len)
+	    );
+
+TRACE_EVENT(cachefiles_trunc,
+	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer,
+		     loff_t from, loff_t to),
+
+	    TP_ARGS(obj, backer, from, to),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(unsigned int,			backer	)
+		    __field(loff_t,				from	)
+		    __field(loff_t,				to	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->fscache.debug_id;
+		    __entry->backer	= backer->i_ino;
+		    __entry->from	= from;
+		    __entry->to		= to;
+			   ),
+
+	    TP_printk("o=%08x b=%08x l=%llx->%llx",
+		      __entry->obj,
+		      __entry->backer,
+		      __entry->from,
+		      __entry->to)
+	    );
+
+TRACE_EVENT(cachefiles_tmpfile,
+	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer),
+
+	    TP_ARGS(obj, backer),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(unsigned int,			backer	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->fscache.debug_id;
+		    __entry->backer	= backer->i_ino;
+			   ),
+
+	    TP_printk("o=%08x b=%08x",
+		      __entry->obj,
+		      __entry->backer)
+	    );
+
+TRACE_EVENT(cachefiles_link,
+	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer),
+
+	    TP_ARGS(obj, backer),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(unsigned int,			backer	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->fscache.debug_id;
+		    __entry->backer	= backer->i_ino;
+			   ),
+
+	    TP_printk("o=%08x b=%08x",
+		      __entry->obj,
+		      __entry->backer)
+	    );
+
 #endif /* _TRACE_CACHEFILES_H */
 
 /* This part must be outside protection */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
