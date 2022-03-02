Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E56954CA754
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Mar 2022 15:07:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPPdb-00027d-VE; Wed, 02 Mar 2022 14:07:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nPPdb-00027S-DY
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=miEpNHiiYOQkk53mPmiDF12f5M7bEYXiNF+tJ/BMrwc=; b=BBlCmCVd9+kB4fpzlSfFVexshN
 czX2Ya3CCN9/Rip1jREbOxDp0R2wM+be/tbr/D6AkH7PtxwLM1Uc2ev0svpZgPWL/3rb43ouwv9bd
 Ja+8TP9z95BQ7a5xTwjlWHQZXa3w+Ytx97mlXQBB6755JHT4SZdyOFMTVxyNH3y7YgT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=miEpNHiiYOQkk53mPmiDF12f5M7bEYXiNF+tJ/BMrwc=; b=NdYrpOhlPVX/zyBBa8lslD38T9
 K08/s33QMX+m8nduk9j/1K0NLQuOUNfm0K9Eh0R2KOIHJJQ9zLdIPshgUyVzBbrJ7xBx85GHlBkGT
 WTJIGUnzGyzB/LlbElG2XCu3Qap5sJxTS/ZBJxF5SyYKztS6NZKDivBykBRFKBfF9ktQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPPdZ-0008EF-2y
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646230043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=miEpNHiiYOQkk53mPmiDF12f5M7bEYXiNF+tJ/BMrwc=;
 b=ezkgDNIOEBSpabUzwUlG4l2eJ7ljQz19mirKOkKrKmNugHBWUGZcnWGjgSjOEIKjEBub8Z
 k5gjf8RkBZqwxUEMAudEjd4EK+YJfgnww9+XblL1KACI+FRnQAGQYHK0/uBcLTkz+K+Mds
 yxNcwKYkPekCWqQKtLkuajsNwNdgsO4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-Ad4CkeJVOz23sZLda2kSMA-1; Wed, 02 Mar 2022 09:07:20 -0500
X-MC-Unique: Ad4CkeJVOz23sZLda2kSMA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5089719253C0;
 Wed,  2 Mar 2022 14:07:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4FC3E76C32;
 Wed,  2 Mar 2022 14:07:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 02 Mar 2022 14:07:08 +0000
Message-ID: <164623002861.3564931.17340149482236413375.stgit@warthog.procyon.org.uk>
In-Reply-To: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
References: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Prepare to split read_helper.c by removing some 'static'
 markers
 and declaring those functions in internal.h. Rename netfs_rreq_unlock() to
 netfs_rreq_unlock_folios() to make it sound less like it's dropping a lock
 on an netfs_io_request struct. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1nPPdZ-0008EF-2y
Subject: [V9fs-developer] [PATCH 12/19] netfs: Prepare to split read_helper.c
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

Prepare to split read_helper.c by removing some 'static' markers and
declaring those functions in internal.h.

Rename netfs_rreq_unlock() to netfs_rreq_unlock_folios() to make it sound
less like it's dropping a lock on an netfs_io_request struct.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/netfs/internal.h    |    8 ++++++++
 fs/netfs/read_helper.c |   10 +++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index ee2f64cde221..3970528955be 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -15,6 +15,11 @@
 
 #define pr_fmt(fmt) "netfs: " fmt
 
+/*
+ * buffered_read.c
+ */
+void netfs_rreq_unlock_folios(struct netfs_io_request *rreq);
+
 /*
  * objects.c
  */
@@ -40,6 +45,9 @@ static inline void netfs_see_request(struct netfs_io_request *rreq,
 extern unsigned int netfs_debug;
 
 void netfs_rreq_work(struct work_struct *work);
+void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async);
+bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
+			     unsigned int *_debug_index);
 
 /*
  * stats.c
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index c953a573b6b6..e666f9cccc95 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -250,7 +250,7 @@ static void netfs_rreq_write_to_cache(struct netfs_io_request *rreq)
  * Unlock the folios in a read operation.  We need to set PG_fscache on any
  * folios we're going to write back before we unlock them.
  */
-static void netfs_rreq_unlock(struct netfs_io_request *rreq)
+void netfs_rreq_unlock_folios(struct netfs_io_request *rreq)
 {
 	struct netfs_io_subrequest *subreq;
 	struct folio *folio;
@@ -418,7 +418,7 @@ static void netfs_rreq_is_still_valid(struct netfs_io_request *rreq)
  * Note that we could be in an ordinary kernel thread, on a workqueue or in
  * softirq context at this point.  We inherit a ref from the caller.
  */
-static void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
+void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
 {
 	trace_netfs_rreq(rreq, netfs_rreq_trace_assess);
 
@@ -432,7 +432,7 @@ static void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
 		return;
 	}
 
-	netfs_rreq_unlock(rreq);
+	netfs_rreq_unlock_folios(rreq);
 
 	clear_bit_unlock(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 	wake_up_bit(&rreq->flags, NETFS_RREQ_IN_PROGRESS);
@@ -632,8 +632,8 @@ netfs_rreq_prepare_read(struct netfs_io_request *rreq,
 /*
  * Slice off a piece of a read request and submit an I/O request for it.
  */
-static bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
-				    unsigned int *_debug_index)
+bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
+			     unsigned int *_debug_index)
 {
 	struct netfs_io_subrequest *subreq;
 	enum netfs_io_source source;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
