Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DB72FF14D
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 18:04:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2dNe-0001gc-JL; Thu, 21 Jan 2021 17:04:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bfields@fieldses.org>) id 1l2dNX-0001fi-OI
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 17:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=From:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SMNqchMfCuBnU6URpBi2IppjnSQWbunDX2rP81h8s74=; b=b/Wbp29ZJYfYLmbtcp1XGKupE
 5UBEFNmiSTJG2UUOLSS6BZcyAF/FJCkprssAf2CRiOFMqXeNd/lGYlqvJAsi75LwuvxezP5rQiZYK
 PlRiylZvR26vNd2m72hsRUiCJwdZmTPKiGbP8tQ1P6x2nWgKfcC5Kzx/iyNT0oP9KF8+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=From:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:
 Cc:To:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SMNqchMfCuBnU6URpBi2IppjnSQWbunDX2rP81h8s74=; b=NerNwK8j6OgaXSGtVJKnwWHNNu
 YYf1rq3pem5MbDcZP0o2yd/w2Q2/3w+9ppT99hT6lOeP+kz3Ps5dI3DwYSGffwCtSu7oN+iaM2kAv
 xsDWEw27u3QGkDqVD86qPQDbga9dgnvbaJZyvbGOUE5wo7qJMUtznTJeEIdCcUmIJiZ4=;
Received: from fieldses.org ([173.255.197.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2dMv-003UGt-AZ
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 17:03:54 +0000
Received: by fieldses.org (Postfix, from userid 2815)
 id 936E66EA0; Thu, 21 Jan 2021 11:46:45 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 936E66EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1611247605;
 bh=SMNqchMfCuBnU6URpBi2IppjnSQWbunDX2rP81h8s74=;
 h=Date:To:Cc:Subject:References:In-Reply-To:From:From;
 b=CulROAm4ORn1hRNLMpJWc6E4tPFkYgd7VCJ8OmtPjJpYFmNMaj0YysNe1KlvKYxMa
 o63lHD4YoDYlZWtBNVfCRrdJW5TrJbQ/HHQo6SjdEjrIQPKbkyT2HttWc4EbF6CBcB
 lcPlEf0+SNLGDZt3uQKHFq0iPAT/Fapo/Glc8Tjk=
Date: Thu, 21 Jan 2021 11:46:45 -0500
To: David Howells <dhowells@redhat.com>
Message-ID: <20210121164645.GA20964@fieldses.org>
References: <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
From: bfields@fieldses.org (J. Bruce Fields)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2dMv-003UGt-AZ
Subject: Re: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
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
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jan 20, 2021 at 10:21:24PM +0000, David Howells wrote:
>      Note that this uses SEEK_HOLE/SEEK_DATA to locate the data available
>      to be read from the cache.  Whilst this is an improvement from the
>      bmap interface, it still has a problem with regard to a modern
>      extent-based filesystem inserting or removing bridging blocks of
>      zeros.

What are the consequences from the point of view of a user?

--b.

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
> The patchset contains four parts:
> 
>  (1) Some helper patches, including provision of an ITER_XARRAY iov
>      iterator and a function to do readahead expansion.
> 
>  (2) Patches to add the netfs helper library.
> 
>  (3) A patch to add the fscache/cachefiles kiocb API
> 
>  (4) Patches to add support in AFS for this.
> 
> With this, AFS without a cache passes all expected xfstests; with a cache,
> there's an extra failure, but that's also there before these patches.
> Fixing that probably requires a greater overhaul.
> 
> These patches can be found also on:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-netfs-lib
> 
> David
> ---
> David Howells (24):
>       iov_iter: Add ITER_XARRAY
>       vm: Add wait/unlock functions for PG_fscache
>       mm: Implement readahead_control pageset expansion
>       vfs: Export rw_verify_area() for use by cachefiles
>       netfs: Make a netfs helper module
>       netfs: Provide readahead and readpage netfs helpers
>       netfs: Add tracepoints
>       netfs: Gather stats
>       netfs: Add write_begin helper
>       netfs: Define an interface to talk to a cache
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
>       afs: Use new fscache read helper API
> 
> Takashi Iwai (1):
>       cachefiles: Drop superfluous readpages aops NULL check
> 
> 
>  fs/Kconfig                    |    1 +
>  fs/Makefile                   |    1 +
>  fs/afs/Kconfig                |    1 +
>  fs/afs/dir.c                  |  225 ++++---
>  fs/afs/file.c                 |  472 ++++----------
>  fs/afs/fs_operation.c         |    4 +-
>  fs/afs/fsclient.c             |  108 ++--
>  fs/afs/inode.c                |    7 +-
>  fs/afs/internal.h             |   57 +-
>  fs/afs/rxrpc.c                |  150 ++---
>  fs/afs/write.c                |  610 ++++++++++--------
>  fs/afs/yfsclient.c            |   82 +--
>  fs/cachefiles/Makefile        |    1 +
>  fs/cachefiles/interface.c     |    5 +-
>  fs/cachefiles/internal.h      |    9 +
>  fs/cachefiles/rdwr.c          |    2 -
>  fs/cachefiles/rdwr2.c         |  406 ++++++++++++
>  fs/fscache/Makefile           |    3 +-
>  fs/fscache/internal.h         |    3 +
>  fs/fscache/page.c             |    2 +-
>  fs/fscache/page2.c            |  116 ++++
>  fs/fscache/stats.c            |    1 +
>  fs/internal.h                 |    5 -
>  fs/netfs/Kconfig              |   23 +
>  fs/netfs/Makefile             |    5 +
>  fs/netfs/internal.h           |   97 +++
>  fs/netfs/read_helper.c        | 1142 +++++++++++++++++++++++++++++++++
>  fs/netfs/stats.c              |   57 ++
>  fs/read_write.c               |    1 +
>  include/linux/fs.h            |    1 +
>  include/linux/fscache-cache.h |    4 +
>  include/linux/fscache.h       |   28 +-
>  include/linux/netfs.h         |  167 +++++
>  include/linux/pagemap.h       |   16 +
>  include/net/af_rxrpc.h        |    2 +-
>  include/trace/events/afs.h    |   74 +--
>  include/trace/events/netfs.h  |  201 ++++++
>  mm/filemap.c                  |   18 +
>  mm/readahead.c                |   70 ++
>  net/rxrpc/recvmsg.c           |    9 +-
>  40 files changed, 3171 insertions(+), 1015 deletions(-)
>  create mode 100644 fs/cachefiles/rdwr2.c
>  create mode 100644 fs/fscache/page2.c
>  create mode 100644 fs/netfs/Kconfig
>  create mode 100644 fs/netfs/Makefile
>  create mode 100644 fs/netfs/internal.h
>  create mode 100644 fs/netfs/read_helper.c
>  create mode 100644 fs/netfs/stats.c
>  create mode 100644 include/linux/netfs.h
>  create mode 100644 include/trace/events/netfs.h
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
