Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6290F432163
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:01:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU8d-0006yD-3n; Mon, 18 Oct 2021 15:01:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU8c-0006xx-0s
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tyfueRWcvZbFZpicF1tHL+3lmAtJffKA8+YjsGo6828=; b=k+KYr/g5Axq8ThCaXBfWuLRyG4
 8VXSMoP3Dnwhdiq+ht6du3bxUN3oAXgSGL0/FTJ9OS0Adrd3iD/ZkuszCcF+9UIzg9f+36w3MMbu9
 zWCF/qtXCq0KHZgPQtn32CN7G0LFaAxSQeyNYxO4NgWZFW+3zlMXCuFk11HNRxthnGas=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tyfueRWcvZbFZpicF1tHL+3lmAtJffKA8+YjsGo6828=; b=H7gCvMHTy1HOzkLvQ82cllDz7k
 tdMVWNvNU6V+rV79NDxIWyvASsASpEFKPNtsi0BaD1XOdkjN2t40yAGDqdErnURsYTRIJhyHTQzEQ
 56LdT0OqtLd2jzpRfrTqXXnertYLyqw4Zg2+aWbuA3kMriTO+Jg5zUvbJOFROQG4+nXY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU8X-0004rG-K9
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tyfueRWcvZbFZpicF1tHL+3lmAtJffKA8+YjsGo6828=;
 b=J/PepAiR/xLvL0ukququJkxldIXIFFWwZEB+4UpT+A/PF1Yt6XSY6oErxbEc+QrWfi0POi
 OM8kTM2szKQKyOmiKFosvF08unCHgem6MkRvXfOTz8VtJ6Eyf31UqJo7vncISIOWIyiX11
 JmWcH/RJ+K7N1Bxe/9hzOMtO34dHVo4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-2IzxT3O8Mg-udXAv-P67-Q-1; Mon, 18 Oct 2021 11:01:04 -0400
X-MC-Unique: 2IzxT3O8Mg-udXAv-P67-Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4C4C80DDE3;
 Mon, 18 Oct 2021 15:01:00 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 943FF60BF4;
 Mon, 18 Oct 2021 15:00:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:00:56 +0100
Message-ID: <163456925673.2614702.17571187496574827113.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Render the parts of the cookie key for an afs inode cookie
 as big endian. Signed-off-by: David Howells <dhowells@redhat.com> cc: Marc
 Dionne <marc.dionne@auristor.com> cc: linux-afs@lists.infradead.org --- 
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
X-Headers-End: 1mcU8X-0004rG-K9
Subject: [V9fs-developer] [PATCH 41/67] afs: Render cache cookie key as big
 endian
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
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Render the parts of the cookie key for an afs inode cookie as big endian.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/file.c     |    2 +-
 fs/afs/inode.c    |   16 ++++++++--------
 fs/afs/internal.h |    8 +++++++-
 3 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index b4666da93b54..5e29d433960d 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -189,7 +189,7 @@ int afs_release(struct inode *inode, struct file *file)
 
 	if ((file->f_mode & FMODE_WRITE)) {
 		i_size = i_size_read(&vnode->vfs_inode);
-		aux.data_version = vnode->status.data_version;
+		afs_set_cache_aux(vnode, &aux);
 		fscache_unuse_cookie(afs_vnode_cache(vnode), &aux, &i_size);
 	} else {
 		fscache_unuse_cookie(afs_vnode_cache(vnode), NULL, NULL);
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index c21c1352b149..842570e4470f 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -413,9 +413,9 @@ static void afs_get_inode_cache(struct afs_vnode *vnode)
 {
 #ifdef CONFIG_AFS_FSCACHE
 	struct {
-		u32 vnode_id;
-		u32 unique;
-		u32 vnode_id_ext[2];	/* Allow for a 96-bit key */
+		__be32 vnode_id;
+		__be32 unique;
+		__be32 vnode_id_ext[2];	/* Allow for a 96-bit key */
 	} __packed key;
 	struct afs_vnode_cache_aux aux;
 
@@ -424,11 +424,11 @@ static void afs_get_inode_cache(struct afs_vnode *vnode)
 		return;
 	}
 
-	key.vnode_id		= vnode->fid.vnode;
-	key.unique		= vnode->fid.unique;
-	key.vnode_id_ext[0]	= vnode->fid.vnode >> 32;
-	key.vnode_id_ext[1]	= vnode->fid.vnode_hi;
-	aux.data_version	= vnode->status.data_version;
+	key.vnode_id		= htonl(vnode->fid.vnode);
+	key.unique		= htonl(vnode->fid.unique);
+	key.vnode_id_ext[0]	= htonl(vnode->fid.vnode >> 32);
+	key.vnode_id_ext[1]	= htonl(vnode->fid.vnode_hi);
+	afs_set_cache_aux(vnode, &aux);
 
 	vnode->cache = fscache_acquire_cookie(
 		vnode->volume->cache,
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 8e168c3fa5d1..3180ba6bd46d 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -869,9 +869,15 @@ struct afs_operation {
  * Cache auxiliary data.
  */
 struct afs_vnode_cache_aux {
-	u64			data_version;
+	__be64			data_version;
 } __packed;
 
+static inline void afs_set_cache_aux(struct afs_vnode *vnode,
+				     struct afs_vnode_cache_aux *aux)
+{
+	aux->data_version = cpu_to_be64(vnode->status.data_version);
+}
+
 /*
  * We use page->private to hold the amount of the page that we've written to,
  * splitting the field into two parts.  However, we need to represent a range




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
