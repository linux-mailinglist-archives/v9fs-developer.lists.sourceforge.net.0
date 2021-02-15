Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF131C11C
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 19:05:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBiFn-0002qN-0G; Mon, 15 Feb 2021 18:05:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1lBiFl-0002pr-Dr
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 18:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RvKgM/cU8h7EBERz61fRNCj2y18WKgIK9i+ka1lcCTY=; b=alSiYrFwp+7ZOIxrQ6HguVWzRK
 M8M6I/IAr4OET0Sx12mQH3I45loBiC0PYU4cSVuRfLg0hL6g5VJnzVKlHywGKCCI4MiHclZBXPpxb
 KyxoUebUpX+hgXw4mxATLmEJepTDGCqYjLXjrWJ7+cnmYUbiUnEj8x7um8CbazLVP4Kg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RvKgM/cU8h7EBERz61fRNCj2y18WKgIK9i+ka1lcCTY=; b=GteK4IkP4cCDUmX/MQdcv7O72x
 RmBgSCQnO5E3lOk9GnxlRno85nlnsvoAXisJ1b45PCCKPJMj9IeaGpXVmn5fWMzoax1lUwa1mlXFs
 z61TxhjqpxetsJF/A4tNkMt60E00Na/1tVqyuGEHWc67epdPAUzVB2cX3vAqoUXX0SxY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBiFN-009vo2-5D
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 18:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613412315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RvKgM/cU8h7EBERz61fRNCj2y18WKgIK9i+ka1lcCTY=;
 b=WqYYwfV3xC0G5353aXVazyY2Suep6T0z9xf26MEjzX3vrKxMqkRcJgSpWWIPebjKkZ5Mb9
 RWlelU3COkjujMqeBO8Vn/rspLrR16JML9aeun+ZOh/7GITfTAEBq1ue/tKbBkKf5iHgo3
 jzqVJVhCpK/KAp/0r3YRTwEMaomqWqA=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-oY91szlXMDWQp0dzQ9Wq3g-1; Mon, 15 Feb 2021 13:05:11 -0500
X-MC-Unique: oY91szlXMDWQp0dzQ9Wq3g-1
Received: by mail-qk1-f199.google.com with SMTP id b125so2850310qkf.19
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Feb 2021 10:05:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=RvKgM/cU8h7EBERz61fRNCj2y18WKgIK9i+ka1lcCTY=;
 b=AX1r+74ND99+H9TfF+Wu4BxpuW3jYdcWULtysUKbtRfUHAniJTjZ2NN0M58sfq3scj
 fKeT7TUluhVTVQWcJcqUpnZHsdi8ocZRmE4yS4s89NLMzJZ+Qo8w1AzoM2o760k324Ff
 QfBM1otPMASu2066JheErJGWH2fVeUX506qkJul2QQlzrCF8p6HHkBYC6pLyOiYg7EHz
 NxUuw4TfQZBHrv9qlVX6MODsCGGToO8wjNyqaEL+/z0mYzju5XSMBcXRBLx2nnK167D8
 ZkKkDH13uXdBh6Xl6MkWWIcqexRoCQ0uedXvRGQTOfZHVnJ+Xb53VjBnrcFVC/NkKK8q
 sVbQ==
X-Gm-Message-State: AOAM5317YgcHORO4ec0TbxoJtC26rju2JZRM1FIt4HH3Tmz/hPmr2XUZ
 +hQmfZm96EhL1AI/3ibjXqiBldOgBEBsVR1zWWRW+yUxDcHnm7viCUzr906GJEd0LHZM0m2T/7/
 30B48uTG9ZGALYbDMiynbjyXtalkPvAd2/jk=
X-Received: by 2002:ac8:6f04:: with SMTP id g4mr15602988qtv.20.1613412310879; 
 Mon, 15 Feb 2021 10:05:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzVqhx29FzIOMOJlU1RndSABYvBRNepxFeV6onEcdZEX4MJmol12Tso61j/Kc34t/K7GsDnug==
X-Received: by 2002:ac8:6f04:: with SMTP id g4mr15602958qtv.20.1613412310536; 
 Mon, 15 Feb 2021 10:05:10 -0800 (PST)
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net. [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id t129sm3626939qkh.33.2021.02.15.10.05.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 10:05:10 -0800 (PST)
Message-ID: <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, Trond Myklebust
 <trondmy@hammerspace.com>, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, Dominique Martinet
 <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 13:05:09 -0500
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBiFN-009vo2-5D
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
 David Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-02-15 at 15:44 +0000, David Howells wrote:
> Here's a set of patches to do two things:
> =

> =A0(1) Add a helper library to handle the new VM readahead interface.  Th=
is
> =A0=A0=A0=A0=A0is intended to be used unconditionally by the filesystem (=
whether or
> =A0=A0=A0=A0=A0not caching is enabled) and provides a common framework fo=
r doing
> =A0=A0=A0=A0=A0caching, transparent huge pages and, in the future, possib=
ly fscrypt
> =A0=A0=A0=A0=A0and read bandwidth maximisation.  It also allows the netfs=
 and the
> =A0=A0=A0=A0=A0cache to align, expand and slice up a read request from th=
e VM in
> =A0=A0=A0=A0=A0various ways; the netfs need only provide a function to re=
ad a stretch
> =A0=A0=A0=A0=A0of data to the pagecache and the helper takes care of the =
rest.
> =

> =A0(2) Add an alternative fscache/cachfiles I/O API that uses the kiocb
> =A0=A0=A0=A0=A0facility to do async DIO to transfer data to/from the netf=
s's pages,
> =A0=A0=A0=A0=A0rather than using readpage with wait queue snooping on one=
 side and
> =A0=A0=A0=A0=A0vfs_write() on the other.  It also uses less memory, since=
 it doesn't
> =A0=A0=A0=A0=A0do buffered I/O on the backing file.
> =

> =A0=A0=A0=A0=A0Note that this uses SEEK_HOLE/SEEK_DATA to locate the data=
 available
> =A0=A0=A0=A0=A0to be read from the cache.  Whilst this is an improvement =
from the
> =A0=A0=A0=A0=A0bmap interface, it still has a problem with regard to a mo=
dern
> =A0=A0=A0=A0=A0extent-based filesystem inserting or removing bridging blo=
cks of
> =A0=A0=A0=A0=A0zeros.  Fixing that requires a much greater overhaul.
> =

> This is a step towards overhauling the fscache API.  The change is opt-in
> on the part of the network filesystem.  A netfs should not try to mix the
> old and the new API because of conflicting ways of handling pages and the
> PG_fscache page flag and because it would be mixing DIO with buffered I/O.
> Further, the helper library can't be used with the old API.
> =

> This does not change any of the fscache cookie handling APIs or the way
> invalidation is done.
> =

> In the near term, I intend to deprecate and remove the old I/O API
> (fscache_allocate_page{,s}(), fscache_read_or_alloc_page{,s}(),
> fscache_write_page() and fscache_uncache_page()) and eventually replace
> most of fscache/cachefiles with something simpler and easier to follow.
> =

> The patchset contains five parts:
> =

> =A0(1) Some helper patches, including provision of an ITER_XARRAY iov
> =A0=A0=A0=A0=A0iterator and a function to do readahead expansion.
> =

> =A0(2) Patches to add the netfs helper library.
> =

> =A0(3) A patch to add the fscache/cachefiles kiocb API.
> =

> =A0(4) Patches to add support in AFS for this.
> =

> =A0(5) Patches from Jeff Layton to add support in Ceph for this.
> =

> Dave Wysochanski also has patches for NFS for this, though they're not
> included on this branch as there's an issue with PNFS.
> =

> With this, AFS without a cache passes all expected xfstests; with a cache,
> there's an extra failure, but that's also there before these patches.
> Fixing that probably requires a greater overhaul.  Ceph and NFS also pass
> the expected tests.
> =

> These patches can be found also on:
> =

> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/lo=
g/?h=3Dfscache-netfs-lib
> =

> For diffing reference, the tag for the 9th Feb pull request is
> fscache-ioapi-20210203 and can be found in the same repository.
> =

> =

> =

> Changes
> =3D=3D=3D=3D=3D=3D=3D
> =

> =A0(v3) Rolled in the bug fixes.
> =

> =A0=A0=A0=A0=A0=A0Adjusted the functions that unlock and wait for PG_fsca=
che according
> =A0=A0=A0=A0=A0=A0to Linus's suggestion.
> =

> =A0=A0=A0=A0=A0=A0Hold a ref on a page when PG_fscache is set as per Linu=
s's
> =A0=A0=A0=A0=A0=A0suggestion.
> =

> =A0=A0=A0=A0=A0=A0Dropped NFS support and added Ceph support.
> =

> =A0(v2) Fixed some bugs and added NFS support.
> =

> =

> References
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> These patches have been published for review before, firstly as part of a
> larger set:
> =

> Link: https://lore.kernel.org/linux-fsdevel/158861203563.340223.758535986=
9938129395.stgit@warthog.procyon.org.uk/
> =

> Link: https://lore.kernel.org/linux-fsdevel/159465766378.1376105.11619976=
251039287525.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/159465784033.1376674.18106463=
693989811037.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/159465821598.1377938.20463622=
70225008168.stgit@warthog.procyon.org.uk/
> =

> Link: https://lore.kernel.org/linux-fsdevel/160588455242.3465195.32147338=
58273019178.stgit@warthog.procyon.org.uk/
> =

> Then as a cut-down set:
> =

> Link: https://lore.kernel.org/linux-fsdevel/161118128472.1232039.11746799=
833066425131.stgit@warthog.procyon.org.uk/
> =

> Link: https://lore.kernel.org/linux-fsdevel/161161025063.2537118.20092494=
44682241405.stgit@warthog.procyon.org.uk/
> =

> =

> Proposals/information about the design has been published here:
> =

> Link: https://lore.kernel.org/lkml/24942.1573667720@warthog.procyon.org.u=
k/
> Link: https://lore.kernel.org/linux-fsdevel/2758811.1610621106@warthog.pr=
ocyon.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/1441311.1598547738@warthog.pr=
ocyon.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/160655.1611012999@warthog.pro=
cyon.org.uk/
> =

> And requests for information:
> =

> Link: https://lore.kernel.org/linux-fsdevel/3326.1579019665@warthog.procy=
on.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/4467.1579020509@warthog.procy=
on.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/3577430.1579705075@warthog.pr=
ocyon.org.uk/
> =

> The NFS parts, though not included here, have been tested by someone who's
> using fscache in production:
> =

> Link: https://listman.redhat.com/archives/linux-cachefs/2020-December/msg=
00000.html
> =

> I've posted partial patches to try and help 9p and cifs along:
> =

> Link: https://lore.kernel.org/linux-fsdevel/1514086.1605697347@warthog.pr=
ocyon.org.uk/
> Link: https://lore.kernel.org/linux-cifs/1794123.1605713481@warthog.procy=
on.org.uk/
> Link: https://lore.kernel.org/linux-fsdevel/241017.1612263863@warthog.pro=
cyon.org.uk/
> Link: https://lore.kernel.org/linux-cifs/270998.1612265397@warthog.procyo=
n.org.uk/
> =

> David
> ---
> David Howells (27):
> =A0=A0=A0=A0=A0=A0iov_iter: Add ITER_XARRAY
> =A0=A0=A0=A0=A0=A0mm: Add an unlock function for PG_private_2/PG_fscache
> =A0=A0=A0=A0=A0=A0mm: Implement readahead_control pageset expansion
> =A0=A0=A0=A0=A0=A0vfs: Export rw_verify_area() for use by cachefiles
> =A0=A0=A0=A0=A0=A0netfs: Make a netfs helper module
> =A0=A0=A0=A0=A0=A0netfs, mm: Move PG_fscache helper funcs to linux/netfs.h
> =A0=A0=A0=A0=A0=A0netfs, mm: Add unlock_page_fscache() and wait_on_page_f=
scache()
> =A0=A0=A0=A0=A0=A0netfs: Provide readahead and readpage netfs helpers
> =A0=A0=A0=A0=A0=A0netfs: Add tracepoints
> =A0=A0=A0=A0=A0=A0netfs: Gather stats
> =A0=A0=A0=A0=A0=A0netfs: Add write_begin helper
> =A0=A0=A0=A0=A0=A0netfs: Define an interface to talk to a cache
> =A0=A0=A0=A0=A0=A0netfs: Hold a ref on a page when PG_private_2 is set
> =A0=A0=A0=A0=A0=A0fscache, cachefiles: Add alternate API to use kiocb for=
 read/write to cache
> =A0=A0=A0=A0=A0=A0afs: Disable use of the fscache I/O routines
> =A0=A0=A0=A0=A0=A0afs: Pass page into dirty region helpers to provide THP=
 size
> =A0=A0=A0=A0=A0=A0afs: Print the operation debug_id when logging an unexp=
ected data version
> =A0=A0=A0=A0=A0=A0afs: Move key to afs_read struct
> =A0=A0=A0=A0=A0=A0afs: Don't truncate iter during data fetch
> =A0=A0=A0=A0=A0=A0afs: Log remote unmarshalling errors
> =A0=A0=A0=A0=A0=A0afs: Set up the iov_iter before calling afs_extract_dat=
a()
> =A0=A0=A0=A0=A0=A0afs: Use ITER_XARRAY for writing
> =A0=A0=A0=A0=A0=A0afs: Wait on PG_fscache before modifying/releasing a pa=
ge
> =A0=A0=A0=A0=A0=A0afs: Extract writeback extension into its own function
> =A0=A0=A0=A0=A0=A0afs: Prepare for use of THPs
> =A0=A0=A0=A0=A0=A0afs: Use the fs operation ops to handle FetchData compl=
etion
> =A0=A0=A0=A0=A0=A0afs: Use new fscache read helper API
> =

> Jeff Layton (6):
> =A0=A0=A0=A0=A0=A0ceph: disable old fscache readpage handling
> =A0=A0=A0=A0=A0=A0ceph: rework PageFsCache handling
> =A0=A0=A0=A0=A0=A0ceph: fix fscache invalidation
> =A0=A0=A0=A0=A0=A0ceph: convert readpage to fscache read helper
> =A0=A0=A0=A0=A0=A0ceph: plug write_begin into read helper
> =A0=A0=A0=A0=A0=A0ceph: convert ceph_readpages to ceph_readahead
> =

> =

> =A0fs/Kconfig                    |    1 +
> =A0fs/Makefile                   |    1 +
> =A0fs/afs/Kconfig                |    1 +
> =A0fs/afs/dir.c                  |  225 ++++---
> =A0fs/afs/file.c                 |  470 ++++---------
> =A0fs/afs/fs_operation.c         |    4 +-
> =A0fs/afs/fsclient.c             |  108 +--
> =A0fs/afs/inode.c                |    7 +-
> =A0fs/afs/internal.h             |   58 +-
> =A0fs/afs/rxrpc.c                |  150 ++---
> =A0fs/afs/write.c                |  610 +++++++++--------
> =A0fs/afs/yfsclient.c            |   82 +--
> =A0fs/cachefiles/Makefile        |    1 +
> =A0fs/cachefiles/interface.c     |    5 +-
> =A0fs/cachefiles/internal.h      |    9 +
> =A0fs/cachefiles/rdwr2.c         |  412 ++++++++++++
> =A0fs/ceph/Kconfig               |    1 +
> =A0fs/ceph/addr.c                |  535 ++++++---------
> =A0fs/ceph/cache.c               |  125 ----
> =A0fs/ceph/cache.h               |  101 +--
> =A0fs/ceph/caps.c                |   10 +-
> =A0fs/ceph/inode.c               |    1 +
> =A0fs/ceph/super.h               |    1 +
> =A0fs/fscache/Kconfig            |    1 +
> =A0fs/fscache/Makefile           |    3 +-
> =A0fs/fscache/internal.h         |    3 +
> =A0fs/fscache/page.c             |    2 +-
> =A0fs/fscache/page2.c            |  117 ++++
> =A0fs/fscache/stats.c            |    1 +
> =A0fs/internal.h                 |    5 -
> =A0fs/netfs/Kconfig              |   23 +
> =A0fs/netfs/Makefile             |    5 +
> =A0fs/netfs/internal.h           |   97 +++
> =A0fs/netfs/read_helper.c        | 1169 +++++++++++++++++++++++++++++++++
> =A0fs/netfs/stats.c              |   59 ++
> =A0fs/read_write.c               |    1 +
> =A0include/linux/fs.h            |    1 +
> =A0include/linux/fscache-cache.h |    4 +
> =A0include/linux/fscache.h       |   40 +-
> =A0include/linux/netfs.h         |  195 ++++++
> =A0include/linux/pagemap.h       |    3 +
> =A0include/net/af_rxrpc.h        |    2 +-
> =A0include/trace/events/afs.h    |   74 +--
> =A0include/trace/events/netfs.h  |  201 ++++++
> =A0mm/filemap.c                  |   20 +
> =A0mm/readahead.c                |   70 ++
> =A0net/rxrpc/recvmsg.c           |    9 +-
> =A047 files changed, 3473 insertions(+), 1550 deletions(-)
> =A0create mode 100644 fs/cachefiles/rdwr2.c
> =A0create mode 100644 fs/fscache/page2.c
> =A0create mode 100644 fs/netfs/Kconfig
> =A0create mode 100644 fs/netfs/Makefile
> =A0create mode 100644 fs/netfs/internal.h
> =A0create mode 100644 fs/netfs/read_helper.c
> =A0create mode 100644 fs/netfs/stats.c
> =A0create mode 100644 include/linux/netfs.h
> =A0create mode 100644 include/trace/events/netfs.h
> =

> =


Thanks David,

I did an xfstests run on ceph with a kernel based on this and it seemed
to do fine. I'll plan to pull this into the ceph-client/testing branch
and run it through the ceph kclient test harness. There are only a few
differences from the last run we did, so I'm not expecting big changes,
but I'll keep you posted.

-- =

Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
