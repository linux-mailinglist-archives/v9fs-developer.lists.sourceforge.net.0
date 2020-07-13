Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC8021DC25
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:31:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1M6-0005Zi-A5; Mon, 13 Jul 2020 16:31:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1M4-0005ZR-Ev
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NqgSBe1hMsdhej2UIP9RLhkmrdHOs9kRUk+TlrmQOJ4=; b=C0VSTk3dORtuj9jyKY7J0996b8
 5hy97JsHNSUngz7XVdftJa/AMBxGQp7yvsVnoqzjqk+MFL2OSn4UGA2EL3kK4pyy4ewiyxNMXzDhG
 6GfEOljLLoaqMBT09WCKi5iLVALaD/GHJRzWn6AjqP/3ZH0PE9AXjx5VQDXA/sG86MsA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NqgSBe1hMsdhej2UIP9RLhkmrdHOs9kRUk+TlrmQOJ4=; b=W
 S9c9tCV2Z007Dk6b0QnW956dAGIljik28S0aH2LSRVIRsT40CHR1xwIsATUj1n+q5KjtDBZVvlZ3d
 RmeU/O44ndXPhOSb8ulh0b9i5tb4P1PmMbBZFm8I0M2SPtOCKa2K9ushDGJDQinVo4W1pZT5Lzv+8
 12aMabfNvoQ+FWdk=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1M2-00GI6o-DR
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594657852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NqgSBe1hMsdhej2UIP9RLhkmrdHOs9kRUk+TlrmQOJ4=;
 b=BgfMFCX+HO5cj1xym1WbncbWH/N9C5m/KsNamV95EonJAUW1mmBfIwPzDfbHsNo/8slkjM
 /ePoqiOIBkao+Uz4ZaEx6VJlHyKm2mOYU2ho9kA4C74EJyrLqt5RjA1fehJqw96tQPDyBi
 AzytxIAd9jtEZXOh7Oy3dhdAtCa2HCQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-sdHPa1YUOVi8XOAOUOVUWA-1; Mon, 13 Jul 2020 12:30:49 -0400
X-MC-Unique: sdHPa1YUOVi8XOAOUOVUWA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D33EF805723;
 Mon, 13 Jul 2020 16:30:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31AB81002391;
 Mon, 13 Jul 2020 16:30:41 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:30:40 +0100
Message-ID: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1M2-00GI6o-DR
Subject: [V9fs-developer] [PATCH 00/32] fscache: Rewrite 2: Make the I/O
 interface use kiocb/iov_iter
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


Here's a set of patches that massively overhauls the object lifecycle
management and the I/O API of the local caching for network filesystems code
for a reduction of about 3000 LoC and a 1000 line Documentation reduction.
The ability to use async DIO to pass data to/from the cache gives a huge speed
bonus and uses less memory.

So far, only AFS has been ported to use this.  This series disabled fscache
support in all other filesystems that use it.  I'm working on NFS, but it's
tricky and I could use some help.

The following parts have been removed:

    - The object state machine
    - The I/O operation manager
    - All non-transient references from fscache to the netfs's data
    - All non-transient callbacks from fscache to the netfs
    - The backing page I/O monitoring
    - The tracking of netfs pages that fscache knows about
    - The tracking of netfs pages that need writing to the cache
    - The use of bmap to work out if a page is stored in the cache
    - The copy of data to/from backing pages to netfs pages.

Instead, the I/O to the cache is driven much more from the netfs.  There are a
number of aspects to the I/O API:

 (1) The lowest level I/O primitives just take an iov_iter and start async
     DIO on the cache objects.  The caller gets a callback upon completion.
     The PG_fscache bit is now just used to indicate that there's a write
     to the cache in progress.  The cache will keep track in xattrs as to
     what areas of the backing file are occupied.

     - struct fscache_io_request
     - fscache_read() and fscache_write().

 (2) The cache may require that the I/O fulfil certain alignment and length
     granularity constraints.  This, and whether the cache contains the
     desired data, can be queried.

     - struct fscache_request_shape
     - fscache_shape_request()

 (3) The cookie that's obtained when an inode is set up must be 'used' when a
     file is opened (with an indication as to whether it might be modified)
     and 'unused' when it is done with.  At the point of unuse, the auxdata
     and file size can be specified.

     - fscache_use_cookie(), fscache_unuse_cookie()

 (4) The cookie can be invalidated at any time, and new auxiliary data and a
     new size provided.  Any in-progress I/O will either cause new I/O to
     wait, or a replacement tmpfile will be created and the in-progress I/O
     will just be abandoned.  The on-disk auxdata (in xattrs, say) are updated
     lazily.

     - fscache_invalidate()

 (5) A helper API for reads is provided to combine the (1), (2) above and
     read_cache_pages() and also do read-(re)issue to the network in the case
     that the data isn't present or the cache fails.  This requires that an
     operation descriptor be allocated and given some operations.  This needs
     to be used for ->readpage(), ->readpages() and prefetching for
     ->write_begin().

     - struct fscache_io_request
     - fscache_read_helper()

I've also simplified the cookie management API to remove struct
fscache_cookie_def.  Instead, the pertinent details are supplied when a cookie
is created and the file size, key and auxdata are stored in the cookie.
Callbacks and backpointers are simply removed.

I've added some pieces outside of the API also:

 (1) An inode flag to mark a backing cachefile as being in use by the kernel.
     This prevents multiple caches mounted in the same directory from fighting
     over the same files.  It can also be extended to exclude other kernel
     users (such as swap) and could also be used to prevent userspace
     interfering with the file.

 (2) A new I/O iterator class, ITER_MAPPING, that iterates over the specified
     byte range of a mapping.  The caller is required to make sure that the
     pages don't evaporate under the callee (eg. pinning them by PG_locked,
     PG_writeback, PG_fscache or usage count).

     It may make sense to make this more generic and just take an xarray that
     is known to be laden with pages.  The one tricky bit there is that the
     iteration routines call find_get_page_contig() - though the only thing
     the mapping is used for is to find the xarray containing the pages.

     This is better than an ITER_BVEC as no allocation of bio_vec structs is
     required since the xarray holds pointers to all the pages involved.

 (3) Wait and unlock functions for PG_fscache.  These are in the core, so no
     need to call into fscache for it.

So, to be done hopefully before the next merge window:

 (1) Need to investigate whether I need to be lazy, but only to an extent,
     about closing up backing files.

 (2) Make NFS, CIFS, Ceph, 9P work with it.  Jeff Layton is working on Ceph
     and Dave Wysochanski is working on NFS.

And beyond that:

 (3) Put in support for versioned monolithic objects (eg. AFS directories).

 (4) Currently it cachefiles only caches large files up to 1GiB.  File data
     beyond that isn't cached.  The problem here is that I'm using an xattr to
     hold the content map, and xattrs may be limited in size and I've limited
     myself to using a 512 byte xattr.  I can easily make it cache a
     non-sparse file of any size with no map, but as soon as it becomes
     sparse, I need a different strategy.

 (5) Change the indexing strategy so that the culling mechanism is brought
     into the kernel, rather than doing that in userspace, and use an index
     table of files with a LRU list.

These patches can be found also on:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter

David
---
David Howells (1):
      cachefiles: Shape write requests


 fs/9p/Kconfig                          |    2 +-
 fs/Makefile                            |    2 +-
 fs/afs/Kconfig                         |    1 +
 fs/afs/cache.c                         |   54 --
 fs/afs/cell.c                          |    9 +-
 fs/afs/dir.c                           |  242 +++++--
 fs/afs/file.c                          |  575 +++++++--------
 fs/afs/fs_operation.c                  |    4 +-
 fs/afs/fsclient.c                      |  154 ++--
 fs/afs/inode.c                         |   57 +-
 fs/afs/internal.h                      |   58 +-
 fs/afs/rxrpc.c                         |  150 ++--
 fs/afs/volume.c                        |    9 +-
 fs/afs/write.c                         |  413 +++++++----
 fs/afs/yfsclient.c                     |  113 ++-
 fs/cachefiles/Makefile                 |    3 +-
 fs/cachefiles/bind.c                   |   11 +-
 fs/cachefiles/content-map.c            |  476 ++++++++++++
 fs/cachefiles/daemon.c                 |   10 +-
 fs/cachefiles/interface.c              |  564 ++++++++-------
 fs/cachefiles/internal.h               |  139 ++--
 fs/cachefiles/io.c                     |  279 +++++++
 fs/cachefiles/main.c                   |   12 +-
 fs/cachefiles/namei.c                  |  508 +++++--------
 fs/cachefiles/rdwr.c                   |  974 -------------------------
 fs/cachefiles/xattr.c                  |  263 +++----
 fs/ceph/Kconfig                        |    2 +-
 fs/cifs/Kconfig                        |    2 +-
 fs/fscache/Kconfig                     |    8 +
 fs/fscache/Makefile                    |   10 +-
 fs/fscache/cache.c                     |  136 ++--
 fs/fscache/cookie.c                    |  769 ++++++++------------
 fs/fscache/dispatcher.c                |  150 ++++
 fs/fscache/fsdef.c                     |   56 +-
 fs/fscache/histogram.c                 |    2 +-
 fs/fscache/internal.h                  |  260 +++----
 fs/fscache/io.c                        |  201 +++++
 fs/fscache/main.c                      |   35 +-
 fs/fscache/netfs.c                     |   10 +-
 fs/fscache/obj.c                       |  345 +++++++++
 fs/fscache/object-list.c               |  129 +---
 fs/fscache/object.c                    | 1133 -----------------------------
 fs/fscache/object_bits.c               |  120 +++
 fs/fscache/operation.c                 |  633 ----------------
 fs/fscache/page.c                      | 1248 --------------------------------
 fs/fscache/proc.c                      |   13 +-
 fs/fscache/read_helper.c               |  688 ++++++++++++++++++
 fs/fscache/stats.c                     |  265 +++----
 fs/internal.h                          |    5 -
 fs/nfs/Kconfig                         |    2 +-
 fs/nfs/fscache-index.c                 |    4 +-
 fs/read_write.c                        |    1 +
 include/linux/fs.h                     |    2 +
 include/linux/fscache-cache.h          |  508 +++----------
 include/linux/fscache-obsolete.h       |   13 +
 include/linux/fscache.h                |  814 ++++++++-------------
 include/linux/mm.h                     |    1 +
 include/linux/pagemap.h                |   14 +
 include/linux/uio.h                    |   11 +
 include/net/af_rxrpc.h                 |    2 +-
 include/trace/events/afs.h             |   51 +-
 include/trace/events/cachefiles.h      |  285 ++++++--
 include/trace/events/fscache.h         |  421 ++---------
 include/trace/events/fscache_support.h |   91 +++
 lib/iov_iter.c                         |  286 +++++++-
 mm/filemap.c                           |   27 +-
 net/rxrpc/recvmsg.c                    |    9 +-
 67 files changed, 5598 insertions(+), 8246 deletions(-)
 create mode 100644 fs/cachefiles/content-map.c
 create mode 100644 fs/cachefiles/io.c
 delete mode 100644 fs/cachefiles/rdwr.c
 create mode 100644 fs/fscache/dispatcher.c
 create mode 100644 fs/fscache/io.c
 create mode 100644 fs/fscache/obj.c
 delete mode 100644 fs/fscache/object.c
 create mode 100644 fs/fscache/object_bits.c
 delete mode 100644 fs/fscache/operation.c
 delete mode 100644 fs/fscache/page.c
 create mode 100644 fs/fscache/read_helper.c
 create mode 100644 include/linux/fscache-obsolete.h
 create mode 100644 include/trace/events/fscache_support.h




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
