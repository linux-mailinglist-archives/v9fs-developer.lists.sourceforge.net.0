Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F05B1C41E8
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:15:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVegO-0002XD-8y; Mon, 04 May 2020 17:15:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVegM-0002Wx-DA
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rAM6do+EuN1MrbjIduqT6cBGBbGi/kr6U+1UtFggAks=; b=h1vi+jvxeD00ZXB8oscgwPQ3cH
 UTZlUMEOZ0g/Npt3WAgagk/oMFHelvlx/QQxySupwtSekvpcuJnkA7FzjZ5U5Gbx1747At/XEv9HT
 e+/MO8J70bzqKJ2scVcCddz4zBI5t6yUwJP6gC0OfvFdzS4t3DiF2bEfViEWSd54J9ic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rAM6do+EuN1MrbjIduqT6cBGBbGi/kr6U+1UtFggAks=; b=cpC5/nvxkqpcJlO06uhhCIgwio
 WpdGJaZtjvAG43ZhTJrID3p2McnQheKN9Es2ie+jjezdkFvzdRnUm1Xdu5qDq6JniWwPlYmCSNbYm
 fzMOtOEJjtkhVTRY16EVm3w+6Ke1HJckgJQt4PrBZyIOoZUFLGc2B/b49eqkvCe/l8TA=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVegK-007ADe-OD
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rAM6do+EuN1MrbjIduqT6cBGBbGi/kr6U+1UtFggAks=;
 b=LsPrk32zNGdIjpFDsQqhmS8NIsVZ8mrNcWVNJ/LFUto4MpohAHUGQsqjNcFYbfX799xv/G
 CIcQ+tHMtKQkXi5PQ7TcnDwLk/+f50UabIfesV4ScXnmD4YBgyDiJwjuj1ZxbmsZkcKfYw
 2gfjN2zGAqFibSQP7L4nMd1oSG7SzrY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-m6_CAZB7OpWhw44NtdeT4A-1; Mon, 04 May 2020 13:14:57 -0400
X-MC-Unique: m6_CAZB7OpWhw44NtdeT4A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C66180B723;
 Mon,  4 May 2020 17:14:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D24BD7052B;
 Mon,  4 May 2020 17:14:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:14:52 +0100
Message-ID: <158861249201.340223.13035445866976590375.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVegK-007ADe-OD
Subject: [V9fs-developer] [RFC PATCH 49/61] afs: Don't truncate iter during
 data fetch
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Don't truncate the iterator to correspond to the actual data size when
fetching the data from the server - rather, pass the length we want to read
to rxrpc.

This will allow the clear-after-read code in future to simply clear the
remaining iterator capacity rather than having to reinitialise the
iterator.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/fsclient.c      |    6 ++++--
 fs/afs/internal.h      |    6 ++++++
 fs/afs/rxrpc.c         |   13 +++++++++----
 fs/afs/yfsclient.c     |    6 ++++--
 include/net/af_rxrpc.h |    2 +-
 net/rxrpc/recvmsg.c    |    9 +++++----
 6 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/fs/afs/fsclient.c b/fs/afs/fsclient.c
index 68fc46634346..492fbd964576 100644
--- a/fs/afs/fsclient.c
+++ b/fs/afs/fsclient.c
@@ -327,8 +327,9 @@ static int afs_deliver_fs_fetch_data(struct afs_call *call)
 	unsigned int size;
 	int ret;
 
-	_enter("{%u,%zu/%llu}",
-	       call->unmarshall, iov_iter_count(call->iter), req->actual_len);
+	_enter("{%u,%zu,%zu/%llu}",
+	       call->unmarshall, call->iov_len, iov_iter_count(call->iter),
+	       req->actual_len);
 
 	switch (call->unmarshall) {
 	case 0:
@@ -365,6 +366,7 @@ static int afs_deliver_fs_fetch_data(struct afs_call *call)
 			size = PAGE_SIZE - req->offset;
 		else
 			size = req->remain;
+		call->iov_len = size;
 		call->bvec[0].bv_len = size;
 		call->bvec[0].bv_offset = req->offset;
 		call->bvec[0].bv_page = req->pages[req->index];
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 68d3eb0dc367..521a03023112 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -115,6 +115,7 @@ struct afs_call {
 	struct afs_vnode	*lvnode;	/* vnode being locked */
 	void			*request;	/* request data (first part) */
 	struct address_space	*mapping;	/* Pages being written from */
+	size_t			iov_len;	/* Size of *iter to be used */
 	struct iov_iter		def_iter;	/* Default buffer/data iterator */
 	struct iov_iter		*iter;		/* Iterator currently in use */
 	union {	/* Convenience for ->def_iter */
@@ -1131,6 +1132,7 @@ static inline void afs_set_fc_call(struct afs_call *call, struct afs_fs_cursor *
 
 static inline void afs_extract_begin(struct afs_call *call, void *buf, size_t size)
 {
+	call->iov_len = size;
 	call->kvec[0].iov_base = buf;
 	call->kvec[0].iov_len = size;
 	iov_iter_kvec(&call->def_iter, READ, call->kvec, 1, size);
@@ -1138,21 +1140,25 @@ static inline void afs_extract_begin(struct afs_call *call, void *buf, size_t si
 
 static inline void afs_extract_to_tmp(struct afs_call *call)
 {
+	call->iov_len = sizeof(call->tmp);
 	afs_extract_begin(call, &call->tmp, sizeof(call->tmp));
 }
 
 static inline void afs_extract_to_tmp64(struct afs_call *call)
 {
+	call->iov_len = sizeof(call->tmp64);
 	afs_extract_begin(call, &call->tmp64, sizeof(call->tmp64));
 }
 
 static inline void afs_extract_discard(struct afs_call *call, size_t size)
 {
+	call->iov_len = size;
 	iov_iter_discard(&call->def_iter, READ, size);
 }
 
 static inline void afs_extract_to_buf(struct afs_call *call, size_t size)
 {
+	call->iov_len = size;
 	afs_extract_begin(call, call->buffer, size);
 }
 
diff --git a/fs/afs/rxrpc.c b/fs/afs/rxrpc.c
index 1ecc67da6c1a..b2296feaaff3 100644
--- a/fs/afs/rxrpc.c
+++ b/fs/afs/rxrpc.c
@@ -364,6 +364,7 @@ void afs_make_call(struct afs_addr_cursor *ac, struct afs_call *call, gfp_t gfp)
 	struct rxrpc_call *rxcall;
 	struct msghdr msg;
 	struct kvec iov[1];
+	size_t len;
 	s64 tx_total_len;
 	int ret;
 
@@ -465,9 +466,10 @@ void afs_make_call(struct afs_addr_cursor *ac, struct afs_call *call, gfp_t gfp)
 		rxrpc_kernel_abort_call(call->net->socket, rxcall,
 					RX_USER_ABORT, ret, "KSD");
 	} else {
+		len = 0;
 		iov_iter_kvec(&msg.msg_iter, READ, NULL, 0, 0);
 		rxrpc_kernel_recv_data(call->net->socket, rxcall,
-				       &msg.msg_iter, false,
+				       &msg.msg_iter, &len, false,
 				       &call->abort_code, &call->service_id);
 		ac->abort_code = call->abort_code;
 		ac->responded = true;
@@ -503,6 +505,7 @@ void afs_make_call(struct afs_addr_cursor *ac, struct afs_call *call, gfp_t gfp)
 static void afs_deliver_to_call(struct afs_call *call)
 {
 	enum afs_call_state state;
+	size_t len;
 	u32 abort_code, remote_abort = 0;
 	int ret;
 
@@ -515,10 +518,11 @@ static void afs_deliver_to_call(struct afs_call *call)
 	       state == AFS_CALL_SV_AWAIT_ACK
 	       ) {
 		if (state == AFS_CALL_SV_AWAIT_ACK) {
+			len = 0;
 			iov_iter_kvec(&call->def_iter, READ, NULL, 0, 0);
 			ret = rxrpc_kernel_recv_data(call->net->socket,
 						     call->rxcall, &call->def_iter,
-						     false, &remote_abort,
+						     &len, false, &remote_abort,
 						     &call->service_id);
 			trace_afs_receive_data(call, &call->def_iter, false, ret);
 
@@ -926,10 +930,11 @@ int afs_extract_data(struct afs_call *call, bool want_more)
 	u32 remote_abort = 0;
 	int ret;
 
-	_enter("{%s,%zu},%d", call->type->name, iov_iter_count(iter), want_more);
+	_enter("{%s,%zu,%zu},%d",
+	       call->type->name, call->iov_len, iov_iter_count(iter), want_more);
 
 	ret = rxrpc_kernel_recv_data(net->socket, call->rxcall, iter,
-				     want_more, &remote_abort,
+				     &call->iov_len, want_more, &remote_abort,
 				     &call->service_id);
 	if (ret == 0 || ret == -EAGAIN)
 		return ret;
diff --git a/fs/afs/yfsclient.c b/fs/afs/yfsclient.c
index 7f419f8bb943..1164f48e308d 100644
--- a/fs/afs/yfsclient.c
+++ b/fs/afs/yfsclient.c
@@ -442,8 +442,9 @@ static int yfs_deliver_fs_fetch_data64(struct afs_call *call)
 	unsigned int size;
 	int ret;
 
-	_enter("{%u,%zu/%llu}",
-	       call->unmarshall, iov_iter_count(call->iter), req->actual_len);
+	_enter("{%u,%zu, %zu/%llu}",
+	       call->unmarshall, call->iov_len, iov_iter_count(call->iter),
+	       req->actual_len);
 
 	switch (call->unmarshall) {
 	case 0:
@@ -475,6 +476,7 @@ static int yfs_deliver_fs_fetch_data64(struct afs_call *call)
 			size = PAGE_SIZE - req->offset;
 		else
 			size = req->remain;
+		call->iov_len = size;
 		call->bvec[0].bv_len = size;
 		call->bvec[0].bv_offset = req->offset;
 		call->bvec[0].bv_page = req->pages[req->index];
diff --git a/include/net/af_rxrpc.h b/include/net/af_rxrpc.h
index 04e97bab6f28..0f7d13547b77 100644
--- a/include/net/af_rxrpc.h
+++ b/include/net/af_rxrpc.h
@@ -53,7 +53,7 @@ int rxrpc_kernel_send_data(struct socket *, struct rxrpc_call *,
 			   struct msghdr *, size_t,
 			   rxrpc_notify_end_tx_t);
 int rxrpc_kernel_recv_data(struct socket *, struct rxrpc_call *,
-			   struct iov_iter *, bool, u32 *, u16 *);
+			   struct iov_iter *, size_t *, bool, u32 *, u16 *);
 bool rxrpc_kernel_abort_call(struct socket *, struct rxrpc_call *,
 			     u32, int, const char *);
 void rxrpc_kernel_end_call(struct socket *, struct rxrpc_call *);
diff --git a/net/rxrpc/recvmsg.c b/net/rxrpc/recvmsg.c
index 8578c39ec839..802b712f3d79 100644
--- a/net/rxrpc/recvmsg.c
+++ b/net/rxrpc/recvmsg.c
@@ -624,6 +624,7 @@ int rxrpc_recvmsg(struct socket *sock, struct msghdr *msg, size_t len,
  * @sock: The socket that the call exists on
  * @call: The call to send data through
  * @iter: The buffer to receive into
+ * @_len: The amount of data we want to receive (decreased on return)
  * @want_more: True if more data is expected to be read
  * @_abort: Where the abort code is stored if -ECONNABORTED is returned
  * @_service: Where to store the actual service ID (may be upgraded)
@@ -639,7 +640,7 @@ int rxrpc_recvmsg(struct socket *sock, struct msghdr *msg, size_t len,
  * *_abort should also be initialised to 0.
  */
 int rxrpc_kernel_recv_data(struct socket *sock, struct rxrpc_call *call,
-			   struct iov_iter *iter,
+			   struct iov_iter *iter, size_t *_len,
 			   bool want_more, u32 *_abort, u16 *_service)
 {
 	size_t offset = 0;
@@ -647,7 +648,7 @@ int rxrpc_kernel_recv_data(struct socket *sock, struct rxrpc_call *call,
 
 	_enter("{%d,%s},%zu,%d",
 	       call->debug_id, rxrpc_call_states[call->state],
-	       iov_iter_count(iter), want_more);
+	       *_len, want_more);
 
 	ASSERTCMP(call->state, !=, RXRPC_CALL_SERVER_ACCEPTING);
 
@@ -658,8 +659,8 @@ int rxrpc_kernel_recv_data(struct socket *sock, struct rxrpc_call *call,
 	case RXRPC_CALL_SERVER_RECV_REQUEST:
 	case RXRPC_CALL_SERVER_ACK_REQUEST:
 		ret = rxrpc_recvmsg_data(sock, call, NULL, iter,
-					 iov_iter_count(iter), 0,
-					 &offset);
+					 *_len, 0, &offset);
+		*_len -= offset;
 		if (ret < 0)
 			goto out;
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
