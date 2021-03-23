Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3C3346BFE
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Mar 2021 23:18:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOpLd-0007hW-QW; Tue, 23 Mar 2021 22:18:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lOpLb-0007gw-Ks
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:17:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sTQ4e/xAuzcUxTZmFIaQwY/w13lRQrA/qVwc/tZwtw4=; b=WoLjkqtPIVniU7LXH7+fUPhPYb
 w2WDILysQE63/T1GZ9+xO40tKOjQtbYRJ/58QI/Blq7ixycbY9SlaMiprBZQFWtLqsQz1OvD5DcMT
 JnpQrCskujlrjlsOwzqz1Z4jdq16g+y0ykYLvC4Tz9iWAwQ7iY+yme1tFMqHeDtYZFdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sTQ4e/xAuzcUxTZmFIaQwY/w13lRQrA/qVwc/tZwtw4=; b=E
 7+SX6L8aFxF36s3X+pUI4CrMXK3qBmUuWCZc+50pSWwjmeK5NtuIQ4RGUAxqo0yk6TRV/q3KGlhBA
 gSqJk8QCbDeq9Y8pHyH/AGPkyrUdrTbO46f/TWBmMIVjEJD5UG83+NUt6Mnwm0/YiQWejmQnhk2Ty
 u6NcncGdEl/6kNVw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lOpLN-0006md-SP
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616537859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sTQ4e/xAuzcUxTZmFIaQwY/w13lRQrA/qVwc/tZwtw4=;
 b=OJJm4Tc1gcDd8TZQdMZ0NP8WPF0ojtldG6EfLyMxvCkwxmA7UNa7WtPxvnab9VDsBT13WM
 8uSNZgcJa2ELm0Zk8kzNT9/iv2ZVsBt923Kh3pybbv72H8/2ZpEzZZ1NtBKWRcaqzD/GRT
 CYe7ljpc9PoiynEjD7gn+HCkqstlvjs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-yiMl_McaPYCpOJfY7FAqxQ-1; Tue, 23 Mar 2021 18:17:37 -0400
X-MC-Unique: yiMl_McaPYCpOJfY7FAqxQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 218461853022;
 Tue, 23 Mar 2021 22:17:35 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-58.rdu2.redhat.com
 [10.10.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E0285DEAD;
 Tue, 23 Mar 2021 22:17:28 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 23 Mar 2021 22:17:27 +0000
Message-ID: <161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOpLN-0006md-SP
Subject: [V9fs-developer] [PATCH v5 00/28] Network fs helper library &
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-afs@lists.infradead.org
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

The patchset contains the following parts:

 (1) Some helper patches, including provision of an ITER_XARRAY iov
     iterator and a function to do readahead expansion.

 (2) Patches to add the netfs helper library.

 (3) A patch to add the fscache/cachefiles kiocb API.

 (4) Patches to add support in AFS for this.

Jeff Layton has patches to add support in Ceph for this.

Dave Wysochanski also has patches for NFS for this, though they're not
included on this branch as there's an issue with PNFS.

With this, AFS without a cache passes all expected xfstests; with a cache,
there's an extra failure, but that's also there before these patches.
Fixing that probably requires a greater overhaul.  Ceph and NFS also pass
the expected tests.

These patches can be found also on:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-netfs-lib


Changes
=======

ver #5:
      Fixed some review comments from Matthew Wilcox:

      - Put a comment into netfs_readahead() to indicate why there's a loop
        that puts, but doesn't unlock, "unconsumed" pages at the end when
        it could just return said pages to the caller to dispose of[6].
        (This is because where those pages are marked consumed).

      - Use the page_file_mapping() and page_index() helper functions
      	rather than accessing the page struct directly[6].

      - Better names for wrangling functions for PG_private_2 and
        PG_fscache wrangling functions[7].  Came up with
        {set,end,wait_for}_page_private_2() and aliased these for fscache.

      Moved the taking of/dropping a page ref for the PG_private_2 flag
      into the set and end functions.

ver #4:
      Fixed some review comments from Christoph Hellwig, including dropping
      the export of rw_verify_area()[3] and some minor stuff[4].

      Moved the declaration of readahead_expand() to a better location[5].

      Rebased to v5.12-rc2 and added a bunch of references into individual
      commits.

      Dropped Ceph support - that will go through the maintainer's tree.

      Added interface documentation for the netfs helper library.

ver #3:
      Rolled in the bug fixes.

      Adjusted the functions that unlock and wait for PG_fscache according
      to Linus's suggestion[1].

      Hold a ref on a page when PG_fscache is set as per Linus's
      suggestion[2].

      Dropped NFS support and added Ceph support.

ver #2:
      Fixed some bugs and added NFS support.

Link: https://lore.kernel.org/r/CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com/ [1]
Link: https://lore.kernel.org/r/CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com/ [2]
Link: https://lore.kernel.org/r/20210216102614.GA27555@lst.de/ [3]
Link: https://lore.kernel.org/r/20210216084230.GA23669@lst.de/ [4]
Link: https://lore.kernel.org/r/20210217161358.GM2858050@casper.infradead.org/ [5]
Link: https://lore.kernel.org/r/20210321014202.GF3420@casper.infradead.org/ [6]
Link: https://lore.kernel.org/r/20210321105309.GG3420@casper.infradead.org/ [7]

References
==========

These patches have been published for review before, firstly as part of a
larger set:

Link: https://lore.kernel.org/r/158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk/

Link: https://lore.kernel.org/r/159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk/

Link: https://lore.kernel.org/r/160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk/

Then as a cut-down set:

Link: https://lore.kernel.org/r/161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk/ # v1

Link: https://lore.kernel.org/r/161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk/ # v2

Link: https://lore.kernel.org/r/161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk/ # v3

Link: https://lore.kernel.org/r/161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk/ # v4

Proposals/information about the design has been published here:

Link: https://lore.kernel.org/r/24942.1573667720@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/2758811.1610621106@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/1441311.1598547738@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/160655.1611012999@warthog.procyon.org.uk/

And requests for information:

Link: https://lore.kernel.org/r/3326.1579019665@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/4467.1579020509@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/3577430.1579705075@warthog.procyon.org.uk/

The NFS parts, though not included here, have been tested by someone who's
using fscache in production:

Link: https://listman.redhat.com/archives/linux-cachefs/2020-December/msg00000.html

I've posted partial patches to try and help 9p and cifs along:

Link: https://lore.kernel.org/r/1514086.1605697347@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/1794123.1605713481@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/241017.1612263863@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/270998.1612265397@warthog.procyon.org.uk/

David
---
David Howells (28):
      iov_iter: Add ITER_XARRAY
      mm: Add wait_on_page_writeback_killable()
      mm: Add set/end/wait functions for PG_private_2
      mm: Implement readahead_control pageset expansion
      netfs: Make a netfs helper module
      netfs: Documentation for helper library
      netfs, mm: Move PG_fscache helper funcs to linux/netfs.h
      netfs, mm: Add set/end/wait_on_page_fscache() aliases
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
      afs: Use the fscache_write_begin() helper


 Documentation/filesystems/index.rst         |    1 +
 Documentation/filesystems/netfs_library.rst |  526 +++++++++
 fs/Kconfig                                  |    1 +
 fs/Makefile                                 |    1 +
 fs/afs/Kconfig                              |    1 +
 fs/afs/dir.c                                |  225 ++--
 fs/afs/file.c                               |  483 ++------
 fs/afs/fs_operation.c                       |    4 +-
 fs/afs/fsclient.c                           |  108 +-
 fs/afs/inode.c                              |    7 +-
 fs/afs/internal.h                           |   59 +-
 fs/afs/rxrpc.c                              |  150 +--
 fs/afs/write.c                              |  659 +++++------
 fs/afs/yfsclient.c                          |   82 +-
 fs/cachefiles/Makefile                      |    1 +
 fs/cachefiles/interface.c                   |    5 +-
 fs/cachefiles/internal.h                    |    9 +
 fs/cachefiles/io.c                          |  403 +++++++
 fs/fscache/Kconfig                          |    1 +
 fs/fscache/Makefile                         |    1 +
 fs/fscache/internal.h                       |    4 +
 fs/fscache/io.c                             |  116 ++
 fs/fscache/page.c                           |    2 +-
 fs/fscache/stats.c                          |    1 +
 fs/netfs/Kconfig                            |   23 +
 fs/netfs/Makefile                           |    5 +
 fs/netfs/internal.h                         |   97 ++
 fs/netfs/read_helper.c                      | 1180 +++++++++++++++++++
 fs/netfs/stats.c                            |   59 +
 include/linux/fscache-cache.h               |    4 +
 include/linux/fscache.h                     |   50 +-
 include/linux/netfs.h                       |  228 ++++
 include/linux/pagemap.h                     |   22 +
 include/net/af_rxrpc.h                      |    2 +-
 include/trace/events/afs.h                  |   74 +-
 include/trace/events/netfs.h                |  201 ++++
 mm/filemap.c                                |   59 +
 mm/page-writeback.c                         |   25 +
 mm/readahead.c                              |   70 ++
 net/rxrpc/recvmsg.c                         |    9 +-
 40 files changed, 3888 insertions(+), 1070 deletions(-)
 create mode 100644 Documentation/filesystems/netfs_library.rst
 create mode 100644 fs/cachefiles/io.c
 create mode 100644 fs/fscache/io.c
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
