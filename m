Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 289E24320DC
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:57:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU4V-0006l0-Ru; Mon, 18 Oct 2021 14:57:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcU4T-0006kg-QN
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0IGgvCu7e2XQhbY70i8TSPJVNJmFP5Vsi2waD4HEQVM=; b=NQepdc4CrWgxrkgEv+UuoEC4Dp
 IoEv2e6inU9sj6cVNHyvZpXOopGaNmBEOt5l+2AJF8q35pKZvVFudEJi7Yq2pzSwjA4Cdj2P2SF5N
 5xPcYgWk/Y4jE3x3Pr9BtCY0HxmGdpQZj7yR9qMZHIV/c9SbVJPDNyPLvB59/Zhu4Idc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0IGgvCu7e2XQhbY70i8TSPJVNJmFP5Vsi2waD4HEQVM=; b=HQl3EkZ8UqFwKQaaNqEY8BCuj8
 KxKtyCc/CkLQgYFgoqxnjcdildiogHWpxQFLNUz/RCfvTklOh+hrEEYlexX+15oNP9t3vpcbDYtkc
 nuSDIzDCSWOV68QjNaQ8avWyWRz1OMsW61QNa1AVhMhLQK83Fjt8ER1KoG2JhmRPWNvU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU4T-0003uz-4W
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0IGgvCu7e2XQhbY70i8TSPJVNJmFP5Vsi2waD4HEQVM=;
 b=PA+71rY0RU4XXDOwTBIFlKfjk55XGIBO9OG8EwscwLgYYbs/boZwr+3LGR2LLvWNwqVD5h
 z57oLanl8ObWzhXDkk6GIJcTVJT7tSlpZWh3PnP6mthLvJNkx8WVkDl0zfL1YWXCTJd2iU
 B5on4Qw3MX2sNSS1UZPupK2KpBOF+yQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-YOy2swJJMP6NZIQxWFL5mw-1; Mon, 18 Oct 2021 10:56:52 -0400
X-MC-Unique: YOy2swJJMP6NZIQxWFL5mw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2BB418D6A36;
 Mon, 18 Oct 2021 14:56:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99AE7100E809;
 Mon, 18 Oct 2021 14:56:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:56:45 +0100
Message-ID: <163456900574.2614702.12478396115896341195.stgit@warthog.procyon.org.uk>
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
 Content preview:  Improve the cachefiles_lookup tracepoint: - Don't display
 the dentry address, since it's going to get hashed. - Do display any error
 code. Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
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
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU4T-0003uz-4W
Subject: [V9fs-developer] [PATCH 23/67] cachefiles: trace: Improve the
 lookup tracepoint
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

Improve the cachefiles_lookup tracepoint:

 - Don't display the dentry address, since it's going to get hashed.

 - Do display any error code.

 - Work out the inode in the tracepoint rather than in the caller so that
   the logic is conditional on the tracepoint being enabled.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/namei.c             |    4 +---
 include/trace/events/cachefiles.h |   18 +++++++++---------
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 10b6d571eda8..b5a0aec529af 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -340,14 +340,12 @@ static int cachefiles_walk_to_file(struct cachefiles_cache *cache,
 	inode_lock_nested(dinode, I_MUTEX_PARENT);
 
 	dentry = lookup_one_len(object->d_name, fan, object->d_name_len);
+	trace_cachefiles_lookup(object, dentry);
 	if (IS_ERR(dentry)) {
-		trace_cachefiles_lookup(object, dentry, NULL);
 		ret = PTR_ERR(dentry);
 		goto error;
 	}
 
-	trace_cachefiles_lookup(object, dentry, d_backing_inode(dentry));
-
 	if (d_is_negative(dentry)) {
 		/* This element of the path doesn't exist, so we can release
 		 * any readers in the certain knowledge that there's nothing
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index bd0b5bbd3889..87681dd957ec 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -98,25 +98,25 @@ TRACE_EVENT(cachefiles_ref,
 
 TRACE_EVENT(cachefiles_lookup,
 	    TP_PROTO(struct cachefiles_object *obj,
-		     struct dentry *de,
-		     struct inode *inode),
+		     struct dentry *de),
 
-	    TP_ARGS(obj, de, inode),
+	    TP_ARGS(obj, de),
 
 	    TP_STRUCT__entry(
 		    __field(unsigned int,		obj	)
-		    __field(struct dentry *,		de	)
-		    __field(struct inode *,		inode	)
+		    __field(short,			error	)
+		    __field(unsigned long,		ino	)
 			     ),
 
 	    TP_fast_assign(
 		    __entry->obj	= obj->fscache.debug_id;
-		    __entry->de		= de;
-		    __entry->inode	= inode;
+		    __entry->ino	= (!IS_ERR(de) && d_backing_inode(de) ?
+					   d_backing_inode(de)->i_ino : 0);
+		    __entry->error	= IS_ERR(de) ? PTR_ERR(de) : 0;
 			   ),
 
-	    TP_printk("o=%08x d=%p i=%p",
-		      __entry->obj, __entry->de, __entry->inode)
+	    TP_printk("o=%08x i=%lx e=%d",
+		      __entry->obj, __entry->ino, __entry->error)
 	    );
 
 TRACE_EVENT(cachefiles_create,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
