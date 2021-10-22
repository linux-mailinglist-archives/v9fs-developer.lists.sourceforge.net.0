Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9EC437E3D
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:11:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzwv-0004pE-72; Fri, 22 Oct 2021 19:11:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdzwt-0004p6-3W
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:11:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yNhDFaQpkoLeqIHGmJpRJ/OMZ6xzU1z+T+O80zOAFIo=; b=CGP3R8lb4mUNWHri5ZL2YZrpkm
 UKNpBPeUTD1wUrHMqlJgDlucvSblaDb3jK9YBtpijow4OHusA+2tdtTbCltnfXM7ri5/iM1CQKevf
 uWbj48ArjsFKwQ1yOmA5msy486ba/06my+jrNFYf7tJFVItZu2NxM70XrI4NCiKEGbfQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yNhDFaQpkoLeqIHGmJpRJ/OMZ6xzU1z+T+O80zOAFIo=; b=aldWK1gI9N1vLM6knmAdwLYO6f
 zTPgOuUUtdClNF72lCqJvKFJR8CZIcziUIPXGd2bEq4L76RBXify5QotxyyNdSNkAvCWNYpPPDazt
 MyCPynXCx+4mxuRLhoOJHVv4fyvc9KfGeJp5zk8BIrIe0FoE6j0sOyDKKD4sCLB7tUCQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzws-00CIC2-C0
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:11:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929880;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yNhDFaQpkoLeqIHGmJpRJ/OMZ6xzU1z+T+O80zOAFIo=;
 b=Ltam/vBuZVOpmXKCdWPMOcGOc8cPYifvLIpneRFGFvZXplN3NssJiPKM/HqndSXSriL0CP
 AljktDg/s+dVP95/PgQHQwz/4ycx06y0ZAQuFryB86hpVLW0r1gCFJgokoqx4YbdV1FqUX
 SYFKQDG9BTM+wKN0Oe59RJ4pqL3uqS4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-581-Jdwzor5SNmCouewJZucWnw-1; Fri, 22 Oct 2021 15:11:15 -0400
X-MC-Unique: Jdwzor5SNmCouewJZucWnw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D12EE80668B;
 Fri, 22 Oct 2021 19:11:12 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D7A285C1A3;
 Fri, 22 Oct 2021 19:11:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:11:06 +0100
Message-ID: <163492986604.1038219.4728082189061698348.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a stat counter of culling events whereby the cache
 backend
 culls a file to make space (when asked by cachefilesd in this case) and
 display
 in /proc/fs/fscache/stats. Signed-off-by: David Howells <dhowells@redhat.com>
 cc: linux-cachefs@redhat.com --- 
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
X-Headers-End: 1mdzws-00CIC2-C0
Subject: [V9fs-developer] [PATCH v2 53/53] fscache,
 cachefiles: Display stat of culling events
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

Add a stat counter of culling events whereby the cache backend culls a file
to make space (when asked by cachefilesd in this case) and display in
/proc/fs/fscache/stats.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/namei.c         |    1 +
 fs/fscache/stats.c            |    7 +++++--
 include/linux/fscache-cache.h |    4 +++-
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 9b0a14e37cfa..a118074826cd 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -661,6 +661,7 @@ int cachefiles_cull(struct cachefiles_cache *cache, struct dentry *dir,
 		goto error_unlock;
 
 	/*  actually remove the victim (drops the dir mutex) */
+	fscache_count_culled();
 	_debug("bury");
 
 	ret = cachefiles_bury_object(cache, NULL, dir, victim,
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index d34fb6e91d57..ee1b611e365d 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -48,6 +48,8 @@ atomic_t fscache_n_no_write_space;
 EXPORT_SYMBOL(fscache_n_no_write_space);
 atomic_t fscache_n_no_create_space;
 EXPORT_SYMBOL(fscache_n_no_create_space);
+atomic_t fscache_n_culled;
+EXPORT_SYMBOL(fscache_n_culled);
 
 /*
  * display the general statistics
@@ -90,9 +92,10 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_relinquishes_retire),
 		   atomic_read(&fscache_n_relinquishes_dropped));
 
-	seq_printf(m, "NoSpace: nwr=%u ncr=%u\n",
+	seq_printf(m, "NoSpace: nwr=%u ncr=%u cull=%u\n",
 		   atomic_read(&fscache_n_no_write_space),
-		   atomic_read(&fscache_n_no_create_space));
+		   atomic_read(&fscache_n_no_create_space),
+		   atomic_read(&fscache_n_culled));
 
 	seq_printf(m, "IO     : rd=%u wr=%u\n",
 		   atomic_read(&fscache_n_read),
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 7b3225c6c22f..e12f4163af61 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -181,15 +181,17 @@ extern atomic_t fscache_n_read;
 extern atomic_t fscache_n_write;
 extern atomic_t fscache_n_no_write_space;
 extern atomic_t fscache_n_no_create_space;
+extern atomic_t fscache_n_culled;
 #define fscache_count_read() atomic_inc(&fscache_n_read)
 #define fscache_count_write() atomic_inc(&fscache_n_write)
 #define fscache_count_no_write_space() atomic_inc(&fscache_n_no_write_space)
 #define fscache_count_no_create_space() atomic_inc(&fscache_n_no_create_space)
+#define fscache_count_culled() atomic_inc(&fscache_n_culled)
 #else
 #define fscache_count_read() do {} while(0)
 #define fscache_count_write() do {} while(0)
 #define fscache_count_no_write_space() do {} while(0)
-#define fscache_count_no_create_space() do {} while(0)
+#define fscache_count_culled() do {} while(0)
 #endif
 
 extern struct workqueue_struct *fscache_wq;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
