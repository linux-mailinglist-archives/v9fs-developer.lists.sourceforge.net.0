Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F76C31C4A4
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 01:40:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBoQ8-0000CH-6T; Tue, 16 Feb 2021 00:40:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <smfrench@gmail.com>) id 1lBoQ7-0000CA-Bp
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 00:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xicHfylzCSM6YGN+one5fuBAC6Bh3w7bra1ceUh6ZvM=; b=YH20ysCrl2tWFdWw8ziy89uEBB
 KCn9WoR3klPhinnsoRYiafzdFN4+KOLcP4OdOI4HFquzy7Oe13WtXGuZ0cyC4fm7hXorCY2r/KFoY
 WRwmP+6hPi8kTsSutcLgWsUdEhwRYeKpBgBf9tQKOXivA1qS4V4VUGOEbp56faTuNHr8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xicHfylzCSM6YGN+one5fuBAC6Bh3w7bra1ceUh6ZvM=; b=lqpBBQQg0cgvvr40en7qHBFG/n
 ZO/0Tq41RbKaXQFWATrN9ud7Neo5nxc7q1G4VK7cp0eTDp4I8wGrhGROY98SN8CX0qQiMJbUaOt9/
 rJ2nEb0192BoS25IbjxyTN2FR4EueFNz36zOlP1uHKkN36zArRFtK6nNle3+xOg9vfIc=;
Received: from mail-lj1-f181.google.com ([209.85.208.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lBoQ1-0002V6-18
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 00:40:51 +0000
Received: by mail-lj1-f181.google.com with SMTP id g11so9918120ljj.7
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Feb 2021 16:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xicHfylzCSM6YGN+one5fuBAC6Bh3w7bra1ceUh6ZvM=;
 b=PfK4V6TAQY0sPFFmbEgXZRZwtRDmdfVWXGpCksch7YLii014m7Kc8etXhkoB8fAJAp
 GpsUtFDmERR4ff2stp9oKIgdv0jOsnbYuL8wbP8UOrNcgaOcQeVov/KS0RnB4p1Ld36+
 RrkfsHrJUfUEmUBzy7X27QQD1Vvgx52+42m8avstnUhFiq7kYpomalqFz+IacbFC5kQw
 RSNmGBB9V2WFoUGzgQ3h5TdmhqWxgRmaZ2I1wGUX2s8ZuBfZComOPvqt5hTNpxybiCHw
 UrgAHfVZ+RHF4U4rJ+tb82qJVtjeLUX+2iatI3Wc3WwsmWOHYrgwlonHnOJ4evuOIXda
 LUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xicHfylzCSM6YGN+one5fuBAC6Bh3w7bra1ceUh6ZvM=;
 b=NpTGEsoy+PWCVAzLGdAYdFAUluRc03ispwLOz48sFkNvyjSKXuc4Wl3mrWP8Z+rLQF
 gonCD1eyMQw8ErByDlcTqZKuA26Le9pbsslR7/ZYQPmt4Yicd2J3rcc2TG16QuMaMMBX
 r7FYYLfhqHAvW5vRKuOB3ZWH8ZkMO2QoLcziXMb+oEA7q/qJFuV6YYrU4nsGp8K4gYyl
 s8zpYV8DWqu03xaBuYhYgk9TnI4EV3DxB/bROi3LaEygzAFFzZmwDO2ccrSPFjGNQpK4
 3X/ZY+n069MbfSBXMbh+1ouHzLe0aBDnPpoeFU0jEj3gO3Ch9HTxNS+eIvK0o/cPCAgu
 xhmw==
X-Gm-Message-State: AOAM530Tk+kD5BnCe96x9NXHwZJGaAxPjPm/lGH3Fq//Qi41Onis0I9x
 CKruTCyAK+BrjmsNHeYfI6qFwwuFjjfRWqpmAEg=
X-Google-Smtp-Source: ABdhPJzy94ik1tFw7QxWM1zEMhmTMT/Bm5dhimMsKPcvESs+iEybsgt/cS1kOWOZOprYnaipGNwuw3aAXJHMfzV0q0w=
X-Received: by 2002:a05:651c:548:: with SMTP id
 q8mr10766213ljp.256.1613436038218; 
 Mon, 15 Feb 2021 16:40:38 -0800 (PST)
MIME-Version: 1.0
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
In-Reply-To: <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
From: Steve French <smfrench@gmail.com>
Date: Mon, 15 Feb 2021 18:40:27 -0600
Message-ID: <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
To: Jeff Layton <jlayton@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.181 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBoQ1-0002V6-18
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff,
What are the performance differences you are seeing (positive or
negative) with ceph and netfs, especially with simple examples like
file copy or grep of large files?

It could be good if netfs simplifies the problem experienced by
network filesystems on Linux with readahead on large sequential reads
- where we don't get as much parallelism due to only having one
readahead request at a time (thus in many cases there is 'dead time'
on either the network or the file server while waiting for the next
readpages request to be issued).   This can be a significant
performance problem for current readpages when network latency is long
(or e.g. in cases when network encryption is enabled, and hardware
offload not available so time consuming on the server or client to
encrypt the packet).

Do you see netfs much faster than currentreadpages for ceph?

Have you been able to get much benefit from throttling readahead with
ceph from the current netfs approach for clamping i/o?

On Mon, Feb 15, 2021 at 12:08 PM Jeff Layton <jlayton@redhat.com> wrote:
>
> On Mon, 2021-02-15 at 15:44 +0000, David Howells wrote:
> > Here's a set of patches to do two things:
> >
> >  (1) Add a helper library to handle the new VM readahead interface.  This
> >      is intended to be used unconditionally by the filesystem (whether or
> >      not caching is enabled) and provides a common framework for doing
> >      caching, transparent huge pages and, in the future, possibly fscrypt
> >      and read bandwidth maximisation.  It also allows the netfs and the
> >      cache to align, expand and slice up a read request from the VM in
> >      various ways; the netfs need only provide a function to read a stretch
> >      of data to the pagecache and the helper takes care of the rest.
> >
> >  (2) Add an alternative fscache/cachfiles I/O API that uses the kiocb
> >      facility to do async DIO to transfer data to/from the netfs's pages,
> >      rather than using readpage with wait queue snooping on one side and
> >      vfs_write() on the other.  It also uses less memory, since it doesn't
> >      do buffered I/O on the backing file.
> >
> >      Note that this uses SEEK_HOLE/SEEK_DATA to locate the data available
> >      to be read from the cache.  Whilst this is an improvement from the
> >      bmap interface, it still has a problem with regard to a modern
> >      extent-based filesystem inserting or removing bridging blocks of
> >      zeros.  Fixing that requires a much greater overhaul.
> >
> > This is a step towards overhauling the fscache API.  The change is opt-in
> > on the part of the network filesystem.  A netfs should not try to mix the
> > old and the new API because of conflicting ways of handling pages and the
> > PG_fscache page flag and because it would be mixing DIO with buffered I/O.
> > Further, the helper library can't be used with the old API.
> >
> > This does not change any of the fscache cookie handling APIs or the way
> > invalidation is done.
> >
> > In the near term, I intend to deprecate and remove the old I/O API
> > (fscache_allocate_page{,s}(), fscache_read_or_alloc_page{,s}(),
> > fscache_write_page() and fscache_uncache_page()) and eventually replace
> > most of fscache/cachefiles with something simpler and easier to follow.
> >
> > The patchset contains five parts:
> >
> >  (1) Some helper patches, including provision of an ITER_XARRAY iov
> >      iterator and a function to do readahead expansion.
> >
> >  (2) Patches to add the netfs helper library.
> >
> >  (3) A patch to add the fscache/cachefiles kiocb API.
> >
> >  (4) Patches to add support in AFS for this.
> >
> >  (5) Patches from Jeff Layton to add support in Ceph for this.
> >
> > Dave Wysochanski also has patches for NFS for this, though they're not
> > included on this branch as there's an issue with PNFS.
> >
> > With this, AFS without a cache passes all expected xfstests; with a cache,
> > there's an extra failure, but that's also there before these patches.
> > Fixing that probably requires a greater overhaul.  Ceph and NFS also pass
> > the expected tests.
> >
> > These patches can be found also on:
> >
> >       https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-netfs-lib
> >
> > For diffing reference, the tag for the 9th Feb pull request is
> > fscache-ioapi-20210203 and can be found in the same repository.
> >
> >
> >
> > Changes
> > =======
> >
> >  (v3) Rolled in the bug fixes.
> >
> >       Adjusted the functions that unlock and wait for PG_fscache according
> >       to Linus's suggestion.
> >
> >       Hold a ref on a page when PG_fscache is set as per Linus's
> >       suggestion.
> >
> >       Dropped NFS support and added Ceph support.
> >
> >  (v2) Fixed some bugs and added NFS support.
> >
> >
> > References
> > ==========
> >
> > These patches have been published for review before, firstly as part of a
> > larger set:
> >
> > Link: https://lore.kernel.org/linux-fsdevel/158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk/
> >
> > Link: https://lore.kernel.org/linux-fsdevel/159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk/
> >
> > Link: https://lore.kernel.org/linux-fsdevel/160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk/
> >
> > Then as a cut-down set:
> >
> > Link: https://lore.kernel.org/linux-fsdevel/161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk/
> >
> > Link: https://lore.kernel.org/linux-fsdevel/161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk/
> >
> >
> > Proposals/information about the design has been published here:
> >
> > Link: https://lore.kernel.org/lkml/24942.1573667720@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/2758811.1610621106@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/1441311.1598547738@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/160655.1611012999@warthog.procyon.org.uk/
> >
> > And requests for information:
> >
> > Link: https://lore.kernel.org/linux-fsdevel/3326.1579019665@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/4467.1579020509@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/3577430.1579705075@warthog.procyon.org.uk/
> >
> > The NFS parts, though not included here, have been tested by someone who's
> > using fscache in production:
> >
> > Link: https://listman.redhat.com/archives/linux-cachefs/2020-December/msg00000.html
> >
> > I've posted partial patches to try and help 9p and cifs along:
> >
> > Link: https://lore.kernel.org/linux-fsdevel/1514086.1605697347@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-cifs/1794123.1605713481@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-fsdevel/241017.1612263863@warthog.procyon.org.uk/
> > Link: https://lore.kernel.org/linux-cifs/270998.1612265397@warthog.procyon.org.uk/
> >
> > David
> > ---
> > David Howells (27):
> >       iov_iter: Add ITER_XARRAY
> >       mm: Add an unlock function for PG_private_2/PG_fscache
> >       mm: Implement readahead_control pageset expansion
> >       vfs: Export rw_verify_area() for use by cachefiles
> >       netfs: Make a netfs helper module
> >       netfs, mm: Move PG_fscache helper funcs to linux/netfs.h
> >       netfs, mm: Add unlock_page_fscache() and wait_on_page_fscache()
> >       netfs: Provide readahead and readpage netfs helpers
> >       netfs: Add tracepoints
> >       netfs: Gather stats
> >       netfs: Add write_begin helper
> >       netfs: Define an interface to talk to a cache
> >       netfs: Hold a ref on a page when PG_private_2 is set
> >       fscache, cachefiles: Add alternate API to use kiocb for read/write to cache
> >       afs: Disable use of the fscache I/O routines
> >       afs: Pass page into dirty region helpers to provide THP size
> >       afs: Print the operation debug_id when logging an unexpected data version
> >       afs: Move key to afs_read struct
> >       afs: Don't truncate iter during data fetch
> >       afs: Log remote unmarshalling errors
> >       afs: Set up the iov_iter before calling afs_extract_data()
> >       afs: Use ITER_XARRAY for writing
> >       afs: Wait on PG_fscache before modifying/releasing a page
> >       afs: Extract writeback extension into its own function
> >       afs: Prepare for use of THPs
> >       afs: Use the fs operation ops to handle FetchData completion
> >       afs: Use new fscache read helper API
> >
> > Jeff Layton (6):
> >       ceph: disable old fscache readpage handling
> >       ceph: rework PageFsCache handling
> >       ceph: fix fscache invalidation
> >       ceph: convert readpage to fscache read helper
> >       ceph: plug write_begin into read helper
> >       ceph: convert ceph_readpages to ceph_readahead
> >
> >
> >  fs/Kconfig                    |    1 +
> >  fs/Makefile                   |    1 +
> >  fs/afs/Kconfig                |    1 +
> >  fs/afs/dir.c                  |  225 ++++---
> >  fs/afs/file.c                 |  470 ++++---------
> >  fs/afs/fs_operation.c         |    4 +-
> >  fs/afs/fsclient.c             |  108 +--
> >  fs/afs/inode.c                |    7 +-
> >  fs/afs/internal.h             |   58 +-
> >  fs/afs/rxrpc.c                |  150 ++---
> >  fs/afs/write.c                |  610 +++++++++--------
> >  fs/afs/yfsclient.c            |   82 +--
> >  fs/cachefiles/Makefile        |    1 +
> >  fs/cachefiles/interface.c     |    5 +-
> >  fs/cachefiles/internal.h      |    9 +
> >  fs/cachefiles/rdwr2.c         |  412 ++++++++++++
> >  fs/ceph/Kconfig               |    1 +
> >  fs/ceph/addr.c                |  535 ++++++---------
> >  fs/ceph/cache.c               |  125 ----
> >  fs/ceph/cache.h               |  101 +--
> >  fs/ceph/caps.c                |   10 +-
> >  fs/ceph/inode.c               |    1 +
> >  fs/ceph/super.h               |    1 +
> >  fs/fscache/Kconfig            |    1 +
> >  fs/fscache/Makefile           |    3 +-
> >  fs/fscache/internal.h         |    3 +
> >  fs/fscache/page.c             |    2 +-
> >  fs/fscache/page2.c            |  117 ++++
> >  fs/fscache/stats.c            |    1 +
> >  fs/internal.h                 |    5 -
> >  fs/netfs/Kconfig              |   23 +
> >  fs/netfs/Makefile             |    5 +
> >  fs/netfs/internal.h           |   97 +++
> >  fs/netfs/read_helper.c        | 1169 +++++++++++++++++++++++++++++++++
> >  fs/netfs/stats.c              |   59 ++
> >  fs/read_write.c               |    1 +
> >  include/linux/fs.h            |    1 +
> >  include/linux/fscache-cache.h |    4 +
> >  include/linux/fscache.h       |   40 +-
> >  include/linux/netfs.h         |  195 ++++++
> >  include/linux/pagemap.h       |    3 +
> >  include/net/af_rxrpc.h        |    2 +-
> >  include/trace/events/afs.h    |   74 +--
> >  include/trace/events/netfs.h  |  201 ++++++
> >  mm/filemap.c                  |   20 +
> >  mm/readahead.c                |   70 ++
> >  net/rxrpc/recvmsg.c           |    9 +-
> >  47 files changed, 3473 insertions(+), 1550 deletions(-)
> >  create mode 100644 fs/cachefiles/rdwr2.c
> >  create mode 100644 fs/fscache/page2.c
> >  create mode 100644 fs/netfs/Kconfig
> >  create mode 100644 fs/netfs/Makefile
> >  create mode 100644 fs/netfs/internal.h
> >  create mode 100644 fs/netfs/read_helper.c
> >  create mode 100644 fs/netfs/stats.c
> >  create mode 100644 include/linux/netfs.h
> >  create mode 100644 include/trace/events/netfs.h
> >
> >
>
> Thanks David,
>
> I did an xfstests run on ceph with a kernel based on this and it seemed
> to do fine. I'll plan to pull this into the ceph-client/testing branch
> and run it through the ceph kclient test harness. There are only a few
> differences from the last run we did, so I'm not expecting big changes,
> but I'll keep you posted.
>
> --
> Jeff Layton <jlayton@redhat.com>
>


-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
