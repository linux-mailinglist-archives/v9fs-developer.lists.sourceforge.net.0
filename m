Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8447A2BAD7F
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:21:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8ER-0002bu-98; Fri, 20 Nov 2020 15:21:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg85A-0002DJ-8l
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a2dc9AgCjNKnB30Uuf5YoOyf+HNLd6rDUqP5SMruEOU=; b=YAnaY/4G6lkPmSSB+nUj7LjJhA
 s8SOcaRamKxpef5TxMglu8X7m09dYkwm11JL4cV3WF1OBvxQ1822XcCQAVB8qKjzKeEAiCC9Rdqjn
 DvyqvkUoA5+P6MvE7kvCb5LGszXri1eq7qOS5rZmL/hUV68q64BAFmuXbE641vWf1jCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a2dc9AgCjNKnB30Uuf5YoOyf+HNLd6rDUqP5SMruEOU=; b=gv3KsThsiLdsBdrCs5AKZXKrXS
 bWxdaVQuF0BozfzEqwDvJdgTDKpZCj35gMwicV6+mcpjnonDe7JfCUJH53y65DkF1n9EordMOgFun
 LLJXElA7NzPQTh0zvRLbBURsFazUyhbb2slVMGnw83VYieoByUX4RxDvzsg1CHFQVZBM=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg853-00Ad2U-DI
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a2dc9AgCjNKnB30Uuf5YoOyf+HNLd6rDUqP5SMruEOU=;
 b=NODZmjKvrbGoFf+4Dc1JTLKzGJZV1mjFvDZj7pvknjsfWWEEJwthvBZYSBqtrTZozYpLpY
 MqxuPJwyh5xvyEkZEulXtO60TsS5N6b0QXWV1D+iiL2r1sUHbW32SdRKilIYEtX9ITDJ7A
 CUnS//6Wn6z/hrjSOUUiLlTrHnuFP7U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-jqWo9ix5PGmBrMMFMdn0HQ-1; Fri, 20 Nov 2020 10:11:59 -0500
X-MC-Unique: jqWo9ix5PGmBrMMFMdn0HQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AEA7E1DDE5;
 Fri, 20 Nov 2020 15:11:57 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BD8F10021B3;
 Fri, 20 Nov 2020 15:11:51 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:11:50 +0000
Message-ID: <160588511040.3465195.601522049910164888.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg853-00Ad2U-DI
Subject: [V9fs-developer] [RFC PATCH 43/76] cachefiles: Round the cachefile
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
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
index a20917cb4667..0e3d5b5ffc55 100644
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
@@ -422,6 +434,7 @@ static bool cachefiles_invalidate_object(struct fscache_object *_object)
 			     struct cachefiles_cache, cache);
 
 	ni_size = object->fscache.cookie->object_size;
+	ni_size = round_up(ni_size, CACHEFILES_DIO_BLOCK_SIZE);
 
 	_enter("{OBJ%x},[%llu]",
 	       object->fscache.debug_id, (unsigned long long)ni_size);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
