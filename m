Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3C321DCF6
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:36:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1Qv-0007mp-Bs; Mon, 13 Jul 2020 16:36:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1Qt-0007mZ-1q
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:35:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=82R50oM3fLGYFRzRYFN6AIMM8NnlH3BJGDV9nGHGEXg=; b=kza8qROWuv1wsebKy+3+yqev6y
 vd+xRYDot+Hw0RRqMJCcbrK9YK4I1+mL0fGXvWEXWG2OS17zNYvl0qUVAxyM7O1R1cyb40FYu4x85
 7KRe7j7cbo9jWOkIpIQgztbl0Zb6P2xCtIhYoOHhCMhhquWIs/oebDjHkULIyiuFaLec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=82R50oM3fLGYFRzRYFN6AIMM8NnlH3BJGDV9nGHGEXg=; b=ErIWW+hZ9T/OjXfR90qAyDbzmS
 b5DrsBrGl0gKtiS3XoUiaxCRR9hFAUZE5p2KxjsBWRhyfOS1gxsDp8ozJpJLVVIJcu/9cuMJMI9E5
 Wn8BGyCUbPTIckY8ZIkxQ5iKzWEQCDQcsamaSxkjX361EaL9acAo7eRJ42h2J3YRLIBw=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1Qr-001hcy-If
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=82R50oM3fLGYFRzRYFN6AIMM8NnlH3BJGDV9nGHGEXg=;
 b=Z+OksT5GEdD1RishtKrnzTACgjS72G8eUuXa6HEE0qFvhVBrnsGC9tW+LbP+yrdzg9vdtM
 fp3+SzCDhlNQZlQpu5/8TLcQDJLtz+Tib2xITigTSgr/sBRWvnagTtipH1enIKf6XMlJop
 xKOn/CqFhmmGCoZEKvl1E704e/zWDlE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-Q3WUxPnjPveEQof5IUo9kA-1; Mon, 13 Jul 2020 12:35:41 -0400
X-MC-Unique: Q3WUxPnjPveEQof5IUo9kA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1C871080;
 Mon, 13 Jul 2020 16:35:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 18FBF19C66;
 Mon, 13 Jul 2020 16:35:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:35:32 +0100
Message-ID: <159465813226.1376674.13527511953573909880.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.4 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1Qr-001hcy-If
Subject: [V9fs-developer] [PATCH 26/32] fscache: Remove more obsolete stats
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove some more stats that have become obsolete.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/internal.h |   18 ++----------------
 fs/fscache/obj.c      |    6 +++---
 fs/fscache/stats.c    |   50 +++++++++----------------------------------------
 3 files changed, 14 insertions(+), 60 deletions(-)

diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 2674438ccafd..d2b856aa5f0e 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -165,25 +165,13 @@ extern void fscache_proc_cleanup(void);
  * stats.c
  */
 #ifdef CONFIG_FSCACHE_STATS
-extern atomic_t fscache_n_op_pend;
-extern atomic_t fscache_n_op_run;
-extern atomic_t fscache_n_op_enqueue;
-extern atomic_t fscache_n_op_deferred_release;
-extern atomic_t fscache_n_op_initialised;
-extern atomic_t fscache_n_op_release;
-extern atomic_t fscache_n_op_gc;
-extern atomic_t fscache_n_op_cancelled;
-extern atomic_t fscache_n_op_rejected;
-
 extern atomic_t fscache_n_acquires;
 extern atomic_t fscache_n_acquires_null;
 extern atomic_t fscache_n_acquires_no_cache;
 extern atomic_t fscache_n_acquires_ok;
-extern atomic_t fscache_n_acquires_nobufs;
 extern atomic_t fscache_n_acquires_oom;
 
 extern atomic_t fscache_n_invalidates;
-extern atomic_t fscache_n_invalidates_run;
 
 extern atomic_t fscache_n_updates;
 extern atomic_t fscache_n_updates_null;
@@ -202,15 +190,13 @@ extern atomic_t fscache_n_object_no_alloc;
 extern atomic_t fscache_n_object_lookups;
 extern atomic_t fscache_n_object_lookups_negative;
 extern atomic_t fscache_n_object_lookups_positive;
-extern atomic_t fscache_n_object_lookups_timed_out;
-extern atomic_t fscache_n_object_created;
+extern atomic_t fscache_n_object_creates;
 extern atomic_t fscache_n_object_avail;
 extern atomic_t fscache_n_object_dead;
 
 extern atomic_t fscache_n_cop_alloc_object;
 extern atomic_t fscache_n_cop_lookup_object;
-extern atomic_t fscache_n_cop_lookup_complete;
-extern atomic_t fscache_n_cop_grab_object;
+extern atomic_t fscache_n_cop_create_object;
 extern atomic_t fscache_n_cop_invalidate_object;
 extern atomic_t fscache_n_cop_update_object;
 extern atomic_t fscache_n_cop_drop_object;
diff --git a/fs/fscache/obj.c b/fs/fscache/obj.c
index 63373b99ac34..baab7c465142 100644
--- a/fs/fscache/obj.c
+++ b/fs/fscache/obj.c
@@ -47,10 +47,10 @@ static int fscache_do_lookup_object(struct fscache_object *object, void *data)
 static int fscache_do_create_object(struct fscache_object *object, void *data)
 {
 	int ret;
-	fscache_stat(&fscache_n_object_lookups);
-	fscache_stat(&fscache_n_cop_lookup_object);
+	fscache_stat(&fscache_n_object_creates);
+	fscache_stat(&fscache_n_cop_create_object);
 	ret = object->cache->ops->create_object(object, data);
-	fscache_stat_d(&fscache_n_cop_lookup_object);
+	fscache_stat_d(&fscache_n_cop_create_object);
 	return ret;
 }
 
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 583817f4f113..ccca0016fd26 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -14,25 +14,13 @@
 /*
  * operation counters
  */
-atomic_t fscache_n_op_pend;
-atomic_t fscache_n_op_run;
-atomic_t fscache_n_op_enqueue;
-atomic_t fscache_n_op_deferred_release;
-atomic_t fscache_n_op_initialised;
-atomic_t fscache_n_op_release;
-atomic_t fscache_n_op_gc;
-atomic_t fscache_n_op_cancelled;
-atomic_t fscache_n_op_rejected;
-
 atomic_t fscache_n_acquires;
 atomic_t fscache_n_acquires_null;
 atomic_t fscache_n_acquires_no_cache;
 atomic_t fscache_n_acquires_ok;
-atomic_t fscache_n_acquires_nobufs;
 atomic_t fscache_n_acquires_oom;
 
 atomic_t fscache_n_invalidates;
-atomic_t fscache_n_invalidates_run;
 
 atomic_t fscache_n_updates;
 atomic_t fscache_n_updates_null;
@@ -51,15 +39,13 @@ atomic_t fscache_n_object_no_alloc;
 atomic_t fscache_n_object_lookups;
 atomic_t fscache_n_object_lookups_negative;
 atomic_t fscache_n_object_lookups_positive;
-atomic_t fscache_n_object_lookups_timed_out;
-atomic_t fscache_n_object_created;
+atomic_t fscache_n_object_creates;
 atomic_t fscache_n_object_avail;
 atomic_t fscache_n_object_dead;
 
 atomic_t fscache_n_cop_alloc_object;
 atomic_t fscache_n_cop_lookup_object;
-atomic_t fscache_n_cop_lookup_complete;
-atomic_t fscache_n_cop_grab_object;
+atomic_t fscache_n_cop_create_object;
 atomic_t fscache_n_cop_invalidate_object;
 atomic_t fscache_n_cop_update_object;
 atomic_t fscache_n_cop_drop_object;
@@ -90,25 +76,21 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_object_avail),
 		   atomic_read(&fscache_n_object_dead));
 
-	seq_printf(m, "Acquire: n=%u nul=%u noc=%u ok=%u nbf=%u"
-		   " oom=%u\n",
+	seq_printf(m, "Acquire: n=%u nul=%u noc=%u ok=%u oom=%u\n",
 		   atomic_read(&fscache_n_acquires),
 		   atomic_read(&fscache_n_acquires_null),
 		   atomic_read(&fscache_n_acquires_no_cache),
 		   atomic_read(&fscache_n_acquires_ok),
-		   atomic_read(&fscache_n_acquires_nobufs),
 		   atomic_read(&fscache_n_acquires_oom));
 
-	seq_printf(m, "Lookups: n=%u neg=%u pos=%u crt=%u tmo=%u\n",
+	seq_printf(m, "Lookups: n=%u neg=%u pos=%u crt=%u\n",
 		   atomic_read(&fscache_n_object_lookups),
 		   atomic_read(&fscache_n_object_lookups_negative),
 		   atomic_read(&fscache_n_object_lookups_positive),
-		   atomic_read(&fscache_n_object_created),
-		   atomic_read(&fscache_n_object_lookups_timed_out));
+		   atomic_read(&fscache_n_object_creates));
 
-	seq_printf(m, "Invals : n=%u run=%u\n",
-		   atomic_read(&fscache_n_invalidates),
-		   atomic_read(&fscache_n_invalidates_run));
+	seq_printf(m, "Invals : n=%u\n",
+		   atomic_read(&fscache_n_invalidates));
 
 	seq_printf(m, "Updates: n=%u nul=%u run=%u\n",
 		   atomic_read(&fscache_n_updates),
@@ -120,23 +102,9 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_relinquishes_null),
 		   atomic_read(&fscache_n_relinquishes_retire));
 
-	seq_printf(m, "Ops    : pend=%u run=%u enq=%u can=%u rej=%u\n",
-		   atomic_read(&fscache_n_op_pend),
-		   atomic_read(&fscache_n_op_run),
-		   atomic_read(&fscache_n_op_enqueue),
-		   atomic_read(&fscache_n_op_cancelled),
-		   atomic_read(&fscache_n_op_rejected));
-	seq_printf(m, "Ops    : ini=%u dfr=%u rel=%u gc=%u\n",
-		   atomic_read(&fscache_n_op_initialised),
-		   atomic_read(&fscache_n_op_deferred_release),
-		   atomic_read(&fscache_n_op_release),
-		   atomic_read(&fscache_n_op_gc));
-
-	seq_printf(m, "CacheOp: alo=%d luo=%d luc=%d gro=%d\n",
+	seq_printf(m, "CacheOp: alo=%d luo=%d\n",
 		   atomic_read(&fscache_n_cop_alloc_object),
-		   atomic_read(&fscache_n_cop_lookup_object),
-		   atomic_read(&fscache_n_cop_lookup_complete),
-		   atomic_read(&fscache_n_cop_grab_object));
+		   atomic_read(&fscache_n_cop_lookup_object));
 	seq_printf(m, "CacheOp: inv=%d upo=%d dro=%d pto=%d atc=%d syn=%d\n",
 		   atomic_read(&fscache_n_cop_invalidate_object),
 		   atomic_read(&fscache_n_cop_update_object),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
