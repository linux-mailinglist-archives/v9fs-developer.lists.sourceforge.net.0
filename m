Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA6D1C4103
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:09:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVeaW-0002CD-S4; Mon, 04 May 2020 17:09:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVeaU-0002C5-R8
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G0AIq6eYbB6aTcAPy60YSLrduhUmlbGbDR9FJYHGWk8=; b=jpDSviAE02nmofbTzYh60Ard1/
 XLK3lZkSxkSB82AGt/zzdKT7HvouTVlobmN8WXlpr18/DnBncKifstNrow9iBjpjbPlWW4xLjkNu8
 IuHqwCJucNv8a1y5UT3Yg1qVgWgUg+hw45uNMuLIEXEZAhdWOwqUMGYXtR1afhAhTboE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G0AIq6eYbB6aTcAPy60YSLrduhUmlbGbDR9FJYHGWk8=; b=At/HrwLynCrv6+2xT9JP/XlHmC
 iBLbDaauWtlvWo5qCkGtklJNFjzVnmDhGPHihU0VkCwLhzNG2hIZ+YL5HIf1qNW8hSuG94c+fKtTD
 TosHG/KuY9TVuGm81nu+X2f6Fq0HJjxtbkzBS74uFmx1hKJ3azWtZLpabAbXZ6PQD+R8=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVeaT-0079hq-Ke
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612135;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G0AIq6eYbB6aTcAPy60YSLrduhUmlbGbDR9FJYHGWk8=;
 b=IC7raVdqreyerTJDMUSLmA2xIYaK1vTqZrNyfgnCrbKyTIjvSkmkyZnIuQZDvqL02qU5+S
 ZyF8bTOABJSzS1TbxidOYHjlXh/kiOSq3UJrDSdHI8VFJ/1Ni46AQPEuZAcW3Rnxf37bb/
 ZkJivS61+iJt9R1l4tkDjPJXl4cyfSk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-212-3hvdwk1rNe2Kzc1-dF3lQA-1; Mon, 04 May 2020 13:08:52 -0400
X-MC-Unique: 3hvdwk1rNe2Kzc1-dF3lQA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 292E41899524;
 Mon,  4 May 2020 17:08:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E38E710013D9;
 Mon,  4 May 2020 17:08:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:08:47 +0100
Message-ID: <158861212713.340223.8649652288823547319.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVeaT-0079hq-Ke
Subject: [V9fs-developer] [RFC PATCH 09/61] fscache: Temporarily disable
 network filesystems' use of fscache
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

Temporarily disable the use of fscache by the various Linux network
filesystems, apart from afs, so that the core can be rewritten.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/9p/Kconfig      |    2 +-
 fs/ceph/Kconfig    |    2 +-
 fs/cifs/Kconfig    |    2 +-
 fs/fscache/Kconfig |    4 ++++
 fs/nfs/Kconfig     |    2 +-
 5 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
index 09fd4a185fd2..66ca72422961 100644
--- a/fs/9p/Kconfig
+++ b/fs/9p/Kconfig
@@ -13,7 +13,7 @@ config 9P_FS
 if 9P_FS
 config 9P_FSCACHE
 	bool "Enable 9P client caching support"
-	depends on 9P_FS=m && FSCACHE || 9P_FS=y && FSCACHE=y
+	depends on 9P_FS=m && FSCACHE_OLD || 9P_FS=y && FSCACHE_OLD=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for 9p clients using FS-Cache
diff --git a/fs/ceph/Kconfig b/fs/ceph/Kconfig
index cf235f6eacf9..9aee341392a2 100644
--- a/fs/ceph/Kconfig
+++ b/fs/ceph/Kconfig
@@ -20,7 +20,7 @@ config CEPH_FS
 if CEPH_FS
 config CEPH_FSCACHE
 	bool "Enable Ceph client caching support"
-	depends on CEPH_FS=m && FSCACHE || CEPH_FS=y && FSCACHE=y
+	depends on CEPH_FS=m && FSCACHE_OLD || CEPH_FS=y && FSCACHE_OLD=y
 	help
 	  Choose Y here to enable persistent, read-only local
 	  caching support for Ceph clients using FS-Cache
diff --git a/fs/cifs/Kconfig b/fs/cifs/Kconfig
index 604f65f4b6c5..441f24bff49c 100644
--- a/fs/cifs/Kconfig
+++ b/fs/cifs/Kconfig
@@ -206,7 +206,7 @@ config CIFS_SMB_DIRECT
 
 config CIFS_FSCACHE
 	bool "Provide CIFS client caching support"
-	depends on CIFS=m && FSCACHE || CIFS=y && FSCACHE=y
+	depends on CIFS=m && FSCACHE_OLD || CIFS=y && FSCACHE_OLD=y
 	help
 	  Makes CIFS FS-Cache capable. Say Y here if you want your CIFS data
 	  to be cached locally on disk through the general filesystem cache
diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
index 506c5e643f0d..f95a5aa03b6b 100644
--- a/fs/fscache/Kconfig
+++ b/fs/fscache/Kconfig
@@ -60,3 +60,7 @@ config FSCACHE_OBJECT_LIST
 	help
 	  Maintain a global list of active fscache objects that can be
 	  retrieved through /proc/fs/fscache/objects for debugging purposes
+
+config FSCACHE_OLD
+	bool
+	default n
diff --git a/fs/nfs/Kconfig b/fs/nfs/Kconfig
index 88e1763e02f3..8909ef506073 100644
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
