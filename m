Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6AD3D1036
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 15:48:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6CaB-0003E0-Kd; Wed, 21 Jul 2021 13:48:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1m6CZf-00036j-Ho
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 13:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cux4vK7FasEebT+e6GSkGlqilieGd9BwE6MltPwMMpQ=; b=kE/5k9w9FQ66sWVFHB0uRNvSt/
 AZOHprLYT1PnJ3Fg6bedSo+sfwjZIfaLkmIIxJSj5oT5Y7+OjYFY/dVXwHqGaZJNWWI4IpxsleX4d
 ibK7BQsVR/XSB4ODqjW1mucUmRBloWdpfgIm+CNz3gM5HeDB60PExmqVIRsbhhzXRilc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cux4vK7FasEebT+e6GSkGlqilieGd9BwE6MltPwMMpQ=; b=OVM1a/8sFXxL0ZJT3qmvs0LR9F
 4bn1uvaVqRyAcJJ2EVSi2HrMEmefsW2WVXYPlUx1a3H+eiHSYqAJrE1JSwxD/ub94ktzWL7F0SuoK
 Q0W9GDgCie6shWyctc4p91P1ca5Ojgsx/6WnpiEyR60CDNpq0mjYT7Jgxz4vFIjkLTBY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6CZT-0007bP-Eg
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 13:47:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626875249;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cux4vK7FasEebT+e6GSkGlqilieGd9BwE6MltPwMMpQ=;
 b=M26gSRLo6otX9GploVuUfrbVtwBvKpgeoz3l34h18GAFGLUr9UR+TGBMNX1VA4JkhhJfqI
 KCgCyWyKf+Y7o5so1rqENq+CbVwcT8kJQssUSlEKyz6ljURuuyODiQ0U9m5ndvoTQcmbqa
 LV6PzVlXj1/WJyg6404ZN8ocdu7Zrz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-347-Q8UWrdvhOY-FMC_HmRYBkg-1; Wed, 21 Jul 2021 09:47:26 -0400
X-MC-Unique: Q8UWrdvhOY-FMC_HmRYBkg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F80F107ACF5;
 Wed, 21 Jul 2021 13:47:23 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-62.rdu2.redhat.com
 [10.10.112.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99F0C19C79;
 Wed, 21 Jul 2021 13:47:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Wed, 21 Jul 2021 14:47:15 +0100
Message-ID: <162687523532.276387.15449857111016442696.stgit@warthog.procyon.org.uk>
In-Reply-To: <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
References: <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
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
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6CZT-0007bP-Eg
Subject: [V9fs-developer] [RFC PATCH 12/12] netfs: Export some read-request
 ref functions
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
 Miklos Szeredi <miklos@szeredi.hu>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Shyam Prasad N <nspmangalore@gmail.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Export some functions for getting/putting read-request structures for use
in later patches.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/netfs/internal.h    |   10 ++++++++++
 fs/netfs/read_helper.c |   15 +++------------
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index a9ec6591f90a..6ae1eb55093a 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -78,9 +78,19 @@ static inline void netfs_see_write_request(struct netfs_write_request *wreq,
  */
 extern unsigned int netfs_debug;
 
+void __netfs_put_subrequest(struct netfs_read_subrequest *subreq, bool was_async);
+void netfs_put_read_request(struct netfs_read_request *rreq, bool was_async);
+void netfs_rreq_completed(struct netfs_read_request *rreq, bool was_async);
 int netfs_prefetch_for_write(struct file *file, struct page *page, loff_t pos, size_t len,
 			     bool always_fill);
 
+static inline void netfs_put_subrequest(struct netfs_read_subrequest *subreq,
+					bool was_async)
+{
+	if (refcount_dec_and_test(&subreq->usage))
+		__netfs_put_subrequest(subreq, was_async);
+}
+
 /*
  * write_helper.c
  */
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 0b771f2f5449..e5c636acc756 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -28,14 +28,6 @@ MODULE_PARM_DESC(netfs_debug, "Netfs support debugging mask");
 
 static void netfs_rreq_work(struct work_struct *);
 static void netfs_rreq_clear_buffer(struct netfs_read_request *);
-static void __netfs_put_subrequest(struct netfs_read_subrequest *, bool);
-
-static void netfs_put_subrequest(struct netfs_read_subrequest *subreq,
-				 bool was_async)
-{
-	if (refcount_dec_and_test(&subreq->usage))
-		__netfs_put_subrequest(subreq, was_async);
-}
 
 static struct netfs_read_request *netfs_alloc_read_request(struct address_space *mapping,
 							   struct file *file)
@@ -97,7 +89,7 @@ static void netfs_free_read_request(struct work_struct *work)
 	netfs_stat_d(&netfs_n_rh_rreq);
 }
 
-static void netfs_put_read_request(struct netfs_read_request *rreq, bool was_async)
+void netfs_put_read_request(struct netfs_read_request *rreq, bool was_async)
 {
 	if (refcount_dec_and_test(&rreq->usage)) {
 		if (was_async) {
@@ -135,8 +127,7 @@ static void netfs_get_read_subrequest(struct netfs_read_subrequest *subreq)
 	refcount_inc(&subreq->usage);
 }
 
-static void __netfs_put_subrequest(struct netfs_read_subrequest *subreq,
-				   bool was_async)
+void __netfs_put_subrequest(struct netfs_read_subrequest *subreq, bool was_async)
 {
 	struct netfs_read_request *rreq = subreq->rreq;
 
@@ -214,7 +205,7 @@ static void netfs_read_from_server(struct netfs_read_request *rreq,
 /*
  * Release those waiting.
  */
-static void netfs_rreq_completed(struct netfs_read_request *rreq, bool was_async)
+void netfs_rreq_completed(struct netfs_read_request *rreq, bool was_async)
 {
 	trace_netfs_rreq(rreq, netfs_rreq_trace_done);
 	netfs_rreq_clear_subreqs(rreq, was_async);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
