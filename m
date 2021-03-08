Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CE4331A39
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Mar 2021 23:33:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJOQx-0003gV-1L; Mon, 08 Mar 2021 22:33:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <david@fromorbit.com>) id 1lJOQu-0003gB-Up
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 22:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h8KtOAI6LmIqmggR43vsot88dRdB8wN7kA3rvTj5nJY=; b=Zv07CTHO77W8lDo++2XLdx62fE
 eAvHQ1wGvoZ894jEEYjB8jDptMxUAC/t+3WR2uiEG7/WTeXPftB+edQvyRTU1RuDop6OyrSQzFhi+
 U7GFab5v8WhZJdjWcLI5T1iT2QP5hpg5+YJC1SAZ+ShBAG1rsvmCEJbAbZ8WedsauaTA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h8KtOAI6LmIqmggR43vsot88dRdB8wN7kA3rvTj5nJY=; b=Kl8OcDTasdD/K2HdYR4m4omvVd
 NAFVovuESexN5Buwdx4U3VR3UhVNW1n8UoXUVqR0v0rDNR6nK4VwBCumN2vUPKMFv4cDottgmjFke
 faW16rhct8tVj6Xxq2FaIljAvFtC3aRio9n8jkgypFxd8NCduB9dLYaNwMuW/NLiLIk8=;
Received: from mail105.syd.optusnet.com.au ([211.29.132.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1lJOQp-00257W-OZ
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 22:33:00 +0000
Received: from dread.disaster.area (pa49-181-239-12.pa.nsw.optusnet.com.au
 [49.181.239.12])
 by mail105.syd.optusnet.com.au (Postfix) with ESMTPS id 3A2521041A91;
 Tue,  9 Mar 2021 09:32:48 +1100 (AEDT)
Received: from dave by dread.disaster.area with local (Exim 4.92.3)
 (envelope-from <david@fromorbit.com>)
 id 1lJOQh-000IZX-At; Tue, 09 Mar 2021 09:32:47 +1100
Date: Tue, 9 Mar 2021 09:32:47 +1100
From: Dave Chinner <david@fromorbit.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210308223247.GB63242@dread.disaster.area>
References: <CAOQ4uxjYWprb7trvamCx+DaP2yn8HCaZeZx1dSvPyFH2My303w@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <517184.1615194835@warthog.procyon.org.uk>
 <584529.1615202921@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <584529.1615202921@warthog.procyon.org.uk>
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.3 cv=YKPhNiOx c=1 sm=1 tr=0 cx=a_idp_d
 a=gO82wUwQTSpaJfP49aMSow==:117 a=gO82wUwQTSpaJfP49aMSow==:17
 a=kj9zAlcOel0A:10 a=dESyimp9J3IA:10 a=pGLkceISAAAA:8 a=07d9gI8wAAAA:8
 a=7-415B0cAAAA:8 a=fLlyUv8SAob-akP86owA:9 a=CjuIK1q_8ugA:10
 a=e2CUPOnPG4QKp8I52DXD:22 a=biEYGPWJfzWAr4FL6Ov7:22
 a=BPzZvq435JnGatEyYwdK:22
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1lJOQp-00257W-OZ
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
Cc: Christoph Hellwig <hch@infradead.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 David Wysochanski <dwysocha@redhat.com>, Amir Goldstein <amir73il@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Mar 08, 2021 at 11:28:41AM +0000, David Howells wrote:
> Amir Goldstein <amir73il@gmail.com> wrote:
> 
> > > But after I've written and sync'd the data, I set the xattr to mark the
> > > file not open.  At the moment I'm doing this too lazily, only doing it
> > > when a netfs file gets evicted or when the cache gets withdrawn, but I
> > > really need to add a queue of objects to be sealed as they're closed.  The
> > > balance is working out how often to do the sealing as something like a
> > > shell script can do a lot of consecutive open/write/close ops.
> > 
> > You could add an internal vfs API wait_for_multiple_inodes_to_be_synced().
> > For example, xfs keeps the "LSN" on each inode, so once the transaction
> > with some LSN has been committed, all the relevant inodes, if not dirty, can
> > be declared as synced, without having to call fsync() on any file and without
> > having to force transaction commit or any IO at all.
> > 
> > Since fscache takes care of submitting the IO, and it shouldn't care about any
> > specific time that the data/metadata hits the disk(?), you can make use of the
> > existing periodic writeback and rolling transaction commit and only ever need
> > to wait for that to happen before marking cache files "closed".
> > 
> > There was a discussion about fsyncing a range of files on LSFMM [1].
> > In the last comment on the article dchinner argues why we already have that
> > API (and now also with io_uring(), but AFAIK, we do not have a useful
> > wait_for_sync() API. And it doesn't need to be exposed to userspace at all.
> > 
> > [1] https://lwn.net/Articles/789024/
> 
> This sounds like an interesting idea.  Actually, what I probably want is a
> notification to say that a particular object has been completely sync'd to
> disk, metadata and all.

This isn't hard to do yourself in the kernel. All it takes is a
workqueue to run vfs_fsync() calls asynchronously and for the work
to queue a local notification/wakeup when the fsync completes...

That's all aio_fsync() does - the notification it queues on
completion is the AIO completion event for userspace - so I think
you could do this in about 50 lines of code if you really needed
it...

> However, there are some performance problems are arising in my fscache-iter
> branch:
> 
>  (1) It's doing a lot of synchronous metadata operations (tmpfile, truncate,
>      setxattr).

Async pipelines using unbound workqueues are your friend.
> 
>  (2) It's retaining a lot of open file structs on cache files.  Cachefiles
>      opens the file when it's first asked to access it and retains that till
>      the cookie is relinquished or the cache withdrawn (the file* doesn't
>      contribute to ENFILE/EMFILE but it still eats memory).

Sounds similar to the problem that the NFSd open file cache solves.
(fs/nfsd/filecache.c)

>  (3) Trimming excess data from the end of the cache file.  The problem with
>      using DIO to write to the cache is that the write has to be rounded up to
>      a multiple of the backing fs DIO blocksize,

Actually, a multiple of the logical sector size of the backing
device behind the backing filesystem.

>      but if the file is truncated
>      larger, that excess data now becomes part of the file.

Keep the actual file size in your tracking xattr.

>      Possibly it's sufficient to just clear the excess page space before
>      writing, but that doesn't necessarily stop a writable mmap from
>      scribbling on it.

We can't stop mmap from scribbling in it. All filesystems have this
problem, so to prevent data leaks we have to zero the post-eof tail
region on every write of the EOF block, anyway.

>  (4) Committing outstanding cache metadata at cache withdrawal or netfs
>      unmount.  I've previously mentioned this: it ends up with a whole slew of
>      synchronous metadata changes being committed to the cache in one go
>      (truncates, fallocates, fsync, xattrs, unlink+link of tmpfile) - and this
>      can take quite a long time.  The cache needs to be more proactive in
>      getting stuff committed as it goes along.

Workqueues give you an easy mechanism for async dispatch and
concurrency for synchronous operations. This is a largely solved
problem...

>  (5) Attaching to an object requires a pathwalk to it (normally only two
>      steps) and then reading various xattrs on it - all synchronous, but can
>      be punted to a background threadpool.

a.k.a. punting to a workqueue :)

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
