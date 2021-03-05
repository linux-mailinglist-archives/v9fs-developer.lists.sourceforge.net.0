Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E8F32E52B
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Mar 2021 10:47:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lI73D-00080C-5d; Fri, 05 Mar 2021 09:47:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <amir73il@gmail.com>) id 1lI73B-000804-8p
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Mar 2021 09:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lC8zlzO4d9sCo2iAF0K+KJjctz9hWtNl5+a8xoEn6KM=; b=V4g27qPb8G58icwjwJ5lEoksej
 3/C8ZInH5faJdCQca6T5m6sf3KMJDsDGj6pGWCKYipzTLeUKm4SDvlM14pzt54ufNmxfWSey4pd2/
 xB1AmyYyUVlDWMReavhxyB7Nb8oewb8vf2SJuLEIVk7kN63UYd/811T6pNI5NI0858I8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lC8zlzO4d9sCo2iAF0K+KJjctz9hWtNl5+a8xoEn6KM=; b=a/M3Tqz9Iu8D2cPHUo42FYVLhm
 LP4lkvhYgNx4ucVLPztAwAm6f6KJI4pnkZPsKbUDk7NN40jLo5TKt13nQs+B7XiKXcZ9LOMTSyBDZ
 gDs7eYbqUfW0onu1F4Gj+oPdVq3BWDsjlfQqiA8te59NwqrZBzP2MaLTeqS5MsnYF+lU=;
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lI731-00066l-FN
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Mar 2021 09:47:13 +0000
Received: by mail-il1-f175.google.com with SMTP id z9so1427845iln.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 05 Mar 2021 01:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lC8zlzO4d9sCo2iAF0K+KJjctz9hWtNl5+a8xoEn6KM=;
 b=i2qzEGac3XPgrmwqATg7vs33UeB3HMXXSReSnTkVXneQVd3GKQ1eNIV4IfWNSRfkcE
 DLwr84l4nYLLulaFsQGStlw/EgeC7WpGkU2AjYH2mcTfIlMCqMwDIuwADxrhV3zaDc/w
 PMTb28rk8pFzogQTuViBw+Xd5/XRXrndraO9zRwTEzyguICXw/eJWDgnl5nnXtWXD7Di
 Lc82h9MuPnroWugZng1019AiMijfsUJ7ah25YzjZDhsXz/joZiatnXmRdJs5GtUDdZ/m
 HZZp+RgNNpiGt4lICUtn75sQegDE7rt1UIJxpLWnZrRhy56GdDx/0fzT/RpuQjm7XchX
 n9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lC8zlzO4d9sCo2iAF0K+KJjctz9hWtNl5+a8xoEn6KM=;
 b=AfGUasZXYGhD12swXQFf/b4EZnnPOGI5em0R/LLrxmFtfzhA+XQ4+hxkbgy9Wq5TEj
 rJVqYgzf9QhSIetkubqU9XbsogJ8rsYfp0t7ghEdi7W+XY1xCGPtfAfySVfxObilu0rP
 NiMA7v/LkvB3TYGyYfxxw1YHN+JZwrCKRTq+7GLgLDJqKDlrp3fVKwEyUdNcGTgvRPlZ
 AzKM5Ybr/aVrqDyjAUEB01MZYYZPqUh5YfN8rgIRIv/8YvmKnM0IivyJT4tN3QtTFHY2
 xcOyYktH5HPqBPkgo2u8o03Yjh1lP7hrAmQjOM3v5vnMUQYRt1lnROt8aX0KrddN+7ZM
 k8rA==
X-Gm-Message-State: AOAM5333NLUw7uAQVzYTvaxyBESO4NBZTGXaZFmhLj+yIedYh7RNi+te
 N6CAKsrBwpR3ylglTgFZjcDW3EnniuprUQxhSF0=
X-Google-Smtp-Source: ABdhPJzsjPPI76V+ifK/5cRmuhQcSx+F9xfxp+D6hQd7smAfVv8piF6gITprUwnhLkj/CwhgI90S8l7lugFNR/SBJqw=
X-Received: by 2002:a92:da48:: with SMTP id p8mr7580193ilq.137.1614937617862; 
 Fri, 05 Mar 2021 01:46:57 -0800 (PST)
MIME-Version: 1.0
References: <2653261.1614813611@warthog.procyon.org.uk>
In-Reply-To: <2653261.1614813611@warthog.procyon.org.uk>
From: Amir Goldstein <amir73il@gmail.com>
Date: Fri, 5 Mar 2021 11:46:46 +0200
Message-ID: <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (amir73il[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lI731-00066l-FN
Subject: Re: [V9fs-developer] fscache: Redesigning the on-disk cache
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
Cc: Christoph Hellwig <hch@infradead.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 David Wysochanski <dwysocha@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Mar 4, 2021 at 4:10 PM David Howells <dhowells@redhat.com> wrote:
>
> I'm looking at redesigning the on-disk cache format used by fscache's
> cachefiles driver to try and eliminate the number of synchronous metadata
> operations done by the driver, to improve culling performance and to reduce
> the amount of opens/files open.  I also need to stop relying on the backing
> filesystem to track where I have data stored.
>
> There are a number of options that I've considered:
>
>  (0) The current format lays out a directory tree, with directories for each
>      level of index (so in AFS's terms, you've got an overall "afs" dir
>      containing a dir for each cell.  In each cell dir, there's a dir for each
>      volume and within that there's a file for each afs vnode cached.  Extra
>      levels of directory are also interposed to reduce the number of entries
>      in a directory.
>
>      - Pathwalk cost to open a cache file.
>      - Netfs coherency data is in xattrs.
>      - Invalidation done by truncate or unlink.
>      - Uses backing filesystem metadata to keep track of present data.
>        - Determined by bmap() on the cache file.
>      - Culling performed by userspace daemon.
>      - Data file opened for every write.
>      - Read done by readpage without file.
>
>  (0a) As (0) but using SEEK_DATA/SEEK_HOLE instead of bmap and opening the
>       file for every whole operation (which may combine reads and writes).

I read that NFSv4 supports hole punching, so when using ->bmap() or SEEK_DATA
to keep track of present data, it's hard to distinguish between an
invalid cached range
and a valid "cached hole".
With ->fiemap() you can at least make the distinction between a non existing
and an UNWRITTEN extent.

>
>  (1) Structured the same as (0), but keeping an independent content map and
>      not relying on backing fs metadata.  Use a larger blocksize, say 256K, to
>      reduce the size of the content map.
>
>      - Netfs coherency data in xattrs.
>      - Invalidation done by tmpfile creation and link-replace.
>      - Content bitmap kept in xattr.
>        - Limited capacity.  Could use multiple bitmaps.
>        - Can skip the bitmap for a non-sparse file that we have all of.
>      - "Open" state kept in xattr.
>      - File is kept open
>      - Culling performed by userspace daemon.
>      - Cache file open whilst netfs file is open.
>
>  (2) Structured the same as (1), but keeping an extent list instead of a
>      bitmap.
>
>      - Content extent map kept in xattr.
>        - Limited capacity.
>        - Highly scattered extents use a lot of map space.
>
>  (3) OpenAFS-style format.  One index file to look up {file_key,block#} and an
>      array of data files, each holding one block (e.g. a 256KiB-aligned chunk
>      of a file).  Each index entry has valid start/end offsets for easy
>      truncation.
>
>      The index has a hash to facilitate the lookup and an LRU that allows a
>      block to be recycled at any time.
>
>      - File keys, are highly variable in length and can be rather long,
>        particularly NFS FIDs.
>        - Might want a separate file index that maps file keys to a slot ID
>          that can then be used in the block index.
>      - Netfs coherency data in vnode index entry.
>      - Invalidation done by clearing matching entries in the index.
>        - Dead data files can be lazily unlinked or truncated or just
>          overwritten.
>      - Content mapping by lookup in block index hash table.
>        - Fine if the hash table is large and scatter is good.
>      - Potential coherency problem between indices and data file.
>      - Culling performed by block index LRU.
>      - Really want to retain entire block index in RAM.
>      - Data files are opened for every read/write.
>
>  (4) Similar format to (3), but could put entirety of data in one file.
>
>      - Data file open entire time cache online.
>      - Unused block bitmap.
>      - Can use fallocate to punch out dead blocks.
>      - Could put data file on blockdev.
>
>  (5) Similar idea to (4), but just have a file index and use block pointers
>      and indirection blocks instead.  Use an LRU in the file index and cull
>      whole files only, not individual blocks.
>
>      - File keys, are highly variable in length and can be rather long,
>        particularly NFS FIDs.
>      - Netfs coherency data in vnode index entry.
>      - Unused data block bitmap.
>      - Invalidation done by clearing entries in the file index.
>        - Data blocks must be recycled and returned to bitmap.
>        - Dead data blocks can be lazily punched out with fallocate.
>      - Potential coherency problem between index, pointers/indirection and
>        bitmap.
>      - Culling performed by file index LRU.
>      - Really want to retain entire file index and block bitmap in RAM.
>        - May be less memory than block index.
>      - Data file open entire time cache online.
>      - Could put data file on blockdev.
>      - If the block size is large, lots of dead space in indirection blocks.
>
>  (6) Similar to (5), but use extent lists rather than indirection blocks.
>
>      - Requires allocation of contiguous space to be worthwhile.
>      - Buddy allocator approach?
>        - Can always arbitrarily recycle buddies to make larger spaces - if we
>          can find them...
>
>  (7) Hybrid approach.  Stick the first block of every netfs file in one big
>      cache file.  For a lot of cases, that would suffice for the entire file
>      if the block size is large enough.  Store the tails of larger files in
>      separate files.
>
>      - File index with LRU.
>      - More complicated to manage.
>      - Fewer files open.
>
> So (0) is what's upstream.  I have (0a) implemented in my fscache-netfs-lib
> branch and (1) implemented in my fscache-iter branch.  However, it spends a
> lot of cpu time doing synchronous metadata ops, such as creating tmpfiles,
> link creation and setting xattrs, particularly when unmounting the filesystem
> or disabling the cache - both of which are done during shutdown.
>

You didn't say much about crash consistency or durability requirements of the
cache. Since cachefiles only syncs the cache on shutdown, I guess you
rely on the hosting filesystem to provide the required ordering guarantees.

How does this work with write through network fs cache if the client system
crashes but the write gets to the server? Client system get restart with older
cached data because disk caches were not flushed before crash. Correct?
Is that case handled? Are the caches invalidated on unclean shutdown?

Anyway, how are those ordering requirements going to be handled when
entire indexing is in a file? You'd practically need to re-implement a
filesystem
journal or only write cache updates to a temp file that can be discarded at
any time?

> I'm leaning towards (4) or (5).  I could use extent maps, but I don't
> necessarily have a good idea of what access patterns I have to deal with till
> later.  With network filesystems that are going to read and cache large blocks
> (say 2MiB), extents would allow reduction of the metadata, particularly where
> it would span a bitmap.
>
> Using a block index (4) allows me to easily recycle a large chunk of cache in
> one go - even if it means arbitrarily kicking out blocks that weren't near the
> end of the LRU yet.
>
> Using block pointers and indirection blocks (5) means I only need this data in
> RAM when I need it; with the LRU management being done in the file index.
>
> Either way with (4) and (5), at least one index really needs to be resident in
> RAM to make LRU wangling efficient.  Also, I need to decide how to handle
> coherency management - setting an "in use" flag on the file index entry and
> flushing it before making any modifications might work.
>
> On the other hand, sticking with (1) or (2) makes it easier to add extra
> metadata very easily (say to handle disconnected operation), though it's
> harder to manage culling and manage the capacity of the cache.
>
> I have a suspicion that the answer is "it depends" and that the best choice is
> very much going to be workload dependent - and may even vary from volume to
> volume within the same workload.
>
> Any thoughts or better solutions?
>

If you come up with a useful generic implementation of a "file data overlay",
overlayfs could also use it for "partial copy up" as well as for implementation
of address space operations, so please keep that in mind.

Thanks,
Amir.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
