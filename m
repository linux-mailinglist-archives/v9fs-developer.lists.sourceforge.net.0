Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB347DA94
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:24:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AyV-0005KW-Pi; Wed, 22 Dec 2021 23:24:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AyU-0005KP-Gc
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BEkgFH71wgXQqW/IpVWA8T4D4eNiGF1a2TbvK0i/UlY=; b=VmwTvpfdELzJ5qZGr1Dj4Sn/yx
 PaKA+qa4ZThtzTmvM6jMpTpZTBqoixKrd8f25z1+ySurJbY0CQ1uFpJ5FAkV7/7DI0S8lhwLdiFdW
 40l5JWBCD6BnpwXiAzaFfdSPzwH8Wc6VZd6WcofdH5RWzRNR1TyHUeKkLfbSOJrCMoGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BEkgFH71wgXQqW/IpVWA8T4D4eNiGF1a2TbvK0i/UlY=; b=XxfDCzf98Nm9MSO4/SSoldCUPZ
 q8YGGg/gsCYo9QwIEoD52NUABTkEunTrYX8GGG2Fwy1qEWUXvuh0Tl8sxzI/Hd6m1WnOup+eGT9Pm
 iGmUUWj392MIYRaKvCYihT5B0wOtStYauGJQ1M4H0VkFqOGXsVB2zMnNQt1WhyYDsmTs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0AyT-0007Km-Oa
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BEkgFH71wgXQqW/IpVWA8T4D4eNiGF1a2TbvK0i/UlY=;
 b=ZWPU3zinhhWizlz9vXIHLSnPmbrGjrJcnT3/VzrMcEhYTgpeX7v179hfFO9V9OJ1rMexhJ
 /3qmoKHtTf7TZFrVE0UWcHG67/Bc/kV0nPLGSElk2ZnNQfaRtxWW6jJZjcY6OlyXL7XCR5
 xkd2RWJ34TWijwbOUIplBA5pbllcIQI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-T5BRlqglPuOBnWFlv8bc3A-1; Wed, 22 Dec 2021 18:24:34 -0500
X-MC-Unique: T5BRlqglPuOBnWFlv8bc3A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C85D18397C2;
 Wed, 22 Dec 2021 23:24:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA41A75748;
 Wed, 22 Dec 2021 23:24:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:24:22 +0000
Message-ID: <164021546287.640689.3501604495002415631.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview: Add tracepoints in cachefiles to monitor when it does various
 VFS operations,
 such as mkdir. Signed-off-by: David Howells <dhowells@redhat.com>
 cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163819638517.215744.12773133137536579766.stgit@warthog.procyon.org.uk/
 # v1 Link: https: [...] 
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
X-Headers-End: 1n0AyT-0007Km-Oa
Subject: [V9fs-developer] [PATCH v4 42/68] cachefiles: Add tracepoints for
 calls to the VFS
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

Add tracepoints in cachefiles to monitor when it does various VFS
operations, such as mkdir.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819638517.215744.12773133137536579766.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906938316.143852.17227990869551737803.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967147139.1823006.4909879317496543392.stgit@warthog.procyon.org.uk/ # v3
---

 include/trace/events/cachefiles.h |  176 +++++++++++++++++++++++++++++++++++++
 1 file changed, 176 insertions(+)

diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 6331cd29880d..5975ea4977b2 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -18,6 +18,21 @@
 #ifndef __CACHEFILES_DECLARE_TRACE_ENUMS_ONCE_ONLY
 #define __CACHEFILES_DECLARE_TRACE_ENUMS_ONCE_ONLY
 
+enum fscache_why_object_killed {
+	FSCACHE_OBJECT_IS_STALE,
+	FSCACHE_OBJECT_IS_WEIRD,
+	FSCACHE_OBJECT_INVALIDATED,
+	FSCACHE_OBJECT_NO_SPACE,
+	FSCACHE_OBJECT_WAS_RETIRED,
+	FSCACHE_OBJECT_WAS_CULLED,
+};
+
+enum cachefiles_trunc_trace {
+	cachefiles_trunc_dio_adjust,
+	cachefiles_trunc_expand_tmpfile,
+	cachefiles_trunc_shrink,
+};
+
 enum cachefiles_error_trace {
 	cachefiles_trace_fallocate_error,
 	cachefiles_trace_getxattr_error,
@@ -43,6 +58,19 @@ enum cachefiles_error_trace {
 /*
  * Define enum -> string mappings for display.
  */
+#define cachefiles_obj_kill_traces				\
+	EM(FSCACHE_OBJECT_IS_STALE,	"stale")		\
+	EM(FSCACHE_OBJECT_IS_WEIRD,	"weird")		\
+	EM(FSCACHE_OBJECT_INVALIDATED,	"inval")		\
+	EM(FSCACHE_OBJECT_NO_SPACE,	"no_space")		\
+	EM(FSCACHE_OBJECT_WAS_RETIRED,	"was_retired")		\
+	E_(FSCACHE_OBJECT_WAS_CULLED,	"was_culled")
+
+#define cachefiles_trunc_traces						\
+	EM(cachefiles_trunc_dio_adjust,		"DIOADJ")		\
+	EM(cachefiles_trunc_expand_tmpfile,	"EXPTMP")		\
+	E_(cachefiles_trunc_shrink,		"SHRINK")
+
 #define cachefiles_error_traces						\
 	EM(cachefiles_trace_fallocate_error,	"fallocate")		\
 	EM(cachefiles_trace_getxattr_error,	"getxattr")		\
@@ -71,6 +99,8 @@ enum cachefiles_error_trace {
 #define EM(a, b) TRACE_DEFINE_ENUM(a);
 #define E_(a, b) TRACE_DEFINE_ENUM(a);
 
+cachefiles_obj_kill_traces;
+cachefiles_trunc_traces;
 cachefiles_error_traces;
 
 /*
@@ -83,6 +113,152 @@ cachefiles_error_traces;
 #define E_(a, b)	{ a, b }
 
 
+TRACE_EVENT(cachefiles_lookup,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct dentry *de),
+
+	    TP_ARGS(obj, de),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		obj	)
+		    __field(short,			error	)
+		    __field(unsigned long,		ino	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj->debug_id;
+		    __entry->ino	= (!IS_ERR(de) && d_backing_inode(de) ?
+					   d_backing_inode(de)->i_ino : 0);
+		    __entry->error	= IS_ERR(de) ? PTR_ERR(de) : 0;
+			   ),
+
+	    TP_printk("o=%08x i=%lx e=%d",
+		      __entry->obj, __entry->ino, __entry->error)
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
+		    __entry->obj	= obj->debug_id;
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
+		    __entry->obj	= obj->debug_id;
+		    __entry->backer	= backer->i_ino;
+			   ),
+
+	    TP_printk("o=%08x b=%08x",
+		      __entry->obj,
+		      __entry->backer)
+	    );
+
+TRACE_EVENT(cachefiles_unlink,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct dentry *de,
+		     enum fscache_why_object_killed why),
+
+	    TP_ARGS(obj, de, why),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		obj		)
+		    __field(struct dentry *,		de		)
+		    __field(enum fscache_why_object_killed, why		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj ? obj->debug_id : UINT_MAX;
+		    __entry->de		= de;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("o=%08x d=%p w=%s",
+		      __entry->obj, __entry->de,
+		      __print_symbolic(__entry->why, cachefiles_obj_kill_traces))
+	    );
+
+TRACE_EVENT(cachefiles_rename,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct dentry *de,
+		     struct dentry *to,
+		     enum fscache_why_object_killed why),
+
+	    TP_ARGS(obj, de, to, why),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		obj		)
+		    __field(struct dentry *,		de		)
+		    __field(struct dentry *,		to		)
+		    __field(enum fscache_why_object_killed, why		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj ? obj->debug_id : UINT_MAX;
+		    __entry->de		= de;
+		    __entry->to		= to;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("o=%08x d=%p t=%p w=%s",
+		      __entry->obj, __entry->de, __entry->to,
+		      __print_symbolic(__entry->why, cachefiles_obj_kill_traces))
+	    );
+
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
 TRACE_EVENT(cachefiles_mark_active,
 	    TP_PROTO(struct cachefiles_object *obj,
 		     struct inode *inode),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
