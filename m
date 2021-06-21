Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C2D3AF7BC
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Jun 2021 23:45:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvRji-0007OX-Ud; Mon, 21 Jun 2021 21:45:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lvRjf-0007OO-Uv
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5pOORLyx9xwuGC0Xz0tLtpUvQ+XLGPJYb5PgrsJW+cg=; b=mPd1S9WcBLsRd9M3JW04OQLFlJ
 EfbVpM7kfdiAI/MJ6CVGkccH+v/kJW9vlGrLPxXHOof3XV8aOT9lvdcFZAtAIsGz2m77Gj+1I+VTJ
 bR24q92o9yR/Lt0RnQ+Wvh99koNTuwMp5SqfWtwaQdixLpjkOybR1utwMruJqqEtZ1f0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5pOORLyx9xwuGC0Xz0tLtpUvQ+XLGPJYb5PgrsJW+cg=; b=RcKcjWubxIhZG4ktULuxVw1ofd
 fFs3W//JkwlajMkRriT646eHqQBkOdlQAxPitLYmGxnQg5GBzFhbevltj8sf/zwVM4aVW64pvimMw
 TntirW5BCXh3LgO2dWg77jIUTp8o4vz/WTE7fDKrq2jRfDcBtYLekkqKx7C/3FBUJs0o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvRjS-0007lD-2e
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Jun 2021 21:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624311921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5pOORLyx9xwuGC0Xz0tLtpUvQ+XLGPJYb5PgrsJW+cg=;
 b=G8Q7K7LUteQjUxH9htdw6SNxMbYdFEbj1J95W1p7lZ9xKF8SFDl2gdzVudR0rKIQM3+tO6
 6gJKngfr9tqVX8RpS2gRqSsQOhV/Mg4W1wHYTmfpIgVrgiqL+JaWglPFxNyfW+RQUxK7f1
 6FL6FLRilZqHy103OIkktKcRky+5rbw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-7jkP4K3LPs6p49UiZi4Whg-1; Mon, 21 Jun 2021 17:45:20 -0400
X-MC-Unique: 7jkP4K3LPs6p49UiZi4Whg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C30AF100C611;
 Mon, 21 Jun 2021 21:45:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-65.rdu2.redhat.com
 [10.10.118.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A89E969FAD;
 Mon, 21 Jun 2021 21:45:08 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 21 Jun 2021 22:45:07 +0100
Message-ID: <162431190784.2908479.13386972676539789127.stgit@warthog.procyon.org.uk>
In-Reply-To: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lvRjS-0007lD-2e
Subject: [V9fs-developer] [PATCH 02/12] netfs: Move cookie debug ID to
 struct netfs_cache_resources
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
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Move the cookie debug ID from struct netfs_read_request to struct
netfs_cache_resources and drop the 'cookie_' prefix.  This makes it
available for things that want to use netfs_cache_resources without having
a netfs_read_request.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c           |    2 +-
 include/linux/netfs.h        |    2 +-
 include/trace/events/netfs.h |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index b13fb45fc3f3..ca68bb97ca00 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -410,7 +410,7 @@ int cachefiles_begin_read_operation(struct netfs_read_request *rreq,
 	rreq->cache_resources.cache_priv = op;
 	rreq->cache_resources.cache_priv2 = file;
 	rreq->cache_resources.ops = &cachefiles_netfs_cache_ops;
-	rreq->cookie_debug_id = object->fscache.debug_id;
+	rreq->cache_resources.debug_id = object->fscache.debug_id;
 	_leave("");
 	return 0;
 
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 9062adfa2fb9..5d6a4158a9a6 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -102,6 +102,7 @@ struct netfs_cache_resources {
 	const struct netfs_cache_ops	*ops;
 	void				*cache_priv;
 	void				*cache_priv2;
+	unsigned int			debug_id;	/* Cookie debug ID */
 };
 
 /*
@@ -137,7 +138,6 @@ struct netfs_read_request {
 	struct list_head	subrequests;	/* Requests to fetch I/O from disk or net */
 	void			*netfs_priv;	/* Private data for the netfs */
 	unsigned int		debug_id;
-	unsigned int		cookie_debug_id;
 	atomic_t		nr_rd_ops;	/* Number of read ops in progress */
 	atomic_t		nr_wr_ops;	/* Number of write ops in progress */
 	size_t			submitted;	/* Amount submitted for I/O so far */
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index de1c64635e42..4d470bffd9f1 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -139,7 +139,7 @@ TRACE_EVENT(netfs_read,
 
 	    TP_fast_assign(
 		    __entry->rreq	= rreq->debug_id;
-		    __entry->cookie	= rreq->cookie_debug_id;
+		    __entry->cookie	= rreq->cache_resources.debug_id;
 		    __entry->start	= start;
 		    __entry->len	= len;
 		    __entry->what	= what;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
