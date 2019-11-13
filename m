Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CA2FB6B0
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Nov 2019 18:55:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iUwrv-0005gD-0I; Wed, 13 Nov 2019 17:55:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1iUwrt-0005g6-U4
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Nov 2019 17:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-ID:
 Date:Content-ID:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5hOxiCMZkC2udYRqxzprYUCZjx83pEXI0qIX/cevzrU=; b=RiRQw4Bo3SbgVtgIBKYvdGbCgZ
 8pLEZCBnLHIsVBRuQ5ofJXhdFYZLfQJvCcQcHY0SYMgAI6wCgx+1ZaUHFCEh9aP2cZrEIwA0wfHCq
 6D1pNoNw++flSHjp85WjYKVbm6LXl/PqpiQuUYQWe1YWwAR2j/qlOxRxF9i/87jUSrEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:Date:Content-ID:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5hOxiCMZkC2udYRqxzprYUCZjx83pEXI0qIX/cevzrU=; b=LX+oaAydIkVvXFXNInON8jqjQn
 i6zGMA2CUCPn5vBb+UyJkXN4ralH80rjXTA7BlWNmhxqs+Qw1RSoyd8/I67OerfkJAAQdXW20+xD/
 8Ov9jwifzb+POzDQQaKpwUqk363xi0FpUZy0cIjw+9wKpooC59Poq8bCmbmZOA2jt900=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iUwro-001pNE-I9
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Nov 2019 17:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573667735;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5hOxiCMZkC2udYRqxzprYUCZjx83pEXI0qIX/cevzrU=;
 b=Bw2kzPdq9228pqSpVsjnjm7aNa7XsgXAWSxfD1FHpLRsYZaKcPAGpdEguXQwCryLwRuemO
 DWw2olJtQqFzWBrTkr9PfPLYIf4006QgesMld82m1G0itW/c9JGP/txcFtsbLvE1ZR1APm
 hHx2mnneTzReyFR9pne3zYsZt5g+BPo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-DAVqcWd6PVu2hWaYQGOl4Q-1; Wed, 13 Nov 2019 12:55:31 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 368B21088890;
 Wed, 13 Nov 2019 17:55:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-120-254.rdu2.redhat.com
 [10.10.120.254])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F49D620A5;
 Wed, 13 Nov 2019 17:55:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Steve French <sfrench@samba.org>, Jeff Layton <jlayton@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Steve Dickson <steved@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <24941.1573667720.1@warthog.procyon.org.uk>
Date: Wed, 13 Nov 2019 17:55:20 +0000
Message-ID: <24942.1573667720@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: DAVqcWd6PVu2hWaYQGOl4Q-1
X-Mimecast-Spam-Score: 0
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
X-Headers-End: 1iUwro-001pNE-I9
Subject: [V9fs-developer] FS-Cache/CacheFiles rewrite
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
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

I've been rewriting the local cache for network filesystems with the aim of
simplifying it, speeding it up, reducing its memory overhead and making it
more understandable and easier to debug.

For the moment fscache support is disabled in all network filesystems that
were using, apart from afs.

To this end, I have so far made the following changes to fscache:

 (1) The fscache_cookie_def struct has gone, along with all the callback
     functions it used to contain.  The filesystem stores the auxiliary data
     and file size into the cookie and these are written back lazily (possibly
     too lazily at the moment).  Any necessary information is passed in to
     fscache_acquire_cookie().

 (2) The object state machine has been removed and replaced by a much simpler
     dispatcher that runs the entire cookie instantiation procedure, cookie
     teardown procedure or cache object withdrawal procedure in one go without
     breaking it down into cancellable/abortable states.

     To avoid latency issues, a thread pool is created to which these
     operations will be handed off if any threads are idle; if no threads are
     idle, the operation is run in the process that triggered it.

 (3) The entire I/O API has been deleted and replaced with one that *only*
     provides a "read cache to iter" function and a "write iter to cache"
     function.  The cache therefore neither knows nor cares where netfs pages
     are - and indeed, reads and writes don't need to go to such places.

 (4) The netfs must allow the cache the opportunity to 'shape' a read from the
     server, both from ->readpages() and from ->write_begin(), so that the
     size and start of the read are of a suitably aligned for the cache
     granularity.  Cachefiles is currently using a 256KiB granule size.

     A helper is provided to do most of the work: fscache_read_helper().

 (5) An additional layer, an fscache_io_handle, has been interposed in the I/O
     API that allows the cache to store transient stuff, such as the open file
     struct pointer to the backing file for the duration of the netfs file
     being open.

     I'm tempted on one hand to merge this into the fscache_object struct and
     on the other hand to use this to get rid of 'cookie enablement' and allow
     already open files to be connected to the cache.

 (6) The PG_fscache bit is now set on a page to indicate that the page is
     being written to the cache and cleared upon completion.  write_begin,
     page_mkwrite, releasepage, invalidatepage, etc. can wait on this.

 (7) Cookie removal now read-locks the semaphore that is used to manage
     addition and removal of a cache.  This greatly simplifies the logic in
     detaching an object from a cookie and cleaning it up as relinquishment
     and withdrawal can't then happen simultaneously.

     It does mean, though, that cookie relinquishment is held up by cache
     removal.

And the following changes to cachefiles:

 (1) The I/O code has been replaced.  The page waitqueue snooping and deferred
     backing-page to netfs-page copy is now entirely gone and asynchronous
     direct I/O through kiocbs is now used instead to effect the transfer of
     data to/from the cache.

     This affords a speed increase of something like 40-50% and reduces the
     amount of memory that is pinned during I/O.

 (2) bmap() is no longer used to detect the presence of blocks in the
     filesystem.  With a modern extent based filesystem, this may give both
     false positives and false negatives if the filesystem optimises an extent
     by eliminating a block of zeros or adds a block to bridge between two
     close neighbours.

     Instead, a content map is stored in an xattr on the backing file, with 1
     bit per 256KiB block.  The cache shapes the netfs's read requests to
     request multiple-of-256KiB reads from the server, which are then written
     back.

 (3) The content map and attributes are then stored lazily when the object is
     destroyed.  This may be too lazy.

To aid this I've added the following:

 (1) Wait/wake functions for the PG_fscache bit.

 (2) ITER_MAPPING iterator that refers to a contiguous sequence of pinned
     pages with no holes in a mapping.  This means you don't have to allocate
     a sequence of bio_vecs to represent the same thing.

     As stated, the pages *must* be pinned - such as by PG_locked,
     PG_writeback or PG_fscache - before iov_iter_mapping() is called to set
     the mapping up.

Things that still need doing:

 (1) afs (and any other netfs) needs to write changes to the cache at the same
     time it writes them to the server so that the cache doesn't get out of
     sync.  This is also necessary to implement write-back caching and
     disconnected operation.

 (2) The content map is limited by the maximum xattr size.  Is it possible to
     configure the backing filesystem so that it doesn't merge extents across
     certain boundaries or eliminate blocks of zeros so that I don't need a
     content map?

 (3) Use O_TMPFILE in the cache to effect immediate invalidation.  I/O can
     then continue to progress whilst the cache driver replaces the linkage.

 (4) The file in the cache needs to be truncated if the netfs file is
     shortened by truncation.

 (5) Data insertion into the cache is not currently checked for space
     availability.

 (6) The stats need going over.  Some of them are obsolete and there are no
     I/O stats working at the moment.

 (7) Replacement I/O tracepoints are required.

Future changes:

 (1) Get rid of cookie enablement.

 (2) Frame the limit on the cache capacity in terms of an amount of data that
     can be stored in it rather than an amount of free space that must be
     kept.

 (3) Move culling out of cachefilesd into the kernel.

 (4) Use the I/O handle to add caching to files that are already open, perhaps
     listing I/O handles from the cache tag.

Questions:

 (*) Does it make sense to actually permit multiple caches?

 (*) Do we want to allow multiple filesystem instances (think NFS) to use the
     same cache objects?  fscache no longer knows about the netfs state, and
     the netfs now just reads and writes to the cache, so it's kind of
     possible - but coherency management is tricky and would definitely be up
     to the netfs.

The patches can be found here:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter

I'm not going to post them for the moment unless someone really wants that.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
