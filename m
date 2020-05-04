Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB15C1C42A3
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:24:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVepN-0002zV-PA; Mon, 04 May 2020 17:24:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVepM-0002zN-3z
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5jp/lu0GxHdmrW7lYis3BayJlXaHxiOzRuuxkLlmEHw=; b=Zij2Wq3Xjplput9g2sEXNFesoH
 E8s0Fgc0z2ItXogPy+FYK5O7lmaAjUlT88Y59lf/jfDOdSDnAqm17oa201mYJzffleub+UhFVk3/Q
 NNo2Rk7x5CHKOSd4cRJJyqOkzaL58P8PDGswXGdBBXjS6uB4LJUuaZmqmh9enyiyi0kM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5jp/lu0GxHdmrW7lYis3BayJlXaHxiOzRuuxkLlmEHw=; b=hL5RZvdhUyX7NVKgumKkaSs9tW
 ZSJ1EpyMIlkMOJ4UdQ4SpcqoMEQwePDKaehR1WNJej1+NIyUGxZCmJbatNfNwqCwozsW52eu7CCiT
 0FgzjjP3F6TSyPjMnZiBSsNZPdhEvu+sFAA9aSNVFNenLKyUdDnxnPpEGf8/2P14IXIE=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVepJ-007BFm-Ty
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588613055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5jp/lu0GxHdmrW7lYis3BayJlXaHxiOzRuuxkLlmEHw=;
 b=WJoOM1p/j90WEn0ICS9XKnJdLUeA7TyVKc9Lc0LnjgqUTv/m+l3LRv80TqHRKCvL25Fz9U
 6IdEh1CySdt7QJaHaVNebj1rXTqjw/7XeDYNzHsU9KJMWnb4+dKf2VDndFxKE+YUOwyody
 PGm2xIfPmXi63tZa4qopBw1MZ0ukVZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-IjKgymHHN5ifQhjeKOLe7Q-1; Mon, 04 May 2020 13:08:43 -0400
X-MC-Unique: IjKgymHHN5ifQhjeKOLe7Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E95708014D6;
 Mon,  4 May 2020 17:08:41 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8598E63BBA;
 Mon,  4 May 2020 17:08:39 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:08:38 +0100
Message-ID: <158861211871.340223.7223853943667440807.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVepJ-007BFm-Ty
Subject: [V9fs-developer] [RFC PATCH 08/61] fscache: Procfile to display
 cookies
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

Add /proc/fs/fscache/cookies to display active cookies.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/cookie.c     |  103 +++++++++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h   |    1 
 fs/fscache/proc.c       |    7 +++
 include/linux/fscache.h |    1 
 4 files changed, 112 insertions(+)

diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index b94e3995011e..477c5fb349ee 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -19,6 +19,8 @@ static atomic_t fscache_object_debug_id = ATOMIC_INIT(0);
 
 #define fscache_cookie_hash_shift 15
 static struct hlist_bl_head fscache_cookie_hash[1 << fscache_cookie_hash_shift];
+static LIST_HEAD(fscache_cookies);
+static DEFINE_RWLOCK(fscache_cookies_lock);
 
 static int fscache_acquire_non_index_cookie(struct fscache_cookie *cookie,
 					    loff_t object_size);
@@ -65,6 +67,9 @@ void fscache_free_cookie(struct fscache_cookie *cookie)
 {
 	if (cookie) {
 		BUG_ON(!hlist_empty(&cookie->backing_objects));
+		write_lock(&fscache_cookies_lock);
+		list_del(&cookie->proc_link);
+		write_unlock(&fscache_cookies_lock);
 		if (cookie->aux_len > sizeof(cookie->inline_aux))
 			kfree(cookie->aux);
 		if (cookie->key_len > sizeof(cookie->inline_key))
@@ -192,6 +197,10 @@ struct fscache_cookie *fscache_alloc_cookie(
 	/* radix tree insertion won't use the preallocation pool unless it's
 	 * told it may not wait */
 	INIT_RADIX_TREE(&cookie->stores, GFP_NOFS & ~__GFP_DIRECT_RECLAIM);
+
+	write_lock(&fscache_cookies_lock);
+	list_add_tail(&cookie->proc_link, &fscache_cookies);
+	write_unlock(&fscache_cookies_lock);
 	return cookie;
 
 nomem:
@@ -969,3 +978,97 @@ int __fscache_check_consistency(struct fscache_cookie *cookie,
 	return -ESTALE;
 }
 EXPORT_SYMBOL(__fscache_check_consistency);
+
+/*
+ * Generate a list of extant cookies in /proc/fs/fscache/cookies
+ */
+static int fscache_cookies_seq_show(struct seq_file *m, void *v)
+{
+	struct fscache_cookie *cookie;
+	unsigned int keylen = 0, auxlen = 0;
+	char _type[3], *type;
+	u8 *p;
+
+	if (v == &fscache_cookies) {
+		seq_puts(m,
+			 "COOKIE   PARENT   USAGE CHILD ACT TY FL  DEF              NETFS_DATA\n"
+			 "======== ======== ===== ===== === == === ================ ==========\n"
+			 );
+		return 0;
+	}
+
+	cookie = list_entry(v, struct fscache_cookie, proc_link);
+
+	switch (cookie->type) {
+	case 0:
+		type = "IX";
+		break;
+	case 1:
+		type = "DT";
+		break;
+	default:
+		snprintf(_type, sizeof(_type), "%02u",
+			 cookie->type);
+		type = _type;
+		break;
+	}
+
+	seq_printf(m,
+		   "%08x %08x %5u %5u %3u %s %03lx %-16s %px",
+		   cookie->debug_id,
+		   cookie->parent ? cookie->parent->debug_id : 0,
+		   atomic_read(&cookie->usage),
+		   atomic_read(&cookie->n_children),
+		   atomic_read(&cookie->n_active),
+		   type,
+		   cookie->flags,
+		   cookie->def->name,
+		   cookie->netfs_data);
+
+	keylen = cookie->key_len;
+	auxlen = cookie->aux_len;
+
+	if (keylen > 0 || auxlen > 0) {
+		seq_puts(m, " ");
+		p = keylen <= sizeof(cookie->inline_key) ?
+			cookie->inline_key : cookie->key;
+		for (; keylen > 0; keylen--)
+			seq_printf(m, "%02x", *p++);
+		if (auxlen > 0) {
+			seq_puts(m, ", ");
+			p = auxlen <= sizeof(cookie->inline_aux) ?
+				cookie->inline_aux : cookie->aux;
+			for (; auxlen > 0; auxlen--)
+				seq_printf(m, "%02x", *p++);
+		}
+	}
+
+	seq_puts(m, "\n");
+	return 0;
+}
+
+static void *fscache_cookies_seq_start(struct seq_file *m, loff_t *_pos)
+	__acquires(fscache_cookies_lock)
+{
+	read_lock(&fscache_cookies_lock);
+	return seq_list_start_head(&fscache_cookies, *_pos);
+}
+
+static void *fscache_cookies_seq_next(struct seq_file *m, void *v, loff_t *_pos)
+{
+	return seq_list_next(v, &fscache_cookies, _pos);
+}
+
+static void fscache_cookies_seq_stop(struct seq_file *m, void *v)
+	__releases(rcu)
+{
+	read_unlock(&fscache_cookies_lock);
+}
+
+
+const struct seq_operations fscache_cookies_seq_ops = {
+	.start  = fscache_cookies_seq_start,
+	.next   = fscache_cookies_seq_next,
+	.stop   = fscache_cookies_seq_stop,
+	.show   = fscache_cookies_seq_show,
+};
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 08e91efbce53..4b535c2dae4a 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -45,6 +45,7 @@ extern struct fscache_cache *fscache_select_cache_for_object(
  * cookie.c
  */
 extern struct kmem_cache *fscache_cookie_jar;
+extern const struct seq_operations fscache_cookies_seq_ops;
 
 extern void fscache_free_cookie(struct fscache_cookie *);
 extern struct fscache_cookie *fscache_alloc_cookie(struct fscache_cookie *,
diff --git a/fs/fscache/proc.c b/fs/fscache/proc.c
index 90a7bc22f7e1..da51fdfc8641 100644
--- a/fs/fscache/proc.c
+++ b/fs/fscache/proc.c
@@ -21,6 +21,10 @@ int __init fscache_proc_init(void)
 	if (!proc_mkdir("fs/fscache", NULL))
 		goto error_dir;
 
+	if (!proc_create_seq("fs/fscache/cookies", S_IFREG | 0444, NULL,
+			     &fscache_cookies_seq_ops))
+		goto error_cookies;
+
 #ifdef CONFIG_FSCACHE_STATS
 	if (!proc_create_single("fs/fscache/stats", S_IFREG | 0444, NULL,
 			fscache_stats_show))
@@ -53,6 +57,8 @@ int __init fscache_proc_init(void)
 	remove_proc_entry("fs/fscache/stats", NULL);
 error_stats:
 #endif
+	remove_proc_entry("fs/fscache/cookies", NULL);
+error_cookies:
 	remove_proc_entry("fs/fscache", NULL);
 error_dir:
 	_leave(" = -ENOMEM");
@@ -73,5 +79,6 @@ void fscache_proc_cleanup(void)
 #ifdef CONFIG_FSCACHE_STATS
 	remove_proc_entry("fs/fscache/stats", NULL);
 #endif
+	remove_proc_entry("fs/fscache/cookies", NULL);
 	remove_proc_entry("fs/fscache", NULL);
 }
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 0229bb80b73c..38ec80217899 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -141,6 +141,7 @@ struct fscache_cookie {
 	const struct fscache_cookie_def	*def;		/* definition */
 	struct fscache_cookie		*parent;	/* parent of this entry */
 	struct hlist_bl_node		hash_link;	/* Link in hash table */
+	struct list_head		proc_link;	/* Link in proc list */
 	void				*netfs_data;	/* back pointer to netfs */
 	struct radix_tree_root		stores;		/* pages to be stored on this cookie */
 #define FSCACHE_COOKIE_PENDING_TAG	0		/* pages tag: pending write to cache */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
