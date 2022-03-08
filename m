Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 472DF4D24E5
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:29:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjGo-00073x-1g; Tue, 08 Mar 2022 23:29:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjGl-00073n-4q
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3QWldaxUgjSqrqhHqZ9kQzTo6lY37kzhgmv3hw+9M2s=; b=Fry8hqOueHR8Dp81VqUDz66fDw
 itUIK020fJMX1ax4mqN5ANPwLXGVDWKtXxCzP+DgZZg4BoSGkhi/liNcMLmOAeVU6t+VQNCuWg4mg
 Hm/5EAcX60CxdVHPfarHzZsgY/XZkAJXaHA8czfcbu1a9/nZE7o1y3C3Y8ISzDRZ1G/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3QWldaxUgjSqrqhHqZ9kQzTo6lY37kzhgmv3hw+9M2s=; b=NPv4pW/AkOddGkysRXpGVRKF+2
 1YkwQeDJcygdqvLZGxum2+m86JEvuNgZyuZnNM2ByV56gXUCrPg/paJbuy2lIDJ4JQnTBQNxUcMWa
 OuxZT+v1RGcoVnsoZ4qtME74aWooeIWHkEveFZFR6tF9MMl0G/8psp5JOSSLyKaEtOGA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjGi-0097Tr-Vm
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646782163;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3QWldaxUgjSqrqhHqZ9kQzTo6lY37kzhgmv3hw+9M2s=;
 b=VVTtpIYjTSR2RrhHZHRFrkv9Z/u1VnqBSlodxuTdQxLFrpPVjeQ+PN5ICgOaI9Le84ix0U
 beJ4ITKA0wxAxktSteEFMHe6XRJ1q7/Hf5rLSjwZ3HB8haqG2whbScvWAGoaxt7UZJGzOr
 +Qz2nOUQB/gwnfZ/K2uA9fpOegPqZt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-351-XvRYsVbpM0uP4zx8B0iw_g-1; Tue, 08 Mar 2022 18:29:17 -0500
X-MC-Unique: XvRYsVbpM0uP4zx8B0iw_g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5C241006AA6;
 Tue,  8 Mar 2022 23:29:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA4B34CEFB;
 Tue,  8 Mar 2022 23:29:12 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:29:12 +0000
Message-ID: <164678215208.1200972.9761906209395002182.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Rename netfs_rreq_unlock() to netfs_rreq_unlock_folios() to
 make it sound less like it's dropping a lock on an netfs_io_request struct.
 Remove the 'static' marker on netfs_rreq_unlock_folios() and declaring it
 in internal.h preparatory to splitting the file. 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1nRjGi-0097Tr-Vm
Subject: [V9fs-developer] [PATCH v2 14/19] netfs: Prepare to split
 read_helper.c
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

Rename netfs_rreq_unlock() to netfs_rreq_unlock_folios() to make it sound
less like it's dropping a lock on an netfs_io_request struct.

Remove the 'static' marker on netfs_rreq_unlock_folios() and declaring it
in internal.h preparatory to splitting the file.

Changes
=======
ver #2)
 - Slide this patch to after the one adding netfs_begin_read().
 - As a consequence, don't need to unstatic so many functions.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/164623002861.3564931.17340149482236413375.stgit@warthog.procyon.org.uk/ # v1
---

 fs/netfs/internal.h    |    5 +++++
 fs/netfs/read_helper.c |    4 ++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index 937c2465943f..11c0c9ef9299 100644
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
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 19d4fe0b4987..058a534ba917 100644
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
@@ -432,7 +432,7 @@ static void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
 		return;
 	}
 
-	netfs_rreq_unlock(rreq);
+	netfs_rreq_unlock_folios(rreq);
 
 	clear_bit_unlock(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
 	wake_up_bit(&rreq->flags, NETFS_RREQ_IN_PROGRESS);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
