Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AF03AF7BB
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Jun 2021 23:45:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvRjj-0005hJ-Sy; Mon, 21 Jun 2021 21:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lvRji-0005gn-7a
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9a2MY8ARQzEQ3zqYXkakxIf8IPFL5sSJbn0FPCVo0X4=; b=NGcbuzZNjsVWCA2+HleR4ndPix
 dz5q7jhn95D2vd50d7RM+L91sajAHiJWL7XKhNmVERIZHIlWeIQKQrasiTiJQxgfti6cok/KAeUXZ
 0evwSoya7MNpJPjJwC7yGRQJqwjVY/WUEbohmr4MlDPvRuRS3p5RJSCHs8yDOkcFlaXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9a2MY8ARQzEQ3zqYXkakxIf8IPFL5sSJbn0FPCVo0X4=; b=gt8JlKkXmXw80g/cGYq+Rq3m+V
 CfssRm0rSZPs7y5WYM6mifumVqqsufSRiTCab8JYmn/jKUXcDEyn+h+sOM79SnTBe24qYmT2OUZTG
 6HwhCrdNAA4MJ6uW3XMVMZ5EcgWGHq5HROcwpV+QnZpVN1ZbT7qP9K8CCF9pVWtErHq0=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvRjd-0007mM-KV
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624311933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9a2MY8ARQzEQ3zqYXkakxIf8IPFL5sSJbn0FPCVo0X4=;
 b=djOgafTllI8HkAs5ZjPrha3seotZ0Z0/Hq1d7Iut1+bh9LD7cPeVYkd9EeYGGcILGKRbkL
 aPpKChUuWZs4qIRyeaRNlYw6c0E7qTHeuL8/hTBQascwH0vJZkBOmEKi+pk3Mhxb2r4Dbp
 UAgaQFVGfPGyDF/aVS1IbBQz74PaCxI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-XgYYiF4NMOyMA7K8CSpD-g-1; Mon, 21 Jun 2021 17:45:32 -0400
X-MC-Unique: XgYYiF4NMOyMA7K8CSpD-g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B05A100CF6F;
 Mon, 21 Jun 2021 21:45:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-65.rdu2.redhat.com
 [10.10.118.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C7CD55C1C2;
 Mon, 21 Jun 2021 21:45:24 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 21 Jun 2021 22:45:24 +0100
Message-ID: <162431192403.2908479.4590814090994846904.stgit@warthog.procyon.org.uk>
In-Reply-To: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lvRjd-0007mM-KV
Subject: [V9fs-developer] [PATCH 03/12] cachefiles: Use file_inode() rather
 than accessing ->f_inode
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Use the file_inode() helper rather than accessing ->f_inode directly.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index ca68bb97ca00..fac2e8e7b533 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -70,7 +70,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
 
 	_enter("%pD,%li,%llx,%zx/%llx",
 	       file, file_inode(file)->i_ino, start_pos, len,
-	       i_size_read(file->f_inode));
+	       i_size_read(file_inode(file)));
 
 	/* If the caller asked us to seek for data before doing the read, then
 	 * we should do that now.  If we find a gap, we fill it with zeros.
@@ -194,7 +194,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
 
 	_enter("%pD,%li,%llx,%zx/%llx",
 	       file, file_inode(file)->i_ino, start_pos, len,
-	       i_size_read(file->f_inode));
+	       i_size_read(file_inode(file)));
 
 	ki = kzalloc(sizeof(struct cachefiles_kiocb), GFP_KERNEL);
 	if (!ki)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
