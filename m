Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9D5302DF8
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 22:36:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l49XW-0001uw-72; Mon, 25 Jan 2021 21:36:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l49XT-0001uZ-D2
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:36:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PdWJ4bVY9thyqHryVHuwVIJS4CpzrVpasqjIys1aHWc=; b=T75zMnVckZorxIRSWJpFXnuA8D
 4zt+U4pBhKGH8F3Idt6r5hmN1oEyC8sDb+INxz10WXxfRaGgMr0xCm2Rm7QAiVbFny+s4WaXlMDRs
 prn/zUN7a9y+itvRqvdI1qgBGyBeVS8hH6B9Yhxc2mhrXntCgo5mDLEKoXyP6Rxj9ZBU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PdWJ4bVY9thyqHryVHuwVIJS4CpzrVpasqjIys1aHWc=; b=Bzibk0t4qeTJebeIF9gAU8ofNV
 wG2VSNlOAZozVzmsrxDsV9shWqCloYbfLpbR9HUCgi8z4Bqjv6hexZEDTQGo48QMR5sr8yhnk77ML
 2b59qcpI6eLpU1JqN7dCobNsHqrnCbUECMCBTfvxSTVJYNXeUg+GwxUQbBKDF5gXWCxc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l49XQ-003lT8-FO
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 21:36:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611610598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PdWJ4bVY9thyqHryVHuwVIJS4CpzrVpasqjIys1aHWc=;
 b=dbL3rbq3lk63pGRn9PAM2BvaD2DBvsKl6lq4d+dOlR7p0o6xk0FmUnud8qlsyXU6uVT8Jy
 blTeVRumHUxRE+bYXLQjRnoZGPUZR5T7jhS0/qQ/9JfsM9PQOlZEs+HkqnPIdaPg3Lcy4j
 44aBtVo7/efNky+Yd+RldYewBn0MyZ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-XhdXvk5IOuuHds0NLC6eMQ-1; Mon, 25 Jan 2021 16:36:35 -0500
X-MC-Unique: XhdXvk5IOuuHds0NLC6eMQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E5521015EC7;
 Mon, 25 Jan 2021 21:36:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 758107445D;
 Mon, 25 Jan 2021 21:36:26 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 25 Jan 2021 21:36:25 +0000
Message-ID: <161161058568.2537118.17174981646903311352.stgit@warthog.procyon.org.uk>
In-Reply-To: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l49XQ-003lT8-FO
Subject: [V9fs-developer] [PATCH 28/32] NFS: Call readpage_async_filler()
 from nfs_readpage_async()
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dave Wysochanski <dwysocha@redhat.com>

Refactor slightly so nfs_readpage_async() calls into
readpage_async_filler().

Signed-off-by: Dave Wysochanski <dwysocha@redhat.com>
---

 fs/nfs/read.c |   28 +++++++++++-----------------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/fs/nfs/read.c b/fs/nfs/read.c
index 5fda30742a32..1401f1c734c0 100644
--- a/fs/nfs/read.c
+++ b/fs/nfs/read.c
@@ -119,31 +119,22 @@ struct nfs_readdesc {
 	struct nfs_open_context *ctx;
 };
 
+static int readpage_async_filler(void *data, struct page *page);
+
 int nfs_readpage_async(void *data, struct inode *inode,
 		       struct page *page)
 {
 	struct nfs_readdesc *desc = (struct nfs_readdesc *)data;
-	struct nfs_page	*new;
-	unsigned int len;
 	struct nfs_pgio_mirror *pgm;
-
-	len = nfs_page_length(page);
-	if (len == 0)
-		return nfs_return_empty_page(page);
-	new = nfs_create_request(desc->ctx, page, 0, len);
-	if (IS_ERR(new)) {
-		unlock_page(page);
-		return PTR_ERR(new);
-	}
-	if (len < PAGE_SIZE)
-		zero_user_segment(page, len, PAGE_SIZE);
+	int error;
 
 	nfs_pageio_init_read(&desc->pgio, inode, false,
 			     &nfs_async_read_completion_ops);
-	if (!nfs_pageio_add_request(&desc->pgio, new)) {
-		nfs_list_remove_request(new);
-		nfs_readpage_release(new, desc->pgio.pg_error);
-	}
+
+	error = readpage_async_filler(desc, page);
+	if (error)
+		goto out;
+
 	nfs_pageio_complete(&desc->pgio);
 
 	/* It doesn't make sense to do mirrored reads! */
@@ -153,6 +144,9 @@ int nfs_readpage_async(void *data, struct inode *inode,
 	NFS_I(inode)->read_io += pgm->pg_bytes_written;
 
 	return desc->pgio.pg_error < 0 ? desc->pgio.pg_error : 0;
+
+out:
+	return error;
 }
 
 static void nfs_page_group_set_uptodate(struct nfs_page *req)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
