Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C672A4617FD
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:24:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhZa-0002EC-9j; Mon, 29 Nov 2021 14:24:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhYc-00026E-OR
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BiB4x7SD2PEQGuMysW9Z8TuXi/pEKNyWhdNTdp8qogw=; b=dLEYYEuBePiR02VNez/nkFjhP/
 zi2r1u9N553edhSbiRvRaPOetoIDo7l1e+VLhHvd65CumWTp6Vx4sd791712S0axPRJmAS3y9mhEz
 DNYHeId56MTZYTtzzIx3ydaadVUjGxNjvpYmHLqefsiH6I0FktVkn706cr76welWCbUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BiB4x7SD2PEQGuMysW9Z8TuXi/pEKNyWhdNTdp8qogw=; b=Ta25bY3WglKVqyZB7Q3uwuMlA1
 CSIncD2H8GkYEgZOBcODHgYPZq+2MpXRgNA0TUomd75n2M5+VfUq5FFe3JaPSSu9E+O5XsXY0ZPdU
 3JycAdPrC9tvbp9bOaknI2pl+eyR0FKexoTNZJFwwomt8OsVWteO20SjlxMhZwVe90Mc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhYd-00EDGk-4c
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638195777;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BiB4x7SD2PEQGuMysW9Z8TuXi/pEKNyWhdNTdp8qogw=;
 b=EvkiZ2dpVIsOocCzSxlubePPA4b0c57U2GvxDOvYXqVLzLbmFnd1PwVDorf0cTgwHjFtBy
 1L4qXYOxI4G7D/anplpWp08lBpJQWTEK+nR3ZlUNmWDieqSzBIo5KXjF6QRC6bbtm+jrE/
 cTn7G0AGqNZfTpJkynpGziRsJClL1Ik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-435-rWZBjt13PdWxQO9ThRx__A-1; Mon, 29 Nov 2021 09:22:53 -0500
X-MC-Unique: rWZBjt13PdWxQO9ThRx__A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 324571018720;
 Mon, 29 Nov 2021 14:22:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BE2E1037F3E;
 Mon, 29 Nov 2021 14:22:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:22:46 +0000
Message-ID: <163819576672.215744.12444272479560406780.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Disable fscache and cachefiles in Kconfig whilst it is
 rewritten.
 Signed-off-by: David Howells <dhowells@redhat.com> --- fs/9p/Kconfig | 2
 +- fs/afs/Kconfig | 2 +- fs/ceph/Kconfig | 2 +- fs/cifs/Kconfig | 2 +-
 fs/fscache/Kconfig
 | 3 +++ fs/nfs/Kconfig | 2 +- 6 files changed, 8 insertions(+), 5 deletions(-)
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhYd-00EDGk-4c
Subject: [V9fs-developer] [PATCH 01/64] fscache,
 cachefiles: Disable configuration
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Disable fscache and cachefiles in Kconfig whilst it is rewritten.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/9p/Kconfig      |    2 +-
 fs/afs/Kconfig     |    2 +-
 fs/ceph/Kconfig    |    2 +-
 fs/cifs/Kconfig    |    2 +-
 fs/fscache/Kconfig |    3 +++
 fs/nfs/Kconfig     |    2 +-
 6 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
index d7bc93447c85..b3d33b3ddb98 100644
--- a/fs/9p/Kconfig
+++ b/fs/9p/Kconfig
@@ -14,7 +14,7 @@ config 9P_FS
 if 9P_FS
 config 9P_FSCACHE
 	bool "Enable 9P client caching support"
-	depends on 9P_FS=m && FSCACHE || 9P_FS=y && FSCACHE=y
+	depends on 9P_FS=m && FSCACHE_OLD_API || 9P_FS=y && FSCACHE_OLD_API=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for 9p clients using FS-Cache
diff --git a/fs/afs/Kconfig b/fs/afs/Kconfig
index fc8ba9142f2f..c40cdfcc25d1 100644
--- a/fs/afs/Kconfig
+++ b/fs/afs/Kconfig
@@ -25,7 +25,7 @@ config AFS_DEBUG
 
 config AFS_FSCACHE
 	bool "Provide AFS client caching support"
-	depends on AFS_FS=m && FSCACHE || AFS_FS=y && FSCACHE=y
+	depends on AFS_FS=m && FSCACHE_OLD_API || AFS_FS=y && FSCACHE_OLD_API=y
 	help
 	  Say Y here if you want AFS data to be cached locally on disk through
 	  the generic filesystem cache manager
diff --git a/fs/ceph/Kconfig b/fs/ceph/Kconfig
index 94df854147d3..61f123356c3e 100644
--- a/fs/ceph/Kconfig
+++ b/fs/ceph/Kconfig
@@ -21,7 +21,7 @@ config CEPH_FS
 if CEPH_FS
 config CEPH_FSCACHE
 	bool "Enable Ceph client caching support"
-	depends on CEPH_FS=m && FSCACHE || CEPH_FS=y && FSCACHE=y
+	depends on CEPH_FS=m && FSCACHE_OLD_API || CEPH_FS=y && FSCACHE_OLD_API=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for Ceph clients using FS-Cache
diff --git a/fs/cifs/Kconfig b/fs/cifs/Kconfig
index 3b7e3b9e4fd2..346ae8716deb 100644
--- a/fs/cifs/Kconfig
+++ b/fs/cifs/Kconfig
@@ -188,7 +188,7 @@ config CIFS_SMB_DIRECT
 
 config CIFS_FSCACHE
 	bool "Provide CIFS client caching support"
-	depends on CIFS=m && FSCACHE || CIFS=y && FSCACHE=y
+	depends on CIFS=m && FSCACHE_OLD_API || CIFS=y && FSCACHE_OLD_API=y
 	help
 	  Makes CIFS FS-Cache capable. Say Y here if you want your CIFS data
 	  to be cached locally on disk through the general filesystem cache
diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
index b313a978ae0a..76316c4a3fb7 100644
--- a/fs/fscache/Kconfig
+++ b/fs/fscache/Kconfig
@@ -38,3 +38,6 @@ config FSCACHE_DEBUG
 	  enabled by setting bits in /sys/modules/fscache/parameter/debug.
 
 	  See Documentation/filesystems/caching/fscache.rst for more information.
+
+config FSCACHE_OLD_API
+	bool
diff --git a/fs/nfs/Kconfig b/fs/nfs/Kconfig
index 14a72224b657..bdc11b89eac5 100644
--- a/fs/nfs/Kconfig
+++ b/fs/nfs/Kconfig
@@ -170,7 +170,7 @@ config ROOT_NFS
 
 config NFS_FSCACHE
 	bool "Provide NFS client caching support"
-	depends on NFS_FS=m && FSCACHE || NFS_FS=y && FSCACHE=y
+	depends on NFS_FS=m && FSCACHE_OLD_API || NFS_FS=y && FSCACHE_OLD_API=y
 	help
 	  Say Y here if you want NFS data to be cached locally on disc through
 	  the general filesystem cache manager




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
