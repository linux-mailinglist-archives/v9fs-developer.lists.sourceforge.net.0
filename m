Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B89E84320FE
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:58:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU5Q-0006np-EE; Mon, 18 Oct 2021 14:58:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcU5O-0006ni-WB
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:57:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FqXtD4ctY9AuNokwYb2eI4uzaefOorI1un4GDbWnL4g=; b=OdLNqhThlGuU7RD9rofl6fEW7v
 Vm7Wh3fYMceqAXLY0Q3fpVklK4SfEqxZPCCwnkHHiqJh5qmqwhOCdCcNYV9HLj7V4cxvfrrC9OWKa
 ZndvGkfhu4b3iwD4+GjWSVyIAjScUGot6NdhhGTcUmMy1zzn31pAdLnGdwfh9hlSKbOQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FqXtD4ctY9AuNokwYb2eI4uzaefOorI1un4GDbWnL4g=; b=ha3XEKnOv3vj3HWPOiWJyk3rAj
 xslnepw9uFIrOjb3pjA13+PqcfqZuI7J1iTud0QByWpTfeReSfkdTj8T0fMEdVd2Its0/i2UY9l3g
 Le+kJsKsyDMoypoc2EuDkw+4H8wKZ1s5z/g0KcaXfi8OaHWGvZAI2k23AUsuYSUeciRg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU5O-004TBl-BA
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:57:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FqXtD4ctY9AuNokwYb2eI4uzaefOorI1un4GDbWnL4g=;
 b=Jt0NeKx4sfTIFHRsNUSq8MDxfx0eUQ2ForwzyxZfUjeowFDGLGR6SnysTkHgARPJSv3Pjl
 bBWUYxvOM0mSUO0AT5h6/GlXESt+haNCyAe5nymjn9Kx6zkD8aGoNhZHgmPzLIwHQls6jP
 lbHfNza593VIzqXF+UMlFTOK6c1Y/28=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-uJKXfj15M2-9BoLIeck12g-1; Mon, 18 Oct 2021 10:57:49 -0400
X-MC-Unique: uJKXfj15M2-9BoLIeck12g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CB1F8066F5;
 Mon, 18 Oct 2021 14:57:47 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B80A7100EA05;
 Mon, 18 Oct 2021 14:57:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:57:42 +0100
Message-ID: <163456906284.2614702.7451773731985568258.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a tracepoint to trace truncation operations.
 Signed-off-by:
 David Howells <dhowells@redhat.com> --- fs/cachefiles/interface.c | 9 +++++++-
 include/trace/events/cachefiles.h | 40 +++++++++++++++++++++++++++++++++++++
 2 files changed, 48 insertions(+), 1 deletion(-) 
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
X-Headers-End: 1mcU5O-004TBl-BA
Subject: [V9fs-developer] [PATCH 28/67] cachefiles: Trace truncations
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

Add a tracepoint to trace truncation operations.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c         |    9 +++++++-
 include/trace/events/cachefiles.h |   40 +++++++++++++++++++++++++++++++++++++
 2 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index 4edb3a09932a..8f98e5c27d66 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -341,9 +341,16 @@ static void cachefiles_invalidate_object(struct cachefiles_object *object)
 		ASSERT(d_is_reg(file->f_path.dentry));
 
 		cachefiles_begin_secure(cache, &saved_cred);
+		trace_cachefiles_trunc(object, file_inode(file),
+				       i_size_read(file_inode(file)), 0,
+				       cachefiles_trunc_invalidate);
 		ret = vfs_truncate(&file->f_path, 0);
-		if (ret == 0)
+		if (ret == 0) {
+			trace_cachefiles_trunc(object, file_inode(file),
+					       0, ni_size,
+					       cachefiles_trunc_set_size);
 			ret = vfs_truncate(&file->f_path, ni_size);
+		}
 		cachefiles_end_secure(cache, saved_cred);
 
 		if (ret != 0) {
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 6e9f6462833d..09d76c160451 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -37,6 +37,11 @@ enum cachefiles_coherency_trace {
 	cachefiles_coherency_set_ok,
 };
 
+enum cachefiles_trunc_trace {
+	cachefiles_trunc_invalidate,
+	cachefiles_trunc_set_size,
+};
+
 #endif
 
 /*
@@ -72,6 +77,10 @@ enum cachefiles_coherency_trace {
 	EM(cachefiles_coherency_set_fail,	"SET fail")		\
 	E_(cachefiles_coherency_set_ok,		"SET ok  ")
 
+#define cachefiles_trunc_traces						\
+	EM(cachefiles_trunc_invalidate,		"INVAL ")		\
+	E_(cachefiles_trunc_set_size,		"SETSIZ")
+
 /*
  * Export enum symbols via userspace.
  */
@@ -83,6 +92,7 @@ enum cachefiles_coherency_trace {
 cachefiles_obj_kill_traces;
 cachefiles_obj_ref_traces;
 cachefiles_coherency_traces;
+cachefiles_trunc_traces;
 
 /*
  * Now redefine the EM() and E_() macros to map the enums to the strings that
@@ -292,6 +302,36 @@ TRACE_EVENT(cachefiles_coherency,
 		      __entry->content)
 	    );
 
+TRACE_EVENT(cachefiles_trunc,
+	    TP_PROTO(struct cachefiles_object *obj, struct inode *backer,
+		     loff_t from, loff_t to, enum cachefiles_trunc_trace why),
+
+	    TP_ARGS(obj, backer, from, to, why),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			obj	)
+		    __field(unsigned int,			backer	)
+		    __field(enum cachefiles_trunc_trace,	why	)
+		    __field(loff_t,				from	)
+		    __field(loff_t,				to	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->debug_id;
+		    __entry->backer	= backer->i_ino;
+		    __entry->from	= from;
+		    __entry->to		= to;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("o=%08x b=%08x %s l=%llx->%llx",
+		      __entry->obj,
+		      __entry->backer,
+		      __print_symbolic(__entry->why, cachefiles_trunc_traces),
+		      __entry->from,
+		      __entry->to)
+	    );
+
 #endif /* _TRACE_CACHEFILES_H */
 
 /* This part must be outside protection */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
