Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E212FDC5A
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Jan 2021 23:23:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2LsX-0000Jv-Fd; Wed, 20 Jan 2021 22:23:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l2LsV-0000Jo-ND
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jan 2021 22:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YedMCP9lMu2Cnddwp+/wzr1wQ5ddOE8Fl4udQS58Uic=; b=P0OAvfaLDRc8lodJ0E5M+4rSBV
 3jjKKgjoGc9F0XMg5RdAAkLVPR/V+3XKGAqTdN6WC5YN1FVB5uUURkumN2i65M3Uv2h4S3X3wJURb
 4xZtEF/sXGIvVBAPWAiFGNH/tkGiUso79Y/WCK7HJeSle9CKsGNORvDJGPtT7teQtZqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YedMCP9lMu2Cnddwp+/wzr1wQ5ddOE8Fl4udQS58Uic=; b=BPajfkl2nGJx/ln/GX7VWffv+Y
 hDFmD+JYCL+5jlfE2/akP3eE03wOVrFTA76tFKm7pzF+XWK2EJz0aKzDNOryH3tU/6rwHJ8HWRd8p
 RJvXwiBkyhXNCC96Cdtu93DVVuCqvYO7cBdVRLqNVzPYRmXiy1gYe9Ax8dErK1wS/1Z0=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l2LsM-003mAU-5P
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jan 2021 22:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611181361;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YedMCP9lMu2Cnddwp+/wzr1wQ5ddOE8Fl4udQS58Uic=;
 b=gar6ErtcMZ7QdPGwvhmHCMoZZHKvfwQ6A2OryttC4h5laqqZ2cveDumS7byeOEgMK9dBgk
 pfxicpNMR5QakvyzrDVFHOF3w7HZ37Lt/7fI9zB41EBocWZyj2qWOZZhMparVZsgYSMfiJ
 8fBz7T53BFCDDCRtPrFU7k2Xy+2W3kM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-Phb2yheGO86JpjJx1MlyLg-1; Wed, 20 Jan 2021 17:22:33 -0500
X-MC-Unique: Phb2yheGO86JpjJx1MlyLg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A44580A5CB;
 Wed, 20 Jan 2021 22:22:31 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3D7A72C161;
 Wed, 20 Jan 2021 22:22:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 20 Jan 2021 22:22:24 +0000
Message-ID: <161118134449.1232039.7782285502855946342.stgit@warthog.procyon.org.uk>
In-Reply-To: <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
References: <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l2LsM-003mAU-5P
Subject: [V9fs-developer] [PATCH 05/25] cachefiles: Drop superfluous
 readpages aops NULL check
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
 Jeff Layton <jlayton@redhat.com>, Takashi Iwai <tiwai@suse.de>,
 David Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Takashi Iwai <tiwai@suse.de>

After the recent actions to convert readpages aops to readahead, the
NULL checks of readpages aops in cachefiles_read_or_alloc_page() may
hit falsely.  More badly, it's an ASSERT() call, and this panics.

Drop the superfluous NULL checks for fixing this regression.

[DH: Note that cachefiles never actually used readpages, so this check was
 never actually necessary]

BugLink: https://bugzilla.kernel.org/show_bug.cgi?id=208883
BugLink: https://bugzilla.opensuse.org/show_bug.cgi?id=1175245
Fixes: 9ae326a69004 ("CacheFiles: A cache that backs onto a mounted filesystem")
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: David Howells <dhowells@redhat.com>
Acked-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---

 fs/cachefiles/rdwr.c |    2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/cachefiles/rdwr.c b/fs/cachefiles/rdwr.c
index 8bda092e60c5..e027c718ca01 100644
--- a/fs/cachefiles/rdwr.c
+++ b/fs/cachefiles/rdwr.c
@@ -413,7 +413,6 @@ int cachefiles_read_or_alloc_page(struct fscache_retrieval *op,
 
 	inode = d_backing_inode(object->backer);
 	ASSERT(S_ISREG(inode->i_mode));
-	ASSERT(inode->i_mapping->a_ops->readpages);
 
 	/* calculate the shift required to use bmap */
 	shift = PAGE_SHIFT - inode->i_sb->s_blocksize_bits;
@@ -713,7 +712,6 @@ int cachefiles_read_or_alloc_pages(struct fscache_retrieval *op,
 
 	inode = d_backing_inode(object->backer);
 	ASSERT(S_ISREG(inode->i_mode));
-	ASSERT(inode->i_mapping->a_ops->readpages);
 
 	/* calculate the shift required to use bmap */
 	shift = PAGE_SHIFT - inode->i_sb->s_blocksize_bits;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
