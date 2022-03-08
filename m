Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD014D24EF
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:30:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjHR-00076d-1p; Tue, 08 Mar 2022 23:30:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjHN-00076T-PM
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nY1UOCY/B2msZ/aVLk3DgvatR6iV7fN7Nqxbcx7/Fes=; b=frzycuX/Mvm/kotO/XJYvt8Ana
 paTxh7B4y3P+64af8ZbQTlg6yzgEFhhhsxkUh68AIdT8WOHEmuk0idb7neUD1Xg59JXT+TVTAtV4m
 4jtIAVWcjNblBLq4/X5u1uYem75WvuNLBwbkbWxUfgVyWWdrrhj1+gBPgB45u0G8j66Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nY1UOCY/B2msZ/aVLk3DgvatR6iV7fN7Nqxbcx7/Fes=; b=V/QeJpg0bQblKvb+1p+EcnOEAD
 Yw2ZZTu5saexBOk/IxayelFr2cZFphsfS9e+4d15h8q3/mP7jgFyW2LN47kXqvXxfrDJVN1sbN7wr
 qWJVsQGjPHzKNrKlS056ymD+JNEMETjDHwBWNrEZhWxr5gBE8cMfzMTXs7iFIU6Bu08U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjHL-0003qX-MW
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646782201;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nY1UOCY/B2msZ/aVLk3DgvatR6iV7fN7Nqxbcx7/Fes=;
 b=eELfyulqcSv/a1b1y2I73YYdQmNBaEb/TbuSRXCRv6gTcsqEpUxBZxaY76T0+6bR+85S1o
 LZuK0dZJlbtJWYzpwCqAy4ynEYna0J0GOTB2SjUShtl11ONF+GBuB9rdR8sGOxsNaEbZFH
 takTOgqbygsHvszoAqAsFbqE1e1HZlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-90-DMMNKhNmNgOMhiTwx_zV0Q-1; Tue, 08 Mar 2022 18:29:58 -0500
X-MC-Unique: DMMNKhNmNgOMhiTwx_zV0Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC4641854E26;
 Tue,  8 Mar 2022 23:29:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D46AB5DBA0;
 Tue,  8 Mar 2022 23:29:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:29:53 +0000
Message-ID: <164678219305.1200972.6459431995188365134.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Provide a place in which to keep track of the actual remote
 file size in the netfs context. This is needed because inode->i_size will
 be updated as we buffer writes in the pagecache, but the server fi [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRjHL-0003qX-MW
Subject: [V9fs-developer] [PATCH v2 18/19] netfs: Keep track of the actual
 remote file size
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide a place in which to keep track of the actual remote file size in
the netfs context.  This is needed because inode->i_size will be updated as
we buffer writes in the pagecache, but the server file size won't get
updated until we flush them back.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/164623013727.3564931.17659955636985232717.stgit@warthog.procyon.org.uk/ # v1
---

 include/linux/netfs.h |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 8458b30172a5..c7bf1eaf51d5 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -126,6 +126,7 @@ struct netfs_i_context {
 #if IS_ENABLED(CONFIG_FSCACHE)
 	struct fscache_cookie	*cache;
 #endif
+	loff_t			remote_i_size;	/* Size of the remote file */
 };
 
 /*
@@ -324,6 +325,21 @@ static inline void netfs_i_context_init(struct inode *inode,
 
 	memset(ctx, 0, sizeof(*ctx));
 	ctx->ops = ops;
+	ctx->remote_i_size = i_size_read(inode);
+}
+
+/**
+ * netfs_resize_file - Note that a file got resized
+ * @inode: The inode being resized
+ * @new_i_size: The new file size
+ *
+ * Inform the netfs lib that a file got resized so that it can adjust its state.
+ */
+static inline void netfs_resize_file(struct inode *inode, loff_t new_i_size)
+{
+	struct netfs_i_context *ctx = netfs_i_context(inode);
+
+	ctx->remote_i_size = new_i_size;
 }
 
 /**




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
