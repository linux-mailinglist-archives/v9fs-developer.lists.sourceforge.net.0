Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2881621DC7E
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:33:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1OJ-0007e4-UM; Mon, 13 Jul 2020 16:33:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1OI-0007dw-RS
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jQyN5nMptUdr+FXFnO+0cz+AZazAi5FEXN8n0OwGMPM=; b=LxjpFU2A6J5hIGELSdhUzcIyJu
 lSp/buNYgyauqnPc2Gso/s+IT54reYKWtDo0gNyJ/xQjU1AJx/4ABKZ9IzWVzoPkZCkdh8cxI7wjR
 59xvnKxA+PT9l3SwiQ02mSMVos9dYUcIzvaa+MiVEsVPHY8IRa7JnFrIT10Wl6ShuN/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jQyN5nMptUdr+FXFnO+0cz+AZazAi5FEXN8n0OwGMPM=; b=eYRnPvxF74ISMqO68IRbb67HLp
 +Nrmx0lkKvsQYCcU2NDhSQ7wl6JkDxcjK2mqT9Da4gfZJ5HU54VN6AsSWMKJQqaceZH5kFFU7WzFH
 M1A7rAi44fWGNFXHw1JZhEGq/6Vz4eUyRntj8rjlieudFxfg8i1VqC/Lam6eiL3uIGxI=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1OH-00GIIG-Ij
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594657984;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jQyN5nMptUdr+FXFnO+0cz+AZazAi5FEXN8n0OwGMPM=;
 b=PjoamAukCD/uBHy1rH8pm5QUb4dLwfGuEk0O7VF7yMz9L3/1td/FE69+Dc4AQoPUrjHUTM
 DHF65Sr8utF9dsL7aweygh9g3lzNUq7heKJOX0hyP7x2tMlQW0nV7CsKdakZ87caWlro0N
 HE93iDX1Tt+9oL7wUOV5JuO6iINHMRs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-6akDkgNxPv2r1vJGIyslDQ-1; Mon, 13 Jul 2020 12:33:03 -0400
X-MC-Unique: 6akDkgNxPv2r1vJGIyslDQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A6FB100A8C0;
 Mon, 13 Jul 2020 16:33:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B34915D9CC;
 Mon, 13 Jul 2020 16:32:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:32:54 +0100
Message-ID: <159465797497.1376674.14328755555295693847.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1OH-00GIIG-Ij
Subject: [V9fs-developer] [PATCH 12/32] fscache,
 cachefiles: Fix disabled histogram warnings
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

Fix variable unused warnings due to disabled histogram stuff.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/internal.h |    7 +++++--
 fs/fscache/internal.h    |    6 ++++--
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index b89f76a03546..16d15291a629 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -143,11 +143,11 @@ extern int cachefiles_check_in_use(struct cachefiles_cache *cache,
 /*
  * proc.c
  */
-#ifdef CONFIG_CACHEFILES_HISTOGRAM
 extern atomic_t cachefiles_lookup_histogram[HZ];
 extern atomic_t cachefiles_mkdir_histogram[HZ];
 extern atomic_t cachefiles_create_histogram[HZ];
 
+#ifdef CONFIG_CACHEFILES_HISTOGRAM
 extern int __init cachefiles_proc_init(void);
 extern void cachefiles_proc_cleanup(void);
 static inline
@@ -162,7 +162,10 @@ void cachefiles_hist(atomic_t histogram[], unsigned long start_jif)
 #else
 #define cachefiles_proc_init()		(0)
 #define cachefiles_proc_cleanup()	do {} while (0)
-#define cachefiles_hist(hist, start_jif) do {} while (0)
+static inline
+void cachefiles_hist(atomic_t histogram[], unsigned long start_jif)
+{
+}
 #endif
 
 /*
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 443671310e31..a70c1a612309 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -95,13 +95,13 @@ extern struct fscache_cookie fscache_fsdef_index;
 /*
  * histogram.c
  */
-#ifdef CONFIG_FSCACHE_HISTOGRAM
 extern atomic_t fscache_obj_instantiate_histogram[HZ];
 extern atomic_t fscache_objs_histogram[HZ];
 extern atomic_t fscache_ops_histogram[HZ];
 extern atomic_t fscache_retrieval_delay_histogram[HZ];
 extern atomic_t fscache_retrieval_histogram[HZ];
 
+#ifdef CONFIG_FSCACHE_HISTOGRAM
 static inline void fscache_hist(atomic_t histogram[], unsigned long start_jif)
 {
 	unsigned long jif = jiffies - start_jif;
@@ -113,7 +113,9 @@ static inline void fscache_hist(atomic_t histogram[], unsigned long start_jif)
 extern const struct seq_operations fscache_histogram_ops;
 
 #else
-#define fscache_hist(hist, start_jif) do {} while (0)
+static inline void fscache_hist(atomic_t histogram[], unsigned long start_jif)
+{
+}
 #endif
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
