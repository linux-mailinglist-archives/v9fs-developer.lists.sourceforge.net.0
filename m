Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AF043212C
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:59:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU7I-0006iV-LT; Mon, 18 Oct 2021 14:59:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU7H-0006i9-8k
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u3eVY7sKaIJbpFTvM7wbMyoLphftgkd/AnG9vQi6mbo=; b=M+VydMPZBXIdq44IfWmgmMH+AY
 TUThEVooTRxLgRODKgsdWIVgKhWxzpYz+dkl3OU58VhM0e+SamnSVKeYi10spU7D9hSJaAZ95ISol
 T8JIKeCLb5etVF95PH/VJ4zrFfxA3uU2NrWsyClR3VldtOtTO+0LRNqrtlpilOYCHsig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u3eVY7sKaIJbpFTvM7wbMyoLphftgkd/AnG9vQi6mbo=; b=SsTC7SneHt0mfSxuREMC2yomtX
 XE5INjFGPaacTaJl1lISgu3uSfc+qdriXPsHpegZjTcm2fkzVNffuNKBku9kCsoKxq6DV0oRmtTzq
 Qfr6x1vn5yLLS8oY+4nTYWtwH5AWVK2+zQYEugUmRmjuD3LrKiNLn3VXaQlftycnHJ3A=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU7G-004TfZ-DU
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u3eVY7sKaIJbpFTvM7wbMyoLphftgkd/AnG9vQi6mbo=;
 b=V3Hj9gM0tH1To38OD4A/T4Ker5nOrIEdspizBnkZwIMGm7gThKlEMAuSn/9ocZfSOyyo2b
 mjts19rzyf/DatyscUy6Ur07R4BTb5xzIi83r/BPOjGRLpiFFG8p+O59UZci0xXR1MCamz
 II87LDhEXsPVlRJu/o//vexdB9+T/44=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-XkSNNV2nNNKmB6b_yyqTZg-1; Mon, 18 Oct 2021 10:59:45 -0400
X-MC-Unique: XkSNNV2nNNKmB6b_yyqTZg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 620D1802575;
 Mon, 18 Oct 2021 14:59:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3841760657;
 Mon, 18 Oct 2021 14:59:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:59:39 +0100
Message-ID: <163456917935.2614702.1886040219032881319.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a tracepoint to log decisions made in
 cachefiles_prepare_read()
 about what it's going to request for the next subrequest and why.
 Signed-off-by:
 David Howells <dhowells@redhat.com> --- fs/cachefiles/io.c | 22 +++++++++++--
 fs/cachefiles/main.c | 2 + include/trace/events/cachefiles.h | 64
 +++++++++++++++++++++++++++++++++++++
 3 files changed, 85 insertions(+), 3 deletions(-) 
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
X-Headers-End: 1mcU7G-004TfZ-DU
Subject: [V9fs-developer] [PATCH 33/67] cachefiles: Trace decisions in
 cachefiles_prepare_read()
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

Add a tracepoint to log decisions made in cachefiles_prepare_read() about
what it's going to request for the next subrequest and why.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c                |   22 +++++++++++--
 fs/cachefiles/main.c              |    2 +
 include/trace/events/cachefiles.h |   64 +++++++++++++++++++++++++++++++++++++
 3 files changed, 85 insertions(+), 3 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index e5c29c0decea..c05f64cdfd0e 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -303,6 +303,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subrequest *subreq,
 						      loff_t i_size)
 {
+	enum cachefiles_prepare_read_trace why;
 	struct netfs_read_request *rreq = subreq->rreq;
 	struct netfs_cache_resources *cres = &rreq->cache_resources;
 	struct cachefiles_object *object;
@@ -312,26 +313,31 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 	struct file *file = cachefiles_cres_file(cres);
 	enum netfs_read_source ret = NETFS_DOWNLOAD_FROM_SERVER;
 	loff_t off, to;
+	ino_t ino = file ? file_inode(file)->i_ino : 0;
 
 	_enter("%zx @%llx/%llx", subreq->len, subreq->start, i_size);
 
 	if (subreq->start >= i_size) {
 		ret = NETFS_FILL_WITH_ZEROES;
+		why = cachefiles_trace_read_after_eof;
 		goto out_no_object;
 	}
 
 	if (test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags)) {
 		__set_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags);
+		why = cachefiles_trace_read_no_data;
 		goto out_no_object;
 	}
 
 	/* The object and the file may be being created in the background. */
 	if (!file) {
+		why = cachefiles_trace_read_no_file;
 		if (!fscache_wait_for_operation(cres, FSCACHE_WANT_READ))
 			goto out_no_object;
 		file = cachefiles_cres_file(cres);
 		if (!file)
 			goto out_no_object;
+		ino = file_inode(file)->i_ino;
 	}
 
 	object = cachefiles_cres_object(cres);
@@ -340,23 +346,31 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 
 	off = vfs_llseek(file, subreq->start, SEEK_DATA);
 	if (off < 0 && off >= (loff_t)-MAX_ERRNO) {
-		if (off == (loff_t)-ENXIO)
+		if (off == (loff_t)-ENXIO) {
+			why = cachefiles_trace_read_seek_nxio;
 			goto download_and_store;
+		}
+		why = cachefiles_trace_read_seek_error;
 		goto out;
 	}
 
-	if (off >= subreq->start + subreq->len)
+	if (off >= subreq->start + subreq->len) {
+		why = cachefiles_trace_read_found_hole;
 		goto download_and_store;
+	}
 
 	if (off > subreq->start) {
 		off = round_up(off, cache->bsize);
 		subreq->len = off - subreq->start;
+		why = cachefiles_trace_read_found_part;
 		goto download_and_store;
 	}
 
 	to = vfs_llseek(file, subreq->start, SEEK_HOLE);
-	if (to < 0 && to >= (loff_t)-MAX_ERRNO)
+	if (to < 0 && to >= (loff_t)-MAX_ERRNO) {
+		why = cachefiles_trace_read_seek_error;
 		goto out;
+	}
 
 	if (to < subreq->start + subreq->len) {
 		if (subreq->start + subreq->len >= i_size)
@@ -366,6 +380,7 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 		subreq->len = to - subreq->start;
 	}
 
+	why = cachefiles_trace_read_have_data;
 	ret = NETFS_READ_FROM_CACHE;
 	goto out;
 
@@ -375,6 +390,7 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 out:
 	cachefiles_end_secure(cache, saved_cred);
 out_no_object:
+	trace_cachefiles_prep_read(subreq, ret, why, ino);
 	return ret;
 }
 
diff --git a/fs/cachefiles/main.c b/fs/cachefiles/main.c
index dc7731812b98..522fda828563 100644
--- a/fs/cachefiles/main.c
+++ b/fs/cachefiles/main.c
@@ -18,6 +18,8 @@
 #include <linux/statfs.h>
 #include <linux/sysctl.h>
 #include <linux/miscdevice.h>
+#include <linux/netfs.h>
+#include <trace/events/netfs.h>
 #define CREATE_TRACE_POINTS
 #include "internal.h"
 
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index d98adabce92e..d63e5fb46d27 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -60,6 +60,17 @@ enum cachefiles_trunc_trace {
 	cachefiles_trunc_shrink,
 };
 
+enum cachefiles_prepare_read_trace {
+	cachefiles_trace_read_after_eof,
+	cachefiles_trace_read_found_hole,
+	cachefiles_trace_read_found_part,
+	cachefiles_trace_read_have_data,
+	cachefiles_trace_read_no_data,
+	cachefiles_trace_read_no_file,
+	cachefiles_trace_read_seek_error,
+	cachefiles_trace_read_seek_nxio,
+};
+
 #endif
 
 /*
@@ -103,6 +114,17 @@ enum cachefiles_trunc_trace {
 	EM(cachefiles_trunc_dio_adjust,		"DIOADJ")		\
 	E_(cachefiles_trunc_shrink,		"SHRINK")
 
+#define cachefiles_prepare_read_traces					\
+	EM(cachefiles_trace_read_after_eof,	"after-eof ")		\
+	EM(cachefiles_trace_read_found_hole,	"found-hole")		\
+	EM(cachefiles_trace_read_found_part,	"found-part")		\
+	EM(cachefiles_trace_read_have_data,	"have-data ")		\
+	EM(cachefiles_trace_read_no_data,	"no-data   ")		\
+	EM(cachefiles_trace_read_no_file,	"no-file   ")		\
+	EM(cachefiles_trace_read_seek_error,	"seek-error")		\
+	E_(cachefiles_trace_read_seek_nxio,	"seek-enxio")
+
+
 /*
  * Export enum symbols via userspace.
  */
@@ -115,6 +137,7 @@ cachefiles_obj_kill_traces;
 cachefiles_obj_ref_traces;
 cachefiles_coherency_traces;
 cachefiles_trunc_traces;
+cachefiles_prepare_read_traces;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -324,6 +347,47 @@ TRACE_EVENT(cachefiles_coherency,
 		      __entry->content)
 	    );
 
+TRACE_EVENT(cachefiles_prep_read,
+	    TP_PROTO(struct netfs_read_subrequest *sreq,
+		     enum netfs_read_source source,
+		     enum cachefiles_prepare_read_trace why,
+		     ino_t cache_inode),
+
+	    TP_ARGS(sreq, source, why, cache_inode),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		rreq		)
+		    __field(unsigned short,		index		)
+		    __field(unsigned short,		flags		)
+		    __field(enum netfs_read_source,	source		)
+		    __field(enum cachefiles_prepare_read_trace,	why	)
+		    __field(size_t,			len		)
+		    __field(loff_t,			start		)
+		    __field(unsigned int,		netfs_inode	)
+		    __field(unsigned int,		cache_inode	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->rreq	= sreq->rreq->debug_id;
+		    __entry->index	= sreq->debug_index;
+		    __entry->flags	= sreq->flags;
+		    __entry->source	= source;
+		    __entry->why	= why;
+		    __entry->len	= sreq->len;
+		    __entry->start	= sreq->start;
+		    __entry->netfs_inode = sreq->rreq->inode->i_ino;
+		    __entry->cache_inode = cache_inode;
+			   ),
+
+	    TP_printk("R=%08x[%u] %s %s f=%02x s=%llx %zx ni=%x b=%x",
+		      __entry->rreq, __entry->index,
+		      __print_symbolic(__entry->source, netfs_sreq_sources),
+		      __print_symbolic(__entry->why, cachefiles_prepare_read_traces),
+		      __entry->flags,
+		      __entry->start, __entry->len,
+		      __entry->netfs_inode, __entry->cache_inode)
+	    );
+
 TRACE_EVENT(cachefiles_read,
 	    TP_PROTO(struct cachefiles_object *obj,
 		     struct inode *backer,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
