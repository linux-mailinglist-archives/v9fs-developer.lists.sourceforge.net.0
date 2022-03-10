Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E2B4D4E7F
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 17:18:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSLUn-0007q9-O3; Thu, 10 Mar 2022 16:18:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nSLUm-0007q3-DV
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yBPK8CspGb1y+c3hE8EUfpnQvHO/Br5Ffw6ncR1/NAw=; b=aWSV4JczbjPklIAuj4AtHDcrAO
 QIPLpZ1fY2/FGIbNkN1nacURb+Z4NilzojAXQxhx5riIO8EaRnlTbMD3V+Kgb3iEDVMCI8oJrvD2c
 INwTQG1sDHnsSAQCze2yLDyHgcjurznxF/S94Kbg3IViMsFVRcSI/ukajFsWv+0MknyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yBPK8CspGb1y+c3hE8EUfpnQvHO/Br5Ffw6ncR1/NAw=; b=AlTc2ouif0Lks6m379DF3Tardd
 AutaF+hOA56UWw2OvwbtiPK9HAcgBAxi6344Xm8TP/AZqw3pioD9XiAud4+Vtmnucu0TPsaYd0zOQ
 ynQetnWwLBfW8WgjBWGKepNfc3VsXVP3oCAyIIc46Wl3XSL0W7RYDYOY6pnWLhR3L2z0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSLUh-00B6CR-2f
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 16:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646929101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yBPK8CspGb1y+c3hE8EUfpnQvHO/Br5Ffw6ncR1/NAw=;
 b=SXVm7ndY5cS/beLT3uMAM+UzXMpIaO/6R4syYiaZhNmq9UapDFfCe31ra5OgbMV4EVhoaT
 IHSqS5Ub35oDMTmuuV41kadry6QXvxreChF08TS+/HcmjQjPeLbix9EAFBF/ISg0RILsyV
 2K0mHMFkkfvWQtXK9qjLvosw51p0NGM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-248-JS7KWOs7Or626loUa-PHuw-1; Thu, 10 Mar 2022 11:18:15 -0500
X-MC-Unique: JS7KWOs7Or626loUa-PHuw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FD741091DA0;
 Thu, 10 Mar 2022 16:18:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9AA278C1B;
 Thu, 10 Mar 2022 16:17:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 16:17:56 +0000
Message-ID: <164692907694.2099075.10081819855690054094.stgit@warthog.procyon.org.uk>
In-Reply-To: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Move the caps check from ceph_readahead() to
 ceph_init_request(), 
 conditional on the origin being NETFS_READAHEAD so that in a future patch,
 ceph can point its ->readahead() vector directly at netfs_r [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSLUh-00B6CR-2f
Subject: [V9fs-developer] [PATCH v3 12/20] ceph: Make ceph_init_request()
 check caps on readahead
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
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, Jeffle Xu <jefflexu@linux.alibaba.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Move the caps check from ceph_readahead() to ceph_init_request(),
conditional on the origin being NETFS_READAHEAD so that in a future patch,
ceph can point its ->readahead() vector directly at netfs_readahead().

Changes
=======
ver #3)
 - Split from the patch to add a netfs inode context[1].
 - Need to store the caps got in rreq->netfs_priv for later freeing.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: ceph-devel@vger.kernel.org
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org/ [1]
---

 fs/ceph/addr.c |   69 +++++++++++++++++++++++++++++++++-----------------------
 1 file changed, 41 insertions(+), 28 deletions(-)

diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index 9189257476f8..6d056db41f50 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -354,6 +354,45 @@ static void ceph_netfs_issue_read(struct netfs_io_subrequest *subreq)
 	dout("%s: result %d\n", __func__, err);
 }
 
+static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
+{
+	struct inode *inode = rreq->inode;
+	int got = 0, want = CEPH_CAP_FILE_CACHE;
+	int ret = 0;
+
+	if (file) {
+		struct ceph_rw_context *rw_ctx;
+		struct ceph_file_info *fi = file->private_data;
+
+		rw_ctx = ceph_find_rw_context(fi);
+		if (rw_ctx)
+			return 0;
+	}
+
+	if (rreq->origin != NETFS_READAHEAD)
+		return 0;
+
+	/*
+	 * readahead callers do not necessarily hold Fcb caps
+	 * (e.g. fadvise, madvise).
+	 */
+	ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
+	if (ret < 0) {
+		dout("start_read %p, error getting cap\n", inode);
+		return ret;
+	}
+
+	if (!(got & want)) {
+		dout("start_read %p, no cache cap\n", inode);
+		return -EACCES;
+	}
+	if (ret == 0)
+		return -EACCES;
+
+	rreq->netfs_priv = (void *)(uintptr_t)got;
+	return 0;
+}
+
 static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
 {
 	struct inode *inode = mapping->host;
@@ -365,7 +404,7 @@ static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
 }
 
 static const struct netfs_request_ops ceph_netfs_read_ops = {
-	.is_cache_enabled	= ceph_is_cache_enabled,
+	.init_request		= ceph_init_request,
 	.begin_cache_operation	= ceph_begin_cache_operation,
 	.issue_read		= ceph_netfs_issue_read,
 	.expand_readahead	= ceph_netfs_expand_readahead,
@@ -393,33 +432,7 @@ static int ceph_readpage(struct file *file, struct page *subpage)
 
 static void ceph_readahead(struct readahead_control *ractl)
 {
-	struct inode *inode = file_inode(ractl->file);
-	struct ceph_file_info *fi = ractl->file->private_data;
-	struct ceph_rw_context *rw_ctx;
-	int got = 0;
-	int ret = 0;
-
-	if (ceph_inode(inode)->i_inline_version != CEPH_INLINE_NONE)
-		return;
-
-	rw_ctx = ceph_find_rw_context(fi);
-	if (!rw_ctx) {
-		/*
-		 * readahead callers do not necessarily hold Fcb caps
-		 * (e.g. fadvise, madvise).
-		 */
-		int want = CEPH_CAP_FILE_CACHE;
-
-		ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
-		if (ret < 0)
-			dout("start_read %p, error getting cap\n", inode);
-		else if (!(got & want))
-			dout("start_read %p, no cache cap\n", inode);
-
-		if (ret <= 0)
-			return;
-	}
-	netfs_readahead(ractl, &ceph_netfs_read_ops, (void *)(uintptr_t)got);
+	netfs_readahead(ractl, &ceph_netfs_read_ops, NULL);
 }
 
 #ifdef CONFIG_CEPH_FSCACHE




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
