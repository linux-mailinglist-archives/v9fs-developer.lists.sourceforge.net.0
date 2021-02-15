Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CBE31C420
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 23:47:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBme4-0007u5-PU; Mon, 15 Feb 2021 22:47:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBme0-0007tY-A8
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 22:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:From:Subject:Cc:To:References:
 In-Reply-To:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=siuHUtdQ6wlk6BrFE1gCfr6HqsnZ29fFXCRpUG5E5oE=; b=Qve3x06/n6bK3HkpULGoDMakQ0
 qqZ51BgcgMrPa0hcgXgkpErQVHrdEeiyiisFsXXwaWM0e1y44anbp1TpaUf0yuQv9VqD832rELgKQ
 sOtwUr5idAbZOixGRPFUpAnB8jsLUIdbGYvY88Jifp/5sf95hh9gTLgjj25iuFUvVz70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:From:Subject:Cc:To:References:In-Reply-To:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=siuHUtdQ6wlk6BrFE1gCfr6HqsnZ29fFXCRpUG5E5oE=; b=CoG1C5yy/tT9Kdo2qYBnYvFz1b
 O04aHSAmT46/IfCViqfQNp0tjdZ6JlTWbFSn8vrsDCOaBw23poykDSuPr6X5ojdMBEvaHbuhcfInB
 i48Xr3FXvrC4tJWTOGAlpXrmu/M+FvDW7Z3THAuDoIUIvL8r+sj8qnpUD78s388kfdTs=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBmdg-00AEJS-BQ
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 22:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613429198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=siuHUtdQ6wlk6BrFE1gCfr6HqsnZ29fFXCRpUG5E5oE=;
 b=ityYQ/eOfIEQ9RMM3cqm9UL3DKROp0Sd1Znf1x08vb8zjtCjfhbTuQDYYMJ4SMfUKqiXTT
 MgcFBg9J1pdh0M+r7hBqoB0D7FNJ11SYYNO0tQpqgs0aFC6V/esB5JGpdiOUkxeSWtFWL5
 J4tZ9eGOeyAPAzH7qDOje/esUcOvy3g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-Wht9_IG0Ptu0_iui9ofi0w-1; Mon, 15 Feb 2021 17:46:34 -0500
X-MC-Unique: Wht9_IG0Ptu0_iui9ofi0w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F5B56DD22;
 Mon, 15 Feb 2021 22:46:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 187641F0;
 Mon, 15 Feb 2021 22:46:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
To: Trond Myklebust <trondmy@hammerspace.com>
From: David Howells <dhowells@redhat.com>
MIME-Version: 1.0
Content-ID: <1376937.1613429183.1@warthog.procyon.org.uk>
Date: Mon, 15 Feb 2021 22:46:23 +0000
Message-ID: <1376938.1613429183@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBmdg-00AEJS-BQ
Subject: [V9fs-developer] [PATCH 34/33] netfs: Use in_interrupt() not
 in_softirq()
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
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The in_softirq() in netfs_rreq_terminated() works fine for the cache being
on a normal disk, as the completion handlers may get called in softirq
context, but for an NVMe drive, the completion handler may get called in
IRQ context.

Fix to use in_interrupt() instead of in_softirq() throughout the read
helpers, particularly when deciding whether to punt code that might sleep
off to a worker thread.

The symptom involves warnings like the following appearing and the kernel
hanging:

 WARNING: CPU: 0 PID: 0 at kernel/softirq.c:175 __local_bh_enable_ip+0x35/0x50
 ...
 RIP: 0010:__local_bh_enable_ip+0x35/0x50
 ...
 Call Trace:
  <IRQ>
  rxrpc_kernel_begin_call+0x7d/0x1b0 [rxrpc]
  ? afs_rx_new_call+0x40/0x40 [kafs]
  ? afs_alloc_call+0x28/0x120 [kafs]
  afs_make_call+0x120/0x510 [kafs]
  ? afs_rx_new_call+0x40/0x40 [kafs]
  ? afs_alloc_flat_call+0xba/0x100 [kafs]
  ? __kmalloc+0x167/0x2f0
  ? afs_alloc_flat_call+0x9b/0x100 [kafs]
  afs_wait_for_operation+0x2d/0x200 [kafs]
  afs_do_sync_operation+0x16/0x20 [kafs]
  afs_req_issue_op+0x8c/0xb0 [kafs]
  netfs_rreq_assess+0x125/0x7d0 [netfs]
  ? cachefiles_end_operation+0x40/0x40 [cachefiles]
  netfs_subreq_terminated+0x117/0x220 [netfs]
  cachefiles_read_complete+0x21/0x60 [cachefiles]
  iomap_dio_bio_end_io+0xdd/0x110
  blk_update_request+0x20a/0x380
  blk_mq_end_request+0x1c/0x120
  nvme_process_cq+0x159/0x1f0 [nvme]
  nvme_irq+0x10/0x20 [nvme]
  __handle_irq_event_percpu+0x37/0x150
  handle_irq_event+0x49/0xb0
  handle_edge_irq+0x7c/0x200
  asm_call_irq_on_stack+0xf/0x20
  </IRQ>
  common_interrupt+0xad/0x120
  asm_common_interrupt+0x1e/0x40
 ...

Reported-by: Marc Dionne <marc.dionne@auristor.com>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
---
 read_helper.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 9191a3617d91..db582008b4bd 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -96,7 +96,7 @@ static void netfs_free_read_request(struct work_struct *work)
 static void netfs_put_read_request(struct netfs_read_request *rreq)
 {
 	if (refcount_dec_and_test(&rreq->usage)) {
-		if (in_softirq()) {
+		if (in_interrupt()) {
 			rreq->work.func = netfs_free_read_request;
 			if (!queue_work(system_unbound_wq, &rreq->work))
 				BUG();
@@ -353,7 +353,7 @@ static void netfs_rreq_write_to_cache_work(struct work_struct *work)
 
 static void netfs_rreq_write_to_cache(struct netfs_read_request *rreq)
 {
-	if (in_softirq()) {
+	if (in_interrupt()) {
 		rreq->work.func = netfs_rreq_write_to_cache_work;
 		if (!queue_work(system_unbound_wq, &rreq->work))
 			BUG();
@@ -479,7 +479,7 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
 {
 	struct netfs_read_subrequest *subreq;
 
-	WARN_ON(in_softirq());
+	WARN_ON(in_interrupt());
 
 	trace_netfs_rreq(rreq, netfs_rreq_trace_resubmit);
 
@@ -577,7 +577,7 @@ static void netfs_rreq_work(struct work_struct *work)
 static void netfs_rreq_terminated(struct netfs_read_request *rreq)
 {
 	if (test_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags) &&
-	    in_softirq()) {
+	    in_interrupt()) {
 		if (!queue_work(system_unbound_wq, &rreq->work))
 			BUG();
 	} else {



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
