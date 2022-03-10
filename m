Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3AD4D4EE3
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 17:20:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSLWw-0002wB-6g; Thu, 10 Mar 2022 16:20:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nSLWu-0002w4-L8
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4VDtuLWXavBV/HS2lCkWzp80ZEjJiDU9cATmIiTQeMQ=; b=b6R6HsATLqg+Kxk6hJPtBVBb2v
 R6Hvqe3ga3cGv3JFTW6S6uZRX739hErZ7Dj+YU/xPySye0yxAzlr8IP27FyryQ9qOPpvHQ81CtGOG
 ek+9G8kNvYQ8xwogslPTSABrU8vXD2ZNazk9GqtzU7nkoEan+7kulZYfTYccKJmfl0Ms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4VDtuLWXavBV/HS2lCkWzp80ZEjJiDU9cATmIiTQeMQ=; b=E6Yer6UBdvsDO1SGWPYnfGoDpI
 ygsLuI92KbzMn4msGEeirvMAPXnJXI3B2YPHS/JIFZuhwrAmOlu7EkCnPrVonR2ZwTOlC+RTqUS6R
 LH8f6yC4QNAG4+tsOOem/BNJhhEuCvzMDQURJACD/zS1uZMjI5yKwvAknH+b22sOjiXg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSLWs-00B6RO-9I
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646929236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4VDtuLWXavBV/HS2lCkWzp80ZEjJiDU9cATmIiTQeMQ=;
 b=H6t8Iy5cVI5RoYEQ/HNw3I+ozz8Ws42NIln+dYVAPBq0Htdrt0+zJUg7LmTmSKHOM1dZAx
 x1HkK1aCZzio5+aoAoXheJ24WTBHs7lkJ1eGkGKVGhoewo84Jnh76HHGqcR1IEuSWFvauQ
 QFepy7lSUedUFtIGqHTznr2elkU0Fno=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-85-fKSWy9FZOjiXgqUdR_ymBA-1; Thu, 10 Mar 2022 11:20:34 -0500
X-MC-Unique: fKSWy9FZOjiXgqUdR_ymBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA8921006AA5;
 Thu, 10 Mar 2022 16:20:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 81B261073025;
 Thu, 10 Mar 2022 16:20:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 16:20:18 +0000
Message-ID: <164692921865.2099075.5310757978508056134.stgit@warthog.procyon.org.uk>
In-Reply-To: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Provide a place in which to keep track of the actual remote
 file size in the netfs context. This is needed because inode->i_size will
 be updated as we buffer writes in the pagecache, but the server fi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSLWs-00B6RO-9I
Subject: [V9fs-developer] [PATCH v3 19/20] netfs: Keep track of the actual
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Jeffle Xu <jefflexu@linux.alibaba.com>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide a place in which to keep track of the actual remote file size in
the netfs context.  This is needed because inode->i_size will be updated as
we buffer writes in the pagecache, but the server file size won't get
updated until we flush them back.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/164623013727.3564931.17659955636985232717.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/164678219305.1200972.6459431995188365134.stgit@warthog.procyon.org.uk/ # v2
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
