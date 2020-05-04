Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E711C4223
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:16:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVehq-0002bE-GJ; Mon, 04 May 2020 17:16:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVeho-0002b6-OQ
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TkzgIzFsWD6P4ojRbjtiWsS3WWTP7b7wyCXPHlCITv4=; b=Lbqq2mlhIZiDpQi6t0fs1TihAV
 ZR/VyTu3lzS8fC953gXxorinPgN8ZZRnUXjTwPSk11KbGUlFtrksjE1B8RvzL0O3E7IbH3NGTJOyZ
 zAgYfJJOSlN99mBxJ7rJrfOE5z2j5oKvNQRVsFhNJpp8Xp4ofMXlHpdZqlRw4TnSf3Bc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TkzgIzFsWD6P4ojRbjtiWsS3WWTP7b7wyCXPHlCITv4=; b=kRm90cqKY8/ZyskUBfWXcEdfCB
 VjieYZqr9JMwIY8UinESPlfuR9uVbb9SH4OE1cdUI7K1UMDqYG1sPW6qvgw1U708vksXDMtL0uTLN
 4X0FMZFY+yCD7NGJNEIXs089SHclo0ecBXYdT3XUdOI3gjUhE+IASQLTnijinjx+dkI4=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVehn-007ANl-Ba
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612588;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TkzgIzFsWD6P4ojRbjtiWsS3WWTP7b7wyCXPHlCITv4=;
 b=JBL+urDcgTTtt3oKkEYDgLHE35SfN/a9jmN67/Ixlpb59gnmBaLjTz2z2R8Sy7VXOnCzpT
 lfFqDclX0cGIEgOmd4LY483Q6Ip2IWkCMOwam29mA6L5h9XewwIsFIeJ9AxYJtrEEia8GZ
 jbQVXiAGWoU4hYpHzTyFY9PNb2tbbuY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365--GvVo-HKOQa55q1kK-7q2g-1; Mon, 04 May 2020 13:16:27 -0400
X-MC-Unique: -GvVo-HKOQa55q1kK-7q2g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E218107B26F;
 Mon,  4 May 2020 17:16:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD206620AB;
 Mon,  4 May 2020 17:16:22 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:16:22 +0100
Message-ID: <158861258200.340223.6420616682330887473.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVehn-007ANl-Ba
Subject: [V9fs-developer] [RFC PATCH 58/61] fscache: Rewrite the main
 document
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

Rewrite the main document to reflect the new API.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 Documentation/filesystems/caching/fscache.txt |   51 ++++++++-----------------
 1 file changed, 17 insertions(+), 34 deletions(-)

diff --git a/Documentation/filesystems/caching/fscache.txt b/Documentation/filesystems/caching/fscache.txt
index 50f0a5757f48..dbfa0ece0ce8 100644
--- a/Documentation/filesystems/caching/fscache.txt
+++ b/Documentation/filesystems/caching/fscache.txt
@@ -83,9 +83,6 @@ then serving the pages out of that cache rather than the netfs inode because:
      one-off access of a small portion of it (such as might be done with the
      "file" program).
 
-It instead serves the cache out in PAGE_SIZE chunks as and when requested by
-the netfs('s) using it.
-
 
 FS-Cache provides the following facilities:
 
@@ -109,22 +106,22 @@ FS-Cache provides the following facilities:
      recursive, stack space is limited, and indices can only be children of
      indices.
 
- (7) Data I/O is done direct to and from the netfs's pages.  The netfs
-     indicates that page A is at index B of the data-file represented by cookie
-     C, and that it should be read or written.  The cache backend may or may
-     not start I/O on that page, but if it does, a netfs callback will be
-     invoked to indicate completion.  The I/O may be either synchronous or
-     asynchronous.
+ (7) The cache provides two basic I/O operations: write to the cache and read
+     from the cache.  These may be done synchronously or asynchronously and may
+     involve direct I/O.  The position and length of the request have to be
+     rounded to the I/O block size of the cache.
+
+ (8) The cache doesn't keep track of any of the netfs state and retains no
+     pointers back into the netfs.  The netfs is entirely responsible for
+     telling the cache what to do.  A number of helpers are provided to manage
+     the interaction.
 
  (8) Cookies can be "retired" upon release.  At this point FS-Cache will mark
      them as obsolete and the index hierarchy rooted at that point will get
      recycled.
 
- (9) The netfs provides a "match" function for index searches.  In addition to
-     saying whether a match was made or not, this can also specify that an
-     entry should be updated or deleted.
-
-(10) As much as possible is done asynchronously.
+ (9) Coherency data and index keys are stored in the cookie.  This is used by
+     the cache to determine whether the stored data is still valid.
 
 
 FS-Cache maintains a virtual indexing tree in which all indices, files, objects
@@ -144,33 +141,19 @@ caches.
      +------------+           +---------------+              +----------+
      |            |           |               |              |          |
    00001        00002       00007           00125        vol00001   vol00002
-     |            |           |               |                         |
- +---+---+     +-----+      +---+      +------+------+            +-----+----+
- |   |   |     |     |      |   |      |      |      |            |     |    |
-PG0 PG1 PG2   PG0  XATTR   PG0 PG1   DIRENT DIRENT DIRENT        R/W   R/O  Bak
-                     |                                            |
-                    PG0                                       +-------+
-                                                              |       |
-                                                            00001   00003
-                                                              |
-                                                          +---+---+
-                                                          |   |   |
-                                                         PG0 PG1 PG2
+                                                             |
+                                                         +-------+
+                                                         |       |
+                                                       00001   00003
 
 In the example above, you can see two netfs's being backed: NFS and AFS.  These
 have different index hierarchies:
 
  (*) The NFS primary index contains per-server indices.  Each server index is
-     indexed by NFS file handles to get data file objects.  Each data file
-     objects can have an array of pages, but may also have further child
-     objects, such as extended attributes and directory entries.  Extended
-     attribute objects themselves have page-array contents.
+     indexed by NFS file handles to get data objects.
 
  (*) The AFS primary index contains per-cell indices.  Each cell index contains
-     per-logical-volume indices.  Each of volume index contains up to three
-     indices for the read-write, read-only and backup mirrors of those volumes.
-     Each of these contains vnode data file objects, each of which contains an
-     array of pages.
+     logical volume indices and each of those contains vnode data file objects.
 
 The very top index is the FS-Cache master index in which individual netfs's
 have entries.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
