Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8134C33443E
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Mar 2021 18:00:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lK2Bs-0003zF-AH; Wed, 10 Mar 2021 17:00:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lK2Br-0003wN-4T
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Mar 2021 17:00:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G+I2KUsaliMtYnZ9KwnlNFY8IkAMksOA42zhMc7qaDY=; b=ADy/QVA2ju5O8Ag5GZbf9jiVIN
 KzUU3iv+npFFqrTBNTtHw4J86k/HgJnB0b2g0Dudez+MhuQF7awLJao00uUvfZ8THYRmghhBHA70H
 +9iit/1ytfpJ/WcLmVldWkvjfOsIwZfeZOEjIe0kSkV/toeEwoVgRXbR3KiRE/TJpz3U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G+I2KUsaliMtYnZ9KwnlNFY8IkAMksOA42zhMc7qaDY=; b=ExUYFll00hhsDmoOT4X7Uwu3rQ
 4ALzuLxx8ffdg6vy4zxHkZy7AlYe2WNnB49BINyfN6AbGYLOwwYsF6DpGufnJ37fwVZvj5GyACB8R
 tclEDyTMyjz/dLIiqd/Js/Q3lxx/q7cErDzMkPV36OCYiWUV0KtJZyYma0gB+1r+Y9QY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lK2BX-00A1KE-2E
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Mar 2021 16:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615395580;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G+I2KUsaliMtYnZ9KwnlNFY8IkAMksOA42zhMc7qaDY=;
 b=hOF12dFFMStrSqUSjncE90BAnGzw7xVrwKnmT5DoR0hAYf8nV7VoQyVYw0ayZxbmHabwgw
 xp/ARI9Iqhhwttr3sSIzvtTUyPSVdgujYmCuv8iBCHtMZoDHxi6YskFvYLLMX9VbBcJmKe
 AzRfEw+Hj5/EJbXw3/v1lNboi9UMHYc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-F2ZpZ4aaOu6N43_bnjHlsA-1; Wed, 10 Mar 2021 11:58:24 -0500
X-MC-Unique: F2ZpZ4aaOu6N43_bnjHlsA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F28271005D4E;
 Wed, 10 Mar 2021 16:58:22 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27BEB5D6D7;
 Wed, 10 Mar 2021 16:58:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 10 Mar 2021 16:58:16 +0000
Message-ID: <161539549628.286939.15234870409714613954.stgit@warthog.procyon.org.uk>
In-Reply-To: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lK2BX-00A1KE-2E
Subject: [V9fs-developer] [PATCH v4 17/28] afs: Print the operation debug_id
 when logging an unexpected data version
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Print the afs_operation debug_id when logging an unexpected change in the
data version.  This allows the logged message to be matched against
tracelines.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/160588528377.3465195.2206051235095182302.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118146111.1232039.11398082422487058312.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161042180.2537118.2471333561661033316.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340405772.1303470.3877167548944248214.stgit@warthog.procyon.org.uk/ # v3
---

 fs/afs/inode.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 48519ee00eef..af6556bb3d6a 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -215,11 +215,12 @@ static void afs_apply_status(struct afs_operation *op,
 
 	if (vp->dv_before + vp->dv_delta != status->data_version) {
 		if (test_bit(AFS_VNODE_CB_PROMISED, &vnode->flags))
-			pr_warn("kAFS: vnode modified {%llx:%llu} %llx->%llx %s\n",
+			pr_warn("kAFS: vnode modified {%llx:%llu} %llx->%llx %s (op=%x)\n",
 				vnode->fid.vid, vnode->fid.vnode,
 				(unsigned long long)vp->dv_before + vp->dv_delta,
 				(unsigned long long)status->data_version,
-				op->type ? op->type->name : "???");
+				op->type ? op->type->name : "???",
+				op->debug_id);
 
 		vnode->invalid_before = status->data_version;
 		if (vnode->status.type == AFS_FTYPE_DIR) {




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
