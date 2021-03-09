Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3A3332405
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Mar 2021 12:28:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJaXU-0004gK-Hj; Tue, 09 Mar 2021 11:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lJaXS-0004g9-C0
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Mar 2021 11:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LvGBiPlaIdzFAXyfsy1qEVyMatChi1ggtZKGPfWh9R0=; b=Pmd8/NX01E0JF7NClldB0h3757
 vpbJtmKi0OMYwuFgzh1eU6Dj9rxFSIsZm6Z1Ji/aAZJFO3kPHA8TMq1lxyxsATotMnHhsfIfriIWX
 pyFyetN5dxrdMVm8cOAS3GvwEqIEOzDnc8YWBsNGUXtp5u/G5DbijvOZhgBCw8NF8s+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LvGBiPlaIdzFAXyfsy1qEVyMatChi1ggtZKGPfWh9R0=; b=LIrUXUzQ2UeeqUMP2/KwMxPQcr
 O1CsOn/XEbdBVV6POtiuieqOxLhYRH4B/H1whZ2c5JvwqDCleyPSJSFFcs+4Jst8uObo9Px7P51vg
 MLB5dnNyYJ8drup1ir4eSP+LbYDyOvRSohRgC5yyQa2MBViXII2CEaVxh07/xT0nwhko=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lJaXG-003p8t-2W
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Mar 2021 11:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615289295;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LvGBiPlaIdzFAXyfsy1qEVyMatChi1ggtZKGPfWh9R0=;
 b=eQAILOXZSg4G8zSDUOTIAzPJ+Uf9YiQUOCM+JmI9oXYL7iNjVdRYHwJ+evgo2XC+8ijgoF
 tisms5t/WV/zSexqyJgmjJUyxiQToili0tJv8RSyztmM+d6PaCnU10KaDzXeJet9z6d7e/
 Kl71oZqY4QqeYWh/pZeyTsEiVla2buQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-p4rhjGRAM9idlqpMeWWWYA-1; Tue, 09 Mar 2021 06:28:12 -0500
X-MC-Unique: p4rhjGRAM9idlqpMeWWWYA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E714881D50;
 Tue,  9 Mar 2021 11:28:10 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 542A75D9CD;
 Tue,  9 Mar 2021 11:27:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210308223247.GB63242@dread.disaster.area>
References: <20210308223247.GB63242@dread.disaster.area>
 <CAOQ4uxjYWprb7trvamCx+DaP2yn8HCaZeZx1dSvPyFH2My303w@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <517184.1615194835@warthog.procyon.org.uk>
 <584529.1615202921@warthog.procyon.org.uk>
To: Dave Chinner <david@fromorbit.com>
MIME-Version: 1.0
Content-ID: <156604.1615289274.1@warthog.procyon.org.uk>
Date: Tue, 09 Mar 2021 11:27:54 +0000
Message-ID: <156605.1615289274@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lwn.net]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lJaXG-003p8t-2W
Subject: Re: [V9fs-developer] Metadata writtenback notification? -- was Re:
 fscache: Redesigning the on-disk cache
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
 Amir Goldstein <amir73il@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 Miklos Szeredi <miklos@szeredi.hu>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dave Chinner <david@fromorbit.com> wrote:

> > > There was a discussion about fsyncing a range of files on LSFMM [1].
> > > In the last comment on the article dchinner argues why we already have that
> > > API (and now also with io_uring(), but AFAIK, we do not have a useful
> > > wait_for_sync() API. And it doesn't need to be exposed to userspace at all.
> > > 
> > > [1] https://lwn.net/Articles/789024/
> > 
> > This sounds like an interesting idea.  Actually, what I probably want is a
> > notification to say that a particular object has been completely sync'd to
> > disk, metadata and all.
> 
> This isn't hard to do yourself in the kernel. All it takes is a
> workqueue to run vfs_fsync() calls asynchronously and for the work
> to queue a local notification/wakeup when the fsync completes...
> 
> That's all aio_fsync() does - the notification it queues on
> completion is the AIO completion event for userspace - so I think
> you could do this in about 50 lines of code if you really needed
> it...

I was thinking more in terms of passively finding out when metadata has been
flushed to disk rather than actively forcing it.  Obviously I can manually
flush from a worker thread, but that ties up a thread per file I want to
flush (unless I want to do a higher-level sync).

Btw, looking at aio_fsync(), is there any reason it copies the current creds
rather than just taking a ref on them?  (Granted, this may not be a question
for you)

> > However, there are some performance problems are arising in my fscache-iter
> > branch:
> > 
> >  (1) It's doing a lot of synchronous metadata operations (tmpfile, truncate,
> >      setxattr).
> 
> Async pipelines using unbound workqueues are your friend.

Maybe.  I could just throw everything into a workqueue and let the workqueue
deal with it.  There still have to be synchronisation points, though - I can't
schedule a cache-write from a server-read to the cache following a 3rd-party
induced invalidation until after the invalidation has happened - and that
holds up userspace from writing to the cache.  But maybe it will work.

Btw, how expensive is it to throw an operation off to a workqueue versus doing
it in thread?  Particularly if it's a synchronous op that the thread is going
to have to wait for (e.g. write_begin()).

> >  (2) It's retaining a lot of open file structs on cache files.  Cachefiles
> >      opens the file when it's first asked to access it and retains that till
> >      the cookie is relinquished or the cache withdrawn (the file* doesn't
> >      contribute to ENFILE/EMFILE but it still eats memory).
> 
> Sounds similar to the problem that the NFSd open file cache solves.
> (fs/nfsd/filecache.c)

Looks similiarish to what I was thinking of with having a queue of
currently-not-in-use cookies to go through and commit and close.

> >      but if the file is truncated
> >      larger, that excess data now becomes part of the file.
> 
> Keep the actual file size in your tracking xattr.

I do that, but it doesn't help entirely.  If someone truncates the file larger
and then writes non-contiguously, the problem occurs.

I've tried truncating the file down and then truncating it up, but that
requires two synchronous ops - though the latter is relatively cheap.  I've
also tried fallocate() to clear the block.  What I've found is that the next
DIO write then has to sync because these may read data into the pagecache of
the backing file.

Apart from clearing the tail of a page on writing, it might be better for me
to read the data into a spare page, clear the tail and write it back.

> >      Possibly it's sufficient to just clear the excess page space before
> >      writing, but that doesn't necessarily stop a writable mmap from
> >      scribbling on it.
> 
> We can't stop mmap from scribbling in it. All filesystems have this
> problem, so to prevent data leaks we have to zero the post-eof tail
> region on every write of the EOF block, anyway.

I meant an mmap scribbling on it after it's been cleared - but I guess taking
away the PTE-writeable flag and making page_mkwrite() wait should solve that.

> >  (4) Committing outstanding cache metadata at cache withdrawal or netfs
> >      unmount.  I've previously mentioned this: it ends up with a whole
> >      slew of synchronous metadata changes being committed to the cache in
> >      one go (truncates, fallocates, fsync, xattrs, unlink+link of tmpfile)
> >      - and this can take quite a long time.  The cache needs to be more
> >      proactive in getting stuff committed as it goes along.
> 
> Workqueues give you an easy mechanism for async dispatch and
> concurrency for synchronous operations. This is a largely solved
> problem...

Yes and no.  Yes, I can fan out the number of threads doing the committing,
but there's still a limit on the I/O bandwidth - and a lot of the operations
still have to hit the disk in the right order.  It still stuffs up the user
experience if the cache eats up the entirety of the disk I/O for a few seconds
just because an automount expired.

Probably the progressive committing approach is a better one so that there's
less to do at the end.

> >  (5) Attaching to an object requires a pathwalk to it (normally only two
> >      steps) and then reading various xattrs on it - all synchronous, but can
> >      be punted to a background threadpool.
> 
> a.k.a. punting to a workqueue :)

I do that, but it doesn't help so much.  Whilst it can mitigate the effect by
running parallel to userspace, userspace tends to move pretty quickly from
open() to read() - at which point we have to wait anyway.

The problem is that all the steps are synchronous and, for the most part, have
to be sequential because there's a dependency chain: 2 x dir-lookup, get LSM
xattrs, get cache xattrs - then read the data if it's present.  I might be
able to speculate at the end and read two cache xattrs in parallel, but each
one requires a separate thread to do it.

On top of that, if the user is running a parallel application such as building
a kernel, a CPU running an offloaded I/O thread isn't running a user thread.
What I've found is that increasing the size of the threadpool doesn't actually
affect the time taken.

What I've done in my fscache-iter branch is to have a small thread pool and
offload work to it if there's a thread free - otherwise process the work in
the calling userspace thread and avoid the context switching.


One reason I was wondering about moving to an approach whereby I have an index
that locates all the blocks (which are then kept in a single file) is that I
can probably keep the entire index in RAM and so the lookup costs are vastly
reduced.  The downside as Amir pointed out is that metadata coherency is much
harder if I don't just want to blow the cache away if cache isn't properly
committed when the machine is rebooted.

Note that OpenAFS has been using a single-index approach, with each 256K block
of data in its own file.  They then zap any file that's newer than the index
file when the cache is started, assuming that that file might be corrupted.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
