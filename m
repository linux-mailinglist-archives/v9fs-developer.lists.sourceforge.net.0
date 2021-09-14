Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA23D40B32C
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 17:31:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQAP3-0000oD-Lk; Tue, 14 Sep 2021 15:31:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dwysocha@redhat.com>) id 1mQAP2-0000o6-Ej
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 15:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=28uHVFlIgd259Tk0Onl6nVW85p5Wip9eeWyZFWWQ7Gw=; b=S1c/gXGuPDEuv7fljp8jYS1vNM
 JDzc77lTL3YnnuhYLOj8XjuKAfcIFAL5wJ7IMB7yPhrOiF+T3fcjUficH7q3+og+B3faoEg+wq1ts
 uEvfnTdXjtH6wH9WAsAYHi+vz95wLB/A2T0Jy1FTaZksDm9Mb/n73qPOsxGouASYdn6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=28uHVFlIgd259Tk0Onl6nVW85p5Wip9eeWyZFWWQ7Gw=; b=YbXb1xWL6TaXfFt0blq/FRXUTC
 NPIBvtpgZN3A6EbWoJ4tH8AqUftWVE8+uq/o6nWGO/nYBl/javq/8sNdDaAcOFotFsAoXVW1BsAK5
 RUC4KZLp5MsMQR5FTxrsz7OF0gTTtRK2c3NxTQ6qrn3139DjvFqbZV58FlW5vj+huhXU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQAP0-0001Sp-FT
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 15:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631633472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=28uHVFlIgd259Tk0Onl6nVW85p5Wip9eeWyZFWWQ7Gw=;
 b=ImrDIv+I+29ylSFtfMfosmc9PO4/0ApDWaDK2EA4JyLUVy0ndfEOO6By9+NL0REIZ2gkPH
 LIUUalgIaQO3nPi/H934Cp53BHfX6BA0goOsgdl475FxTLWRm+ZnKNoM0w/lVpfypGsYJ8
 I+n7Nt2usp3sPIOly19JWa2/h5i36Ng=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-nUxjEVEEPNKMWIbAVkcg3w-1; Tue, 14 Sep 2021 11:31:11 -0400
X-MC-Unique: nUxjEVEEPNKMWIbAVkcg3w-1
Received: by mail-ej1-f70.google.com with SMTP id
 z15-20020a170906074f00b005ef9f1d0e97so3581810ejb.19
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Sep 2021 08:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=28uHVFlIgd259Tk0Onl6nVW85p5Wip9eeWyZFWWQ7Gw=;
 b=aDjpqk0E8bbm0hbo72emuuuotOFiTck2AKqTZkZrE+QByjVjZA0JoUp/3cwwowq5oZ
 LXWnDLbOwaXOdsPdmJhCQ9UD60vs0flT+rroO93o3YE++wjwCwAK5xDHNguw37uBkF09
 Zk088fnM2WI4AtEqCvcQoghlT1PWFYvYZWj2RXdSwlnvnrFw2vWNuSchMARUuwE9IpVf
 6NKhOeGjGi9kGH0/mCrbV9KLKKv9JzW9tXUkoaqrUq9YPhEQY5KfieR3Lmz9iFCD2ZK8
 b6XVjieXdmlpWCG+DV2DPxgNVrBme1YbrFDk1McT7s57yoRHVFdac289LxUJmRTI0pi0
 8Ubw==
X-Gm-Message-State: AOAM531EwsFdvdbezT7wvHbpH2frt+F5pYjYGmIqk/nxsswKKRGY0xQ5
 sjUBHCu6YwUx9B219mf7wAqgOW29R9EH1LGJ0CjSEUbtsaYGJQl1bAUymw33MhFTnQ265V+omk3
 3VZ25+XO13aYFdmIjR9y51AMtrcPBiNzMuKEzuimSUwL/xZ20+2c=
X-Received: by 2002:a17:907:9602:: with SMTP id
 gb2mr19741352ejc.119.1631633467800; 
 Tue, 14 Sep 2021 08:31:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBCsPMH/stPuTNHWIjWdIDFCeRDqb2JZpOnn0wdJ4EAfdOma5ARu4H6YXdUtlU3P33pyF7rZaoQLtYtlKQ92E=
X-Received: by 2002:a17:907:9602:: with SMTP id
 gb2mr19741147ejc.119.1631633465397; 
 Tue, 14 Sep 2021 08:31:05 -0700 (PDT)
MIME-Version: 1.0
References: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
In-Reply-To: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
From: David Wysochanski <dwysocha@redhat.com>
Date: Tue, 14 Sep 2021 11:30:29 -0400
Message-ID: <CALF+zO=VHPzcp0A0KxpYW-0WnyxvM5gW5HmorzrMJ_arxxBchA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 14,
 2021 at 9:55 AM David Howells <dhowells@redhat.com>
 wrote: > > > Here's a set of patches that removes the old fscache I/O API
 by the following > means: > > (1) A simple fallback API is [...] 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mQAP0-0001Sp-FT
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

On Tue, Sep 14, 2021 at 9:55 AM David Howells <dhowells@redhat.com> wrote:
>
>
> Here's a set of patches that removes the old fscache I/O API by the following
> means:
>
>  (1) A simple fallback API is added that can read or write a single page
>      synchronously.  The functions for this have "deprecated" in their names
>      as they have to be removed at some point.
>
>  (2) An implementation of this is provided in cachefiles.  It creates a kiocb
>      to use DIO to the backing file rather than calling readpage on the
>      backing filesystem page and then snooping the page wait queue.
>
>  (3) NFS is switched to use the fallback API.
>
>  (4) CIFS is switched to use the fallback API also for the moment.
>
>  (5) 9P is switched to using netfslib.
>
>  (6) The old I/O API is removed from fscache and the page snooping
>      implementation is removed from cachefiles.
>
> The reasons for doing this are:
>
>  (A) Using a kiocb to do asynchronous DIO from/to the pages of the backing
>      file is now a possibility that didn't exist when cachefiles was created.
>      This is much simpler than the snooping mechanism with a proper callback
>      path and it also requires fewer copies and less memory.
>
>  (B) We have to stop using bmap() or SEEK_DATA/SEEK_HOLE to work out what
>      blocks are present in the backing file is dangerous and can lead to data
>      corruption if the backing filesystem can insert or remove blocks of zeros
>      arbitrarily in order to optimise its extent list[1].
>
>      Whilst this patchset doesn't fix that yet, it does simplify the code and
>      the fix for that can be made in a subsequent patchset.
>
>  (C) In order to fix (B), the cache will need to keep track itself of what
>      data is present.  To make this easier to manage, the intention is to
>      increase the cache block granularity to, say, 256KiB - importantly, a
>      size that will span multiple pages - which means the single-page
>      interface will have to go away.  netfslib is designed to deal with
>      that on behalf of a filesystem, though a filesystem could use raw
>      cache calls instead and manage things itself.
>
> These patches can be found also on:
>
>         https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter-3
>
> David
>
> Link: https://lore.kernel.org/r/YO17ZNOcq+9PajfQ@mit.edu [1]
> ---
> David Howells (8):
>       fscache: Generalise the ->begin_read_operation method
>       fscache: Implement an alternate I/O interface to replace the old API
>       nfs: Move to using the alternate (deprecated) fscache I/O API
>       9p: (untested) Convert to using the netfs helper lib to do reads and caching
>       cifs: (untested) Move to using the alternate (deprecated) fscache I/O API
>       fscache: Remove the old I/O API
>       fscache: Remove stats that are no longer used
>       fscache: Update the documentation to reflect I/O API changes
>
>
>  .../filesystems/caching/backend-api.rst       |  138 +--
>  .../filesystems/caching/netfs-api.rst         |  386 +-----
>  fs/9p/Kconfig                                 |    1 +
>  fs/9p/cache.c                                 |  137 ---
>  fs/9p/cache.h                                 |   98 +-
>  fs/9p/v9fs.h                                  |    9 +
>  fs/9p/vfs_addr.c                              |  174 ++-
>  fs/9p/vfs_file.c                              |   21 +-
>  fs/cachefiles/Makefile                        |    1 -
>  fs/cachefiles/interface.c                     |   15 -
>  fs/cachefiles/internal.h                      |   38 -
>  fs/cachefiles/io.c                            |   28 +-
>  fs/cachefiles/main.c                          |    1 -
>  fs/cachefiles/rdwr.c                          |  972 ---------------
>  fs/cifs/file.c                                |   64 +-
>  fs/cifs/fscache.c                             |  105 +-
>  fs/cifs/fscache.h                             |   74 +-
>  fs/fscache/cache.c                            |    6 -
>  fs/fscache/cookie.c                           |   10 -
>  fs/fscache/internal.h                         |   58 +-
>  fs/fscache/io.c                               |  140 ++-
>  fs/fscache/object.c                           |    2 -
>  fs/fscache/page.c                             | 1066 -----------------
>  fs/fscache/stats.c                            |   73 +-
>  fs/nfs/file.c                                 |   14 +-
>  fs/nfs/fscache-index.c                        |   26 -
>  fs/nfs/fscache.c                              |  161 +--
>  fs/nfs/fscache.h                              |   84 +-
>  fs/nfs/read.c                                 |   25 +-
>  fs/nfs/write.c                                |    7 +-
>  include/linux/fscache-cache.h                 |  131 --
>  include/linux/fscache.h                       |  418 ++-----
>  include/linux/netfs.h                         |   17 +-
>  33 files changed, 508 insertions(+), 3992 deletions(-)
>  delete mode 100644 fs/cachefiles/rdwr.c
>
>

I tested an earlier version of these with NFS, which identified a
couple issues which you fixed.  Last I checked my unit tests and
xfstests were looking good. I'll do some testing on this latest branch
/ patches and report back.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
