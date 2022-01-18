Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9DD4927A6
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:55:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9oww-0003nj-MY; Tue, 18 Jan 2022 13:55:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9owv-0003nT-6N
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0H8i+DlKXoFlzGfONMzGSVnFQYHwXgV1sPpYBX+8jJE=; b=b9iO+KABAJ4p/2kK9W9FQTUUaC
 fKQm8+EMLD5oM6bb36EP5LblDyNEl+0m/U4KCpuYuURukQjpBH3NKJ1FL3/T+SXM+aqbW08wuBaCf
 pTI2ZGW/LuGakup06owS2nt0xAY/uVTfYd3HpLXLWAm5+JMQglrE3JORDj/lMU8993qU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0H8i+DlKXoFlzGfONMzGSVnFQYHwXgV1sPpYBX+8jJE=; b=Yjfk9uhl1tND7IDz5b/4RnaNq4
 c/D1FLwTtm7qhCoFv96pDFwoMQsiHcbAuS1j3uMiDaBeMeqhagzcnVY/VrORhJLl89vl89Xt4iI28
 wOXt1He/1USntqHTXCLaTJUIdssjNW8ilLVHWV0VOsUAtbYsVM5il+MP7JFQMLRbTpL8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9owr-0026p4-U5
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642514092;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0H8i+DlKXoFlzGfONMzGSVnFQYHwXgV1sPpYBX+8jJE=;
 b=JGsKuu2vDoNVChUdgHTN5nbZBM++1TdIDPcCq7xwhun/HNg3lUc77sbYNeeqel7aIE3eQx
 HSU/LDylnigcxaFdQmCMM+iNQZIgYZWLGHmysgKVT4JO4qnXp1iszUz77qexVhfmdWjzN/
 yk8sFWhs5zbS12Mkb7h2IiWfwMJxEpI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-404-KRPhdvaOOrG7W_oVkauJ3A-1; Tue, 18 Jan 2022 08:54:49 -0500
X-MC-Unique: KRPhdvaOOrG7W_oVkauJ3A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FE8A101AFD6;
 Tue, 18 Jan 2022 13:54:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6CD9D7E2EA;
 Tue, 18 Jan 2022 13:54:26 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:54:25 +0000
Message-ID: <164251406558.3435901.1249023136670058162.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a check that the backing filesystem supports the creation
 of tmpfiles[1]. Suggested-by: Jeff Layton <jlayton@kernel.org> Signed-off-by:
 David Howells <dhowells@redhat.com> Reviewed-by: Jeff Layton
 <jlayton@kernel.org>
 cc: linux-cachefs@redhat.com Link: https://lore.kernel.o [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9owr-0026p4-U5
Subject: [V9fs-developer] [PATCH 07/11] cachefiles: Check that the backing
 filesystem supports tmpfiles
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a check that the backing filesystem supports the creation of
tmpfiles[1].

Suggested-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/568749bd7cc02908ecf6f3d6a611b6f9cf5c4afd.camel@kernel.org/ [1]
---

 fs/cachefiles/cache.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
index 2b2879c5d1d2..7077f72e6f47 100644
--- a/fs/cachefiles/cache.c
+++ b/fs/cachefiles/cache.c
@@ -51,6 +51,7 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
 
 	/* Check features of the backing filesystem:
 	 * - Directories must support looking up and directory creation
+	 * - We create tmpfiles to handle invalidation
 	 * - We use xattrs to store metadata
 	 * - We need to be able to query the amount of space available
 	 * - We want to be able to sync the filesystem when stopping the cache
@@ -60,6 +61,7 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
 	if (d_is_negative(root) ||
 	    !d_backing_inode(root)->i_op->lookup ||
 	    !d_backing_inode(root)->i_op->mkdir ||
+	    !d_backing_inode(root)->i_op->tmpfile ||
 	    !(d_backing_inode(root)->i_opflags & IOP_XATTR) ||
 	    !root->d_sb->s_op->statfs ||
 	    !root->d_sb->s_op->sync_fs ||




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
