Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DE1330A0B
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Mar 2021 10:14:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJBy7-0002m6-Fg; Mon, 08 Mar 2021 09:14:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lJBy6-0002lz-0T
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 09:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fWnNUTDO1hly14NTXoKrUQ+xczjUU5YkbfVHZZK6bcA=; b=FOdOsB5XL0x2ddM7/9n6t8M21G
 qr2nS4crAXV4g2oha76ylYK2kN8/Or4XSfXhc63bREMEAk6kP66MFcoBZuMbNDl4xmI4rjmmu6f3k
 Hy/wnkMOX5xc4sP+XVrKv++bUL5b3H1U+r8xzcQTLp16wow4Q3ouDcOCJSYL/SsTpG18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fWnNUTDO1hly14NTXoKrUQ+xczjUU5YkbfVHZZK6bcA=; b=RDVseZZ16IsMQRSv0d+GRrrMgs
 SJ7fnjjASkf3kcnqyhGdmmraP1Lmz69IQOToL4WnPdxtLDdPqv4577+ZhgQkyp6TQe0uv6Lx7b09n
 jwwuzEVxtqb3JRIJUnGdF0fp2ywsHyFiLv6xN0Wm7THMRf86/it2sSBgehU/JXHB1Oqo=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lJBxt-0005BD-TG
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 09:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615194847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fWnNUTDO1hly14NTXoKrUQ+xczjUU5YkbfVHZZK6bcA=;
 b=MHKbHGC/1VQ6/6g/ooW/T7uM86qIM0l4OlC8CRhowwZ6zTPgU0x4imH881W82Hjp/Nojq0
 NxwMYF4/UJ78P5CkeZanuJHUnW5u/vW6MUiKYqcMiEfCpfNJ8OWR7mvI1pveSytQ97Vps2
 lFfg+XUzPjO1umyyAUKMvT71jSlmdNA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-L_eZHGN_Ph2p8Nw_BC8gZQ-1; Mon, 08 Mar 2021 04:14:05 -0500
X-MC-Unique: L_eZHGN_Ph2p8Nw_BC8gZQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92E7C1084C95;
 Mon,  8 Mar 2021 09:14:03 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-79.rdu2.redhat.com
 [10.10.112.79])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE6B36267B;
 Mon,  8 Mar 2021 09:13:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
References: <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
To: Amir Goldstein <amir73il@gmail.com>
MIME-Version: 1.0
Content-ID: <517183.1615194835.1@warthog.procyon.org.uk>
Date: Mon, 08 Mar 2021 09:13:55 +0000
Message-ID: <517184.1615194835@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
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
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lJBxt-0005BD-TG
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
Cc: "J. Bruce Fields" <bfields@fieldses.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Amir Goldstein <amir73il@gmail.com> wrote:

> >  (0a) As (0) but using SEEK_DATA/SEEK_HOLE instead of bmap and opening the
> >       file for every whole operation (which may combine reads and writes).
> 
> I read that NFSv4 supports hole punching, so when using ->bmap() or SEEK_DATA
> to keep track of present data, it's hard to distinguish between an
> invalid cached range and a valid "cached hole".

I wasn't exactly intending to permit caching over NFS.  That leads to fun
making sure that the superblock you're caching isn't the one that has the
cache in it.

However, we will need to handle hole-punching being done on a cached netfs,
even if that's just to completely invalidate the cache for that file.

> With ->fiemap() you can at least make the distinction between a non existing
> and an UNWRITTEN extent.

I can't use that for XFS, Ext4 or btrfs, I suspect.  Christoph and Dave's
assertion is that the cache can't rely on the backing filesystem's metadata
because these can arbitrarily insert or remove blocks of zeros to bridge or
split extents.

> You didn't say much about crash consistency or durability requirements of the
> cache. Since cachefiles only syncs the cache on shutdown, I guess you
> rely on the hosting filesystem to provide the required ordering guarantees.

There's an xattr on each file in the cache to record the state.  I use this
mark a cache file "open".  If, when I look up a file, the file is marked open,
it is just discarded at the moment.

Now, there are two types of data stored in the cache: data that has to be
stored as a single complete blob and is replaced as such (e.g. symlinks and
AFS dirs) and data that might be randomly modified (e.g. regular files).

For the former, I have code, though in yet another branch, that writes this in
a tmpfile, sets the xattrs and then uses vfs_link(LINK_REPLACE) to cut over.

For the latter, that's harder to do as it would require copying the data to
the tmpfile before we're allowed to modify it.  However, if it's possible to
create a tmpfile that's a CoW version of a data file, I could go down that
route.

But after I've written and sync'd the data, I set the xattr to mark the file
not open.  At the moment I'm doing this too lazily, only doing it when a netfs
file gets evicted or when the cache gets withdrawn, but I really need to add a
queue of objects to be sealed as they're closed.  The balance is working out
how often to do the sealing as something like a shell script can do a lot of
consecutive open/write/close ops.

> How does this work with write through network fs cache if the client system
> crashes but the write gets to the server?

The presumption is that the coherency info on the server will change, but
won't get updated in the cache.

> Client system get restart with older cached data because disk caches were
> not flushed before crash. Correct?  Is that case handled? Are the caches
> invalidated on unclean shutdown?

The netfs provides some coherency info for the cache to store.  For AFS, for
example, this is the data version number (though it should probably include
the volume creation time too).  This is stored with the state info in the same
xattr and is only updated when the "open" state is cleared.

When the cache file is reopened, if the coherency info doesn't match what
we're expecting (presumably we queried the server), the file is discarded.

(Note that the coherency info is netfs-specific)

> Anyway, how are those ordering requirements going to be handled when entire
> indexing is in a file? You'd practically need to re-implement a filesystem

Yes, the though has occurred to me too.  I would be implementing a "simple"
filesystem - and we have lots of those:-/.  The most obvious solution is to
use the backing filesystem's metadata - except that that's not possible.

> journal or only write cache updates to a temp file that can be discarded at
> any time?

It might involve keeping a bitmap of "open" blocks.  Those blocks get
invalidated when the cache restarts.  The simplest solution would be to wipe
the entire cache in such a situation, but that goes against one of the
important features I want out of it.

Actually, a journal of open and closed blocks might be better, though all I
really need to store for each block is a 32-bit number.

It's a particular problem if I'm doing DIO to the data storage area but
buffering the changes to the metadata.  Further, the metadata and data might
be on different media, just to add to the complexity.

Another possibility is only to cull blocks when the parent file is culled.
That probably makes more sense as, as long as the file is registered culled on
disk first and I don't reuse the file slot too quickly, I can write to the
data store before updating the metadata.

> If you come up with a useful generic implementation of a "file data
> overlay", overlayfs could also use it for "partial copy up" as well as for
> implementation of address space operations, so please keep that in mind.

I'm trying to implement things so that the netfs does look-aside when reading,
and multi-destination write-back when writing - but the netfs is in the
driving seat and the cache is invisible to the user.  I really want to avoid
overlaying the cache on the netfs so that the cache is the primary access
point.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
