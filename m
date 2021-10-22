Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 032F9437D3F
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:02:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzoS-0003bR-MM; Fri, 22 Oct 2021 19:02:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzoM-0003ad-8c
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rbeUDRvfOB2aZ1sHCO5D2RGmW9kgUvKEDFff366LXY4=; b=WwVNvi8hwdiHzDPb8QttBKCwx4
 xLF4mAVTHKj0Rd4Y4jLms2k/gJ8gKf1vhUJdk3MWsyAD+QA18wF5yMXsyS0uXav3pndX82IsH5dgs
 EjnymTpYmVtfwpw//JXOmm6zDBUGWtxuBg9LQfvjVqmCxEgPEmo1HU/k8HFxHcHItxf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rbeUDRvfOB2aZ1sHCO5D2RGmW9kgUvKEDFff366LXY4=; b=VArZcxqfg4Y5aAH+GO+bJD2GM7
 gvIqO1Fe0weci/eN4FCA52++B8eJ0+oPzlkttlPRfC17TEGdN8rHiEKaDHUldaykuFXdWOjApKpAT
 a/qNcIFLeZuuKiw+ih3NMGoomFxfvnruqNrb+NtnUAuzKSlXvz7TPcKHNv+RmZFA7p7k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzoL-00CHHR-Fg
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929351;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rbeUDRvfOB2aZ1sHCO5D2RGmW9kgUvKEDFff366LXY4=;
 b=E1hLd5ydNfBElZk/GtkqOp5sQiB1OTaSdsNyhFslfm/vsQ3QHbe9Bi3g0M6QxvyCAeUaS7
 rQP3chipLt+TBgfL4QElR817BMOtHFM6VO+NauTcmadZMXFmzKUWxwxRUr9rBVuORyFfH7
 vq9KeAR6R/efiwP4y3xchI+wcDNSdkA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-GJhCiyf0PZGta_LRvW2QGg-1; Fri, 22 Oct 2021 15:02:28 -0400
X-MC-Unique: GJhCiyf0PZGta_LRvW2QGg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 230C1806688;
 Fri, 22 Oct 2021 19:02:26 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBBDE5C1A3;
 Fri, 22 Oct 2021 19:02:22 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:02:22 +0100
Message-ID: <163492934215.1038219.4516739049966201721.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a pair of helper functions to manage access to a volume, 
 pinning the volume in place for the duration to prevent cache withdrawal
 from removing it: bool fscache_begin_volume_access(struct fscache_volume
 *volume, enum fscache_access_trace why);
 void fscache_end_volume_access(struct fscache_volume
 *volume, enum fscache_access_trace why); 
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
X-Headers-End: 1mdzoL-00CHHR-Fg
Subject: [V9fs-developer] [PATCH v2 13/53] fscache: Implement volume-level
 access helpers
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a pair of helper functions to manage access to a volume, pinning the
volume in place for the duration to prevent cache withdrawal from removing
it:

	bool fscache_begin_volume_access(struct fscache_volume *volume,
					 enum fscache_access_trace why);
	void fscache_end_volume_access(struct fscache_volume *volume,
				       enum fscache_access_trace why);

The first is intended for internal use only, but the second will be used by
the cache backend also.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/internal.h          |    2 ++
 fs/fscache/main.c              |    1 +
 fs/fscache/volume.c            |   47 ++++++++++++++++++++++++++++++++++++++++
 include/linux/fscache-cache.h  |    3 +++
 include/trace/events/fscache.h |   30 ++++++++++++++++++++++++++
 5 files changed, 83 insertions(+)

diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 5546c24d18d8..18f9a408a4f4 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -107,6 +107,8 @@ struct fscache_volume *fscache_get_volume(struct fscache_volume *volume,
 					  enum fscache_volume_trace where);
 void fscache_put_volume(struct fscache_volume *volume,
 			enum fscache_volume_trace where);
+bool fscache_begin_volume_access(struct fscache_volume *volume,
+				 enum fscache_access_trace why);
 void fscache_create_volume(struct fscache_volume *volume, bool wait);
 
 
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index e1f14b29cff4..6a024c45eb0b 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -22,6 +22,7 @@ MODULE_PARM_DESC(fscache_debug,
 		 "FS-Cache debugging mask");
 
 EXPORT_TRACEPOINT_SYMBOL(fscache_access_cache);
+EXPORT_TRACEPOINT_SYMBOL(fscache_access_volume);
 
 struct workqueue_struct *fscache_wq;
 EXPORT_SYMBOL(fscache_wq);
diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index 924851888f18..d539d6ec2664 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -33,6 +33,53 @@ static void fscache_see_volume(struct fscache_volume *volume,
 	trace_fscache_volume(volume->debug_id, ref, where);
 }
 
+/*
+ * Pin the cache behind a volume so that we can access it.
+ */
+static void __fscache_begin_volume_access(struct fscache_volume *volume,
+					  enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	n_accesses = atomic_inc_return(&volume->n_accesses);
+	smp_mb__after_atomic();
+	trace_fscache_access_volume(volume->debug_id, refcount_read(&volume->ref),
+				    n_accesses, why);
+}
+
+/*
+ * If the cache behind a volume is live, pin it so that we can access it.
+ */
+bool fscache_begin_volume_access(struct fscache_volume *volume,
+				 enum fscache_access_trace why)
+{
+	if (!fscache_cache_is_live(volume->cache))
+		return false;
+	__fscache_begin_volume_access(volume, why);
+	if (!fscache_cache_is_live(volume->cache)) {
+		fscache_end_volume_access(volume, fscache_access_unlive);
+		return false;
+	}
+	return true;
+}
+
+/*
+ * Mark the end of an access on a volume.
+ */
+void fscache_end_volume_access(struct fscache_volume *volume,
+			       enum fscache_access_trace why)
+{
+	int n_accesses;
+
+	smp_mb__before_atomic();
+	n_accesses = atomic_dec_return(&volume->n_accesses);
+	trace_fscache_access_volume(volume->debug_id, refcount_read(&volume->ref),
+				    n_accesses, why);
+	if (n_accesses == 0)
+		wake_up_var(&volume->n_accesses);
+}
+EXPORT_SYMBOL(fscache_end_volume_access);
+
 static long fscache_compare_volume(const struct fscache_volume *a,
 				   const struct fscache_volume *b)
 {
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index e075cca1a30d..7db4dda74951 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -77,6 +77,9 @@ extern struct fscache_cache *fscache_acquire_cache(const char *name);
 extern void fscache_put_cache(struct fscache_cache *cache,
 			      enum fscache_cache_trace where);
 
+extern void fscache_end_volume_access(struct fscache_volume *volume,
+				      enum fscache_access_trace why);
+
 extern struct fscache_cookie *fscache_get_cookie(struct fscache_cookie *cookie,
 						 enum fscache_cookie_trace where);
 extern void fscache_put_cookie(struct fscache_cookie *cookie,
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index d09d7e3ac86c..4b35fe9cd906 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -40,6 +40,7 @@ enum fscache_volume_trace {
 	fscache_volume_put_relinquish,
 	fscache_volume_see_create_work,
 	fscache_volume_see_hash_wake,
+	fscache_volume_wait_create_work,
 };
 
 enum fscache_cookie_trace {
@@ -239,6 +240,35 @@ TRACE_EVENT(fscache_access_cache,
 		      __entry->n_accesses)
 	    );
 
+TRACE_EVENT(fscache_access_volume,
+	    TP_PROTO(unsigned int volume_debug_id,
+		     int ref,
+		     int n_accesses,
+		     enum fscache_access_trace why),
+
+	    TP_ARGS(volume_debug_id, ref, n_accesses, why),
+
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		volume		)
+		    __field(int,			ref		)
+		    __field(int,			n_accesses	)
+		    __field(enum fscache_access_trace,	why		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->volume	= volume_debug_id;
+		    __entry->ref	= ref;
+		    __entry->n_accesses	= n_accesses;
+		    __entry->why	= why;
+			   ),
+
+	    TP_printk("V=%08x %s r=%d a=%d",
+		      __entry->volume,
+		      __print_symbolic(__entry->why, fscache_access_traces),
+		      __entry->ref,
+		      __entry->n_accesses)
+	    );
+
 TRACE_EVENT(fscache_acquire,
 	    TP_PROTO(struct fscache_cookie *cookie),
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
