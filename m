Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD56B43210B
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:58:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU5d-0003qc-DR; Mon, 18 Oct 2021 14:58:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU5b-0003qG-C0
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GruXL50DosX11u6Eiitd3mjK2Wt4qFrfQfU0liRNHgw=; b=e2/UCsE6PPyy91jtBQ8vnLCQkO
 Q7loF3uFoPGwFLoA/P/7a0ccbY4jNHgwrCvQNvGji0TlFoHGye/Ejon+pnMox8vH6AYd/sR/GpWbW
 Qxx0Ccw78n2jmNHKpZV4Rr5KVCOs+5Ftn7oufzNildnn52Ukm5+l9gJsXwfm/+lSUbpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GruXL50DosX11u6Eiitd3mjK2Wt4qFrfQfU0liRNHgw=; b=DXVhKOtheGP1jl78yIbYg1O/48
 +sNsZ3d1v3flVBK+gaMnWNGJdmdXKZOG7qspq4Np3Y5GMv+3VptAlYrBz+d2v+NM35wgWq+/pttus
 08zjrZnIRntJXwaBKbQ8wyQItQk3O9IW1ZNpERwhhpWoZRuHeeyDgVEdgxgcMZ+vYlOk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU5a-004TEU-IX
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GruXL50DosX11u6Eiitd3mjK2Wt4qFrfQfU0liRNHgw=;
 b=ezz9LvF5r5NMcQoJtpTKPRJlqP/BTK3pAHeJ0W3lFxlvs1f5RU4pJ9HxXFTpBxkbKYngDn
 AEtmFq0Fw8tmT5W62n9VbYwqhv5IccCC0NLr/LTW/68g2YoZ/v5/aXCVH3psGaJqdCOl6b
 3/WkzKe4VCWdljzsjfLzy5bm6+6LZTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-o6RxVNI9Ph2jSiIgLDSOyw-1; Mon, 18 Oct 2021 10:58:01 -0400
X-MC-Unique: o6RxVNI9Ph2jSiIgLDSOyw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 147A510A8E06;
 Mon, 18 Oct 2021 14:57:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 08C63641AB;
 Mon, 18 Oct 2021 14:57:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:57:52 +0100
Message-ID: <163456907226.2614702.16135532021542996215.stgit@warthog.procyon.org.uk>
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
 Content preview: Add tracepoints for read and write operations on cache files.
 Signed-off-by: David Howells <dhowells@redhat.com> --- fs/cachefiles/io.c
 | 6 +++- include/trace/events/cachefiles.h | 58
 +++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+), 1 deletion(-) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU5a-004TEU-IX
Subject: [V9fs-developer] [PATCH 29/67] cachefiles: Trace read and write
 operations
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

Add tracepoints for read and write operations on cache files.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c                |    6 +++-
 include/trace/events/cachefiles.h |   58 +++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 0e1fb44b5d04..f703a93e238b 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -62,6 +62,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
 			   netfs_io_terminated_t term_func,
 			   void *term_func_priv)
 {
+	struct cachefiles_object *object = cres->cache_priv;
 	struct cachefiles_kiocb *ki;
 	struct file *file = cachefiles_cres_file(cres);
 	unsigned int old_nofs;
@@ -124,6 +125,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
 
 	get_file(ki->iocb.ki_filp);
 
+	trace_cachefiles_read(object, file_inode(file), ki->iocb.ki_pos, len - skipped);
 	old_nofs = memalloc_nofs_save();
 	ret = vfs_iocb_iter_read(file, &ki->iocb, iter);
 	memalloc_nofs_restore(old_nofs);
@@ -188,6 +190,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 			    netfs_io_terminated_t term_func,
 			    void *term_func_priv)
 {
+	struct cachefiles_object *object = cres->cache_priv;
 	struct cachefiles_kiocb *ki;
 	struct inode *inode;
 	struct file *file = cachefiles_cres_file(cres);
@@ -229,6 +232,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 
 	get_file(ki->iocb.ki_filp);
 
+	trace_cachefiles_write(object, inode, ki->iocb.ki_pos, len);
 	old_nofs = memalloc_nofs_save();
 	ret = vfs_iocb_iter_write(file, &ki->iocb, iter);
 	memalloc_nofs_restore(old_nofs);
@@ -418,7 +422,7 @@ int cachefiles_begin_operation(struct netfs_cache_resources *cres)
 
 	_enter("");
 
-	cres->cache_priv	= op;
+	cres->cache_priv	= object;
 	cres->cache_priv2	= get_file(object->file);
 	cres->ops		= &cachefiles_netfs_cache_ops;
 	cres->debug_id		= object->cookie->debug_id;
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 09d76c160451..47df44550ad6 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -302,6 +302,64 @@ TRACE_EVENT(cachefiles_coherency,
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
+		    __entry->obj	= obj->debug_id;
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
+		    __entry->obj	= obj->debug_id;
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
 TRACE_EVENT(cachefiles_trunc,
 	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer,
 		     loff_t from, loff_t to, enum cachefiles_trunc_trace why),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
