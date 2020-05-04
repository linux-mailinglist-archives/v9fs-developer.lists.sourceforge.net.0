Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA71C1C416D
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:12:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVedV-0007Kz-Hw; Mon, 04 May 2020 17:12:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVedU-0007Kf-E1
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RsKlZPL79lsVIpqG5GEJIOHq0XzcTHkHZqx9vAFcpIs=; b=Vc7qiKwFykOPri1q+cnFPMzbtT
 iaCXhyNQE9QiGktorN3A67FTykPM4Ft+6IZg4g6qv1swEAKeSJ3xfZ/31KpbHz0DFPhYU/N7FqN5n
 g6XcdqBTKRRw8QwScx9MGmP9FuVjHblbhIP66rxdNaukU/eNngCBNwpRoegc2KT0X96A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RsKlZPL79lsVIpqG5GEJIOHq0XzcTHkHZqx9vAFcpIs=; b=d4hwYRr5wij+sn7T71QyUYzSTL
 wG9UtkAYob3V+k7KeXCcU3yek7RwNFjzYmKvf/4et2bIyS5NzPj+IQ8nagyjRqf+K563tToh1l4aN
 PvuPSpp78k3L0UV3+6ApIr1rbx0rRINC+stDgOu3yvH+fbUNKQnqQ94tl34VTrXrp4Bw=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVedT-0079yB-5W
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612321;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RsKlZPL79lsVIpqG5GEJIOHq0XzcTHkHZqx9vAFcpIs=;
 b=EnAK5dYuCpa/lb8pA9o2BaDmaHGexvaZ+mrSUOG86PCBwD4HopPRsd4FO9TGXkCT1uUZaH
 p8zvmj70X+oiBNyU6p78+pEhElEE4emywDVt/oVjgbaFA9hbqmN5VsOVLQipkmW0fLRWTx
 baq12RfF1gNO02z3LHMMF3waTdsorhw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-111-itzpcLH3MsaAXyqmYk-GEw-1; Mon, 04 May 2020 13:11:57 -0400
X-MC-Unique: itzpcLH3MsaAXyqmYk-GEw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 128A4802EB0;
 Mon,  4 May 2020 17:11:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A5E7A6248C;
 Mon,  4 May 2020 17:11:51 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:11:50 +0100
Message-ID: <158861231084.340223.11279014019426008566.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVedT-0079yB-5W
Subject: [V9fs-developer] [RFC PATCH 29/61] cachefiles: trace: Log coherency
 checks
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

Add a cachefiles tracepoint that logs the result of coherency management
when the coherency data on a file in the cache is checked or committed.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/xattr.c             |   45 ++++++++++++++++++++++--------
 include/trace/events/cachefiles.h |   56 +++++++++++++++++++++++++++++++++++++
 2 files changed, 89 insertions(+), 12 deletions(-)

diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index 5b2f6da91cc8..17c16c2bd07e 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -125,12 +125,21 @@ int cachefiles_set_object_xattr(struct cachefiles_object *object,
 	ret = vfs_setxattr(dentry, cachefiles_xattr_cache,
 			   buf, sizeof(struct cachefiles_xattr) + len,
 			   xattr_flags);
-	kfree(buf);
-	if (ret < 0 && ret != -ENOMEM)
-		cachefiles_io_error_obj(
-			object,
-			"Failed to set xattr with error %d", ret);
+	if (ret < 0) {
+		trace_cachefiles_coherency(object, d_inode(dentry)->i_ino,
+					   0,
+					   cachefiles_coherency_set_fail);
+		if (ret != -ENOMEM)
+			cachefiles_io_error_obj(
+				object,
+				"Failed to set xattr with error %d", ret);
+	} else {
+		trace_cachefiles_coherency(object, d_inode(dentry)->i_ino,
+					   0,
+					   cachefiles_coherency_set_ok);
+	}
 
+	kfree(buf);
 	_leave(" = %d", ret);
 	return ret;
 }
@@ -144,7 +153,9 @@ int cachefiles_check_auxdata(struct cachefiles_object *object)
 	struct dentry *dentry = object->dentry;
 	unsigned int len = object->fscache.cookie->aux_len, tlen;
 	const void *p = fscache_get_aux(object->fscache.cookie);
-	ssize_t ret;
+	enum cachefiles_coherency_trace why;
+	ssize_t xlen;
+	int ret = -ESTALE;
 
 	ASSERT(dentry);
 	ASSERT(d_backing_inode(dentry));
@@ -154,14 +165,24 @@ int cachefiles_check_auxdata(struct cachefiles_object *object)
 	if (!buf)
 		return -ENOMEM;
 
-	ret = vfs_getxattr(dentry, cachefiles_xattr_cache, buf, tlen);
-	if (ret == tlen &&
-	    buf->type == object->fscache.cookie->type &&
-	    memcmp(buf->data, p, len) == 0)
+	xlen = vfs_getxattr(dentry, cachefiles_xattr_cache, buf, tlen);
+	if (xlen != tlen) {
+		if (xlen == -EIO)
+			cachefiles_io_error_obj(
+				object,
+				"Failed to read aux with error %zd", xlen);
+		why = cachefiles_coherency_check_xattr;
+	} else if (buf->type != object->fscache.cookie->type) {
+		why = cachefiles_coherency_check_type;
+	} else if (memcmp(buf->data, p, len) != 0) {
+		why = cachefiles_coherency_check_aux;
+	} else {
+		why = cachefiles_coherency_check_ok;
 		ret = 0;
-	else
-		ret = -ESTALE;
+	}
 
+	trace_cachefiles_coherency(object, d_inode(dentry)->i_ino,
+				   0, why);
 	kfree(buf);
 	return ret;
 }
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 0aa3f3126f6e..bf588c3f4a07 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -24,6 +24,19 @@ enum cachefiles_obj_ref_trace {
 	cachefiles_obj_ref__nr_traces
 };
 
+enum cachefiles_coherency_trace {
+	cachefiles_coherency_check_aux,
+	cachefiles_coherency_check_content,
+	cachefiles_coherency_check_dirty,
+	cachefiles_coherency_check_len,
+	cachefiles_coherency_check_objsize,
+	cachefiles_coherency_check_ok,
+	cachefiles_coherency_check_type,
+	cachefiles_coherency_check_xattr,
+	cachefiles_coherency_set_fail,
+	cachefiles_coherency_set_ok,
+};
+
 #endif
 
 /*
@@ -56,6 +69,18 @@ enum cachefiles_obj_ref_trace {
 	EM(cachefiles_obj_put_wait_retry,	"PUT wait_retry")	\
 	E_(cachefiles_obj_put_wait_timeo,	"PUT wait_timeo")
 
+#define cachefiles_coherency_traces					\
+	EM(cachefiles_coherency_check_aux,	"BAD aux ")		\
+	EM(cachefiles_coherency_check_content,	"BAD cont")		\
+	EM(cachefiles_coherency_check_dirty,	"BAD dirt")		\
+	EM(cachefiles_coherency_check_len,	"BAD len ")		\
+	EM(cachefiles_coherency_check_objsize,	"BAD osiz")		\
+	EM(cachefiles_coherency_check_ok,	"OK      ")		\
+	EM(cachefiles_coherency_check_type,	"BAD type")		\
+	EM(cachefiles_coherency_check_xattr,	"BAD xatt")		\
+	EM(cachefiles_coherency_set_fail,	"SET fail")		\
+	E_(cachefiles_coherency_set_ok,		"SET ok  ")
+
 /*
  * Export enum symbols via userspace.
  */
@@ -66,6 +91,7 @@ enum cachefiles_obj_ref_trace {
 
 cachefiles_obj_kill_traces;
 cachefiles_obj_ref_traces;
+cachefiles_coherency_traces;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -295,6 +321,36 @@ TRACE_EVENT(cachefiles_mark_buried,
 		      __print_symbolic(__entry->why, cachefiles_obj_kill_traces))
 	    );
 
+TRACE_EVENT(cachefiles_coherency,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     ino_t ino,
+		     int content,
+		     enum cachefiles_coherency_trace why),
+
+	    TP_ARGS(obj, ino, content, why),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(enum cachefiles_coherency_trace,	why	)
+		    __field(int,				content	)
+		    __field(u64,				ino	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->fscache.debug_id;
+		    __entry->why	= why;
+		    __entry->content	= content;
+		    __entry->ino	= ino;
+			   ),
+
+	    TP_printk("o=%08x %s i=%llx c=%u",
+		      __entry->obj,
+		      __print_symbolic(__entry->why, cachefiles_coherency_traces),
+		      __entry->ino,
+		      __entry->content)
+	    );
+
 #endif /* _TRACE_CACHEFILES_H */
 
 /* This part must be outside protection */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
