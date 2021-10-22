Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B28437CF8
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:00:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzlo-0003JK-I1; Fri, 22 Oct 2021 19:00:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzln-0003J8-E7
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 18:59:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y4/T8Io6jeWnvNKIt07Mm8mabiVSgkjPoie4O9EQTu8=; b=bhphIB9EUaWyyRJf6rlZfeAu8/
 jw2cKyn1XGtAd9Rz1zYVyRTJyDin3vhcKfThctm8WjscRWlwGYwy9QBy0lXt0cEh9DIkoLRh1LpMc
 BC1/aSLQ9jA/bci8phvsusfjoddJNDLl0pu1bvJniea+9JN+ZLkK/q2I8Z7Lcb8ylS/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y4/T8Io6jeWnvNKIt07Mm8mabiVSgkjPoie4O9EQTu8=; b=HVa05Tjy9B/iIwOJ0kYMRWJRtu
 qiUnjqM//nZJDENrGNDC+b5r+0gCJX4ParBWJXiPzXJMpVfsWWATaa8ZI92DpsCz9meMuCRYA52PI
 BLfElBxsoUcRNMeBxkSNWUsw6Yb3aDfre4/CaLLydbEydzCE6etvgYozBYsytDw6hhY0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzlj-00CH9h-2u
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 18:59:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929189;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y4/T8Io6jeWnvNKIt07Mm8mabiVSgkjPoie4O9EQTu8=;
 b=gH4ZtBQIzKFQI1L9dcJ1z9BjvXLesnlY+dJ9rIrcOSo47x/BNe9g+OWvDVex/vHXmmISVo
 VWsbet4dqbYJWTTaq2jqf9emVRvPB79pJuQxPn64a8rpNeH/QrJHrg/QEEEsF/ksEyJG/S
 UxYNAKYUXViorBRTWPoOVZeIQ+jPtXs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-570-Kc5968NdOam7MLlrHa62lA-1; Fri, 22 Oct 2021 14:59:45 -0400
X-MC-Unique: Kc5968NdOam7MLlrHa62lA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA98918D6A25;
 Fri, 22 Oct 2021 18:59:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 700D85DD68;
 Fri, 22 Oct 2021 18:59:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 19:59:34 +0100
Message-ID: <163492917458.1038219.13229909230658169654.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Rename the CONFIG_CACHEFILES* config symbols to
 CONFIG_CACHEFILES_OLD*.
 Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com
 --- fs/Makefile | 2 +- fs/cachefiles_old/Kconfig | 8 ++++----
 fs/cachefiles_old/Makefile
 | 2 +- fs/cachefiles_old/internal.h | 2 +- 4 files changed, 7 insertions(+),
 7 deletions(-) 
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
X-Headers-End: 1mdzlj-00CH9h-2u
Subject: [V9fs-developer] [PATCH v2 04/53] cachefiles_old: Rename
 CONFIG_CACHEFILES* to CONFIG_CACHEFILES_OLD*
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

Rename the CONFIG_CACHEFILES* config symbols to CONFIG_CACHEFILES_OLD*.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/Makefile                  |    2 +-
 fs/cachefiles_old/Kconfig    |    8 ++++----
 fs/cachefiles_old/Makefile   |    2 +-
 fs/cachefiles_old/internal.h |    2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/fs/Makefile b/fs/Makefile
index 6e6dbcd04cae..e5cb91ecb29f 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -125,7 +125,7 @@ obj-$(CONFIG_AFS_FS)		+= afs/
 obj-$(CONFIG_NILFS2_FS)		+= nilfs2/
 obj-$(CONFIG_BEFS_FS)		+= befs/
 obj-$(CONFIG_HOSTFS)		+= hostfs/
-obj-$(CONFIG_CACHEFILES)	+= cachefiles_old/
+obj-$(CONFIG_CACHEFILES_OLD)	+= cachefiles_old/
 obj-$(CONFIG_DEBUG_FS)		+= debugfs/
 obj-$(CONFIG_TRACING)		+= tracefs/
 obj-$(CONFIG_OCFS2_FS)		+= ocfs2/
diff --git a/fs/cachefiles_old/Kconfig b/fs/cachefiles_old/Kconfig
index 7f3e1881fb21..48977018c64e 100644
--- a/fs/cachefiles_old/Kconfig
+++ b/fs/cachefiles_old/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config CACHEFILES
-	tristate "Filesystem caching on files"
+config CACHEFILES_OLD
+	tristate "Filesystem caching on files (old driver)"
 	depends on FSCACHE_OLD && BLOCK
 	help
 	  This permits use of a mounted filesystem as a cache for other
@@ -11,9 +11,9 @@ config CACHEFILES
 	  See Documentation/filesystems/caching/cachefiles.rst for more
 	  information.
 
-config CACHEFILES_DEBUG
+config CACHEFILES_OLD_DEBUG
 	bool "Debug CacheFiles"
-	depends on CACHEFILES
+	depends on CACHEFILES_OLD
 	help
 	  This permits debugging to be dynamically enabled in the filesystem
 	  caching on files module.  If this is set, the debugging output may be
diff --git a/fs/cachefiles_old/Makefile b/fs/cachefiles_old/Makefile
index 714e84b3ca24..e0c2e69ddf50 100644
--- a/fs/cachefiles_old/Makefile
+++ b/fs/cachefiles_old/Makefile
@@ -14,4 +14,4 @@ cachefiles-y := \
 	security.o \
 	xattr.o
 
-obj-$(CONFIG_CACHEFILES) := cachefiles.o
+obj-$(CONFIG_CACHEFILES_OLD) := cachefiles.o
diff --git a/fs/cachefiles_old/internal.h b/fs/cachefiles_old/internal.h
index 28351d62d8d2..9e3a8d6894db 100644
--- a/fs/cachefiles_old/internal.h
+++ b/fs/cachefiles_old/internal.h
@@ -235,7 +235,7 @@ do {									\
 #define _leave(FMT, ...) kleave(FMT, ##__VA_ARGS__)
 #define _debug(FMT, ...) kdebug(FMT, ##__VA_ARGS__)
 
-#elif defined(CONFIG_CACHEFILES_DEBUG)
+#elif defined(CONFIG_CACHEFILES_OLD_DEBUG)
 #define _enter(FMT, ...)				\
 do {							\
 	if (cachefiles_debug & CACHEFILES_DEBUG_KENTER)	\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
