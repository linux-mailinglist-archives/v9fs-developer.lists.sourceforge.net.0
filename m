Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6637D36A681
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:14:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labmC-0006Jj-3F; Sun, 25 Apr 2021 10:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lablK-00067u-JO
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/sSYIgUe7YNpdkfI4y15WZkl/GPAFpfh3StQ77lzP7A=; b=KwmRjHpsHOj0YEc5EU/qyvpbZp
 dtjxyfVAhbZ6zsJkhrksxcOsBugoSuiga0hyYac90OUTbnjEYvZreYR8c1s9R1jDQ6dAhrGSZLb5V
 gg9ejkqoR2JCM9mi8r8lr+Qe+HP29Niv+UnO13F9hkgHimQy4gvSUpypjDoE5nchSCUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/sSYIgUe7YNpdkfI4y15WZkl/GPAFpfh3StQ77lzP7A=; b=QStiqc3/Mbzt6pLfU6fAXn5LKc
 lIPxAt9js7qhzIsjtsN3f7MWDHFNfbkMJ7n/kicrlv4srFry2SL7twgXOR9BJur6KtH2yT7axRYYn
 jKop1C+sixzU4/U8Lk/Kt35nUecofEwBvebYI7mCYSTOh3BtvxROAJq/Pyr4cIx8k9oc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lablF-006CxX-Un
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/sSYIgUe7YNpdkfI4y15WZkl/GPAFpfh3StQ77lzP7A=;
 b=JmXWx8m6KTCcL4cyP4LiT864mrRlMaw2XB6AlycSsyA1nUIBa8MDJjcBRa5P6nvxanuaUx
 payApKwsp0yzl+o4kehdWDMFgOdV+h4yRJ+FYPq6WKb4jjC7ng7Kia3LtrFPNyDykaxO8U
 xZyzN8ZGhIdUDV2IAmT9xw9UyiUEn+Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-NzNm69yaN9i_g3B9PjJTnA-1; Fri, 23 Apr 2021 09:34:39 -0400
X-MC-Unique: NzNm69yaN9i_g3B9PjJTnA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2271C83DD27;
 Fri, 23 Apr 2021 13:34:37 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B5AB460BE5;
 Fri, 23 Apr 2021 13:34:30 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:34:30 +0100
Message-ID: <161918486998.3145707.9650524636606544888.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lablF-006CxX-Un
Subject: [V9fs-developer] [PATCH v7 29/31] afs: Use the fs operation ops to
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
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
Tested-By: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/160588541471.3465195.8807019223378490810.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118157260.1232039.6549085372718234792.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161052647.2537118.12922380836599003659.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340417106.1303470.3502017303898569631.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539560673.286939.391310781674212229.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653816367.2770958.5856904574822446404.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789099994.6155.473719823490561190.stgit@warthog.procyon.org.uk/ # v6
---

 fs/afs/file.c         |   15 +++++++++++++++
 fs/afs/fs_operation.c |    4 +++-
 fs/afs/fsclient.c     |    3 ---
 fs/afs/internal.h     |    1 +
 fs/afs/yfsclient.c    |    3 ---
 5 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index edf21c8708a3..2db810467d3f 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -254,6 +254,19 @@ void afs_put_read(struct afs_read *req)
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
@@ -262,6 +275,7 @@ static void afs_fetch_data_success(struct afs_operation *op)
 	afs_vnode_commit_status(op, &op->file[0]);
 	afs_stat_v(vnode, n_fetches);
 	atomic_long_add(op->fetch.req->actual_len, &op->net->n_fetch_bytes);
+	afs_fetch_data_notify(op);
 }
 
 static void afs_fetch_data_put(struct afs_operation *op)
@@ -275,6 +289,7 @@ static const struct afs_operation_ops afs_fetch_data_operation = {
 	.issue_yfs_rpc	= yfs_fs_fetch_data,
 	.success	= afs_fetch_data_success,
 	.aborted	= afs_check_for_remote_deletion,
+	.failed		= afs_fetch_data_notify,
 	.put		= afs_fetch_data_put,
 };
 
diff --git a/fs/afs/fs_operation.c b/fs/afs/fs_operation.c
index 71c58723763d..2cb0951acca6 100644
--- a/fs/afs/fs_operation.c
+++ b/fs/afs/fs_operation.c
@@ -198,8 +198,10 @@ void afs_wait_for_operation(struct afs_operation *op)
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
index 9629b6430a52..ee283e3ebc4d 100644
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
