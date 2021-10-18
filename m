Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F643432221
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:08:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUFx-0004G2-V8; Mon, 18 Oct 2021 15:08:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcUFw-0004Fw-PA
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zAnT82raamH1xp8nmO4ZV5YV83kJtKcN5B1pbFGq88g=; b=Mt38Zd07AQnPBqjJzr1TUxmL6Q
 OK3m0Cf5+RK3NqHxCSIFk9GBMeQnkhQc1/an0M588D33t9mXpfGtdxL1beXLb0mwnBaEzD1I7DM16
 KVqWi/RgXP5ArpZDIPwgPGC2SaA1ce4TwVTN1O+ymWWturbsncSuOy/dN+3KTpz3h63A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zAnT82raamH1xp8nmO4ZV5YV83kJtKcN5B1pbFGq88g=; b=Phlv4vrSgcQuZ9sic2+GU3hPAp
 apJVt+xpziAM8KnCTkOgQrjpElnsVunUoOXweyXl/Cp3Ex6/w3jh2NCvddfaosMHeJZuuAjuOSOVg
 zxE7xgTJmPBon2ArGIV6bf3eOm9PDH5NMBBXJA8cvrejWqYS2H6a1dAKP66J+JM66HVM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUFv-0005cj-LO
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zAnT82raamH1xp8nmO4ZV5YV83kJtKcN5B1pbFGq88g=;
 b=Q+UloWfnd9CyLZzJmoi7X1gbm50r0f7ByP8wP8ClVs9m3KQsW6NN5puhP2iTl0mIUNqGEh
 I1tdI9o3onBNC4tAuxK3c5Ir6AvVbTrXHYVSk2rE/RUr15O9dOsoM3PR2NAeNQrh7o5Xfr
 GNkUlXI6jXpdRqYusmxuR3/owZCsQO8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-dFraY74dMn2k_3qhDxyljQ-1; Mon, 18 Oct 2021 11:08:44 -0400
X-MC-Unique: dFraY74dMn2k_3qhDxyljQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7AC18F50A;
 Mon, 18 Oct 2021 15:08:42 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 134CF100E809;
 Mon, 18 Oct 2021 15:08:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:08:34 +0100
Message-ID: <163456971424.2614702.1006294959423305986.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Display the netfs inode number in the netfs_read tracepoint
 so that this can be used to correlate with the cachefiles_prep_read
 tracepoint.
 Signed-off-by: David Howells <dhowells@redhat.com> ---
 include/trace/events/netfs.h
 | 5 ++++- 1 file changed, 4 insertions(+), 1 deletion(-) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUFv-0005cj-LO
Subject: [V9fs-developer] [PATCH 64/67] netfs: Display the netfs inode
 number in the netfs_read tracepoint
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Display the netfs inode number in the netfs_read tracepoint so that this
can be used to correlate with the cachefiles_prep_read tracepoint.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 include/trace/events/netfs.h |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index 4d470bffd9f1..e6f4ebbb4c69 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -135,6 +135,7 @@ TRACE_EVENT(netfs_read,
 		    __field(loff_t,			start		)
 		    __field(size_t,			len		)
 		    __field(enum netfs_read_trace,	what		)
+		    __field(unsigned int,		netfs_inode	)
 			     ),
 
 	    TP_fast_assign(
@@ -143,12 +144,14 @@ TRACE_EVENT(netfs_read,
 		    __entry->start	= start;
 		    __entry->len	= len;
 		    __entry->what	= what;
+		    __entry->netfs_inode = rreq->inode->i_ino;
 			   ),
 
-	    TP_printk("R=%08x %s c=%08x s=%llx %zx",
+	    TP_printk("R=%08x %s c=%08x ni=%x s=%llx %zx",
 		      __entry->rreq,
 		      __print_symbolic(__entry->what, netfs_read_traces),
 		      __entry->cookie,
+		      __entry->netfs_inode,
 		      __entry->start, __entry->len)
 	    );
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
