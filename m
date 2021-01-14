Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9225C2F5F1D
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Jan 2021 11:45:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l008F-0007Uz-DX; Thu, 14 Jan 2021 10:45:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l008E-0007Uo-C9
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 10:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFAkK5CyoahxNRi5k7hi2fue0ERjnOdXOmjImxzpbMM=; b=UTVR0JgN+MqR9bGo/KwXtSgGBf
 cmE93uPRSLQs4i/FnAu+P30q3u2fKUNfvHmt6OGPyiHXbz15N4h4cZM/TAThAzxxuVjyCJkuAuI+F
 f4miPsf/FYnsTEshsxJzSHSXnW1oUqs5NzzcejeDiH2aq9KhlkJsymCbyKz7TzkxgHjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:
 Sender:Reply-To:Content-Transfer-Encoding:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NFAkK5CyoahxNRi5k7hi2fue0ERjnOdXOmjImxzpbMM=; b=a
 QPqzwMutv7sMYI8x1mUyk5Z+6jAqsD37HYyEwq1TlGOX1bD0fr8SkSnCyqAi2JbhJrdUdFrbk0Yln
 mPi9NcBvw8xCpHHwerIs+Tpo5OPs+CdIyizniTcQF5JaVo/qgGeRRO7670GGN5+tv4w80BgEC1Itl
 A2uaD1wQoLOmDY9k=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l0087-00FDjF-NO
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 10:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610621120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=NFAkK5CyoahxNRi5k7hi2fue0ERjnOdXOmjImxzpbMM=;
 b=Fqm5uy2g0iAPsHVzQEfDSdygROmBUddvQgemhiYYCT7HCl41hwHq7fW+IsKCv41+W72A+P
 gXbNi2RdQkAZ3nKk1JuTdebvyZWzQOQ+nQQigFCSikFSfmAPKgypvSACAuYIwkza3AO7QC
 Y3sBE2FuwL8Wj7uXNPIFREThMUrEW94=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547--bCAKj4MNqC10Gxu7zSNiA-1; Thu, 14 Jan 2021 05:45:16 -0500
X-MC-Unique: -bCAKj4MNqC10Gxu7zSNiA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1179F80666B;
 Thu, 14 Jan 2021 10:45:14 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-8.rdu2.redhat.com
 [10.10.112.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9402F60C64;
 Thu, 14 Jan 2021 10:45:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com
MIME-Version: 1.0
Content-ID: <2758810.1610621106.1@warthog.procyon.org.uk>
Date: Thu, 14 Jan 2021 10:45:06 +0000
Message-ID: <2758811.1610621106@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l0087-00FDjF-NO
Subject: [V9fs-developer] Redesigning and modernising fscache
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
 linux-afs@lists.infradead.org, jlayton@redhat.com, linux-cifs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, dwysocha@redhat.com,
 dchinner@redhat.com, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

I've been working on modernising fscache, primarily with help from Jeff Layton
and Dave Wysochanski with porting Ceph and NFS to it, and with Willy helpfully
reinventing the VM I/O interface beneath us;-).

However, there've been some objections to the approach I've taken to
implementing this.  The way I've done it is to disable the use of fscache by
the five network filesystems that use it, remove much of the old code, put in
the reimplementation, then cut the filesystems over.  I.e. rip-and-replace.
It leaves unported filesystems unable to use it - but three of the five are
done (afs, ceph, nfs), and I've supplied partially-done patches for the other
two (9p, cifs).

It's been suggested that it's too hard to review this way and that either I
should go for a gradual phasing in or build the new one in parallel.  The
first is difficult because I want to change how almost everything in there
works - but the parts are tied together; the second is difficult because there
are areas that would *have* to overlap (the UAPI device file, the cache
storage, the cache size limits and at least some state for managing these), so
there would have to be interaction between the two variants.  One refinement
of the latter would be to make the two implementations mutually exclusive: you
can build one or the other, but not both.

However.  Given that I want to replace the on-disk format in cachefiles at
some point, and change what the userspace component does, maybe I should
create a new, separate UAPI interface and do the on-disk format change at the
same time.  In which case, it makes sense to build a parallel variant


Anyway, a bit of background into the why.  There are a number of things that
need to be fixed in fscache/cachefiles:

 (1) The use of bmap to test whether the backing fs contains a cache block.
     This is not reliable in a modern extent-based filesystem as it can insert
     and remove bridging blocks of zeros at will.

     Having discussed this with Christoph Hellwig and Dave Chinner, I think I
     that the cache really needs to keep track of this for itself.

 (2) The use of pagecache waitlist snooping to find out if a backing
     filesystem page has been updated yet.  I have the feeling that this is
     not 100% reliable from untrackdownable bugs that seem to relate to this.

     I really would rather be told directly by the backing fs that the op was
     complete.  Switching over to kiocbs means that can be done.

 (3) Having to go through the pagecache attached to the backing file, copying
     data from it or using vfs_write() to write into it.  This doubles the
     amount of pagecache required and adds a bunch of copies for good measure.

     When I wrote the cachefiles caching backend, using direct I/O from within
     the kernel wasn't possible - but, now that kiocbs are available, I can
     actually do async DIO from the backing files to/from the netfs pages,
     cutting out copies in both direction, and using the kiocb completion
     function to tell me when it's done.

 (4) fscache's structs have a number of pointers back into the netfs, which
     makes it tricky if the netfs instance goes away whilst the cache is
     active.

     I really want no pointers back - apart from very transient I/O completion
     callbacks.  I can store the metadata I need in the cookie.

Modernising this affords the opportunity to make huge simplifications in the
code (shaving off over 1000 lines, maybe as many as 3000).

One thing I've done is to make a helper library that handles a number of
features on behalf of a netfs if it wants to use the library:

 (*) Local caching.

 (*) Segmentation and shaping of read operations.

     This takes a ->readahead() request from the VM and translates it into one
     or more reads against the cache and the netfs, allowing both to
     adjust/expand the size of the individual subops according to internal
     alignments.

     Allowing the cache to expand a read request to put it on a larger
     granularity allows the cache to use less metadata to represent what it
     contains.

     It also provides a place to retry operations (something that's required
     if a read against the cache fails and we need to send it to the server
     instead).

 (*) Transparent huge pages (Willy).

 (*) A place to put fscrypt support (Jeff).

We have the first three working - with some limitations - for afs, nfs and
ceph, and I've produced partial patches for 9p and cifs. afs, nfs and ceph are
able to handle xfstests with a cache now - which is something that the old
fscache code will just explode with.


So, as stated, much of that code is written and working.  However, if I do a
complete replacement all the way out to userspace, there are further changes
I'm thinking of making:

 (*) Get rid of the ability to remove a cache that's in use.  This accounts
     for a *lot* of the complexity in fscache.  All the synchronisation
     required to effect the removal of a live cache at any time whilst it's
     actually being used.

 (*) Change cachefiles so that it uses an index file and a single data file
     and perform culling by marking the index rather than deleting data files.
     Culling would then be moved into the kernel.  cachefilesd is then
     unnecessary, except to load the config and keep the cache open.

     Moving the culling into an index would also make manual invalidation
     easier.

 (*) Rather than using cachefilesd to hold the cache open, do something akin
     to swapon/swapoff to add and remove the cache.
     
     Attempting to remove an in-use cache would either fail EBUSY or mark the
     cache to be removed when it becomes unused and not allow further new
     users.

 (*) Declare the size of the cache up front rather than declaring that it has
     to maintain a certain amount of free space, reducing the cache to make
     more space if the level drops.

 (*) Merge cachefiles into fscache.  Give up the ability to have alternate
     cache backends.  That would allow a bit more reduction in the complexity
     and reduce the number of function pointers gone through.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
