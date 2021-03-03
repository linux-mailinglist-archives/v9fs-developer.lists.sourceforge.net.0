Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B96C932BF2F
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Mar 2021 00:20:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lHanL-00072P-17; Wed, 03 Mar 2021 23:20:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lHanC-000726-Vu
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Mar 2021 23:20:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gXOtBmgY5MdqpQGzSKCvOP3QkZbnNtvngwVGLI4VAgk=; b=kbNVn91wXbsVpI7ZnhZYxLG5gx
 T6sxk8OflCuJFUf6rqioBv2x8rJBhRHTjZVE3LtI9HmN48AJyPesuJElX95zUaIWtcQfbMWPbu8Ya
 FAChgoj98FP7vneI8kqlmwnwTAiz7BhLg8J5cQF/pD3uPdJGSdjXStRc4xnw3wdiRbiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:
 Sender:Reply-To:Content-Transfer-Encoding:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gXOtBmgY5MdqpQGzSKCvOP3QkZbnNtvngwVGLI4VAgk=; b=e
 9gCTton0/hC9Tf0jN+Gu7ATKyeqAk7FXWZkkGk96BWZ1iC25tlCCI4rVMcCKDQf6grywN/dhS/wBy
 BK0M5VkBQ7ejAnzoSJIuR2+cfD8lStoMfBORHuiA8c20F27956Y6mfBwzpjYMaXlj9NDID/WP1TNY
 pxnLK3A4H96KAsBw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lHan8-0003rC-6Q
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Mar 2021 23:20:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614813623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=gXOtBmgY5MdqpQGzSKCvOP3QkZbnNtvngwVGLI4VAgk=;
 b=bgQl0gtbklU9TopgTmW0msAlobpNzR9scW7SHgTG0+y+30a/jUiG/WDC6Anm7S/MiQ6zpj
 BBJUUrWaoPWY/xfIGPWjd9DmYlzLmRPowIJVtMz+sLqComEb3Ltu1dCNu0b1zR9rOWvSnX
 klCJvs1uc8dhcoct1hppi2d9ufm1r8U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-dv_IBc6QNiipp5PAUfyt4w-1; Wed, 03 Mar 2021 18:20:21 -0500
X-MC-Unique: dv_IBc6QNiipp5PAUfyt4w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECB8D193578C;
 Wed,  3 Mar 2021 23:20:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E6AC612D7E;
 Wed,  3 Mar 2021 23:20:12 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
MIME-Version: 1.0
Content-ID: <2653260.1614813611.1@warthog.procyon.org.uk>
Date: Wed, 03 Mar 2021 23:20:11 +0000
Message-ID: <2653261.1614813611@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lHan8-0003rC-6Q
Subject: [V9fs-developer] fscache: Redesigning the on-disk cache
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
Cc: "J. Bruce Fields" <bfields@fieldses.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 linux-cifs@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I'm looking at redesigning the on-disk cache format used by fscache's
cachefiles driver to try and eliminate the number of synchronous metadata
operations done by the driver, to improve culling performance and to reduce
the amount of opens/files open.  I also need to stop relying on the backing
filesystem to track where I have data stored.

There are a number of options that I've considered:

 (0) The current format lays out a directory tree, with directories for each
     level of index (so in AFS's terms, you've got an overall "afs" dir
     containing a dir for each cell.  In each cell dir, there's a dir for each
     volume and within that there's a file for each afs vnode cached.  Extra
     levels of directory are also interposed to reduce the number of entries
     in a directory.

     - Pathwalk cost to open a cache file.
     - Netfs coherency data is in xattrs.
     - Invalidation done by truncate or unlink.
     - Uses backing filesystem metadata to keep track of present data.
       - Determined by bmap() on the cache file.
     - Culling performed by userspace daemon.
     - Data file opened for every write.
     - Read done by readpage without file.

 (0a) As (0) but using SEEK_DATA/SEEK_HOLE instead of bmap and opening the
      file for every whole operation (which may combine reads and writes).

 (1) Structured the same as (0), but keeping an independent content map and
     not relying on backing fs metadata.  Use a larger blocksize, say 256K, to
     reduce the size of the content map.

     - Netfs coherency data in xattrs.
     - Invalidation done by tmpfile creation and link-replace.
     - Content bitmap kept in xattr.
       - Limited capacity.  Could use multiple bitmaps.
       - Can skip the bitmap for a non-sparse file that we have all of.
     - "Open" state kept in xattr.
     - File is kept open
     - Culling performed by userspace daemon.
     - Cache file open whilst netfs file is open.

 (2) Structured the same as (1), but keeping an extent list instead of a
     bitmap.

     - Content extent map kept in xattr.
       - Limited capacity.
       - Highly scattered extents use a lot of map space.

 (3) OpenAFS-style format.  One index file to look up {file_key,block#} and an
     array of data files, each holding one block (e.g. a 256KiB-aligned chunk
     of a file).  Each index entry has valid start/end offsets for easy
     truncation.

     The index has a hash to facilitate the lookup and an LRU that allows a
     block to be recycled at any time.

     - File keys, are highly variable in length and can be rather long,
       particularly NFS FIDs.
       - Might want a separate file index that maps file keys to a slot ID
       	 that can then be used in the block index.
     - Netfs coherency data in vnode index entry.
     - Invalidation done by clearing matching entries in the index.
       - Dead data files can be lazily unlinked or truncated or just
         overwritten.
     - Content mapping by lookup in block index hash table.
       - Fine if the hash table is large and scatter is good.
     - Potential coherency problem between indices and data file.
     - Culling performed by block index LRU.
     - Really want to retain entire block index in RAM.
     - Data files are opened for every read/write.

 (4) Similar format to (3), but could put entirety of data in one file.

     - Data file open entire time cache online.
     - Unused block bitmap.
     - Can use fallocate to punch out dead blocks.
     - Could put data file on blockdev.

 (5) Similar idea to (4), but just have a file index and use block pointers
     and indirection blocks instead.  Use an LRU in the file index and cull
     whole files only, not individual blocks.

     - File keys, are highly variable in length and can be rather long,
       particularly NFS FIDs.
     - Netfs coherency data in vnode index entry.
     - Unused data block bitmap.
     - Invalidation done by clearing entries in the file index.
       - Data blocks must be recycled and returned to bitmap.
       - Dead data blocks can be lazily punched out with fallocate.
     - Potential coherency problem between index, pointers/indirection and
       bitmap.
     - Culling performed by file index LRU.
     - Really want to retain entire file index and block bitmap in RAM.
       - May be less memory than block index.
     - Data file open entire time cache online.
     - Could put data file on blockdev.
     - If the block size is large, lots of dead space in indirection blocks.

 (6) Similar to (5), but use extent lists rather than indirection blocks.

     - Requires allocation of contiguous space to be worthwhile.
     - Buddy allocator approach?
       - Can always arbitrarily recycle buddies to make larger spaces - if we
       	 can find them...

 (7) Hybrid approach.  Stick the first block of every netfs file in one big
     cache file.  For a lot of cases, that would suffice for the entire file
     if the block size is large enough.  Store the tails of larger files in
     separate files.

     - File index with LRU.
     - More complicated to manage.
     - Fewer files open.

So (0) is what's upstream.  I have (0a) implemented in my fscache-netfs-lib
branch and (1) implemented in my fscache-iter branch.  However, it spends a
lot of cpu time doing synchronous metadata ops, such as creating tmpfiles,
link creation and setting xattrs, particularly when unmounting the filesystem
or disabling the cache - both of which are done during shutdown.

I'm leaning towards (4) or (5).  I could use extent maps, but I don't
necessarily have a good idea of what access patterns I have to deal with till
later.  With network filesystems that are going to read and cache large blocks
(say 2MiB), extents would allow reduction of the metadata, particularly where
it would span a bitmap.

Using a block index (4) allows me to easily recycle a large chunk of cache in
one go - even if it means arbitrarily kicking out blocks that weren't near the
end of the LRU yet.

Using block pointers and indirection blocks (5) means I only need this data in
RAM when I need it; with the LRU management being done in the file index.

Either way with (4) and (5), at least one index really needs to be resident in
RAM to make LRU wangling efficient.  Also, I need to decide how to handle
coherency management - setting an "in use" flag on the file index entry and
flushing it before making any modifications might work.

On the other hand, sticking with (1) or (2) makes it easier to add extra
metadata very easily (say to handle disconnected operation), though it's
harder to manage culling and manage the capacity of the cache.

I have a suspicion that the answer is "it depends" and that the best choice is
very much going to be workload dependent - and may even vary from volume to
volume within the same workload.

Any thoughts or better solutions?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
