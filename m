Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F232FDC52
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Jan 2021 23:21:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2LrM-0004mw-KY; Wed, 20 Jan 2021 22:21:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l2LrL-0004mp-HT
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jan 2021 22:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZkCTUh6YIpz/AUkWavZvz8nrC1gxZflHJ+My0TUlYq8=; b=FhjuAn9uGETgvz8Kmt0F0nTEXJ
 fcBDGtHRJZzype8GQtoM+mCjYAauYIuiA/PqpwsDT4qWZNLrsi7rU46gdIm7ZupHecu+ZDu78dz+I
 UxzvVmJZbxHyitP9PVIGHDwgAj1wlPAQbfS7vGDD7gjkoESGAjJWy4sjOS0mvUcjPjpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZkCTUh6YIpz/AUkWavZvz8nrC1gxZflHJ+My0TUlYq8=; b=k
 8nIGksr7j3MBJAmGzfrV+AgB/JMwJQ4tL7hf2OoS7ynkhNysFImNUCB0BVQ7ICVu1nlxu1Vo+mrWS
 VrZjyQDGKVKaa1tSQkKJF0gJJ+Vuv+XkBHZ2vVGbNHT0oVgh/bGwe/O5Xxgl2ysf4Vm15b8rVZe7t
 UFHRF2kiXAgPTYQ0=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l2LrJ-003laj-NK
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jan 2021 22:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611181296;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZkCTUh6YIpz/AUkWavZvz8nrC1gxZflHJ+My0TUlYq8=;
 b=IWTlpI18BdGNb8bCQlxL3IJuhfPpWpOhdBZ4nzBJXW0h2O/JRnmiHZJ89kDlSZBgpbABSz
 fyo2o1kMWhVvbdgAeaQ2bTSbpFQHM4HDZm63wlce968NR2QuUO0pnPIAaTZE6doajpO6hC
 JQzP6EKgRL48tfenENZRF9BQQJqyF/Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468-4jyfIjAkMxSc_5pS-0UlJg-1; Wed, 20 Jan 2021 17:21:34 -0500
X-MC-Unique: 4jyfIjAkMxSc_5pS-0UlJg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA4DD800D55;
 Wed, 20 Jan 2021 22:21:31 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 61F231992D;
 Wed, 20 Jan 2021 22:21:25 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 20 Jan 2021 22:21:24 +0000
Message-ID: <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Headers-End: 1l2LrJ-003laj-NK
Subject: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
 fscache kiocb API
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


Here's a set of patches to do two things:

 (1) Add a helper library to handle the new VM readahead interface.  This
     is intended to be used unconditionally by the filesystem (whether or
     not caching is enabled) and provides a common framework for doing
     caching, transparent huge pages and, in the future, possibly fscrypt
     and read bandwidth maximisation.  It also allows the netfs and the
     cache to align, expand and slice up a read request from the VM in
     various ways; the netfs need only provide a function to read a stretch
     of data to the pagecache and the helper takes care of the rest.

 (2) Add an alternative fscache/cachfiles I/O API that uses the kiocb
     facility to do async DIO to transfer data to/from the netfs's pages,
     rather than using readpage with wait queue snooping on one side and
     vfs_write() on the other.  It also uses less memory, since it doesn't
     do buffered I/O on the backing file.

     Note that this uses SEEK_HOLE/SEEK_DATA to locate the data available
     to be read from the cache.  Whilst this is an improvement from the
     bmap interface, it still has a problem with regard to a modern
     extent-based filesystem inserting or removing bridging blocks of
     zeros.  Fixing that requires a much greater overhaul.

This is a step towards overhauling the fscache API.  The change is opt-in
on the part of the network filesystem.  A netfs should not try to mix the
old and the new API because of conflicting ways of handling pages and the
PG_fscache page flag and because it would be mixing DIO with buffered I/O.
Further, the helper library can't be used with the old API.

This does not change any of the fscache cookie handling APIs or the way
invalidation is done.

In the near term, I intend to deprecate and remove the old I/O API
(fscache_allocate_page{,s}(), fscache_read_or_alloc_page{,s}(),
fscache_write_page() and fscache_uncache_page()) and eventually replace
most of fscache/cachefiles with something simpler and easier to follow.

The patchset contains four parts:

 (1) Some helper patches, including provision of an ITER_XARRAY iov
     iterator and a function to do readahead expansion.

 (2) Patches to add the netfs helper library.

 (3) A patch to add the fscache/cachefiles kiocb API

 (4) Patches to add support in AFS for this.

With this, AFS without a cache passes all expected xfstests; with a cache,
there's an extra failure, but that's also there before these patches.
Fixing that probably requires a greater overhaul.

These patches can be found also on:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-netfs-lib

David
---
David Howells (24):
      iov_iter: Add ITER_XARRAY
      vm: Add wait/unlock functions for PG_fscache
      mm: Implement readahead_control pageset expansion
      vfs: Export rw_verify_area() for use by cachefiles
      netfs: Make a netfs helper module
      netfs: Provide readahead and readpage netfs helpers
      netfs: Add tracepoints
      netfs: Gather stats
      netfs: Add write_begin helper
      netfs: Define an interface to talk to a cache
      fscache, cachefiles: Add alternate API to use kiocb for read/write to cache
      afs: Disable use of the fscache I/O routines
      afs: Pass page into dirty region helpers to provide THP size
      afs: Print the operation debug_id when logging an unexpected data version
      afs: Move key to afs_read struct
      afs: Don't truncate iter during data fetch
      afs: Log remote unmarshalling errors
      afs: Set up the iov_iter before calling afs_extract_data()
      afs: Use ITER_XARRAY for writing
      afs: Wait on PG_fscache before modifying/releasing a page
      afs: Extract writeback extension into its own function
      afs: Prepare for use of THPs
      afs: Use the fs operation ops to handle FetchData completion
      afs: Use new fscache read helper API

Takashi Iwai (1):
      cachefiles: Drop superfluous readpages aops NULL check


 fs/Kconfig                    |    1 +
 fs/Makefile                   |    1 +
 fs/afs/Kconfig                |    1 +
 fs/afs/dir.c                  |  225 ++++---
 fs/afs/file.c                 |  472 ++++----------
 fs/afs/fs_operation.c         |    4 +-
 fs/afs/fsclient.c             |  108 ++--
 fs/afs/inode.c                |    7 +-
 fs/afs/internal.h             |   57 +-
 fs/afs/rxrpc.c                |  150 ++---
 fs/afs/write.c                |  610 ++++++++++--------
 fs/afs/yfsclient.c            |   82 +--
 fs/cachefiles/Makefile        |    1 +
 fs/cachefiles/interface.c     |    5 +-
 fs/cachefiles/internal.h      |    9 +
 fs/cachefiles/rdwr.c          |    2 -
 fs/cachefiles/rdwr2.c         |  406 ++++++++++++
 fs/fscache/Makefile           |    3 +-
 fs/fscache/internal.h         |    3 +
 fs/fscache/page.c             |    2 +-
 fs/fscache/page2.c            |  116 ++++
 fs/fscache/stats.c            |    1 +
 fs/internal.h                 |    5 -
 fs/netfs/Kconfig              |   23 +
 fs/netfs/Makefile             |    5 +
 fs/netfs/internal.h           |   97 +++
 fs/netfs/read_helper.c        | 1142 +++++++++++++++++++++++++++++++++
 fs/netfs/stats.c              |   57 ++
 fs/read_write.c               |    1 +
 include/linux/fs.h            |    1 +
 include/linux/fscache-cache.h |    4 +
 include/linux/fscache.h       |   28 +-
 include/linux/netfs.h         |  167 +++++
 include/linux/pagemap.h       |   16 +
 include/net/af_rxrpc.h        |    2 +-
 include/trace/events/afs.h    |   74 +--
 include/trace/events/netfs.h  |  201 ++++++
 mm/filemap.c                  |   18 +
 mm/readahead.c                |   70 ++
 net/rxrpc/recvmsg.c           |    9 +-
 40 files changed, 3171 insertions(+), 1015 deletions(-)
 create mode 100644 fs/cachefiles/rdwr2.c
 create mode 100644 fs/fscache/page2.c
 create mode 100644 fs/netfs/Kconfig
 create mode 100644 fs/netfs/Makefile
 create mode 100644 fs/netfs/internal.h
 create mode 100644 fs/netfs/read_helper.c
 create mode 100644 fs/netfs/stats.c
 create mode 100644 include/linux/netfs.h
 create mode 100644 include/trace/events/netfs.h




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
