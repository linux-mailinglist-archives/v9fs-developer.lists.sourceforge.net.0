Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C38D43208A
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:54:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU20-0005jT-4a; Mon, 18 Oct 2021 14:54:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU1z-0005jA-7T
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mzB7OAnJKprSVoxpFAUwZvdXiYSDNu4qAmCk5+4Btxs=; b=WE/Z4GEgNlPBcL9/C3n1z2IR6q
 xJ+B5+fH8LnRANBcaOw/qwjSv85Gi6rqPk5wT8tm7r1oe1WpEeQPMRTdv8bOI4sVM2V1TJdfMV1II
 SPr57ut/bTvrsuSwMwb/aZmhZdhb7pV5BeWggBLMYrTXN6tMGbK5S/aHd9aotQSjyLhY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mzB7OAnJKprSVoxpFAUwZvdXiYSDNu4qAmCk5+4Btxs=; b=RZ+PF65nXpxd+RthQZbqNyummr
 c7o735RYuOeTndIcp6U3QvetgtT1uGb90fTwmWm720qMoTkJueTVJwGwmyN83/kyh2bq3/h1jOn9t
 p20VPFuSjmDdp+W2iQp8V+mKbmJkWvXbpF7xmsJO+TLcMLrJi6jpdSt/THlLhTmobstA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU1y-004Sho-G8
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568860;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mzB7OAnJKprSVoxpFAUwZvdXiYSDNu4qAmCk5+4Btxs=;
 b=ewcnpZ5nDhRP145AyJZQMFzgwwrXGEnwZwSt3rUf/QR4AlQVBA8t7e+g2e3cDH1Iq2TduI
 7hLfgP35Kv/olLJvvH1j6aFk3aJl6Yx54EMt+BGMJ250OyXtd+InzqoByxSjtPt+vCBU+5
 zTcDFYcffDaO44MiEhxOA6vwg8n9VyQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-VbMiCPwZN36vAGz3LVvPeQ-1; Mon, 18 Oct 2021 10:54:17 -0400
X-MC-Unique: VbMiCPwZN36vAGz3LVvPeQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 509A01006AD3;
 Mon, 18 Oct 2021 14:54:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 52A135D6D7;
 Mon, 18 Oct 2021 14:54:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:54:08 +0100
Message-ID: <163456884845.2614702.5758884460753061615.stgit@warthog.procyon.org.uk>
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
 Content preview: Remove a bunch of now-unused fscache stats counters that were
 obsoleted by the removal of the old I/O routines. Signed-off-by: David Howells
 <dhowells@redhat.com> --- fs/fscache/internal.h | 15 fs/fscache/stats.c |
 27 + 2 files changed, 1 insertion(+), 41 deletions(-) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU1y-004Sho-G8
Subject: [V9fs-developer] [PATCH 12/67] fscache: Remove obsolete stats
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

Remove a bunch of now-unused fscache stats counters that were obsoleted by
the removal of the old I/O routines.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/internal.h |   15 ---------------
 fs/fscache/stats.c    |   27 +--------------------------
 2 files changed, 1 insertion(+), 41 deletions(-)

diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index bff83b14398b..43d64f6bbf8b 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -149,9 +149,6 @@ extern void fscache_proc_cleanup(void);
  * stats.c
  */
 #ifdef CONFIG_FSCACHE_STATS
-extern atomic_t fscache_n_ops_processed[FSCACHE_MAX_THREADS];
-extern atomic_t fscache_n_objs_processed[FSCACHE_MAX_THREADS];
-
 extern atomic_t fscache_n_op_pend;
 extern atomic_t fscache_n_op_run;
 extern atomic_t fscache_n_op_enqueue;
@@ -162,12 +159,6 @@ extern atomic_t fscache_n_op_gc;
 extern atomic_t fscache_n_op_cancelled;
 extern atomic_t fscache_n_op_rejected;
 
-extern atomic_t fscache_n_attr_changed;
-extern atomic_t fscache_n_attr_changed_ok;
-extern atomic_t fscache_n_attr_changed_nobufs;
-extern atomic_t fscache_n_attr_changed_nomem;
-extern atomic_t fscache_n_attr_changed_calls;
-
 extern atomic_t fscache_n_retrievals;
 extern atomic_t fscache_n_retrievals_ok;
 extern atomic_t fscache_n_retrievals_wait;
@@ -205,7 +196,6 @@ extern atomic_t fscache_n_updates_run;
 
 extern atomic_t fscache_n_relinquishes;
 extern atomic_t fscache_n_relinquishes_null;
-extern atomic_t fscache_n_relinquishes_waitcrt;
 extern atomic_t fscache_n_relinquishes_retire;
 
 extern atomic_t fscache_n_cookie_index;
@@ -222,11 +212,6 @@ extern atomic_t fscache_n_object_created;
 extern atomic_t fscache_n_object_avail;
 extern atomic_t fscache_n_object_dead;
 
-extern atomic_t fscache_n_checkaux_none;
-extern atomic_t fscache_n_checkaux_okay;
-extern atomic_t fscache_n_checkaux_update;
-extern atomic_t fscache_n_checkaux_obsolete;
-
 extern atomic_t fscache_n_cop_alloc_object;
 extern atomic_t fscache_n_cop_lookup_object;
 extern atomic_t fscache_n_cop_lookup_complete;
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 2449aa459140..cb9dd0a93e0d 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -24,12 +24,6 @@ atomic_t fscache_n_op_gc;
 atomic_t fscache_n_op_cancelled;
 atomic_t fscache_n_op_rejected;
 
-atomic_t fscache_n_attr_changed;
-atomic_t fscache_n_attr_changed_ok;
-atomic_t fscache_n_attr_changed_nobufs;
-atomic_t fscache_n_attr_changed_nomem;
-atomic_t fscache_n_attr_changed_calls;
-
 atomic_t fscache_n_retrievals;
 atomic_t fscache_n_retrievals_ok;
 atomic_t fscache_n_retrievals_wait;
@@ -67,7 +61,6 @@ atomic_t fscache_n_updates_run;
 
 atomic_t fscache_n_relinquishes;
 atomic_t fscache_n_relinquishes_null;
-atomic_t fscache_n_relinquishes_waitcrt;
 atomic_t fscache_n_relinquishes_retire;
 
 atomic_t fscache_n_cookie_index;
@@ -84,11 +77,6 @@ atomic_t fscache_n_object_created;
 atomic_t fscache_n_object_avail;
 atomic_t fscache_n_object_dead;
 
-atomic_t fscache_n_checkaux_none;
-atomic_t fscache_n_checkaux_okay;
-atomic_t fscache_n_checkaux_update;
-atomic_t fscache_n_checkaux_obsolete;
-
 atomic_t fscache_n_cop_alloc_object;
 atomic_t fscache_n_cop_lookup_object;
 atomic_t fscache_n_cop_lookup_complete;
@@ -122,11 +110,6 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_object_no_alloc),
 		   atomic_read(&fscache_n_object_avail),
 		   atomic_read(&fscache_n_object_dead));
-	seq_printf(m, "ChkAux : non=%u ok=%u upd=%u obs=%u\n",
-		   atomic_read(&fscache_n_checkaux_none),
-		   atomic_read(&fscache_n_checkaux_okay),
-		   atomic_read(&fscache_n_checkaux_update),
-		   atomic_read(&fscache_n_checkaux_obsolete));
 
 	seq_printf(m, "Acquire: n=%u nul=%u noc=%u ok=%u nbf=%u"
 		   " oom=%u\n",
@@ -153,19 +136,11 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_updates_null),
 		   atomic_read(&fscache_n_updates_run));
 
-	seq_printf(m, "Relinqs: n=%u nul=%u wcr=%u rtr=%u\n",
+	seq_printf(m, "Relinqs: n=%u nul=%u rtr=%u\n",
 		   atomic_read(&fscache_n_relinquishes),
 		   atomic_read(&fscache_n_relinquishes_null),
-		   atomic_read(&fscache_n_relinquishes_waitcrt),
 		   atomic_read(&fscache_n_relinquishes_retire));
 
-	seq_printf(m, "AttrChg: n=%u ok=%u nbf=%u oom=%u run=%u\n",
-		   atomic_read(&fscache_n_attr_changed),
-		   atomic_read(&fscache_n_attr_changed_ok),
-		   atomic_read(&fscache_n_attr_changed_nobufs),
-		   atomic_read(&fscache_n_attr_changed_nomem),
-		   atomic_read(&fscache_n_attr_changed_calls));
-
 	seq_printf(m, "Retrvls: n=%u ok=%u wt=%u nod=%u nbf=%u"
 		   " int=%u oom=%u\n",
 		   atomic_read(&fscache_n_retrievals),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
