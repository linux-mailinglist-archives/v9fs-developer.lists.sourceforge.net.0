Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3266A330B52
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Mar 2021 11:36:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJDF2-0008VL-0E; Mon, 08 Mar 2021 10:36:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <amir73il@gmail.com>) id 1lJDF0-0008Ut-3M
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 10:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uW22BUdu/SRB8yiALOfrH1UfupHMNVrmOHvwUHBy06I=; b=OeHYv478y70n6RPF5Ik9KdmXL2
 L0Y7r4viSkQ5nNfpZu0o1T9tCEzgl4ubN13awHPi/dm74uYHvxsa9ByY3NIraiRHIO7EJ2ulQp+EQ
 McXm5roKo2PWH3i/+VdVglHYFHU7tE17yEPJHkhBflY3IUgKd3Fy/Fc8HcNedZsqGUoo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uW22BUdu/SRB8yiALOfrH1UfupHMNVrmOHvwUHBy06I=; b=dA/D4f1/68TOkHf7MiCNctD4X8
 0V7jRRwhCC5FMlzx7DMsi2N0nWkdvhnwU48u1TkLBW5otkuyC6xpfOXEyP5mSea4xAQubXbKinZbB
 8+4Sm12BGp9PhMRsggEDmdEMkmnN0TvKpYMmgKhAdG07trW3z/bdUIV/Vmpf25YEuZJ4=;
Received: from mail-il1-f174.google.com ([209.85.166.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lJDEm-00006z-2A
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 10:35:56 +0000
Received: by mail-il1-f174.google.com with SMTP id c10so8349194ilo.8
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 08 Mar 2021 02:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uW22BUdu/SRB8yiALOfrH1UfupHMNVrmOHvwUHBy06I=;
 b=GqBBRDbCEj38iFW0MXTGa0/KJ45ZgACFsDGi2tbJhwbhi8YCBsFTUewKjtDfNp6Yos
 dUIJZWXuF8v2CNFNVWJh4WgmIKrT+3Lb9ujeIW6xTDVGr4N+GEVCG3LZerTkiUSV2MTj
 kWEMcxe0bnQj74mMC1jLhQNsS+BGT6QRJKtMXgZUCcgAQR9V8IRYbp70NATj8rhwtrbi
 fIGmQaNhUCUhmSCrYNDfTQTbZM7TDR7pgRTkZmUzpkC0TrpqdbCTm8Tr2OwR3gLoRDOV
 tKhDerYxOi4FCnL9jMMFNJKyJIIDsxy2W0SwENtt832lcuHi5xAwBk4BozKEyXRMkcE2
 /TJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uW22BUdu/SRB8yiALOfrH1UfupHMNVrmOHvwUHBy06I=;
 b=PqdCI9okT7mOEeQToDDqb/QxgTRiGX3Gusg8KBhfjQSsd9yOFCYDKTRvez6YXz6bDM
 c7KZSwJdH6mzfDYD+nfO8Yk6r9JN0lcC1KZza39fd/6Us8DmWVBz4Lfh5GZI9gs5AS1O
 1D5qAaOsJv2CWfF0gzXy8HSvnKEdLxHu5VpqoEyNiIUaLodXNGZXLppg9oeNHHM1ISJs
 BNrBOzhcLSu0iLuyb7/TdWTZnTt5JbZu17TQrjlOgpbdCTKuUTYI5AuesDcY5zd6mK27
 /But0C5IdL8JHuk0owXZG2tzQPSYc3hW9m2En+J0XKdLVZYQaYNIGSO8m7tjCE2WyTym
 eHZw==
X-Gm-Message-State: AOAM531ULjIJNyizLgI32RdbaM+JI4BSNy4LwtonK6NY732WKCh9Vsud
 gm8/zierjz93IfNzLxyYVFiprt3ArR4vphk+tjY=
X-Google-Smtp-Source: ABdhPJxyjk22aaxo3sgf/QuqQ+LLIuxfb1TXrgGa/WsZBq/b3dbCGqGi/0c5jlTKv2ACVTB9EU8+B0z9poenvesX45o=
X-Received: by 2002:a92:c010:: with SMTP id q16mr20835009ild.250.1615199738508; 
 Mon, 08 Mar 2021 02:35:38 -0800 (PST)
MIME-Version: 1.0
References: <2653261.1614813611@warthog.procyon.org.uk>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <517184.1615194835@warthog.procyon.org.uk>
In-Reply-To: <517184.1615194835@warthog.procyon.org.uk>
From: Amir Goldstein <amir73il@gmail.com>
Date: Mon, 8 Mar 2021 12:35:27 +0200
Message-ID: <CAOQ4uxjYWprb7trvamCx+DaP2yn8HCaZeZx1dSvPyFH2My303w@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (amir73il[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.174 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lJDEm-00006z-2A
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

On Mon, Mar 8, 2021 at 11:14 AM David Howells <dhowells@redhat.com> wrote:
>
> Amir Goldstein <amir73il@gmail.com> wrote:
>
> > >  (0a) As (0) but using SEEK_DATA/SEEK_HOLE instead of bmap and opening the
> > >       file for every whole operation (which may combine reads and writes).
> >
> > I read that NFSv4 supports hole punching, so when using ->bmap() or SEEK_DATA
> > to keep track of present data, it's hard to distinguish between an
> > invalid cached range and a valid "cached hole".
>
> I wasn't exactly intending to permit caching over NFS.  That leads to fun
> making sure that the superblock you're caching isn't the one that has the
> cache in it.
>
> However, we will need to handle hole-punching being done on a cached netfs,
> even if that's just to completely invalidate the cache for that file.
>
> > With ->fiemap() you can at least make the distinction between a non existing
> > and an UNWRITTEN extent.
>
> I can't use that for XFS, Ext4 or btrfs, I suspect.  Christoph and Dave's
> assertion is that the cache can't rely on the backing filesystem's metadata
> because these can arbitrarily insert or remove blocks of zeros to bridge or
> split extents.
>
> > You didn't say much about crash consistency or durability requirements of the
> > cache. Since cachefiles only syncs the cache on shutdown, I guess you
> > rely on the hosting filesystem to provide the required ordering guarantees.
>
> There's an xattr on each file in the cache to record the state.  I use this
> mark a cache file "open".  If, when I look up a file, the file is marked open,
> it is just discarded at the moment.
>
> Now, there are two types of data stored in the cache: data that has to be
> stored as a single complete blob and is replaced as such (e.g. symlinks and
> AFS dirs) and data that might be randomly modified (e.g. regular files).
>
> For the former, I have code, though in yet another branch, that writes this in
> a tmpfile, sets the xattrs and then uses vfs_link(LINK_REPLACE) to cut over.
>
> For the latter, that's harder to do as it would require copying the data to
> the tmpfile before we're allowed to modify it.  However, if it's possible to
> create a tmpfile that's a CoW version of a data file, I could go down that
> route.
>
> But after I've written and sync'd the data, I set the xattr to mark the file
> not open.  At the moment I'm doing this too lazily, only doing it when a netfs
> file gets evicted or when the cache gets withdrawn, but I really need to add a
> queue of objects to be sealed as they're closed.  The balance is working out
> how often to do the sealing as something like a shell script can do a lot of
> consecutive open/write/close ops.
>

You could add an internal vfs API wait_for_multiple_inodes_to_be_synced().
For example, xfs keeps the "LSN" on each inode, so once the transaction
with some LSN has been committed, all the relevant inodes, if not dirty, can
be declared as synced, without having to call fsync() on any file and without
having to force transaction commit or any IO at all.

Since fscache takes care of submitting the IO, and it shouldn't care about any
specific time that the data/metadata hits the disk(?), you can make use of the
existing periodic writeback and rolling transaction commit and only ever need
to wait for that to happen before marking cache files "closed".

There was a discussion about fsyncing a range of files on LSFMM [1].
In the last comment on the article dchinner argues why we already have that
API (and now also with io_uring(), but AFAIK, we do not have a useful
wait_for_sync() API. And it doesn't need to be exposed to userspace at all.

[1] https://lwn.net/Articles/789024/

> > Anyway, how are those ordering requirements going to be handled when entire
> > indexing is in a file? You'd practically need to re-implement a filesystem
>
> Yes, the though has occurred to me too.  I would be implementing a "simple"
> filesystem - and we have lots of those:-/.  The most obvious solution is to
> use the backing filesystem's metadata - except that that's not possible.
>
> > journal or only write cache updates to a temp file that can be discarded at
> > any time?
>
> It might involve keeping a bitmap of "open" blocks.  Those blocks get
> invalidated when the cache restarts.  The simplest solution would be to wipe
> the entire cache in such a situation, but that goes against one of the
> important features I want out of it.
>
> Actually, a journal of open and closed blocks might be better, though all I
> really need to store for each block is a 32-bit number.
>
> It's a particular problem if I'm doing DIO to the data storage area but
> buffering the changes to the metadata.  Further, the metadata and data might
> be on different media, just to add to the complexity.
>
> Another possibility is only to cull blocks when the parent file is culled.
> That probably makes more sense as, as long as the file is registered culled on
> disk first and I don't reuse the file slot too quickly, I can write to the
> data store before updating the metadata.
>

If I were you, I would try to avoid re-implementing a journaled filesystem or
a database for fscache and try to make use of crash consistency guarantees
that filesystems already provide.
Namely, use the data dependency already provided by temp files.
It doesn't need to be one temp file per cached file.

Always easier said than done ;-)

Thanks,
Amir.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
