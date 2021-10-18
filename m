Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1422943205B
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:52:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU0G-0003U6-Px; Mon, 18 Oct 2021 14:52:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU0F-0003Tv-EA
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPebOEkrhJRGKoG40mJY0j5y/dUWS6qG5BKUsEA5eHA=; b=lbXdqWwMLs+jvr+P7EJODRvBri
 0rqBvTxYhHFSpMk35oFzD5avU7UAS/yAiFY1ngQzLtBGBTzipgTF2Ag66CTlfA/YANLyltv/RUCcn
 /52doL0D0mTO74Jj/PRl5MTevdQDYbbgZGpp1VQUjrfmXe0632o0ln62z/4RNfx/+OeA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZPebOEkrhJRGKoG40mJY0j5y/dUWS6qG5BKUsEA5eHA=; b=kEZTtp0WGrvHMsdlXX2JlItnEP
 a+oTwhUjQJd0B3edksGiOWAb6GyPWEwJmP1v650WqcA+0ohoi3NWHJf4mTqQlC+WsyUZtlORwLR3f
 fBZbnt/XUnKFtCZH2+fH8qhZTN8zAAzvuFB39J7+XTsgWdA8MN0WSMDB9qR+gnS6WgZ4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU0E-0003Lv-IS
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZPebOEkrhJRGKoG40mJY0j5y/dUWS6qG5BKUsEA5eHA=;
 b=gRYwghO4pXPFnVdek8wC2q21AKrvVa7HPDTud/fRSe84ob/Vh8vAWBNgD8QwBEVzNG8W1V
 y4Pkeq4BCHZLrhhUqvHDsa/FrNBNQz09mEl/w/RYSS1vJtt2m1R5zrdj+eT7mp88KgbSEu
 CWsDd83rDuKacqv+rvVTia4nf6rg8UE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-NzHeTYPMOSaXsZFQiybRTQ-1; Mon, 18 Oct 2021 10:52:27 -0400
X-MC-Unique: NzHeTYPMOSaXsZFQiybRTQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03E5F8042DF;
 Mon, 18 Oct 2021 14:52:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C84281017CE5;
 Mon, 18 Oct 2021 14:51:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:51:57 +0100
Message-ID: <163456871794.2614702.15398637170877934146.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Temporarily disable the use of fscache by the various Linux
 network filesystems, apart from afs, so that the fscache core can be rewritten.
 Signed-off-by: David Howells <dhowells@redhat.com> cc: Dave Wysochanski
 <dwysocha@redhat.com>
 cc: Trond Myklebust <trond.myklebust@hammerspace.com> cc: Anna Schumaker
 <anna.schumaker@netapp.com> cc: l [...] 
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
X-Headers-End: 1mcU0E-0003Lv-IS
Subject: [V9fs-developer] [PATCH 06/67] nfs, cifs, ceph,
 9p: Disable use of fscache prior to its rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, dhowells@redhat.com,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Temporarily disable the use of fscache by the various Linux network
filesystems, apart from afs, so that the fscache core can be rewritten.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Dave Wysochanski <dwysocha@redhat.com>
cc: Trond Myklebust <trond.myklebust@hammerspace.com>
cc: Anna Schumaker <anna.schumaker@netapp.com>
cc: linux-nfs@vger.kernel.org
cc: Jeff Layton <jlayton@kernel.org>
cc: Ilya Dryomov <idryomov@gmail.com>
cc: ceph-devel@vger.kernel.org
cc: Steve French <sfrench@samba.org>
cc: linux-cifs@vger.kernel.org
cc: Eric Van Hensbergen <ericvh@gmail.com>
cc: Latchesar Ionkov <lucho@ionkov.net>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: v9fs-developer@lists.sourceforge.net
---

 fs/9p/Kconfig      |    2 +-
 fs/ceph/Kconfig    |    2 +-
 fs/cifs/Kconfig    |    2 +-
 fs/fscache/Kconfig |    4 ++++
 fs/nfs/Kconfig     |    2 +-
 5 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
index d7bc93447c85..b11c15c30bac 100644
--- a/fs/9p/Kconfig
+++ b/fs/9p/Kconfig
@@ -14,7 +14,7 @@ config 9P_FS
 if 9P_FS
 config 9P_FSCACHE
 	bool "Enable 9P client caching support"
-	depends on 9P_FS=m && FSCACHE || 9P_FS=y && FSCACHE=y
+	depends on 9P_FS=m && FSCACHE_OLD || 9P_FS=y && FSCACHE_OLD=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for 9p clients using FS-Cache
diff --git a/fs/ceph/Kconfig b/fs/ceph/Kconfig
index 94df854147d3..77ad452337ee 100644
--- a/fs/ceph/Kconfig
+++ b/fs/ceph/Kconfig
@@ -21,7 +21,7 @@ config CEPH_FS
 if CEPH_FS
 config CEPH_FSCACHE
 	bool "Enable Ceph client caching support"
-	depends on CEPH_FS=m && FSCACHE || CEPH_FS=y && FSCACHE=y
+	depends on CEPH_FS=m && FSCACHE_OLD || CEPH_FS=y && FSCACHE_OLD=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for Ceph clients using FS-Cache
diff --git a/fs/cifs/Kconfig b/fs/cifs/Kconfig
index 3b7e3b9e4fd2..c5477abbcff0 100644
--- a/fs/cifs/Kconfig
+++ b/fs/cifs/Kconfig
@@ -188,7 +188,7 @@ config CIFS_SMB_DIRECT
 
 config CIFS_FSCACHE
 	bool "Provide CIFS client caching support"
-	depends on CIFS=m && FSCACHE || CIFS=y && FSCACHE=y
+	depends on CIFS=m && FSCACHE_OLD || CIFS=y && FSCACHE_OLD=y
 	help
 	  Makes CIFS FS-Cache capable. Say Y here if you want your CIFS data
 	  to be cached locally on disk through the general filesystem cache
diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
index b313a978ae0a..7850de3bdee0 100644
--- a/fs/fscache/Kconfig
+++ b/fs/fscache/Kconfig
@@ -38,3 +38,7 @@ config FSCACHE_DEBUG
 	  enabled by setting bits in /sys/modules/fscache/parameter/debug.
 
 	  See Documentation/filesystems/caching/fscache.rst for more information.
+
+config FSCACHE_OLD
+	bool
+	default n
diff --git a/fs/nfs/Kconfig b/fs/nfs/Kconfig
index 14a72224b657..a8b73c90aa00 100644
--- a/fs/nfs/Kconfig
+++ b/fs/nfs/Kconfig
@@ -170,7 +170,7 @@ config ROOT_NFS
 
 config NFS_FSCACHE
 	bool "Provide NFS client caching support"
-	depends on NFS_FS=m && FSCACHE || NFS_FS=y && FSCACHE=y
+	depends on NFS_FS=m && FSCACHE_OLD || NFS_FS=y && FSCACHE_OLD=y
 	help
 	  Say Y here if you want NFS data to be cached locally on disc through
 	  the general filesystem cache manager




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
