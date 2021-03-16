Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C233D31D
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Mar 2021 12:35:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lM7yp-0002DV-4n; Tue, 16 Mar 2021 11:35:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lM7yn-0002DL-5h
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Mar 2021 11:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vlqsbtT9COsx+yKS+e8hs6ZYyJT5eXMndMhYe5Gjdjo=; b=A2zhBxwGOcj39AOeSUxrc3dl6g
 Cl0knJ6/lYKH6I/tJhnVtmxiYmybtDmr17gGQM+KvxEiyo37AYgNjjOGF4JOkVzDGT4D8zwc9/90o
 AV/Vtip59USxqCwjwWgB2ocwOg37aSbFmyIEgolGO9K6hO+4aUVdZOLAY+RtlTS0QEdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vlqsbtT9COsx+yKS+e8hs6ZYyJT5eXMndMhYe5Gjdjo=; b=CpbNJT6sipMIiHljCsdZ2Z6Vjq
 InURA7N5F5C8b5fnEKZbltpx8GhD9S4bQZUMmoR5qTr21+mexkjy+2xvJbu/Xa14SlHCOJHv3nCI+
 XVWyZLqe1PPm0JNRbLel8cySAvrjYq8N1uNw0pkga96248rnTGnRjdeXfqb5NCTRJ8bA=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lM7ya-0003Ey-3F
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Mar 2021 11:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615894497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vlqsbtT9COsx+yKS+e8hs6ZYyJT5eXMndMhYe5Gjdjo=;
 b=M6+0cVOPBYubuhLr7m1vWnilvgjNWbS4w4VSeXMDcBc8GvKGUWjDTwHXRkF2B9W4X95e51
 x2QM8tvDcm2yIpzegU+twaNBuqFcTXPpwrfnc+OGMTTltFbZQSXti7sKBHamymY7w6xhnb
 raPZ82FCLjoRVeyVEZ26cLLJvqyeKm0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-498-Q4Hxl9DtPsqAVRmB4OjmRQ-1; Tue, 16 Mar 2021 07:34:54 -0400
X-MC-Unique: Q4Hxl9DtPsqAVRmB4OjmRQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 052CE193F561;
 Tue, 16 Mar 2021 11:34:52 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 96C3C60C0F;
 Tue, 16 Mar 2021 11:34:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <161539537375.286939.16642940088716990995.stgit@warthog.procyon.org.uk>
References: <161539537375.286939.16642940088716990995.stgit@warthog.procyon.org.uk>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
To: Trond Myklebust <trondmy@hammerspace.com>
MIME-Version: 1.0
Content-ID: <3184203.1615894484.1@warthog.procyon.org.uk>
Date: Tue, 16 Mar 2021 11:34:44 +0000
Message-ID: <3184204.1615894484@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lM7ya-0003Ey-3F
Subject: Re: [V9fs-developer] [PATCH v4 08/28] netfs: Provide readahead and
 readpage netfs helpers
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
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I'm going to make the code generate more information when warning about a
subread reporting having over-read (see attached).

David
---
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index ce11ca4c32e4..765e88ee132d 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -641,7 +641,10 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
 		goto failed;
 	}
 
-	if (WARN_ON(transferred_or_error > subreq->len - subreq->transferred))
+	if (WARN(transferred_or_error > subreq->len - subreq->transferred,
+		 "R%x[%x] %zd > %zu - %zu",
+		 rreq->debug_id, subreq->debug_index,
+		 transferred_or_error, subreq->len, subreq->transferred))
 		transferred_or_error = subreq->len - subreq->transferred;
 
 	subreq->error = 0;



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
