Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D944D24D5
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:27:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjET-0004Is-BA; Tue, 08 Mar 2022 23:27:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjER-0004IH-MV
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0XVb44InvjSO/ieWogfOM30+xYryrHpf208UooC4QyQ=; b=hY9dgtlrdToUySRU/QXUUAp+WY
 0ZfAvEq5/08h7lBQX4bEa8nNsfidS8CO0T/IviCqV4X6a99C2Umefthzpa4AfFKr+Q6IqODHp49Oc
 P1tgIz0Q+wtBi48MKSKhf25bPn4GjXpzTnnorLc9KOg88gbrgJQQonMgRMcB3cyQR1bA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0XVb44InvjSO/ieWogfOM30+xYryrHpf208UooC4QyQ=; b=LGQz2AO+QNA99vGSfpNggf6uEq
 HCMk3WVeK3R38osoXpvc/9+xZYY4agI02/uTJ13UYOUw0PgJ+7P/sOmEImsAIpwvwv9pqEGc8Twu3
 wx40+ocgkSFl1KT59c50Ilz2zNp+BC4C7f4mOJAz9+wNzQrN9R5AmyWWOa3gHkfXkrN8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjEF-0003aV-6R
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646782009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0XVb44InvjSO/ieWogfOM30+xYryrHpf208UooC4QyQ=;
 b=MFBRQB/IuR6MIQHWYJrYVgZbsYD8+FGVCcX11cgNWynUHTotq085fWSINxlktJ5iZGEl7q
 czJ0xVO8SN5DKugxIlpTgKZh+rK0aELvXCdoUmh0rFFGKlsYC5I2biidf8JcWPBffJ9a2n
 UeZf2/qahNM0wdETYwbVyzYZgES5vFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-450-VORXrJlGMmOQrRJt33ohjg-1; Tue, 08 Mar 2022 18:26:46 -0500
X-MC-Unique: VORXrJlGMmOQrRJt33ohjg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 346211006AA5;
 Tue,  8 Mar 2022 23:26:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8953D3059F;
 Tue,  8 Mar 2022 23:26:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:26:34 +0000
Message-ID: <164678199468.1200972.17275585970238114726.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Adjust the netfs_rreq tracepoint to include the origin of
 the request and to increase the size of the "what trace" output strings by
 a character so that "ENCRYPT" and "DECRYPT" will fit without abbrev [...]
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
X-Headers-End: 1nRjEF-0003aV-6R
Subject: [V9fs-developer] [PATCH v2 06/19] netfs: Adjust the netfs_rreq
 tracepoint slightly
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

Adjust the netfs_rreq tracepoint to include the origin of the request and
to increase the size of the "what trace" output strings by a character so
that "ENCRYPT" and "DECRYPT" will fit without abbreviation.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/164622996715.3564931.4252319907990358129.stgit@warthog.procyon.org.uk/ # v1
---

 fs/netfs/read_helper.c       |    2 +-
 include/trace/events/netfs.h |   18 +++++++++---------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index ef23ef9889d5..181aeda32649 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -181,7 +181,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_io_request *rreq)
 	struct iov_iter iter;
 	int ret;
 
-	trace_netfs_rreq(rreq, netfs_rreq_trace_write);
+	trace_netfs_rreq(rreq, netfs_rreq_trace_copy);
 
 	/* We don't want terminating writes trying to wake us up whilst we're
 	 * still going through the list.
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index 2d0665b416bf..daf171de2142 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -22,13 +22,13 @@
 	E_(netfs_read_trace_write_begin,	"WRITEBEGN")
 
 #define netfs_rreq_traces					\
-	EM(netfs_rreq_trace_assess,		"ASSESS")	\
-	EM(netfs_rreq_trace_done,		"DONE  ")	\
-	EM(netfs_rreq_trace_free,		"FREE  ")	\
-	EM(netfs_rreq_trace_resubmit,		"RESUBM")	\
-	EM(netfs_rreq_trace_unlock,		"UNLOCK")	\
-	EM(netfs_rreq_trace_unmark,		"UNMARK")	\
-	E_(netfs_rreq_trace_write,		"WRITE ")
+	EM(netfs_rreq_trace_assess,		"ASSESS ")	\
+	EM(netfs_rreq_trace_copy,		"COPY   ")	\
+	EM(netfs_rreq_trace_done,		"DONE   ")	\
+	EM(netfs_rreq_trace_free,		"FREE   ")	\
+	EM(netfs_rreq_trace_resubmit,		"RESUBMT")	\
+	EM(netfs_rreq_trace_unlock,		"UNLOCK ")	\
+	E_(netfs_rreq_trace_unmark,		"UNMARK ")
 
 #define netfs_sreq_sources					\
 	EM(NETFS_FILL_WITH_ZEROES,		"ZERO")		\
@@ -134,7 +134,7 @@ TRACE_EVENT(netfs_rreq,
 
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		rreq		)
-		    __field(unsigned short,		flags		)
+		    __field(unsigned int,		flags		)
 		    __field(enum netfs_rreq_trace,	what		)
 			     ),
 
@@ -182,8 +182,8 @@ TRACE_EVENT(netfs_sreq,
 
 	    TP_printk("R=%08x[%u] %s %s f=%02x s=%llx %zx/%zx e=%d",
 		      __entry->rreq, __entry->index,
-		      __print_symbolic(__entry->what, netfs_sreq_traces),
 		      __print_symbolic(__entry->source, netfs_sreq_sources),
+		      __print_symbolic(__entry->what, netfs_sreq_traces),
 		      __entry->flags,
 		      __entry->start, __entry->transferred, __entry->len,
 		      __entry->error)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
