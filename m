Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AFC31BD82
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:50:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg8j-0005S2-UJ; Mon, 15 Feb 2021 15:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg8X-0005RW-8O
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vuZXYEE8ytAOGmfVdwJVAq5rI3wrIYL1qJesDqmdOFg=; b=OmGa/LYaoJciaokfOIpKdINj1s
 DjEydPq5zzYXA1AX246YbB7Lj+U4eCKJeVyLctQZj4lU3PYANNGwGMvdHkEsCk2fjFc0MHZNIke0R
 rOV1ysoTsGVYpMUwXc7ofIjPILqMhkVJOW+LAU9tI9v6DiKx8qNU/Y/1SJgd6ygTDZ9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vuZXYEE8ytAOGmfVdwJVAq5rI3wrIYL1qJesDqmdOFg=; b=DYxmReaFp26cvy+t1KwDpiMcns
 Lrz5fuYOnSN5M6Iz7YCZjXmF72nXhOgn8+wP5Pkip/Om/lDDl33ZKTkvfm/gSsWI4EdEJI07I/O50
 EyUIhuV5VeAWelcSw/ztWo/BW3XVx0OtIyk7IIdfSbfP7OY1kqZ24cp69KYpmivYpVtc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lBg8F-0006d2-Rv
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613404186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vuZXYEE8ytAOGmfVdwJVAq5rI3wrIYL1qJesDqmdOFg=;
 b=b2cn1lpRn5FisgK6zj1OHRCnhyQzV4gQken+O/OcP/tJk5p4RE2L4Xu5nN32R5jOCRNRcV
 tBqLJS7qfdOkhoIvcxFCpYV4wBkA+tRdBTNDEcnQB/PrBeUJgtcVlZK8fXL7NzUXHi+5D/
 lXfCyQTCMfAeFXY3QBURiX4M29LuLcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-ROeColdsMi66sMBRwjE3-A-1; Mon, 15 Feb 2021 10:49:44 -0500
X-MC-Unique: ROeColdsMi66sMBRwjE3-A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 292D9107ACE3;
 Mon, 15 Feb 2021 15:49:42 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E67F719D9F;
 Mon, 15 Feb 2021 15:49:31 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:49:31 +0000
Message-ID: <161340417106.1303470.3502017303898569631.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBg8F-0006d2-Rv
Subject: [V9fs-developer] [PATCH 26/33] afs: Use the fs operation ops to
 handle FetchData completion
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

Use the 'success' and 'aborted' afs_operations_ops methods and add a
'failed' method to handle the completion of an AFS.FetchData,
AFS.FetchData64 or YFS.FetchData64 RPC operation rather than directly
calling the done func pointed to by the afs_read struct from the call
delivery handler.

This means the done function will be called back on error also, not just on
successful completion.

This allows motion towards asynchronous data reception on data fetch calls
and allows any error to be handed off to the fscache read helper in the
same place as a successful completion.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
---

 fs/afs/file.c         |   15 +++++++++++++++
 fs/afs/fs_operation.c |    4 +++-
 fs/afs/fsclient.c     |    3 ---
 fs/afs/internal.h     |    1 +
 fs/afs/yfsclient.c    |    3 ---
 5 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index f6282ac0d222..231e9fd7882b 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -255,6 +255,19 @@ void afs_put_read(struct afs_read *req)
 	}
 }
 
+static void afs_fetch_data_notify(struct afs_operation *op)
+{
+	struct afs_read *req = op->fetch.req;
+	int error = op->error;
+
+	if (error == -ECONNABORTED)
+		error = afs_abort_to_error(op->ac.abort_code);
+	req->error = error;
+
+	if (req->done)
+		req->done(req);
+}
+
 static void afs_fetch_data_success(struct afs_operation *op)
 {
 	struct afs_vnode *vnode = op->file[0].vnode;
@@ -263,6 +276,7 @@ static void afs_fetch_data_success(struct afs_operation *op)
 	afs_vnode_commit_status(op, &op->file[0]);
 	afs_stat_v(vnode, n_fetches);
 	atomic_long_add(op->fetch.req->actual_len, &op->net->n_fetch_bytes);
+	afs_fetch_data_notify(op);
 }
 
 static void afs_fetch_data_put(struct afs_operation *op)
@@ -276,6 +290,7 @@ static const struct afs_operation_ops afs_fetch_data_operation = {
 	.issue_yfs_rpc	= yfs_fs_fetch_data,
 	.success	= afs_fetch_data_success,
 	.aborted	= afs_check_for_remote_deletion,
+	.failed		= afs_fetch_data_notify,
 	.put		= afs_fetch_data_put,
 };
 
diff --git a/fs/afs/fs_operation.c b/fs/afs/fs_operation.c
index 97cab12b0a6c..938e28a00101 100644
--- a/fs/afs/fs_operation.c
+++ b/fs/afs/fs_operation.c
@@ -195,8 +195,10 @@ void afs_wait_for_operation(struct afs_operation *op)
 	case -ECONNABORTED:
 		if (op->ops->aborted)
 			op->ops->aborted(op);
-		break;
+		fallthrough;
 	default:
+		if (op->ops->failed)
+			op->ops->failed(op);
 		break;
 	}
 
diff --git a/fs/afs/fsclient.c b/fs/afs/fsclient.c
index 31e6b3635541..5e34f4dbd385 100644
--- a/fs/afs/fsclient.c
+++ b/fs/afs/fsclient.c
@@ -392,9 +392,6 @@ static int afs_deliver_fs_fetch_data(struct afs_call *call)
 		break;
 	}
 
-	if (req->done)
-		req->done(req);
-
 	_leave(" = 0 [done]");
 	return 0;
 }
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index daf5339ae316..d46389406021 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -742,6 +742,7 @@ struct afs_operation_ops {
 	void (*issue_yfs_rpc)(struct afs_operation *op);
 	void (*success)(struct afs_operation *op);
 	void (*aborted)(struct afs_operation *op);
+	void (*failed)(struct afs_operation *op);
 	void (*edit_dir)(struct afs_operation *op);
 	void (*put)(struct afs_operation *op);
 };
diff --git a/fs/afs/yfsclient.c b/fs/afs/yfsclient.c
index 363d6dd276c0..2b35cba8ad62 100644
--- a/fs/afs/yfsclient.c
+++ b/fs/afs/yfsclient.c
@@ -449,9 +449,6 @@ static int yfs_deliver_fs_fetch_data64(struct afs_call *call)
 		break;
 	}
 
-	if (req->done)
-		req->done(req);
-
 	_leave(" = 0 [done]");
 	return 0;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
