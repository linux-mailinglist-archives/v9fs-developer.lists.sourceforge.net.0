Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED8C35F310
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Apr 2021 13:59:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lWeBC-0000ae-RL; Wed, 14 Apr 2021 11:59:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <marc.c.dionne@gmail.com>) id 1lWe8Y-0000TC-Bo
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Apr 2021 11:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TeHCGp8Fnjd9cqwePLpApVoqQbpi3U5O7WdmIeZmvPg=; b=GFBSpL//V3aEeg5kuwK35JuUnA
 2rKuTprsUrZoevBLY2uIaHkmAI9FQk6zG5CcR9+5mw2S5XV34aHZ4n4pEbMPoA6gZ9ztOVa4dZ2DV
 rwTjubXR9D3AE9/h/fDNPVTXCWu9r4vPXYe3JB9fhDqD9bVt6ZmMEDv0heo4JjIRk52E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TeHCGp8Fnjd9cqwePLpApVoqQbpi3U5O7WdmIeZmvPg=; b=Ae7+h2WqhWno9B4+o/rOOIGkyZ
 6x9rrm+5yPDHjUfKQKvg9RvHJ3xUsQQnCJiLXlrodDFamdVhukk+D2b6q9wRU0nM6+qLkXvONLwhW
 cClXzTK6IdGB8Gob4g3inklMzQ+k7k472/neoghoPPHKH2sbukoiXf1l4p3T5GZq+SP4=;
Received: from mail-lj1-f181.google.com ([209.85.208.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lWe8P-0032DA-OD
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Apr 2021 11:56:50 +0000
Received: by mail-lj1-f181.google.com with SMTP id a25so9665117ljm.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 14 Apr 2021 04:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TeHCGp8Fnjd9cqwePLpApVoqQbpi3U5O7WdmIeZmvPg=;
 b=oitKTGlxXcNUgOMNogl5WojVGqcsyD4SdxtG40vBg0EmX9e9OcOZaiPFOVng0L0UA3
 w8goFUdLetdckrjRJhNPjxfRSDUChcILfMBQAzsKxDevy6Rl/eLBHoVSqu5eyZK/7jdC
 xgQIPmR4Zem0RLryea7MGNGiI/y0DzhwQyWl9m+RB7vvc8PIi9IgKg+GoNYo8FIZcnnB
 nw12kMy2hRjKN6yPBWY20XEP+nh29tnC5nOPY4ntyYAy+agIhT6RwN7gsxZ6TagNXImW
 pX5pPgM7GGKAWgMFF1wmkecaaK5++04XSU/m4wlwNJNh9Ix2Kw3Nxynoe8itxPHh3w0G
 w+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TeHCGp8Fnjd9cqwePLpApVoqQbpi3U5O7WdmIeZmvPg=;
 b=EeIV0KOmThMlpOQmalDIJr9lYWqLlIP2m74vYKtOzqHx+KbNoosgiLNqXL8jy635tt
 5yLDWTresFSTSIstXNbVFJ/upq+xjEqyq1m1WVx7/5M34LUpP5zvUdyXlSxls9z6hiy2
 ItjM/EqEhD5It+iEaT6SCtCp4H78Qb34DrGfN4DKEAN0KMskMO9wvrfJa3vbULSj+yW0
 UNH33J1vbv+XSzgWsxjetyh0ZFPFXxNdZUAmOWLXwS/eW5mSduti98rS4ihmH0Qtjpcp
 PSG7anYNF2j4svbRhFlN++Cie20KKTlTXu2+VLN5YlWEC5RzuXG4axiDG1HsIxvEBeqT
 cjbg==
X-Gm-Message-State: AOAM531c+wjKyPU0Nnv0BSZjlDLGQzMIZjLy98VlO9wVeWRc3APXxRkf
 vZKCRpdQlLJ5a49lZdceuNaWBiTpbxTL9WywJehK7m6cFK8=
X-Google-Smtp-Source: ABdhPJxwUTISoGBweRs9Vb0itSg7niGlV71i9hDrMPQ3X1AAZ3QZwLh8CYAvYBSM9uIOkeN7N83muiPdpGzZNoBkvq4=
X-Received: by 2002:adf:cd82:: with SMTP id q2mr23094241wrj.255.1618330923691; 
 Tue, 13 Apr 2021 09:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
From: Marc Dionne <marc.c.dionne@gmail.com>
Date: Tue, 13 Apr 2021 13:21:52 -0300
Message-ID: <CAB9dFdug7J0ygzW8-yq8EpYv6OG2zAmTeptHzQfZfnu5cwrqiQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: auristor.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (marc.c.dionne[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.181 listed in wl.mailspike.net]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lWe8P-0032DA-OD
Subject: Re: [V9fs-developer] [PATCH v6 00/30] Network fs helper library &
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Apr 8, 2021 at 11:04 AM David Howells <dhowells@redhat.com> wrote:
>
>
> Here's a set of patches to do two things:
>
>  (1) Add a helper library to handle the new VM readahead interface.  This
>      is intended to be used unconditionally by the filesystem (whether or
>      not caching is enabled) and provides a common framework for doing
>      caching, transparent huge pages and, in the future, possibly fscrypt
>      and read bandwidth maximisation.  It also allows the netfs and the
>      cache to align, expand and slice up a read request from the VM in
>      various ways; the netfs need only provide a function to read a stretch
>      of data to the pagecache and the helper takes care of the rest.
>
>  (2) Add an alternative fscache/cachfiles I/O API that uses the kiocb
>      facility to do async DIO to transfer data to/from the netfs's pages,
>      rather than using readpage with wait queue snooping on one side and
>      vfs_write() on the other.  It also uses less memory, since it doesn't
>      do buffered I/O on the backing file.
>
>      Note that this uses SEEK_HOLE/SEEK_DATA to locate the data available
>      to be read from the cache.  Whilst this is an improvement from the
>      bmap interface, it still has a problem with regard to a modern
>      extent-based filesystem inserting or removing bridging blocks of
>      zeros.  Fixing that requires a much greater overhaul.
>
> This is a step towards overhauling the fscache API.  The change is opt-in
> on the part of the network filesystem.  A netfs should not try to mix the
> old and the new API because of conflicting ways of handling pages and the
> PG_fscache page flag and because it would be mixing DIO with buffered I/O.
> Further, the helper library can't be used with the old API.
>
> This does not change any of the fscache cookie handling APIs or the way
> invalidation is done.
>
> In the near term, I intend to deprecate and remove the old I/O API
> (fscache_allocate_page{,s}(), fscache_read_or_alloc_page{,s}(),
> fscache_write_page() and fscache_uncache_page()) and eventually replace
> most of fscache/cachefiles with something simpler and easier to follow.
>
> The patchset contains the following parts:
>
>  (1) Some helper patches, including provision of an ITER_XARRAY iov
>      iterator and a function to do readahead expansion.
>
>  (2) Patches to add the netfs helper library.
>
>  (3) A patch to add the fscache/cachefiles kiocb API.
>
>  (4) Patches to add support in AFS for this.
>
> Jeff Layton has patches to add support in Ceph for this.
>
> With this, AFS without a cache passes all expected xfstests; with a cache,
> there's an extra failure, but that's also there before these patches.
> Fixing that probably requires a greater overhaul.  Ceph also passes the
> expected tests.
>
> The netfs lib and fscache/cachefiles patches can be found also on:
>
>         https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=netfs-lib
>
> The afs patches can be found on:
>
>         https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=afs-netfs-lib
>
>
> Changes
> =======
>
> ver #6:
>       Merged in some fixes and added an additional tracepoint[8], including
>       fixing the amalgamation of contiguous subrequests that are to be
>       written to the cache.
>
>       Added/merged some patches from Matthew Wilcox to make
>       readahead_expand() appropriately adjust the trigger for the next
>       readahead[9].  Also included is a patch to kerneldocify the
>       file_ra_state struct.
>
>       Altered netfs_write_begin() to use DEFINE_READAHEAD()[10].
>
>       Split the afs patches out into their own branch.
>
> ver #5:
>       Fixed some review comments from Matthew Wilcox:
>
>       - Put a comment into netfs_readahead() to indicate why there's a loop
>         that puts, but doesn't unlock, "unconsumed" pages at the end when
>         it could just return said pages to the caller to dispose of[6].
>         (This is because where those pages are marked consumed).
>
>       - Use the page_file_mapping() and page_index() helper functions
>         rather than accessing the page struct directly[6].
>
>       - Better names for wrangling functions for PG_private_2 and
>         PG_fscache wrangling functions[7].  Came up with
>         {set,end,wait_for}_page_private_2() and aliased these for fscache.
>
>       Moved the taking of/dropping a page ref for the PG_private_2 flag
>       into the set and end functions.
>
> ver #4:
>       Fixed some review comments from Christoph Hellwig, including dropping
>       the export of rw_verify_area()[3] and some minor stuff[4].
>
>       Moved the declaration of readahead_expand() to a better location[5].
>
>       Rebased to v5.12-rc2 and added a bunch of references into individual
>       commits.
>
>       Dropped Ceph support - that will go through the maintainer's tree.
>
>       Added interface documentation for the netfs helper library.
>
> ver #3:
>       Rolled in the bug fixes.
>
>       Adjusted the functions that unlock and wait for PG_fscache according
>       to Linus's suggestion[1].
>
>       Hold a ref on a page when PG_fscache is set as per Linus's
>       suggestion[2].
>
>       Dropped NFS support and added Ceph support.
>
> ver #2:
>       Fixed some bugs and added NFS support.
>
> Link: https://lore.kernel.org/r/CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com/ [1]
> Link: https://lore.kernel.org/r/CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com/ [2]
> Link: https://lore.kernel.org/r/20210216102614.GA27555@lst.de/ [3]
> Link: https://lore.kernel.org/r/20210216084230.GA23669@lst.de/ [4]
> Link: https://lore.kernel.org/r/20210217161358.GM2858050@casper.infradead.org/ [5]
> Link: https://lore.kernel.org/r/20210321014202.GF3420@casper.infradead.org/ [6]
> Link: https://lore.kernel.org/r/20210321105309.GG3420@casper.infradead.org/ [7]
> Link: https://lore.kernel.org/r/161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk/ [8]
> Link: https://lore.kernel.org/r/20210407201857.3582797-1-willy@infradead.org/ [9]
> Link: https://lore.kernel.org/r/1234933.1617886271@warthog.procyon.org.uk/ [10]
>
> References
> ==========
>
> These patches have been published for review before, firstly as part of a
> larger set:
>
> Link: https://lore.kernel.org/r/158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk/
>
> Link: https://lore.kernel.org/r/159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk/
>
> Link: https://lore.kernel.org/r/160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk/
>
> Then as a cut-down set:
>
> Link: https://lore.kernel.org/r/161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk/ # v1
>
> Link: https://lore.kernel.org/r/161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk/ # v2
>
> Link: https://lore.kernel.org/r/161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk/ # v3
>
> Link: https://lore.kernel.org/r/161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk/ # v4
>
> Link: https://lore.kernel.org/r/161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk/ # v5
>
> Proposals/information about the design has been published here:
>
> Link: https://lore.kernel.org/r/24942.1573667720@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/2758811.1610621106@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/1441311.1598547738@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/160655.1611012999@warthog.procyon.org.uk/
>
> And requests for information:
>
> Link: https://lore.kernel.org/r/3326.1579019665@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/4467.1579020509@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/3577430.1579705075@warthog.procyon.org.uk/
>
> I've posted partial patches to try and help 9p and cifs along:
>
> Link: https://lore.kernel.org/r/1514086.1605697347@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/1794123.1605713481@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/241017.1612263863@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/270998.1612265397@warthog.procyon.org.uk/
>
> David
> ---
> David Howells (28):
>       iov_iter: Add ITER_XARRAY
>       mm: Add set/end/wait functions for PG_private_2
>       mm: Implement readahead_control pageset expansion
>       netfs: Make a netfs helper module
>       netfs: Documentation for helper library
>       netfs, mm: Move PG_fscache helper funcs to linux/netfs.h
>       netfs, mm: Add set/end/wait_on_page_fscache() aliases
>       netfs: Provide readahead and readpage netfs helpers
>       netfs: Add tracepoints
>       netfs: Gather stats
>       netfs: Add write_begin helper
>       netfs: Define an interface to talk to a cache
>       netfs: Add a tracepoint to log failures that would be otherwise unseen
>       fscache, cachefiles: Add alternate API to use kiocb for read/write to cache
>       afs: Disable use of the fscache I/O routines
>       afs: Pass page into dirty region helpers to provide THP size
>       afs: Print the operation debug_id when logging an unexpected data version
>       afs: Move key to afs_read struct
>       afs: Don't truncate iter during data fetch
>       afs: Log remote unmarshalling errors
>       afs: Set up the iov_iter before calling afs_extract_data()
>       afs: Use ITER_XARRAY for writing
>       afs: Wait on PG_fscache before modifying/releasing a page
>       afs: Extract writeback extension into its own function
>       afs: Prepare for use of THPs
>       afs: Use the fs operation ops to handle FetchData completion
>       afs: Use new netfs lib read helper API
>       afs: Use the netfs_write_begin() helper
>
> Matthew Wilcox (Oracle) (2):
>       mm/filemap: Pass the file_ra_state in the ractl
>       fs: Document file_ra_state
>
>
>  Documentation/filesystems/index.rst         |    1 +
>  Documentation/filesystems/netfs_library.rst |  526 ++++++++
>  fs/Kconfig                                  |    1 +
>  fs/Makefile                                 |    1 +
>  fs/afs/Kconfig                              |    1 +
>  fs/afs/dir.c                                |  225 ++--
>  fs/afs/file.c                               |  483 ++------
>  fs/afs/fs_operation.c                       |    4 +-
>  fs/afs/fsclient.c                           |  108 +-
>  fs/afs/inode.c                              |    7 +-
>  fs/afs/internal.h                           |   59 +-
>  fs/afs/rxrpc.c                              |  150 +--
>  fs/afs/write.c                              |  657 +++++-----
>  fs/afs/yfsclient.c                          |   82 +-
>  fs/cachefiles/Makefile                      |    1 +
>  fs/cachefiles/interface.c                   |    5 +-
>  fs/cachefiles/internal.h                    |    9 +
>  fs/cachefiles/io.c                          |  420 +++++++
>  fs/ext4/verity.c                            |    2 +-
>  fs/f2fs/file.c                              |    2 +-
>  fs/f2fs/verity.c                            |    2 +-
>  fs/fscache/Kconfig                          |    1 +
>  fs/fscache/Makefile                         |    1 +
>  fs/fscache/internal.h                       |    4 +
>  fs/fscache/io.c                             |  116 ++
>  fs/fscache/page.c                           |    2 +-
>  fs/fscache/stats.c                          |    1 +
>  fs/netfs/Kconfig                            |   23 +
>  fs/netfs/Makefile                           |    5 +
>  fs/netfs/internal.h                         |   97 ++
>  fs/netfs/read_helper.c                      | 1185 +++++++++++++++++++
>  fs/netfs/stats.c                            |   59 +
>  include/linux/fs.h                          |   24 +-
>  include/linux/fscache-cache.h               |    4 +
>  include/linux/fscache.h                     |   50 +-
>  include/linux/netfs.h                       |  234 ++++
>  include/linux/pagemap.h                     |   41 +-
>  include/net/af_rxrpc.h                      |    2 +-
>  include/trace/events/afs.h                  |   74 +-
>  include/trace/events/netfs.h                |  261 ++++
>  mm/filemap.c                                |   63 +-
>  mm/internal.h                               |    7 +-
>  mm/readahead.c                              |   97 +-
>  net/rxrpc/recvmsg.c                         |    9 +-
>  44 files changed, 3998 insertions(+), 1108 deletions(-)
>  create mode 100644 Documentation/filesystems/netfs_library.rst
>  create mode 100644 fs/cachefiles/io.c
>  create mode 100644 fs/fscache/io.c
>  create mode 100644 fs/netfs/Kconfig
>  create mode 100644 fs/netfs/Makefile
>  create mode 100644 fs/netfs/internal.h
>  create mode 100644 fs/netfs/read_helper.c
>  create mode 100644 fs/netfs/stats.c
>  create mode 100644 include/linux/netfs.h
>  create mode 100644 include/trace/events/netfs.h
>
>

You can add:
Tested-By: Marc Dionne <marc.dionne@auristor.com>

for the series, including the afs changes.  Ran it through automated
testing that does kernel builds in an AFS mount, both with and without
cachefilesd running.

Marc


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
