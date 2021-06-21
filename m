Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCED3AF7FA
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Jun 2021 23:47:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvRlc-000611-7E; Mon, 21 Jun 2021 21:47:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lvRlb-000607-B4
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X67Q8GBfmyUAFg/sXddhD9amxxTQEAiShPtk48Zkdv0=; b=HwQA8Ej0LVoAY0dO9LehLMOw0f
 ZBfsLtoHG6G4i6OcLapa2oR2s2JTCb2PdUNipvLuc+taXitsKYLYcW48ji1fUMZvXTngDTtoZ4lhM
 w+xhIzh8gHrysxtgVLAmlwAFdd5fR1rWgo4l50eErXWQSvafFLYgaFEshaCBg9isqjo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X67Q8GBfmyUAFg/sXddhD9amxxTQEAiShPtk48Zkdv0=; b=G1s/REIc7lQqLbI7V3REkdB/XZ
 4i13SPH7uUhzlOuFRtPFDBMde1zlIuos/+EZpWzz8Oug5317DL0HSRqJpvSTbMggm5Y/CvwLN3Wbd
 3+eSpeWniHTeuy+jcfrZs6jhA6WQHy3e0UpY5ZWWCDW7Ib59SllAe5K/wQCHh6BHF6fs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvRlR-006776-H7
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624312043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X67Q8GBfmyUAFg/sXddhD9amxxTQEAiShPtk48Zkdv0=;
 b=PMqTa4uNvyrZlFwCaLq2CjrKotkJwRLL7RA56EF942k2dWClR8m8YzZDjoAzyf0IZC6Dcf
 HGi/yAeVNdVBGy5cpPX6J2fX44L4+x6wRgyatKohP8nO+vzu+OwgdMAR6RbKxOLxbXxkAU
 yPdRsqNBE3sQ/Sbdfn3Q+s/JgB24f20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-9-0FX-8mPA-sWVpCGpjNzw-1; Mon, 21 Jun 2021 17:47:20 -0400
X-MC-Unique: 9-0FX-8mPA-sWVpCGpjNzw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5618C19611A0;
 Mon, 21 Jun 2021 21:47:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-65.rdu2.redhat.com
 [10.10.118.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF753608BA;
 Mon, 21 Jun 2021 21:47:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 21 Jun 2021 22:47:11 +0100
Message-ID: <162431203107.2908479.3259582550347000088.stgit@warthog.procyon.org.uk>
In-Reply-To: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lvRlR-006776-H7
Subject: [V9fs-developer] [PATCH 11/12] fscache: Fix fscache_cookie_put() to
 not deref after dec
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

fscache_cookie_put() accesses the cookie it has just put inside the
tracepoint that monitors the change - but this is something it's not
allowed to do if we didn't reduce the count to zero.

Fix this by dropping most of those values from the tracepoint and grabbing
the cookie debug ID before doing the dec.

Also take the opportunity to switch over the usage and where arguments on
the tracepoint to put the reason last.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/cookie.c            |   10 ++++++----
 fs/fscache/internal.h          |    2 +-
 fs/fscache/netfs.c             |    2 +-
 include/trace/events/fscache.h |   24 +++++++-----------------
 4 files changed, 15 insertions(+), 23 deletions(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 2558814193e9..6df3732cf1b4 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -225,8 +225,8 @@ struct fscache_cookie *fscache_hash_cookie(struct fscache_cookie *candidate)
 
 collision:
 	if (test_and_set_bit(FSCACHE_COOKIE_ACQUIRED, &cursor->flags)) {
-		trace_fscache_cookie(cursor, fscache_cookie_collision,
-				     atomic_read(&cursor->usage));
+		trace_fscache_cookie(cursor->debug_id, atomic_read(&cursor->usage),
+				     fscache_cookie_collision);
 		pr_err("Duplicate cookie detected\n");
 		fscache_print_cookie(cursor, 'O');
 		fscache_print_cookie(candidate, 'N');
@@ -305,7 +305,8 @@ struct fscache_cookie *__fscache_acquire_cookie(
 
 	cookie = fscache_hash_cookie(candidate);
 	if (!cookie) {
-		trace_fscache_cookie(candidate, fscache_cookie_discard, 1);
+		trace_fscache_cookie(candidate->debug_id, 1,
+				     fscache_cookie_discard);
 		goto out;
 	}
 
@@ -866,8 +867,9 @@ void fscache_cookie_put(struct fscache_cookie *cookie,
 	_enter("%x", cookie->debug_id);
 
 	do {
+		unsigned int cookie_debug_id = cookie->debug_id;
 		usage = atomic_dec_return(&cookie->usage);
-		trace_fscache_cookie(cookie, where, usage);
+		trace_fscache_cookie(cookie_debug_id, usage, where);
 
 		if (usage > 0)
 			return;
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index a49136c63e4b..345105dbbfd1 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -291,7 +291,7 @@ static inline void fscache_cookie_get(struct fscache_cookie *cookie,
 {
 	int usage = atomic_inc_return(&cookie->usage);
 
-	trace_fscache_cookie(cookie, where, usage);
+	trace_fscache_cookie(cookie->debug_id, usage, where);
 }
 
 /*
diff --git a/fs/fscache/netfs.c b/fs/fscache/netfs.c
index cce92216fa28..d6bdb7b5e723 100644
--- a/fs/fscache/netfs.c
+++ b/fs/fscache/netfs.c
@@ -37,7 +37,7 @@ int __fscache_register_netfs(struct fscache_netfs *netfs)
 	if (!cookie)
 		goto already_registered;
 	if (cookie != candidate) {
-		trace_fscache_cookie(candidate, fscache_cookie_discard, 1);
+		trace_fscache_cookie(candidate->debug_id, 1, fscache_cookie_discard);
 		fscache_free_cookie(candidate);
 	}
 
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 0b9e058aba4d..55b8802740fa 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -160,37 +160,27 @@ fscache_cookie_traces;
 
 
 TRACE_EVENT(fscache_cookie,
-	    TP_PROTO(struct fscache_cookie *cookie,
-		     enum fscache_cookie_trace where,
-		     int usage),
+	    TP_PROTO(unsigned int cookie_debug_id,
+		     int usage,
+		     enum fscache_cookie_trace where),
 
-	    TP_ARGS(cookie, where, usage),
+	    TP_ARGS(cookie_debug_id, usage, where),
 
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		cookie		)
-		    __field(unsigned int,		parent		)
 		    __field(enum fscache_cookie_trace,	where		)
 		    __field(int,			usage		)
-		    __field(int,			n_children	)
-		    __field(int,			n_active	)
-		    __field(u8,				flags		)
 			     ),
 
 	    TP_fast_assign(
-		    __entry->cookie	= cookie->debug_id;
-		    __entry->parent	= cookie->parent ? cookie->parent->debug_id : 0;
+		    __entry->cookie	= cookie_debug_id;
 		    __entry->where	= where;
 		    __entry->usage	= usage;
-		    __entry->n_children	= atomic_read(&cookie->n_children);
-		    __entry->n_active	= atomic_read(&cookie->n_active);
-		    __entry->flags	= cookie->flags;
 			   ),
 
-	    TP_printk("%s c=%08x u=%d p=%08x Nc=%d Na=%d f=%02x",
+	    TP_printk("%s c=%08x u=%d",
 		      __print_symbolic(__entry->where, fscache_cookie_traces),
-		      __entry->cookie, __entry->usage,
-		      __entry->parent, __entry->n_children, __entry->n_active,
-		      __entry->flags)
+		      __entry->cookie, __entry->usage)
 	    );
 
 TRACE_EVENT(fscache_netfs,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
