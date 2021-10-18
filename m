Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A45E43213F
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:00:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU7r-0006pN-Qb; Mon, 18 Oct 2021 15:00:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU7p-0006oq-0U
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G0Z0o/WV3mIg+DEa6x5tVtljedfdYDVPKK/rSOm0vTU=; b=VNX0IU9TcqORRJTz5F+qVfeu9E
 /B0NKRcZZ7tBq+1dEVL1NSJPBEj/YucWD+4RKiEZcLHl5xwcT/xZOBaZGvGJV+Zztw2DTs/GXe3nI
 JEGcwjC9XvGmJkZjpQrjmCW0AQjNqb0y6ZmFfSZybCQvDdp/fo1+EoyEm52TkPEqUYqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G0Z0o/WV3mIg+DEa6x5tVtljedfdYDVPKK/rSOm0vTU=; b=PI/+1/xv2CcGj+LWFN7DvUiKQS
 mVpcFSfIFYCv0qKQgU1md5IsF7qdYsZ/aybwsgWmKNbqMjEqxCKDNe7niVdLzj5PxO1rS9geKC07I
 GZSjxaJ1JlLx2fLwjDSiV+TFEdm6TKIISsjnz6aKoKho5ptcTGJYIyxYzfcKUL493bMo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU7l-004TkO-GQ
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569219;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G0Z0o/WV3mIg+DEa6x5tVtljedfdYDVPKK/rSOm0vTU=;
 b=R3iuuL71S6ECQBK/yPIWbRxHnGC9RpY67m1NiOEP1EBUjlayH9gClnpEkgW7ICgMhID9yn
 n7RwjGhOxbu9fDqzErwSiioLcgzkzoczI6g8askhosCl+k3OznqyBHefeNDhiJpiEkknt9
 ts8NgBPtd+0UoAs3CPuK0e1Mu9mOcRE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-OVp8rcT5NZiDCc86yQYTJQ-1; Mon, 18 Oct 2021 11:00:16 -0400
X-MC-Unique: OVp8rcT5NZiDCc86yQYTJQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D19A802682;
 Mon, 18 Oct 2021 15:00:14 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 511675D6D7;
 Mon, 18 Oct 2021 15:00:08 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:00:07 +0100
Message-ID: <163456920740.2614702.10833323576114946075.stgit@warthog.procyon.org.uk>
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
 Content preview:  Add some stats to indicate the state of the cookie commit
 LRU, including an indication of how many are currently on it, how many have
 been expired, removed (withdrawn/reused) or dropped (relinquished) [...] 
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
X-Headers-End: 1mcU7l-004TkO-GQ
Subject: [V9fs-developer] [PATCH 36/67] fscache: Add stats for the cookie
 commit LRU
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

Add some stats to indicate the state of the cookie commit LRU, including an
indication of how many are currently on it, how many have been expired,
removed (withdrawn/reused) or dropped (relinquished) from it and how long
till the next reap happens.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/cookie.c   |   10 +++++++++-
 fs/fscache/internal.h |    5 +++++
 fs/fscache/stats.c    |   12 ++++++++++++
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index dfc61b2e105d..c6b553609f33 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -28,7 +28,7 @@ static LIST_HEAD(fscache_cookies);
 static DEFINE_RWLOCK(fscache_cookies_lock);
 static LIST_HEAD(fscache_cookie_lru);
 static DEFINE_SPINLOCK(fscache_cookie_lru_lock);
-static DEFINE_TIMER(fscache_cookie_lru_timer, fscache_cookie_lru_timed_out);
+DEFINE_TIMER(fscache_cookie_lru_timer, fscache_cookie_lru_timed_out);
 static DECLARE_WORK(fscache_cookie_lru_work, fscache_cookie_lru_worker);
 static const char fscache_cookie_stages[FSCACHE_COOKIE_STAGE__NR] = "-LCAIFMWRD";
 unsigned int fscache_lru_cookie_timeout = 10 * HZ;
@@ -60,6 +60,8 @@ static void fscache_free_cookie(struct fscache_cookie *cookie)
 		spin_lock(&fscache_cookie_lru_lock);
 		list_del_init(&cookie->commit_link);
 		spin_unlock(&fscache_cookie_lru_lock);
+		fscache_stat_d(&fscache_n_cookies_lru);
+		fscache_stat(&fscache_n_cookies_lru_removed);
 	}
 	write_lock(&fscache_cookies_lock);
 	list_del(&cookie->proc_link);
@@ -525,6 +527,7 @@ void __fscache_unuse_cookie(struct fscache_cookie *cookie,
 			if (list_empty(&cookie->commit_link)) {
 				fscache_get_cookie(cookie, fscache_cookie_get_lru);
 				list_move_tail(&cookie->commit_link, &fscache_cookie_lru);
+				fscache_stat(&fscache_n_cookies_lru);
 			}
 			spin_unlock(&fscache_cookie_lru_lock);
 			timer_reduce(&fscache_cookie_lru_timer,
@@ -624,10 +627,12 @@ static void fscache_cookie_lru_do_one(struct fscache_cookie *cookie)
 	    time_before(jiffies, cookie->unused_at + fscache_lru_cookie_timeout) ||
 	    atomic_read(&cookie->n_active) > 0) {
 		spin_unlock(&cookie->lock);
+		fscache_stat(&fscache_n_cookies_lru_removed);
 	} else {
 		__fscache_set_cookie_stage(cookie, FSCACHE_COOKIE_STAGE_COMMITTING);
 		set_bit(FSCACHE_COOKIE_DO_COMMIT, &cookie->flags);
 		spin_unlock(&cookie->lock);
+		fscache_stat(&fscache_n_cookies_lru_expired);
 		_debug("lru c=%x", cookie->debug_id);
 		__fscache_withdraw_cookie(cookie);
 	}
@@ -652,6 +657,7 @@ static void fscache_cookie_lru_worker(struct work_struct *work)
 		}
 
 		list_del_init(&cookie->commit_link);
+		fscache_stat_d(&fscache_n_cookies_lru);
 		spin_unlock(&fscache_cookie_lru_lock);
 		fscache_cookie_lru_do_one(cookie);
 		spin_lock(&fscache_cookie_lru_lock);
@@ -673,6 +679,8 @@ static void fscache_cookie_drop_from_lru(struct fscache_cookie *cookie)
 		spin_lock(&fscache_cookie_lru_lock);
 		if (!list_empty(&cookie->commit_link)) {
 			list_del_init(&cookie->commit_link);
+			fscache_stat_d(&fscache_n_cookies_lru);
+			fscache_stat(&fscache_n_cookies_lru_dropped);
 			need_put = true;
 		}
 		spin_unlock(&fscache_cookie_lru_lock);
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index f74f7bdea633..62e6a5bbef8e 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -32,6 +32,7 @@ struct fscache_cache *fscache_lookup_cache(const char *name, bool is_cache);
  */
 extern struct kmem_cache *fscache_cookie_jar;
 extern const struct seq_operations fscache_cookies_seq_ops;
+extern struct timer_list fscache_cookie_lru_timer;
 
 extern void fscache_print_cookie(struct fscache_cookie *cookie, char prefix);
 extern bool fscache_begin_cookie_access(struct fscache_cookie *cookie,
@@ -70,6 +71,10 @@ extern atomic_t fscache_n_volumes;
 extern atomic_t fscache_n_volumes_collision;
 extern atomic_t fscache_n_volumes_nomem;
 extern atomic_t fscache_n_cookies;
+extern atomic_t fscache_n_cookies_lru;
+extern atomic_t fscache_n_cookies_lru_expired;
+extern atomic_t fscache_n_cookies_lru_removed;
+extern atomic_t fscache_n_cookies_lru_dropped;
 
 extern atomic_t fscache_n_retrievals;
 extern atomic_t fscache_n_retrievals_ok;
diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 13e90b940bd2..5700e5712018 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -18,6 +18,10 @@ atomic_t fscache_n_volumes;
 atomic_t fscache_n_volumes_collision;
 atomic_t fscache_n_volumes_nomem;
 atomic_t fscache_n_cookies;
+atomic_t fscache_n_cookies_lru;
+atomic_t fscache_n_cookies_lru_expired;
+atomic_t fscache_n_cookies_lru_removed;
+atomic_t fscache_n_cookies_lru_dropped;
 
 atomic_t fscache_n_retrievals;
 atomic_t fscache_n_retrievals_ok;
@@ -89,6 +93,14 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_acquires_nobufs),
 		   atomic_read(&fscache_n_acquires_oom));
 
+	seq_printf(m, "LRU    : n=%u exp=%u rmv=%u drp=%u at=%ld\n",
+		   atomic_read(&fscache_n_cookies_lru),
+		   atomic_read(&fscache_n_cookies_lru_expired),
+		   atomic_read(&fscache_n_cookies_lru_removed),
+		   atomic_read(&fscache_n_cookies_lru_dropped),
+		   timer_pending(&fscache_cookie_lru_timer) ?
+		   fscache_cookie_lru_timer.expires - jiffies : 0);
+
 	seq_printf(m, "Invals : n=%u run=%u\n",
 		   atomic_read(&fscache_n_invalidates),
 		   atomic_read(&fscache_n_invalidates_run));




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
