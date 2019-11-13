Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 841E4FB7ED
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Nov 2019 19:46:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iUxf8-00053Q-G7; Wed, 13 Nov 2019 18:46:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1iUxf6-00053G-Pe
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Nov 2019 18:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jc9HOtVm11oJ6hTl4vpYHHHL+baJO14R4/oWvJOciW8=; b=Z9kL+QbRyiiDaqDgK/p+YDDvnF
 c9jdw+hUWRJCHvCkIETk9J1HDvqY6oFQQ3onFrpiQxd6sErP0LPocOuBGaKw8MfxIZn7JlIgwL/pL
 OlGe+nNK7JG1P1YmSEE1+UHoOeu/cHVj2mo+YUlGlWYIoviwH8aG0MGGJGneWyn1RDJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jc9HOtVm11oJ6hTl4vpYHHHL+baJO14R4/oWvJOciW8=; b=a5dvCunis+vR0ym0M7FcoH+MYn
 EJcTUju1iqMJQ1wkeX1oP2ai0qOi2pCp/OHkOcTCUWnXxTvpEChkf8eX/zYOYfa0VWmC8fSNNNKrP
 cvHbnKxFyDz5/KGRrneISuE62HL4VJ/T6UAaZtJ+OnRahj5zOtUiezzxr9RcUcCuhBvQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUxf3-001tU1-Ef
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Nov 2019 18:46:40 +0000
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net [68.20.15.154])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31A64206F0;
 Wed, 13 Nov 2019 18:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573670787;
 bh=lESbQP5An6nmu6kVw/V4bAiGSPHD+7/u/nvGSyiNHFA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=IY3S1rOeLYoFo6cwP2f0D0wmiBYIEB93tBnn2xWHQstHGXXVgesJUVpJPtbZCyauM
 b3gSWjK1YIXeUFpDGuvxkNB+UnPn9FRzcjdoyqW4zY0by1WtQBb+kt//ITqAQXxXRH
 1D5pENoEbeAWkBrhEZHVMk6ZDWhGkW5zw6E1gmrk=
Message-ID: <3a349de02d646e9f0a2c06405a9081eb44570344.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, Steve French <sfrench@samba.org>, 
 Trond Myklebust <trond.myklebust@hammerspace.com>, Anna Schumaker
 <anna.schumaker@netapp.com>, Steve Dickson <steved@redhat.com>, Alexander
 Viro <viro@zeniv.linux.org.uk>
Date: Wed, 13 Nov 2019 13:46:23 -0500
In-Reply-To: <24942.1573667720@warthog.procyon.org.uk>
References: <24942.1573667720@warthog.procyon.org.uk>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iUxf3-001tU1-Ef
Subject: Re: [V9fs-developer] FS-Cache/CacheFiles rewrite
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
 linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2019-11-13 at 17:55 +0000, David Howells wrote:
> Hi,
> 
> I've been rewriting the local cache for network filesystems with the aim of
> simplifying it, speeding it up, reducing its memory overhead and making it
> more understandable and easier to debug.
> 
> For the moment fscache support is disabled in all network filesystems that
> were using, apart from afs.
> 
> To this end, I have so far made the following changes to fscache:
> 
>  (1) The fscache_cookie_def struct has gone, along with all the callback
>      functions it used to contain.  The filesystem stores the auxiliary data
>      and file size into the cookie and these are written back lazily (possibly
>      too lazily at the moment).  Any necessary information is passed in to
>      fscache_acquire_cookie().
> 
>  (2) The object state machine has been removed and replaced by a much simpler
>      dispatcher that runs the entire cookie instantiation procedure, cookie
>      teardown procedure or cache object withdrawal procedure in one go without
>      breaking it down into cancellable/abortable states.
> 
>      To avoid latency issues, a thread pool is created to which these
>      operations will be handed off if any threads are idle; if no threads are
>      idle, the operation is run in the process that triggered it.
> 
>  (3) The entire I/O API has been deleted and replaced with one that *only*
>      provides a "read cache to iter" function and a "write iter to cache"
>      function.  The cache therefore neither knows nor cares where netfs pages
>      are - and indeed, reads and writes don't need to go to such places.
> 
>  (4) The netfs must allow the cache the opportunity to 'shape' a read from the
>      server, both from ->readpages() and from ->write_begin(), so that the
>      size and start of the read are of a suitably aligned for the cache
>      granularity.  Cachefiles is currently using a 256KiB granule size.
> 
>      A helper is provided to do most of the work: fscache_read_helper().
> 
>  (5) An additional layer, an fscache_io_handle, has been interposed in the I/O
>      API that allows the cache to store transient stuff, such as the open file
>      struct pointer to the backing file for the duration of the netfs file
>      being open.
> 
>      I'm tempted on one hand to merge this into the fscache_object struct and
>      on the other hand to use this to get rid of 'cookie enablement' and allow
>      already open files to be connected to the cache.
> 
>  (6) The PG_fscache bit is now set on a page to indicate that the page is
>      being written to the cache and cleared upon completion.  write_begin,
>      page_mkwrite, releasepage, invalidatepage, etc. can wait on this.
> 
>  (7) Cookie removal now read-locks the semaphore that is used to manage
>      addition and removal of a cache.  This greatly simplifies the logic in
>      detaching an object from a cookie and cleaning it up as relinquishment
>      and withdrawal can't then happen simultaneously.
> 
>      It does mean, though, that cookie relinquishment is held up by cache
>      removal.
> 
> And the following changes to cachefiles:
> 
>  (1) The I/O code has been replaced.  The page waitqueue snooping and deferred
>      backing-page to netfs-page copy is now entirely gone and asynchronous
>      direct I/O through kiocbs is now used instead to effect the transfer of
>      data to/from the cache.
> 
>      This affords a speed increase of something like 40-50% and reduces the
>      amount of memory that is pinned during I/O.
> 
>  (2) bmap() is no longer used to detect the presence of blocks in the
>      filesystem.  With a modern extent based filesystem, this may give both
>      false positives and false negatives if the filesystem optimises an extent
>      by eliminating a block of zeros or adds a block to bridge between two
>      close neighbours.
> 
>      Instead, a content map is stored in an xattr on the backing file, with 1
>      bit per 256KiB block.  The cache shapes the netfs's read requests to
>      request multiple-of-256KiB reads from the server, which are then written
>      back.
> 
>  (3) The content map and attributes are then stored lazily when the object is
>      destroyed.  This may be too lazy.
> 

Having something that just provides a caching facility without so many
tendrils back into the netfs seems like a big improvement.

> To aid this I've added the following:
> 
>  (1) Wait/wake functions for the PG_fscache bit.
> 
>  (2) ITER_MAPPING iterator that refers to a contiguous sequence of pinned
>      pages with no holes in a mapping.  This means you don't have to allocate
>      a sequence of bio_vecs to represent the same thing.
> 
>      As stated, the pages *must* be pinned - such as by PG_locked,
>      PG_writeback or PG_fscache - before iov_iter_mapping() is called to set
>      the mapping up.
> 
> Things that still need doing:
> 
>  (1) afs (and any other netfs) needs to write changes to the cache at the same
>      time it writes them to the server so that the cache doesn't get out of
>      sync.  This is also necessary to implement write-back caching and
>      disconnected operation.
> 
>  (2) The content map is limited by the maximum xattr size.  Is it possible to
>      configure the backing filesystem so that it doesn't merge extents across
>      certain boundaries or eliminate blocks of zeros so that I don't need a
>      content map?
> 
>  (3) Use O_TMPFILE in the cache to effect immediate invalidation.  I/O can
>      then continue to progress whilst the cache driver replaces the linkage.
> 
>  (4) The file in the cache needs to be truncated if the netfs file is
>      shortened by truncation.
> 
>  (5) Data insertion into the cache is not currently checked for space
>      availability.
> 
>  (6) The stats need going over.  Some of them are obsolete and there are no
>      I/O stats working at the moment.
> 
>  (7) Replacement I/O tracepoints are required.
> 
> Future changes:
> 
>  (1) Get rid of cookie enablement.
> 
>  (2) Frame the limit on the cache capacity in terms of an amount of data that
>      can be stored in it rather than an amount of free space that must be
>      kept.
> 
>  (3) Move culling out of cachefilesd into the kernel.
> 
>  (4) Use the I/O handle to add caching to files that are already open, perhaps
>      listing I/O handles from the cache tag.
> 
> Questions:
> 
>  (*) Does it make sense to actually permit multiple caches?
> 

I don't see a lot of value in having more than one per fstype. Given
that the index_key can be as big as you'd reasonably need, it seems
better to just require that the netfs drivers generate keys that are
unique system-wide.

fscache should however, be prepared to deal with collisions between
different drivers (e.g. NFS and ceph). That said, we could just require
that the fs' add some per-fstype value into each index_key.

>  (*) Do we want to allow multiple filesystem instances (think NFS) to use the
>      same cache objects?  fscache no longer knows about the netfs state, and
>      the netfs now just reads and writes to the cache, so it's kind of
>      possible - but coherency management is tricky and would definitely be up
>      to the netfs.

NFS is sort of a difficult example. It aggressively shares superblocks
where it can. You only get multiple inodes for the same server-side
object when you mount with "-o nosharecache" (or some other option
prevents sharing), and at that point you probably don't want to share
objects.

For something like ceph, you could have two mounts with different local
superblocks that point to different subtrees of the root cephfs. In that
configuration we can have two different inodes (in different sb's) for
the same cephfs MDS inode (maybe hardlinked across the two mounted
directories).

I think it comes down to how atomic the read and write operations are.
Are the reads and writes serialized such that a read will block until a
write completes?

Assuming that you won't end up with the data in some half-baked state,
then leaving that up to the netfs seems like the right thing to do. That
seems more in accordance with just having fscache be a simple(r) caching
layer anyway.

> The patches can be found here:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter
> 
> I'm not going to post them for the moment unless someone really wants that.

The diffstat looks great so far!

 62 files changed, 4036 insertions(+), 7095 deletions(-)

-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
