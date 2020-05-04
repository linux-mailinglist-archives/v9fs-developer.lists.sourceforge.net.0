Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 035C81C46E4
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 21:14:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVgY3-0005Sd-Ma; Mon, 04 May 2020 19:14:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVgY2-0005SW-Lm
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 19:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T7b2fIkLVJvfWt//FA5c9sEHNsqfvA45BwMJ8r7y02E=; b=Grm8jXjeW/mdBq7Ku3ECqlcO1K
 BJrK0muEfCOeq0ijQMNXcJKRto3TFqOK6eL2K7iWJN9SFKE1eSKWKkOTL8tQzj2IILMV88VEso5t/
 1/I+xAgMFGYVSDcelvJrJIEQlkAtcE2GU7qOKkiSISmYCezgyAX68JehWdK2Ir9EflTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T7b2fIkLVJvfWt//FA5c9sEHNsqfvA45BwMJ8r7y02E=; b=BERb3DJfNyUNBfTp6ke3NCFfEK
 +Xb/aL8btICxYWBAfooFuDIQVpSHUOXQFQq4PcQaS2+hPnpygMcdLMiXBQpz/KpTB9UVRz7PrXo2y
 5L1e2BLeJ4kJ4kNVFAAf48TsI5x9me5REXcNrcYNB/v2dyf0rBkEIeSkrsN38NCZSKU0=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVgY1-007LAG-6W
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 19:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588619671;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T7b2fIkLVJvfWt//FA5c9sEHNsqfvA45BwMJ8r7y02E=;
 b=RS6wCIboXKKEFludoFDhiRUt/2ilvonCfJHYLrIVuHmfmSSnX2h/gpHPUFG9sHZlcJ+Ro7
 0kKUlcdtw8VxmlPvZzRT+ytRxE1y8vryrEwCBL4XYTbrkoZ4JjQeB9r2D+eTz6JgUjbVTv
 H9A3xcpefOJggGvL3/iKdWoebcKJAVg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-MmaHYRaTN82UeFMmWRJkiQ-1; Mon, 04 May 2020 13:12:51 -0400
X-MC-Unique: MmaHYRaTN82UeFMmWRJkiQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C35BB107ACF3;
 Mon,  4 May 2020 17:12:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0466C63F61;
 Mon,  4 May 2020 17:12:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:12:45 +0100
Message-ID: <158861236514.340223.3729118853361763383.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVgY1-007LAG-6W
Subject: [V9fs-developer] [RFC PATCH 35/61] cachefiles: Round the cachefile
 size up to DIO block size
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
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
index d820051a9960..aa063857272a 100644
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
@@ -358,6 +369,7 @@ static int cachefiles_attr_changed(struct cachefiles_object *object)
 	int ret;
 
 	ni_size = object->fscache.cookie->object_size;
+	ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 
 	_enter("{OBJ%x},[%llu]",
 	       object->fscache.debug_id, (unsigned long long) ni_size);
@@ -426,6 +438,7 @@ static void cachefiles_invalidate_object(struct fscache_object *_object)
 			     struct cachefiles_cache, cache);
 
 	ni_size = object->fscache.cookie->object_size;
+	ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 
 	_enter("{OBJ%x},[%llu]",
 	       object->fscache.debug_id, (unsigned long long)ni_size);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
