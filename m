Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B41425E0A
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Oct 2021 22:48:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mYaJj-0008Nj-OT; Thu, 07 Oct 2021 20:48:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mYaJi-0008NY-Pl
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 20:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iPrgjvpRBiT5WHFPbooc756Od7ZHmX3BG/EeReDfgUw=; b=TxEZGGFgvFefwSoT9/nLg0unIK
 WKsffKaLIozOMF21ihNW5/zt9grbVh37yZ8soGGRlNdPavCYYWNHYrrfFqJcbTu/TjXktAMfWdSsG
 fmjpX/PM58Jy+g7eANMMf+tJoUzj8grER1ZD+dcYHxJIGOHV8Xz87CnhvulrUz3zR5Kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iPrgjvpRBiT5WHFPbooc756Od7ZHmX3BG/EeReDfgUw=; b=inQtfIO/unG8rlDf5BlF9KjhdP
 JeWxtXgeZlkkxlwhM32dVX0Rjx0fW9UQxCZKs12qfrmJLXogypKM5HO4xNd3U3dTKHpFU11ujbfee
 iF5GfF1GmhZ/KbNsp9yNCGnz7tWq8hXM+f3JUn9A218z4cEhcTNidKzbSw3yKuFmSOZ4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mYaJg-0005bD-Om
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 20:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633639710;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iPrgjvpRBiT5WHFPbooc756Od7ZHmX3BG/EeReDfgUw=;
 b=KoXOMBvhuReE7WDXzmp8Fa9tL2HYRj2f36J2b9RHUH7krzRecuPtozv8klPlIRZlf5BQUF
 8o8u3nOJf6fyHs0VXMLeB56RHmcMbRxXXMle5kAziWgZaHM36g3B78kqZRxO5n3MeBr/Ca
 w0KXSqSsRvhY9PPWEteHOw7K9ts6j20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-50JuQ5G1NdqTs1g_pNkSbw-1; Thu, 07 Oct 2021 16:48:22 -0400
X-MC-Unique: 50JuQ5G1NdqTs1g_pNkSbw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C93CC802E63;
 Thu,  7 Oct 2021 20:44:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB1805D6BA;
 Thu,  7 Oct 2021 20:44:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 07 Oct 2021 21:44:27 +0100
Message-ID: <163363946712.1980952.14196917718135687578.stgit@warthog.procyon.org.uk>
In-Reply-To: <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
References: <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
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
 Content preview: Remove stats counters that are no longer used and remove
 their
 display from /proc/fs/fscache/stats. Signed-off-by: David Howells
 <dhowells@redhat.com> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163162776915.438332.16744135153328311006.stgit@warthog.procyon.org.uk/
 # rfc Link: https [...] 
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
X-Headers-End: 1mYaJg-0005bD-Om
Subject: [V9fs-developer] [PATCH v3 09/10] fscache: Remove stats that are no
 longer used
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove stats counters that are no longer used and remove their display from
/proc/fs/fscache/stats.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163162776915.438332.16744135153328311006.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/163189114616.2509237.9890995143218948138.stgit@warthog.procyon.org.uk/ # rfc v2
---

 fs/fscache/internal.h |   28 ----------------------
 fs/fscache/stats.c    |   63 +------------------------------------------------
 2 files changed, 1 insertion(+), 90 deletions(-)

diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 5281fa1894cd..6eb3f51d7275 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -151,15 +151,6 @@ extern atomic_t fscache_n_attr_changed_nobufs;
 extern atomic_t fscache_n_attr_changed_nomem;
 extern atomic_t fscache_n_attr_changed_calls;
 
-extern atomic_t fscache_n_allocs;
-extern atomic_t fscache_n_allocs_ok;
-extern atomic_t fscache_n_allocs_wait;
-extern atomic_t fscache_n_allocs_nobufs;
-extern atomic_t fscache_n_allocs_intr;
-extern atomic_t fscache_n_allocs_object_dead;
-extern atomic_t fscache_n_alloc_ops;
-extern atomic_t fscache_n_alloc_op_waits;
-
 extern atomic_t fscache_n_retrievals;
 extern atomic_t fscache_n_retrievals_ok;
 extern atomic_t fscache_n_retrievals_wait;
@@ -178,22 +169,9 @@ extern atomic_t fscache_n_stores_nobufs;
 extern atomic_t fscache_n_stores_intr;
 extern atomic_t fscache_n_stores_oom;
 extern atomic_t fscache_n_store_ops;
-extern atomic_t fscache_n_store_calls;
-extern atomic_t fscache_n_store_pages;
-extern atomic_t fscache_n_store_radix_deletes;
-extern atomic_t fscache_n_store_pages_over_limit;
 extern atomic_t fscache_n_stores_object_dead;
 extern atomic_t fscache_n_store_op_waits;
 
-extern atomic_t fscache_n_store_vmscan_not_storing;
-extern atomic_t fscache_n_store_vmscan_gone;
-extern atomic_t fscache_n_store_vmscan_busy;
-extern atomic_t fscache_n_store_vmscan_cancelled;
-extern atomic_t fscache_n_store_vmscan_wait;
-
-extern atomic_t fscache_n_marks;
-extern atomic_t fscache_n_uncaches;
-
 extern atomic_t fscache_n_acquires;
 extern atomic_t fscache_n_acquires_null;
 extern atomic_t fscache_n_acquires_no_cache;
@@ -242,12 +220,6 @@ extern atomic_t fscache_n_cop_drop_object;
 extern atomic_t fscache_n_cop_put_object;
 extern atomic_t fscache_n_cop_sync_cache;
 extern atomic_t fscache_n_cop_attr_changed;
-extern atomic_t fscache_n_cop_read_or_alloc_page;
-extern atomic_t fscache_n_cop_read_or_alloc_pages;
-extern atomic_t fscache_n_cop_allocate_page;
-extern atomic_t fscache_n_cop_allocate_pages;
-extern atomic_t fscache_n_cop_write_page;
-extern atomic_t fscache_n_cop_uncache_page;
 
 extern atomic_t fscache_n_cache_no_space_reject;
 extern atomic_t fscache_n_cache_stale_objects;
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 4cefce5bf4cd..2449aa459140 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -30,15 +30,6 @@ atomic_t fscache_n_attr_changed_nobufs;
 atomic_t fscache_n_attr_changed_nomem;
 atomic_t fscache_n_attr_changed_calls;
 
-atomic_t fscache_n_allocs;
-atomic_t fscache_n_allocs_ok;
-atomic_t fscache_n_allocs_wait;
-atomic_t fscache_n_allocs_nobufs;
-atomic_t fscache_n_allocs_intr;
-atomic_t fscache_n_allocs_object_dead;
-atomic_t fscache_n_alloc_ops;
-atomic_t fscache_n_alloc_op_waits;
-
 atomic_t fscache_n_retrievals;
 atomic_t fscache_n_retrievals_ok;
 atomic_t fscache_n_retrievals_wait;
@@ -57,22 +48,9 @@ atomic_t fscache_n_stores_nobufs;
 atomic_t fscache_n_stores_intr;
 atomic_t fscache_n_stores_oom;
 atomic_t fscache_n_store_ops;
-atomic_t fscache_n_store_calls;
-atomic_t fscache_n_store_pages;
-atomic_t fscache_n_store_radix_deletes;
-atomic_t fscache_n_store_pages_over_limit;
 atomic_t fscache_n_stores_object_dead;
 atomic_t fscache_n_store_op_waits;
 
-atomic_t fscache_n_store_vmscan_not_storing;
-atomic_t fscache_n_store_vmscan_gone;
-atomic_t fscache_n_store_vmscan_busy;
-atomic_t fscache_n_store_vmscan_cancelled;
-atomic_t fscache_n_store_vmscan_wait;
-
-atomic_t fscache_n_marks;
-atomic_t fscache_n_uncaches;
-
 atomic_t fscache_n_acquires;
 atomic_t fscache_n_acquires_null;
 atomic_t fscache_n_acquires_no_cache;
@@ -121,12 +99,6 @@ atomic_t fscache_n_cop_drop_object;
 atomic_t fscache_n_cop_put_object;
 atomic_t fscache_n_cop_sync_cache;
 atomic_t fscache_n_cop_attr_changed;
-atomic_t fscache_n_cop_read_or_alloc_page;
-atomic_t fscache_n_cop_read_or_alloc_pages;
-atomic_t fscache_n_cop_allocate_page;
-atomic_t fscache_n_cop_allocate_pages;
-atomic_t fscache_n_cop_write_page;
-atomic_t fscache_n_cop_uncache_page;
 
 atomic_t fscache_n_cache_no_space_reject;
 atomic_t fscache_n_cache_stale_objects;
@@ -156,10 +128,6 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_checkaux_update),
 		   atomic_read(&fscache_n_checkaux_obsolete));
 
-	seq_printf(m, "Pages  : mrk=%u unc=%u\n",
-		   atomic_read(&fscache_n_marks),
-		   atomic_read(&fscache_n_uncaches));
-
 	seq_printf(m, "Acquire: n=%u nul=%u noc=%u ok=%u nbf=%u"
 		   " oom=%u\n",
 		   atomic_read(&fscache_n_acquires),
@@ -198,17 +166,6 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_attr_changed_nomem),
 		   atomic_read(&fscache_n_attr_changed_calls));
 
-	seq_printf(m, "Allocs : n=%u ok=%u wt=%u nbf=%u int=%u\n",
-		   atomic_read(&fscache_n_allocs),
-		   atomic_read(&fscache_n_allocs_ok),
-		   atomic_read(&fscache_n_allocs_wait),
-		   atomic_read(&fscache_n_allocs_nobufs),
-		   atomic_read(&fscache_n_allocs_intr));
-	seq_printf(m, "Allocs : ops=%u owt=%u abt=%u\n",
-		   atomic_read(&fscache_n_alloc_ops),
-		   atomic_read(&fscache_n_alloc_op_waits),
-		   atomic_read(&fscache_n_allocs_object_dead));
-
 	seq_printf(m, "Retrvls: n=%u ok=%u wt=%u nod=%u nbf=%u"
 		   " int=%u oom=%u\n",
 		   atomic_read(&fscache_n_retrievals),
@@ -230,22 +187,11 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_stores_nobufs),
 		   atomic_read(&fscache_n_stores_intr),
 		   atomic_read(&fscache_n_stores_oom));
-	seq_printf(m, "Stores : ops=%u owt=%u run=%u pgs=%u rxd=%u olm=%u abt=%u\n",
+	seq_printf(m, "Stores : ops=%u owt=%u abt=%u\n",
 		   atomic_read(&fscache_n_store_ops),
 		   atomic_read(&fscache_n_store_op_waits),
-		   atomic_read(&fscache_n_store_calls),
-		   atomic_read(&fscache_n_store_pages),
-		   atomic_read(&fscache_n_store_radix_deletes),
-		   atomic_read(&fscache_n_store_pages_over_limit),
 		   atomic_read(&fscache_n_stores_object_dead));
 
-	seq_printf(m, "VmScan : nos=%u gon=%u bsy=%u can=%u wt=%u\n",
-		   atomic_read(&fscache_n_store_vmscan_not_storing),
-		   atomic_read(&fscache_n_store_vmscan_gone),
-		   atomic_read(&fscache_n_store_vmscan_busy),
-		   atomic_read(&fscache_n_store_vmscan_cancelled),
-		   atomic_read(&fscache_n_store_vmscan_wait));
-
 	seq_printf(m, "Ops    : pend=%u run=%u enq=%u can=%u rej=%u\n",
 		   atomic_read(&fscache_n_op_pend),
 		   atomic_read(&fscache_n_op_run),
@@ -270,13 +216,6 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_cop_put_object),
 		   atomic_read(&fscache_n_cop_attr_changed),
 		   atomic_read(&fscache_n_cop_sync_cache));
-	seq_printf(m, "CacheOp: rap=%d ras=%d alp=%d als=%d wrp=%d ucp=%d\n",
-		   atomic_read(&fscache_n_cop_read_or_alloc_page),
-		   atomic_read(&fscache_n_cop_read_or_alloc_pages),
-		   atomic_read(&fscache_n_cop_allocate_page),
-		   atomic_read(&fscache_n_cop_allocate_pages),
-		   atomic_read(&fscache_n_cop_write_page),
-		   atomic_read(&fscache_n_cop_uncache_page));
 	seq_printf(m, "CacheEv: nsp=%d stl=%d rtr=%d cul=%d\n",
 		   atomic_read(&fscache_n_cache_no_space_reject),
 		   atomic_read(&fscache_n_cache_stale_objects),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
