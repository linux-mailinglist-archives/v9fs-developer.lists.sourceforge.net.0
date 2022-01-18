Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F16524927A3
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:54:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9owb-0004Hq-MP; Tue, 18 Jan 2022 13:54:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9owW-0004Hj-Pa
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZzU3Qzlz4du0HJk3pIy88pOD0oFL5+7cfgc4MIvSjc=; b=CIISqaaC9XanPLEODvJ2W0d2+b
 8bMLd2CXN/ph/V7F+d8ZpWnFYX8y6WiZJuUx5SH0Uz2fJsmzQi+zzDqsgyR1V/Ie4a5Orpw78IcBO
 GXSTMJhNDxCVM3np2YiyM0YVrgR9VGVxzaknciTtg4K6sWV2c4pUmTBRUu6eooSC8N3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZzU3Qzlz4du0HJk3pIy88pOD0oFL5+7cfgc4MIvSjc=; b=LC08XK1p32X4xUt/DF8tze5O8f
 /2O89Pywzvh2irh3BMCaN8NTxCdyurjzo95rsU+zM8mT4SuJ5yg6L0uqC9K5u/wQ9Ik/7hAy44G55
 fRlzq2Qyq6xIHk8FKiaXz4/o3mkcZN9LgDahE+OciGfoBk2RBSd3aqynUlV3IXieOzoQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9owU-0026nv-UM
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642514069;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GZzU3Qzlz4du0HJk3pIy88pOD0oFL5+7cfgc4MIvSjc=;
 b=FUz9kKzf3K2GeERiUUxyKjTkfE+nRlRJn0VC7LcluIESDZc8cxZb1Vfeo+d2EVOT4Voq2r
 h3WraYqIyJPs74i1BQ+ZdR15zujBQhYnZudyJpN1xApFLf1bD6l+ibga+hP+d+Rn6vNo58
 as6Hnu6ZzxhWYW3YmlJrgYVKCxxlrZk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-iXKYrVelNbCgNPklJReXeg-1; Tue, 18 Jan 2022 08:54:26 -0500
X-MC-Unique: iXKYrVelNbCgNPklJReXeg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56DF0100C625;
 Tue, 18 Jan 2022 13:54:20 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12AF77A3F9;
 Tue, 18 Jan 2022 13:54:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:54:16 +0000
Message-ID: <164251405621.3435901.771439791811515914.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a comment to explain the checks that cachefiles is making
 of the backing filesystem[1]. Suggested-by: Jeff Layton <jlayton@kernel.org>
 Signed-off-by: David Howells <dhowells@redhat.com> Reviewed-by: Jeff Layton
 <jlayton@kernel.org> cc: linux-cachefs@redhat.com Link: https://lore.kernel.o
 [...] Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9owU-0026nv-UM
Subject: [V9fs-developer] [PATCH 06/11] cachefiles: Explain checks in a
 comment
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

Add a comment to explain the checks that cachefiles is making of the
backing filesystem[1].

Suggested-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/568749bd7cc02908ecf6f3d6a611b6f9cf5c4afd.camel@kernel.org/ [1]
---

 fs/cachefiles/cache.c |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
index 1e9c71666c6a..2b2879c5d1d2 100644
--- a/fs/cachefiles/cache.c
+++ b/fs/cachefiles/cache.c
@@ -49,7 +49,13 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
 		goto error_unsupported;
 	}
 
-	/* check parameters */
+	/* Check features of the backing filesystem:
+	 * - Directories must support looking up and directory creation
+	 * - We use xattrs to store metadata
+	 * - We need to be able to query the amount of space available
+	 * - We want to be able to sync the filesystem when stopping the cache
+	 * - We use DIO to/from pages, so the blocksize mustn't be too big.
+	 */
 	ret = -EOPNOTSUPP;
 	if (d_is_negative(root) ||
 	    !d_backing_inode(root)->i_op->lookup ||




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
