Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5401C21DCC5
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:34:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1Pq-0005pr-4z; Mon, 13 Jul 2020 16:34:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1Pp-0005ph-0H
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o4oUojr5NHsycfbNOi5qrHI5NK95AfoUtSwAFHR3zOA=; b=Y4vQFFpToSlcmPvgld5Dg+KhpO
 ITcj9dfARHa39KJIQxPyJNUcDRFlhZi0cYE3fOOWgp7K1BHExzz/7KWUU456c6eGR9x5jbyUe81AM
 T2ajOFJmzzVufVkB40YLfKa9Xhg0CIgqpE0lgnVurbaq6dZF6ZgpUEYStpzRpQ1kXDC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o4oUojr5NHsycfbNOi5qrHI5NK95AfoUtSwAFHR3zOA=; b=jsbEmbOVDo8r8cABrPZqqawJJ0
 FuZdY+arBtCpJXLLGfNo02C0mM7MHue+BCH7Mq4oxEh8cLq6oAtU6MYtbTVVZoXz5gmzNszI4z+Rd
 1VIQK/m/VNlmzBJIneMgQsLi+4MS1Tb3FCH5R4BpXjFg4JxhQ4VCEvzcuKYeiP1lgEr8=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1Pn-005eIG-SB
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o4oUojr5NHsycfbNOi5qrHI5NK95AfoUtSwAFHR3zOA=;
 b=FNMbxNbtK7/Q0xJL6eXAe7XDAfouqwHs01KAL4+9zSBCwxGJ9h13Xeqin7xzwYOuHm+jRw
 mYenZCTKzjpTM+uKJYQgPJXqSMyTnLQqBnsaDmH7DFvG7VlDYX+CmDhpoqDG0g/87RbL1w
 +gDP9wweotAAjNLlYSPXKn/tWyEaJ4w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-w8veJSKFOBOGwEzjpT7jhA-1; Mon, 13 Jul 2020 12:34:42 -0400
X-MC-Unique: w8veJSKFOBOGwEzjpT7jhA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D165800597;
 Mon, 13 Jul 2020 16:34:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB6DB72AC3;
 Mon, 13 Jul 2020 16:34:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:34:34 +0100
Message-ID: <159465807406.1376674.8117873071279426760.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1Pn-005eIG-SB
Subject: [V9fs-developer] [PATCH 21/32] cachefiles: Round the cachefile size
 up to DIO block size
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Round the size of a cachefile up to DIO block size so that we can always
read back the last partial page of a file using direct I/O.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/interface.c |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/fs/cachefiles/interface.c b/fs/cachefiles/interface.c
index de4fb41103a6..054d5cc794b5 100644
--- a/fs/cachefiles/interface.c
+++ b/fs/cachefiles/interface.c
@@ -184,6 +184,17 @@ static void cachefiles_update_object(struct fscache_object *_object)
 			cachefiles_remove_object_xattr(cache, object->dentry);
 			goto out;
 		}
+
+		object_size = round_up(object_size, CACHEFILES_DIO_BLOCK_SIZE);
+		_debug("trunc %llx -> %llx", i_size_read(d_inode(object->dentry)), object_size);
+		if (i_size_read(d_inode(object->dentry)) < object_size) {
+			ret = vfs_truncate(&path, object_size);
+			if (ret < 0) {
+				cachefiles_io_error_obj(object, "Trunc-to-dio-size failed");
+				cachefiles_remove_object_xattr(cache, object->dentry);
+				goto out;
+			}
+		}
 	}
 
 	cachefiles_set_object_xattr(object, XATTR_REPLACE);
@@ -354,6 +365,7 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 	int ret;
 
 	ni_size = object->fscache.cookie->object_size;
+	ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 
 	_enter("{OBJ%x},[%llu]",
 	       object->fscache.debug_id, (unsigned long long) ni_size);
@@ -422,6 +434,7 @@ static void cachefiles_invalidate_object(struct fscache_object *_object)
 			     struct cachefiles_cache, cache);
 
 	ni_size = object->fscache.cookie->object_size;
+	ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 
 	_enter("{OBJ%x},[%llu]",
 	       object->fscache.debug_id, (unsigned long long)ni_size);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
