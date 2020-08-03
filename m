Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B3923AA79
	for <lists+v9fs-developer@lfdr.de>; Mon,  3 Aug 2020 18:30:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k2dMN-0000YD-Cp; Mon, 03 Aug 2020 16:30:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1k2dMM-0000Xc-K3
 for v9fs-developer@lists.sourceforge.net; Mon, 03 Aug 2020 16:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:References:Subject:cc:To:From:Sender:
 Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mr7qr56B9egsGx9uRGRfdmlNyRxpcMInU0RCYxVoelY=; b=VjtZlPi8NoBVr0TzhcEa19K1r2
 u3rdmB1ardJWK80ZBl3KS5H/kufVqDGzmZGe8A/AAsVwHFS8ia2LAy7K3YsgHqr4lWBUzukanteKO
 fVIncmkaHn5Td562nzWLgoZtWz5pbalv/x0dN92zLgCKPKRarTgaIEJ+kEg5ZN5Px/18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:References:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mr7qr56B9egsGx9uRGRfdmlNyRxpcMInU0RCYxVoelY=; b=JVjZeuEV1iWFZQZB4crtMhLuns
 15KC5t8FmMe9AVMPW6WZZqfWm/4ZnXuxYGfBn3D5vHAw9+7ln24R6ZCcY+Px5CBZhwgZquutLx3Nx
 TOeI5OFX98f03Nw9hiEi6lH2iIo0twdGOGH6G8hSxKLEI1W3EvRImdLfpj/BRq+ogU0E=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k2dMK-00ArRn-D1
 for v9fs-developer@lists.sourceforge.net; Mon, 03 Aug 2020 16:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596472238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=mr7qr56B9egsGx9uRGRfdmlNyRxpcMInU0RCYxVoelY=;
 b=JsU7bcCsDhxdB1YOYtOfSX2X56YvkpEpO/PCkcUGlNs12j+gYdfGQsr6gpFGJPq4TXsEb9
 x7IwIBt3Q3TT4KzAn/n8vSVzWIYLwg7U0k4WNVY28eTnkISa1F9yGRVV4WoOPs2kkPiCMt
 xqMs+EVgtmDKRE9NlqHqe4KE2zDy8CQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-0ifzl7qlNXKlqZKNCDwn0w-1; Mon, 03 Aug 2020 12:30:33 -0400
X-MC-Unique: 0ifzl7qlNXKlqZKNCDwn0w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B87C81009600;
 Mon,  3 Aug 2020 16:30:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-32.rdu2.redhat.com
 [10.10.112.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A0CE927BDC;
 Mon,  3 Aug 2020 16:30:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
References: <447452.1596109876@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-ID: <1851199.1596472222.1@warthog.procyon.org.uk>
Date: Mon, 03 Aug 2020 17:30:22 +0100
Message-ID: <1851200.1596472222@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2dMK-00ArRn-D1
Subject: [V9fs-developer] [GIT PULL] fscache rewrite
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Here's a set of patches that massively overhauls fscache and cachefiles.
It improves the code by:

 (*) Ripping out the stuff that uses page cache snooping and kernel_write()
     and using kiocb instead.  This gives multiple wins: uses async DIO
     rather than snooping for updated pages and then copying them, less VM
     overhead.

 (*) Object management is also simplified, getting rid of the state machine
     that was managing things and using a much simplified thread pool
     instead.

 (*) Object invalidation creates a tmpfile and diverts new activity to that
     so that it doesn't have to synchronise in-flight ADIO.

 (*) Using a bitmap stored in an xattr rather than using bmap to find out if
     a block is present in the cache.

     Probing the backing filesystem's metadata to find out is not reliable
     in modern extent-based filesystems as them may insert or remove blocks
     of zeros.  Even SEEK_HOLE/SEEK_DATA are problematic since they don't
     distinguish transparently-inserted bridging.

The patchset includes a read helper that handles ->readpage, ->readpages,
and preparatory writes in ->write_begin.  Matthew Wilcox is looking at
using this as a way to roll his new ->readahead op out into filesystems.  A
good chunk of this will move into MM code.

Note that this patchset does not include documentation changes yet.  I have
them (mostly) done, but they were based on the plain-text format that got
ReST-ified, and I haven't managed to get around to the conversion yet.  I
can create a follow-up patchset for that if this is taken.

Further note: There's a last minute change due to a bit of debugging code
that got left in mm/filemap.c that needed removing.

However, there are reasons you might not want to take it yet:

 (1) It starts off by disabling fscache support in all the filesystems that
     use it: afs, nfs, cifs, ceph and 9p.  I've taken care of afs, Dave
     Wysochanski has patches for nfs:

	https://lore.kernel.org/linux-nfs/1596031949-26793-1-git-send-email-dwysocha@redhat.com/

     but Trond and Anna haven't said anything yet, and Jeff Layton has
     patches for ceph:

	https://marc.info/?l=ceph-devel&m=159541538914631&w=2

     and I've briefly discussed cifs with Steve, but nothing has started
     there yet.  9p I haven't looked at yet.

     Are we okay for going a kernel release with 4/5 filesystems with
     caching disabled and then pushing the changes for individual
     filesystems through their respective trees?  I floated this question
     last week, but have no replies either way.

 (2) The patched afs fs passed xfstests -g quick (unlike the upstream code
     that oopses pretty quickly with caching enabled).  Dave and Jeff's nfs
     and ceph code is getting close, but not quite there yet.

 (3) Al has objections to the ITER_MAPPING iov_iter type that I added

	https://lore.kernel.org/linux-fsdevel/20200719014436.GG2786714@ZenIV.linux.org.uk/

     but note that iov_iter_for_each_range() is not actually used by anything.

     However, Willy likes it and would prefer to make it ITER_XARRAY instead
     as he might be able to use it in other places, though there's an issue
     where I'm calling find_get_pages_contig() which takes a mapping (though
     all it does is then get the xarray out of it).  Willy has made
     suggestions as to how this may be achieved, but I haven't got round to
     looking at them yet.

     Instead I would have to use ITER_BVEC, which has quite a high overhead,
     though it would mean that the RCU read lock wouldn't be necessary.  This
     would require 1K of memory for every 256K block the cache wants to read;
     for any read >1M, I'd have to use vmalloc() instead.

     I'd also prefer not to use ITER_BVEC because the offset and length are
     superfluous here.  If ITER_MAPPING is not good, would it be possible to
     have an ITER_PAGEARRAY that just takes a page array instead?  Or, even,
     create a transient xarray?

 (4) The way object culling is managed needs overhauling too, but that's a
     separate patchset in its own right.  We could wait till that's done
     too, but its lack doesn't prevent what we have now from being used.

David
---
The following changes since commit 9ebcfadb0610322ac537dd7aa5d9cbc2b2894c68:

  Linux 5.8-rc3 (2020-06-28 15:00:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-iter-20200803

for you to fetch changes up to 2f716a79439b100a3ded54b828f9c87582d13f86:

  fscache: disable cookie when doing an invalidation for DIO write (2020-08-03 17:22:36 +0100)

----------------------------------------------------------------
Filesystem caching rewrite

----------------------------------------------------------------
David Howells (59):
      nfs, cifs, ceph, 9p: Disable use of fscache prior to its rewrite
      afs: Disable use of the fscache I/O routines
      fscache: Add a cookie debug ID and use that in traces
      fscache: Procfile to display cookies
      fscache: Remove the old I/O API
      fscache: Remove the netfs data from the cookie
      fscache: Remove struct fscache_cookie_def
      fscache: Remove store_limit* from struct fscache_object
      fscache: Remove fscache_check_consistency()
      fscache: Remove fscache_attr_changed()
      fscache: Remove obsolete stats
      fscache: Remove old I/O tracepoints
      fscache: Temporarily disable fscache_invalidate()
      fscache: Remove the I/O operation manager
      iov_iter: Add ITER_MAPPING
      vm: Add wait/unlock functions for PG_fscache
      vfs: Export rw_verify_area() for use by cachefiles
      vfs: Provide S_CACHE_FILE inode flag
      mm: Provide lru_to_last_page() to get last of a page list
      cachefiles: Remove tree of active files and use S_CACHE_FILE inode flag
      fscache: Provide a simple thread pool for running ops asynchronously
      fscache: Replace the object management state machine
      fscache: Rewrite the I/O API based on iov_iter
      fscache: Keep track of size of a file last set independently on the server
      fscache, cachefiles: Fix disabled histogram warnings
      fscache: Recast assertion in terms of cookie not being an index
      cachefiles: Remove some redundant checks on unsigned values
      cachefiles: trace: Log coherency checks
      cachefiles: Split cachefiles_drop_object() up a bit
      cachefiles: Implement new fscache I/O backend API
      cachefiles: Merge object->backer into object->dentry
      cachefiles: Implement a content-present indicator and bitmap
      cachefiles: Shape read requests
      cachefiles: Round the cachefile size up to DIO block size
      cachefiles: Implement read and write parts of new I/O API
      cachefiles: Add I/O tracepoints
      fscache: Add read helper
      fscache: Display cache-specific data in /proc/fs/fscache/objects
      fscache: Remove more obsolete stats
      fscache: New stats
      fscache, cachefiles: Rewrite invalidation
      fscache: Implement "will_modify" parameter on fscache_use_cookie()
      fscache: Provide resize operation
      fscache: Remove the update operation
      cachefiles: Shape write requests
      afs: Fix interruption of operations
      afs: Move key to afs_read struct
      afs: Don't truncate iter during data fetch
      afs: Log remote unmarshalling errors
      afs: Set up the iov_iter before calling afs_extract_data()
      afs: Use ITER_MAPPING for writing
      afs: Interpose struct fscache_io_request into struct afs_read
      afs: Note the amount transferred in fetch-data delivery
      afs: Wait on PG_fscache before modifying/releasing a page
      afs: Use new fscache I/O API
      afs: Copy local writes to the cache when writing to the server
      afs: Invoke fscache_resize_cookie() when handling ATTR_SIZE for setattr
      afs: Add O_DIRECT read support
      afs: Skip truncation on the server of data we haven't written yet

Jeff Layton (1):
      fscache: disable cookie when doing an invalidation for DIO write

 fs/9p/Kconfig                          |    2 +-
 fs/Makefile                            |    2 +-
 fs/afs/Kconfig                         |    4 +-
 fs/afs/cache.c                         |   54 --
 fs/afs/cell.c                          |    9 +-
 fs/afs/dir.c                           |  242 +++++--
 fs/afs/file.c                          |  577 +++++++--------
 fs/afs/fs_operation.c                  |    4 +-
 fs/afs/fsclient.c                      |  154 ++--
 fs/afs/inode.c                         |  104 ++-
 fs/afs/internal.h                      |   58 +-
 fs/afs/rxrpc.c                         |  150 ++--
 fs/afs/volume.c                        |    9 +-
 fs/afs/write.c                         |  435 +++++++----
 fs/afs/yfsclient.c                     |  113 ++-
 fs/cachefiles/Makefile                 |    3 +-
 fs/cachefiles/bind.c                   |   11 +-
 fs/cachefiles/content-map.c            |  499 +++++++++++++
 fs/cachefiles/daemon.c                 |   10 +-
 fs/cachefiles/interface.c              |  580 ++++++++-------
 fs/cachefiles/internal.h               |  142 ++--
 fs/cachefiles/io.c                     |  325 +++++++++
 fs/cachefiles/main.c                   |   12 +-
 fs/cachefiles/namei.c                  |  508 +++++--------
 fs/cachefiles/rdwr.c                   |  974 -------------------------
 fs/cachefiles/xattr.c                  |  263 +++----
 fs/ceph/Kconfig                        |    2 +-
 fs/cifs/Kconfig                        |    2 +-
 fs/fscache/Kconfig                     |   24 +-
 fs/fscache/Makefile                    |   15 +-
 fs/fscache/cache.c                     |  145 ++--
 fs/fscache/cookie.c                    |  898 ++++++++++-------------
 fs/fscache/dispatcher.c                |  150 ++++
 fs/fscache/fsdef.c                     |   56 +-
 fs/fscache/histogram.c                 |    2 +-
 fs/fscache/internal.h                  |  264 +++----
 fs/fscache/io.c                        |  206 ++++++
 fs/fscache/main.c                      |   35 +-
 fs/fscache/netfs.c                     |   10 +-
 fs/fscache/obj.c                       |  366 ++++++++++
 fs/fscache/object-list.c               |  129 +---
 fs/fscache/object.c                    | 1133 -----------------------------
 fs/fscache/object_bits.c               |  120 +++
 fs/fscache/operation.c                 |  633 ----------------
 fs/fscache/page.c                      | 1248 --------------------------------
 fs/fscache/proc.c                      |   13 +-
 fs/fscache/read_helper.c               |  701 ++++++++++++++++++
 fs/fscache/stats.c                     |  269 +++----
 fs/internal.h                          |    5 -
 fs/nfs/Kconfig                         |    2 +-
 fs/nfs/fscache-index.c                 |    4 +-
 fs/read_write.c                        |    1 +
 include/linux/fs.h                     |    2 +
 include/linux/fscache-cache.h          |  508 +++----------
 include/linux/fscache-obsolete.h       |   13 +
 include/linux/fscache.h                |  834 +++++++++------------
 include/linux/mm.h                     |    1 +
 include/linux/pagemap.h                |   14 +
 include/linux/uio.h                    |   11 +
 include/net/af_rxrpc.h                 |    2 +-
 include/trace/events/afs.h             |   51 +-
 include/trace/events/cachefiles.h      |  285 ++++++--
 include/trace/events/fscache.h         |  428 ++---------
 include/trace/events/fscache_support.h |   97 +++
 lib/iov_iter.c                         |  286 +++++++-
 mm/filemap.c                           |   18 +
 net/rxrpc/recvmsg.c                    |    9 +-
 67 files changed, 5941 insertions(+), 8295 deletions(-)
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
