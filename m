Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52360411514
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 14:55:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSIpm-0003yv-Ab; Mon, 20 Sep 2021 12:55:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1mSIpi-0003yN-HY
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 12:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2pfCQSUTEHtxvGUE7L+msEadtTL5UoS3j8kSdpaAr2M=; b=Bngkbn1W2fP6P4r4CZGWYVmDH1
 +t0GLeGqsY+Q0QgVHmnftI79xTYostC6p3sjCf66kd6HLUP4iRNZbnJaTv3C3Gn65by+n2HFsF+pe
 lfrDqF/8sYcL7FuQq12ee5h3rfMOcPQ219556LPZIztFoJpDB56QQvzxoV3KwlL5UiDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2pfCQSUTEHtxvGUE7L+msEadtTL5UoS3j8kSdpaAr2M=; b=XtwgUANqYR2hJzBJMk7tg21iMD
 mopQ3mY6f3SYBfXRq9UQNrZNzJJJs2lvuX5dKcZrEP0x2zZLfYKICEJRpi6Z9eLq69rlP09P4c66k
 bP0whPtKAvUQ2iU8ORKuzn/aYHKgJGVJZMgjadgeMy8bJtk9u8FfoBrg0exF2L00az8E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSIpg-00GxJ2-Qo
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 12:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632142534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2pfCQSUTEHtxvGUE7L+msEadtTL5UoS3j8kSdpaAr2M=;
 b=O2B5G1kr+d860mSLzxlNOSKoR6jyNQwdJRl4aMKW3seW+CN08TJdpib03rF3qSSiPYQqxr
 KtAIwlwSaxSwHHmpY5EAeyCAwlxAtt02GesSdf3p370vNuhqiUJNPn+rArczHsifOEbWZa
 Gr0idIlv78hX4CqOTlIqBUZEqR31qZo=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-bITzsqIZPbmWzouNuH7yJA-1; Mon, 20 Sep 2021 08:55:33 -0400
X-MC-Unique: bITzsqIZPbmWzouNuH7yJA-1
Received: by mail-ed1-f71.google.com with SMTP id
 c7-20020a05640227c700b003d27f41f1d4so15504543ede.16
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 20 Sep 2021 05:55:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2pfCQSUTEHtxvGUE7L+msEadtTL5UoS3j8kSdpaAr2M=;
 b=ZffWNU/17bEXErxm85k0rnrLNXdq3egIWCKBZDPHDhrJ+3ixuw6wnhmQlKm7QLr4wm
 b7zNarg9m5GnbHAc+9UbHGI+A/WyevMPQ7n1JZ3cJiJimuGUpierOkKH8xzBr7uFDESf
 3wQHiVnWSqACYPuaLrOT0mfpUQEThHloek2ceFU3NtWg+5ur9ZmqIiArEZgim7lu7LAV
 99sfmAkolzhaNCZoK8GGeBSip6/6n3BRfaWtYfb+3/VrjR7vM6nu/FK3qN4orhGDU/g5
 sbPblDc5uAqlQwijErproPZlHSl99/Z4q8p/LfuKBQfg0uluKhoSHlv400np5r23Md/P
 OtDA==
X-Gm-Message-State: AOAM533ZwY7336V4yU1JSOIyUhsm2Xu1dyAwBJxuKJuK4B/xYAUpBk2q
 oncv4lwhKqazzA2cQwT9WPJl6gGzoU/asMQ1u3rKJgMnPlzfS5ytrZob+UOPGJEbzxPvwhjEo5l
 XvCF5hgIFNjtpEo3l8CPMRx6scmElndN/HU2BIEPQ8ZlqhgG6lok=
X-Received: by 2002:a05:6402:897:: with SMTP id
 e23mr29275334edy.366.1632142532361; 
 Mon, 20 Sep 2021 05:55:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzlDFvRn78rkRZA594LdXUAWQmcz2jxyF/fehBHkaHwnv53x2WQ0in/WyUSP9JJllei7jnYtq334xLMF93TdIE=
X-Received: by 2002:a05:6402:897:: with SMTP id
 e23mr29275298edy.366.1632142532147; 
 Mon, 20 Sep 2021 05:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
 <CALF+zO=VHPzcp0A0KxpYW-0WnyxvM5gW5HmorzrMJ_arxxBchA@mail.gmail.com>
In-Reply-To: <CALF+zO=VHPzcp0A0KxpYW-0WnyxvM5gW5HmorzrMJ_arxxBchA@mail.gmail.com>
From: David Wysochanski <dwysocha@redhat.com>
Date: Mon, 20 Sep 2021 08:54:56 -0400
Message-ID: <CALF+zOkz8M_uwJRK_q=TVANrF=0=W2WAbL2Y-JBDrq2ZuRpcDg@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 14,
 2021 at 11:30 AM David Wysochanski <dwysocha@redhat.com>
 wrote: > > On Tue, Sep 14, 2021 at 9:55 AM David Howells <dhowells@redhat.com>
 wrote: > > > > > > Here's a set of patches that [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mSIpg-00GxJ2-Qo
Subject: Re: [V9fs-developer] [RFC PATCH 0/8] fscache: Replace and remove
 old I/O API
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-cachefs <linux-cachefs@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Sep 14, 2021 at 11:30 AM David Wysochanski <dwysocha@redhat.com> wrote:
>
> On Tue, Sep 14, 2021 at 9:55 AM David Howells <dhowells@redhat.com> wrote:
> >
> >
> > Here's a set of patches that removes the old fscache I/O API by the following
> > means:
> >
> >  (1) A simple fallback API is added that can read or write a single page
> >      synchronously.  The functions for this have "deprecated" in their names
> >      as they have to be removed at some point.
> >
> >  (2) An implementation of this is provided in cachefiles.  It creates a kiocb
> >      to use DIO to the backing file rather than calling readpage on the
> >      backing filesystem page and then snooping the page wait queue.
> >
> >  (3) NFS is switched to use the fallback API.
> >
> >  (4) CIFS is switched to use the fallback API also for the moment.
> >
> >  (5) 9P is switched to using netfslib.
> >
> >  (6) The old I/O API is removed from fscache and the page snooping
> >      implementation is removed from cachefiles.
> >
> > The reasons for doing this are:
> >
> >  (A) Using a kiocb to do asynchronous DIO from/to the pages of the backing
> >      file is now a possibility that didn't exist when cachefiles was created.
> >      This is much simpler than the snooping mechanism with a proper callback
> >      path and it also requires fewer copies and less memory.
> >
> >  (B) We have to stop using bmap() or SEEK_DATA/SEEK_HOLE to work out what
> >      blocks are present in the backing file is dangerous and can lead to data
> >      corruption if the backing filesystem can insert or remove blocks of zeros
> >      arbitrarily in order to optimise its extent list[1].
> >
> >      Whilst this patchset doesn't fix that yet, it does simplify the code and
> >      the fix for that can be made in a subsequent patchset.
> >
> >  (C) In order to fix (B), the cache will need to keep track itself of what
> >      data is present.  To make this easier to manage, the intention is to
> >      increase the cache block granularity to, say, 256KiB - importantly, a
> >      size that will span multiple pages - which means the single-page
> >      interface will have to go away.  netfslib is designed to deal with
> >      that on behalf of a filesystem, though a filesystem could use raw
> >      cache calls instead and manage things itself.
> >
> > These patches can be found also on:
> >
> >         https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter-3
> >
> > David
> >
> > Link: https://lore.kernel.org/r/YO17ZNOcq+9PajfQ@mit.edu [1]
> > ---
> > David Howells (8):
> >       fscache: Generalise the ->begin_read_operation method
> >       fscache: Implement an alternate I/O interface to replace the old API
> >       nfs: Move to using the alternate (deprecated) fscache I/O API
> >       9p: (untested) Convert to using the netfs helper lib to do reads and caching
> >       cifs: (untested) Move to using the alternate (deprecated) fscache I/O API
> >       fscache: Remove the old I/O API
> >       fscache: Remove stats that are no longer used
> >       fscache: Update the documentation to reflect I/O API changes
> >
> >
> >  .../filesystems/caching/backend-api.rst       |  138 +--
> >  .../filesystems/caching/netfs-api.rst         |  386 +-----
> >  fs/9p/Kconfig                                 |    1 +
> >  fs/9p/cache.c                                 |  137 ---
> >  fs/9p/cache.h                                 |   98 +-
> >  fs/9p/v9fs.h                                  |    9 +
> >  fs/9p/vfs_addr.c                              |  174 ++-
> >  fs/9p/vfs_file.c                              |   21 +-
> >  fs/cachefiles/Makefile                        |    1 -
> >  fs/cachefiles/interface.c                     |   15 -
> >  fs/cachefiles/internal.h                      |   38 -
> >  fs/cachefiles/io.c                            |   28 +-
> >  fs/cachefiles/main.c                          |    1 -
> >  fs/cachefiles/rdwr.c                          |  972 ---------------
> >  fs/cifs/file.c                                |   64 +-
> >  fs/cifs/fscache.c                             |  105 +-
> >  fs/cifs/fscache.h                             |   74 +-
> >  fs/fscache/cache.c                            |    6 -
> >  fs/fscache/cookie.c                           |   10 -
> >  fs/fscache/internal.h                         |   58 +-
> >  fs/fscache/io.c                               |  140 ++-
> >  fs/fscache/object.c                           |    2 -
> >  fs/fscache/page.c                             | 1066 -----------------
> >  fs/fscache/stats.c                            |   73 +-
> >  fs/nfs/file.c                                 |   14 +-
> >  fs/nfs/fscache-index.c                        |   26 -
> >  fs/nfs/fscache.c                              |  161 +--
> >  fs/nfs/fscache.h                              |   84 +-
> >  fs/nfs/read.c                                 |   25 +-
> >  fs/nfs/write.c                                |    7 +-
> >  include/linux/fscache-cache.h                 |  131 --
> >  include/linux/fscache.h                       |  418 ++-----
> >  include/linux/netfs.h                         |   17 +-
> >  33 files changed, 508 insertions(+), 3992 deletions(-)
> >  delete mode 100644 fs/cachefiles/rdwr.c
> >
> >
>
> I tested an earlier version of these with NFS, which identified a
> couple issues which you fixed.  Last I checked my unit tests and
> xfstests were looking good. I'll do some testing on this latest branch
> / patches and report back.

For the series, you can add
Tested-by: Dave Wysochanski <dwysocha@redhat.com>

Testing was limited to NFS enabled code paths.  I ran custom unit
tests, as well as a series of xfstest generic runs with various NFS
versions, both fscache enabled and not enabled, as well as various NFS
servers, comparing 5.15.0-rc1 runs vs runs with these patches.  I did
not see any failures with these new patches that were not already
present with 5.15.0-rc1.

Here are the list of xfstest generic runs:
1. Hammerspace (pNFS flexfiles) version 4.6.3-166: vers=4.1,fsc
2. Hammerspace (pNFS flexfiles) version 4.6.3-166: vers=4.2
3. Netapp (pNFS filelayout) version 9.5RC1: vers=4.1
4. Netapp (pNFS filelayout) version 9.5RC1: vers=4.1,fsc
5. Red Hat version 8.2 (kernel-4.18.0-193.el8): vers=4.2,fsc
6. Red Hat version 8.2 (kernel-4.18.0-193.el8): vers=4.0,fsc
7. Red Hat version 8.2 (kernel-4.18.0-193.el8): vers=3,fsc



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
