Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6189A2BACFE
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:08:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg811-0001yS-6A; Fri, 20 Nov 2020 15:07:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg80z-0001wc-Lv
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OASbtfxyD6eIUPjL3PNzYRIfoGBOulxlBVzyzkIasn0=; b=bd6ge4DCMEkRlr+T8IdleSM6py
 q1nCBm9ydCvG/MWoP6RC5gE/JoohlxWGYcmZJSyaFT9ztuJOiGduS64ECCmTlxI4sTm0OH/eWGQXW
 lrvWJYjRoEMuabdP8ZhAcp3PVbwbFPkFVi2BvmZ3m2D1iEYAo0hhQvAj3qGBbdOYR7nQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OASbtfxyD6eIUPjL3PNzYRIfoGBOulxlBVzyzkIasn0=; b=NrDxJuEjZBoWwlOR83OKcL0tkR
 32l8N+DzrOZPKHpWdjcYBOPcYnT0FbSQPgXMDCxrGOJwHDZS4ZkK2nw4W3hmXhG80RAp8foHiWYOQ
 TlPC+7P05knPjpce/5AjgUCXnWnNd3kfQgJOydLD65mTubdfAl+VIgMjpeU+D9bq8TV8=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg80D-003Aty-FB
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605884823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OASbtfxyD6eIUPjL3PNzYRIfoGBOulxlBVzyzkIasn0=;
 b=C2QVrJNh1KRiSIslpv50ppQGJL5VGbPKWiWBYdl+no60BuRa3ShKfE8W8jeClG4/iUK+7L
 18hleWzriz2oRvKLVFdnRd6XNuJ/MQndxnBcnHnrUdAxg9Tf656QyTERN5hQypJWJN1W5/
 ROUqTuwodrXdQvX4sUE1f7YnBlrDflw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-160-mRGFeT5KP024Srat-9T2_g-1; Fri, 20 Nov 2020 10:07:02 -0500
X-MC-Unique: mRGFeT5KP024Srat-9T2_g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 346E31DDE6;
 Fri, 20 Nov 2020 15:07:00 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6356F19C71;
 Fri, 20 Nov 2020 15:06:54 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:06:53 +0000
Message-ID: <160588481358.3465195.16552616179674485179.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1kg80D-003Aty-FB
Subject: [V9fs-developer] [RFC PATCH 20/76] mm: Stop
 generic_file_buffered_read() from grabbing a superfluous page
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Under some circumstances, generic_file_buffered_read() will allocate
sufficient pages to read to the end of the file, call readahead/readpages
on them and copy the data over - and then it will allocate another page at
the EOF and call readpage on that and then ignore it.  This is unnecessary
and a waste of time and resources.

Catch the overallocation in the "no_cached_page:" part and prevent it from
happening.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 mm/filemap.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/filemap.c b/mm/filemap.c
index cfb753955e36..5a63aa1dd71e 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -2447,6 +2447,8 @@ ssize_t generic_file_buffered_read(struct kiocb *iocb,
 		 * Ok, it wasn't cached, so we need to create a new
 		 * page..
 		 */
+		if ((index << PAGE_SHIFT) >= i_size_read(inode))
+			goto out;
 		page = page_cache_alloc(mapping);
 		if (!page) {
 			error = -ENOMEM;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
