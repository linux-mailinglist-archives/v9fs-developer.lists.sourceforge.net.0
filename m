Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F70C21DC96
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:33:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1Ob-0007Cf-UP; Mon, 13 Jul 2020 16:33:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1Ob-0007CY-5u
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RWMLZe4Vdjyi4M5qHNYNhL1EdhgFGsvNnmLuTk/M2gI=; b=U2/y0NPLsNNnBYx92qPavD4lu1
 0Ves7luPIawTegIhS8N8FZ53H1bn+dNhYv0FJWD+S9GfVTA8VljgZ3yUIGaF7pF0AKQQ9ep5yWcaV
 MY405UcuC7PjTVcfwEU9VvCQAhwt3NvT2uesjqoEBfSBPiX0HNeSxqDmA5nXr4ZFUL/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RWMLZe4Vdjyi4M5qHNYNhL1EdhgFGsvNnmLuTk/M2gI=; b=cYJYQRWD5xmEaoVQ+F73r1ZMVV
 X+NuvGGB5nUiEJSbIGz656v3YLsbkjjiDMT235puN30/JbZyWkwstZPhZZj+i//dDDUIAl2vxNX5P
 GJku6K1be0R7AFrAaQIQXEeWczsRaYVe765xdgHcSVn4f1NsCz/XIaTy+nj/rgb79cr0=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1OZ-00GIK3-Tz
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RWMLZe4Vdjyi4M5qHNYNhL1EdhgFGsvNnmLuTk/M2gI=;
 b=ci/XuVTf1JfoAWdyJ8RBj/i/VZdh12kinSVphxtCSjIkt4NCLsTC9jmw3NYj41HObccJ6o
 sXhEupN6pHcpCf467PP13bzZTp09LJDFFeh49+1K9PQJ3qo1+YMj1LpCg1hf99NlWPSl0u
 xkk6eYsrDsfaRRZhz3d3BH4xCOy6Dzw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-ovdf7efDN0S6TwV9kunCZw-1; Mon, 13 Jul 2020 12:33:26 -0400
X-MC-Unique: ovdf7efDN0S6TwV9kunCZw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 32F8E800597;
 Mon, 13 Jul 2020 16:33:24 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B85FF5D9CC;
 Mon, 13 Jul 2020 16:33:18 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:33:17 +0100
Message-ID: <159465799796.1376674.7066284663368258060.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1OZ-00GIK3-Tz
Subject: [V9fs-developer] [PATCH 14/32] cachefiles: Remove some redundant
 checks on unsigned values
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

Remove some redundant checks for unsigned values being >= 0.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/bind.c   |    6 ++----
 fs/cachefiles/daemon.c |    6 +++---
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/fs/cachefiles/bind.c b/fs/cachefiles/bind.c
index 4c59e1ef4500..84fe89d5999e 100644
--- a/fs/cachefiles/bind.c
+++ b/fs/cachefiles/bind.c
@@ -36,13 +36,11 @@ int cachefiles_daemon_bind(struct cachefiles_cache *cache, char *args)
 	       args);
 
 	/* start by checking things over */
-	ASSERT(cache->fstop_percent >= 0 &&
-	       cache->fstop_percent < cache->fcull_percent &&
+	ASSERT(cache->fstop_percent < cache->fcull_percent &&
 	       cache->fcull_percent < cache->frun_percent &&
 	       cache->frun_percent  < 100);
 
-	ASSERT(cache->bstop_percent >= 0 &&
-	       cache->bstop_percent < cache->bcull_percent &&
+	ASSERT(cache->bstop_percent < cache->bcull_percent &&
 	       cache->bcull_percent < cache->brun_percent &&
 	       cache->brun_percent  < 100);
 
diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
index 8a937d6d5e22..e8ab3ab57147 100644
--- a/fs/cachefiles/daemon.c
+++ b/fs/cachefiles/daemon.c
@@ -221,7 +221,7 @@ static ssize_t cachefiles_daemon_write(struct file *file,
 	if (test_bit(CACHEFILES_DEAD, &cache->flags))
 		return -EIO;
 
-	if (datalen < 0 || datalen > PAGE_SIZE - 1)
+	if (datalen > PAGE_SIZE - 1)
 		return -EOPNOTSUPP;
 
 	/* drag the command string into the kernel so we can parse it */
@@ -378,7 +378,7 @@ static int cachefiles_daemon_fstop(struct cachefiles_cache *cache, char *args)
 	if (args[0] != '%' || args[1] != '\0')
 		return -EINVAL;
 
-	if (fstop < 0 || fstop >= cache->fcull_percent)
+	if (fstop >= cache->fcull_percent)
 		return cachefiles_daemon_range_error(cache, args);
 
 	cache->fstop_percent = fstop;
@@ -450,7 +450,7 @@ static int cachefiles_daemon_bstop(struct cachefiles_cache *cache, char *args)
 	if (args[0] != '%' || args[1] != '\0')
 		return -EINVAL;
 
-	if (bstop < 0 || bstop >= cache->bcull_percent)
+	if (bstop >= cache->bcull_percent)
 		return cachefiles_daemon_range_error(cache, args);
 
 	cache->bstop_percent = bstop;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
