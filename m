Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5E52BAD3B
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:14:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg87c-0002pb-Pz; Fri, 20 Nov 2020 15:14:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg825-0002bd-ER
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RNxh6y+qHJcG9v0Fk0/xbz4y2bRjeKy5839qm1nYWZE=; b=c2H6e8ECyXzOiFnl2rXhZMZKJT
 EhKlpDjZ2Gkz6Q5LFZ0vuN4D9EbvA3FUyQx5nLX4PbBJLxUNph3S/BB/4plccynIwY5O+G5l7nyU+
 2c8EVct6ZgvrvUesmg6G1tgOrRVD3dGJ7oO0e6EWict/1hGB6Zs6HeXClURr+oCxUFXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RNxh6y+qHJcG9v0Fk0/xbz4y2bRjeKy5839qm1nYWZE=; b=TlcePgtBa6ey1ozSXIbN+h+2A1
 hAPZ6vWXHPCs1dg7OOIjdhSG/tchUyOx4e9nt0qYAmlvD2z7gf7+83+odyuWJV9Ypkbg5+uUWFIVC
 7Xy7zudn5bgdBOFL53QyrK4FqXIY7qKO6kqajxUfv1TuRncreubz51u+jHFT8JWfl2K8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg81y-00AcUU-AX
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605884925;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RNxh6y+qHJcG9v0Fk0/xbz4y2bRjeKy5839qm1nYWZE=;
 b=M/mhaXXy6fYMIq0grCh9if6QeWWfffIItGmqeH6oXeZXmZrl5gYWtlJjmFPMVQXpcyn6FM
 IOduxbKf+RtUHRAH2Bq0fVac3KMJ5JrjW/jy0Vktb75oPvm+s0eWymPZouE0/n8DEbtP4K
 wkl2LYVEJ7pJpjvXKsXU3ra4fxQkPSk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-eYysgVn1OVKmuoiBAxh11Q-1; Fri, 20 Nov 2020 10:08:43 -0500
X-MC-Unique: eYysgVn1OVKmuoiBAxh11Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66A19801AF1;
 Fri, 20 Nov 2020 15:08:41 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A8D8419C46;
 Fri, 20 Nov 2020 15:08:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:08:34 +0000
Message-ID: <160588491489.3465195.3904823431891430888.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg81y-00AcUU-AX
Subject: [V9fs-developer] [RFC PATCH 28/76] fscache,
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
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
index 6c2a6ebe4f02..2c1f4151c092 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -109,13 +109,13 @@ extern struct fscache_cookie fscache_fsdef_index;
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
@@ -127,7 +127,9 @@ static inline void fscache_hist(atomic_t histogram[], unsigned long start_jif)
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
