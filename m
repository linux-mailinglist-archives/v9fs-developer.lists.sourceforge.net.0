Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE6B36BBF3
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Apr 2021 01:07:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lbAK1-0005Cr-Ra; Mon, 26 Apr 2021 23:07:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lbAJy-0005Cj-Dd
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 23:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DDCps1EIO1ndK3gqf3A3bf+XfvHzvhkT4ktRhE3xeFQ=; b=LRr7hSIgoi+bl1AyIE0A31uLde
 eEJK+uaBmz/jjJvvvjbAUQe487NMs+u0Hbzd53NMqiJ8KQnvKNS53JOZCsQa4jMjC4WWOPi9zsw5p
 fXuQ3uzYqYrIgtLFyqvfB6WEbpSUvhLmCQHrCBE4e4tstuIgb0a59UJdJyjhsNB24o9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DDCps1EIO1ndK3gqf3A3bf+XfvHzvhkT4ktRhE3xeFQ=; b=Ay7kKOahpghkTpTrzORGqAk6R9
 3SGJcEXGoYuVcTrKCaBuqex4uA5PX/5PtYJ8oGEdrFx9maAn9Kd+F0IPSic8LIYtofkxj0k+mc25+
 TjrPY6OFmxt9IbpQ0lENjzC0Wlk/LX+/6jcqjf0LK0XhJ6gy2MBq9Jy8JcXSL0H/C+PU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lbAJp-0004PW-TK
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 23:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619478420;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DDCps1EIO1ndK3gqf3A3bf+XfvHzvhkT4ktRhE3xeFQ=;
 b=CKlplPHpghOQOkj6n/lcsTDkzCZwt8xUqbOzoSxIzl0niyUBlFQ+im0RkF/SWuhPdAPOEe
 W5kE3gevBaVYR0iU7ITehsnnP79p7n8DqgDo1iTup5jhqLawHTpW0OuTX7N25JhnpUjvmR
 bIeXSJyGgqPD6qlOLFF3pb+A3FlH6wI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-iByo3iBqNbqoVQmsZPISMg-1; Mon, 26 Apr 2021 19:06:56 -0400
X-MC-Unique: iByo3iBqNbqoVQmsZPISMg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6347181744F;
 Mon, 26 Apr 2021 23:06:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-20.rdu2.redhat.com
 [10.10.112.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C640910074F1;
 Mon, 26 Apr 2021 23:06:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <3779936.1619478404.1@warthog.procyon.org.uk>
Date: Tue, 27 Apr 2021 00:06:44 +0100
Message-ID: <3779937.1619478404@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lbAJp-0004PW-TK
Subject: [V9fs-developer] [GIT PULL] Network fs helper library & fscache
 kiocb API
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
 linux-mm@kvack.org, linux-afs@lists.infradead.org, linux-cachefs@redhat.com,
 linux-cifs@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Here's a set of patches for 5.13 to begin the process of overhauling the
local caching API for network filesystems.  This set consists of two parts:

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
invalidation is done at this time.

In the near term, I intend to deprecate and remove the old I/O API
(fscache_allocate_page{,s}(), fscache_read_or_alloc_page{,s}(),
fscache_write_page() and fscache_uncache_page()) and eventually replace
most of fscache/cachefiles with something simpler and easier to follow.

This patchset contains the following parts:

 (1) Some helper patches, including provision of an ITER_XARRAY iov
     iterator and a function to do readahead expansion.

 (2) Patches to add the netfs helper library.

 (3) A patch to add the fscache/cachefiles kiocb API.

 (4) A pair of patches to fix some review issues in the ITER_XARRAY and
     read helpers as spotted by Al and Willy.

Jeff Layton has patches to add support in Ceph for this that he intends for
this merge window.  I have a set of patches to support AFS that I will post
a separate pull request for.

With this, AFS without a cache passes all expected xfstests; with a cache,
there's an extra failure, but that's also there before these patches.
Fixing that probably requires a greater overhaul.  Ceph also passes the
expected tests.

I also have patches in a separate branch to tidy up the handling of
PG_fscache/PG_private_2 and their contribution to page refcounting in the
core kernel here, but I haven't included them in this set and will route
them separately.


Changes
=======

      Fixed some ITER_XARRAY issues spotted by Al Viro[14].

      Fixed a kernel doc issue and a couple of potential integer overflows
      in the read helpers spotted by Matthew Wilcox[15].

ver #7:
      Put some missing compound_head() calls in the *_page_private_2()
      functions[11].

      Included a patch from Matthew Wilcox to make it possible to modify
      the readahead_control descriptor in a filesystem without occasionally
      triggering a BUG in the VM core[12].

      Renamed iter_xarray_copy_pages() to iter_xarray_populate_pages() as
      it doesn't copy the contents of the pages, but rather fills out a
      list of pages[13].

ver #6:
      Merged in some fixes and added an additional tracepoint[8], including
      fixing the amalgamation of contiguous subrequests that are to be
      written to the cache.

      Added/merged some patches from Matthew Wilcox to make
      readahead_expand() appropriately adjust the trigger for the next
      readahead[9].  Also included is a patch to kerneldocify the
      file_ra_state struct.

      Altered netfs_write_begin() to use DEFINE_READAHEAD()[10].

      Split the afs patches out into their own branch.

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
Link: https://lore.kernel.org/r/161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk/ [8]
Link: https://lore.kernel.org/r/20210407201857.3582797-1-willy@infradead.org/ [9]
Link: https://lore.kernel.org/r/1234933.1617886271@warthog.procyon.org.uk/ [10]
Link: https://lore.kernel.org/r/20210408145057.GN2531743@casper.infradead.org/ [11]
Link: https://lore.kernel.org/r/20210421170923.4005574-1-willy@infradead.org/ [12]
Link: https://lore.kernel.org/r/27c369a8f42bb8a617672b2dc0126a5c6df5a050.camel@kernel.org [13]
Link: https://lore.kernel.org/r/YIVrJT8GwLI0Wlgx@zeniv-ca.linux.org.uk [14]
Link: https://lore.kernel.org/r/3726642.1619471184@warthog.procyon.org.uk [15]

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
Link: https://lore.kernel.org/r/161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk/ # v6
Link: https://lore.kernel.org/r/161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk # v7

Proposals/information about the design has been published here:

Link: https://lore.kernel.org/r/24942.1573667720@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/2758811.1610621106@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/1441311.1598547738@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/160655.1611012999@warthog.procyon.org.uk/

And requests for information:

Link: https://lore.kernel.org/r/3326.1579019665@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/4467.1579020509@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/3577430.1579705075@warthog.procyon.org.uk/

I've posted partial patches to try and help 9p and cifs along:

Link: https://lore.kernel.org/r/1514086.1605697347@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/1794123.1605713481@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/241017.1612263863@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/270998.1612265397@warthog.procyon.org.uk/

David
---
The following changes since commit 4ee998b0ef8b6d7b1267cd4d953182224929abba:

  Merge tag 'clk-fixes-for-linus' of git://git.kernel.org/pub/scm/linux/kernel/git/clk/linux (2021-03-24 11:26:50 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-lib-20210426

for you to fetch changes up to 53b776c77aca99b663a5512a04abc27670d61058:

  netfs: Miscellaneous fixes (2021-04-26 23:23:41 +0100)

----------------------------------------------------------------
Network filesystem helper library

----------------------------------------------------------------
David Howells (16):
      iov_iter: Add ITER_XARRAY
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
      netfs: Add a tracepoint to log failures that would be otherwise unseen
      fscache, cachefiles: Add alternate API to use kiocb for read/write to cache
      iov_iter: Four fixes for ITER_XARRAY
      netfs: Miscellaneous fixes

Matthew Wilcox (Oracle) (3):
      mm/filemap: Pass the file_ra_state in the ractl
      fs: Document file_ra_state
      mm/readahead: Handle ractl nr_pages being modified

 Documentation/filesystems/index.rst         |    1 +
 Documentation/filesystems/netfs_library.rst |  526 ++++++++++++
 fs/Kconfig                                  |    1 +
 fs/Makefile                                 |    1 +
 fs/cachefiles/Makefile                      |    1 +
 fs/cachefiles/interface.c                   |    5 +-
 fs/cachefiles/internal.h                    |    9 +
 fs/cachefiles/io.c                          |  420 ++++++++++
 fs/ext4/verity.c                            |    2 +-
 fs/f2fs/file.c                              |    2 +-
 fs/f2fs/verity.c                            |    2 +-
 fs/fscache/Kconfig                          |    1 +
 fs/fscache/Makefile                         |    1 +
 fs/fscache/internal.h                       |    4 +
 fs/fscache/io.c                             |  116 +++
 fs/fscache/page.c                           |    2 +-
 fs/fscache/stats.c                          |    1 +
 fs/netfs/Kconfig                            |   23 +
 fs/netfs/Makefile                           |    5 +
 fs/netfs/internal.h                         |   97 +++
 fs/netfs/read_helper.c                      | 1185 +++++++++++++++++++++++++++
 fs/netfs/stats.c                            |   59 ++
 include/linux/fs.h                          |   24 +-
 include/linux/fscache-cache.h               |    4 +
 include/linux/fscache.h                     |   50 +-
 include/linux/netfs.h                       |  234 ++++++
 include/linux/pagemap.h                     |   42 +-
 include/linux/uio.h                         |   10 +
 include/trace/events/netfs.h                |  261 ++++++
 lib/iov_iter.c                              |  318 ++++++-
 mm/filemap.c                                |   65 +-
 mm/internal.h                               |    7 +-
 mm/readahead.c                              |  101 ++-
 33 files changed, 3503 insertions(+), 77 deletions(-)
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
