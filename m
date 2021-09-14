Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9A840B381
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 17:49:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQAgb-0001Kb-9I; Tue, 14 Sep 2021 15:49:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1mQAga-0001KT-As
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 15:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JNltbfhxgcV7ZtJKYC/Ffizz2ASC/yS1dUsX3HLyH6c=; b=Ga/d1XKEzVJCA2y8evvCG2962j
 zZFvnd62eH1tDC8cgs97vUE/ho4q63YjX22MfaCl6jVhPX076Oa48a2GDhayKUKrygzvRtt4tk0BN
 1d70Dm7GjZYlMNT/nf7N9VAr91nyJHCbtSMtrUDZ7tKDctAa9jvix3E/TgCPSzZERsfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JNltbfhxgcV7ZtJKYC/Ffizz2ASC/yS1dUsX3HLyH6c=; b=hYlTF9JCwh/EubDMzs5OiLeUOc
 PlSiv885kFlgYvIqyaATxTTfv1gTpDFC2k1K6slkaAwUo7dqzmeJeteiVsLioZbnOQIkrCtqMA/EM
 noz/svXoVHZ+4ZNN4yAfh0UrSbKjxVvovBpEQAg1cNn8GjdcGIU9GHM4R2h28MV6HpZY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQAgZ-00AYTj-KQ
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 15:49:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F325D61183;
 Tue, 14 Sep 2021 15:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631634556;
 bh=x0wkFlR2yBgpOaQuEdr6Zq9jmODvyrdKeAmZpTWbcT0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ajz757X0EqTjlFmBo1b2pN3UYzxhWZ0LSA5AE1BntSGzn5Ph0csrcHkpKL4NEokHJ
 ebG365BQDozlYjcym5lJP0GBFpNmljoYKD2rqYIzWcTQgHzZkEoeKDtmu55uN07zhq
 nu044qBJhD5akaeAFg19wyXuc4AO9lgXpCp1kqARn3nXXga7nKxCw0WueMjxgs9qQL
 c65BnTQsetg3frZwlOxgp40YCU8orREHBY2bybmLawoQ/nkKr61+IhFeBDDYdr6VjD
 PYAPgOau91ZgvUULY8IHTRYh6qLQUEwS9pH00FKyW90I6x9+vu0KF77C9WN8dRQBbE
 VQ+yUZhIDxlFQ==
Message-ID: <b3268d738de115508f10ebd3357404bafb4748db.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, Trond Myklebust
 <trondmy@hammerspace.com>, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, Dominique Martinet
 <asmadeus@codewreck.org>
Date: Tue, 14 Sep 2021 11:49:13 -0400
In-Reply-To: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
References: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2021-09-14 at 14:54 +0100, David Howells wrote: >
 Here's a set of patches that removes the old fscache I/O API by the following
 > means: > > (1) A simple fallback API is added that can read or [...] 
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mQAgZ-00AYTj-KQ
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-09-14 at 14:54 +0100, David Howells wrote:
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
> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter-3
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

Love the diffstat.

I looked over the set and didn't see any problems with it. I also ran a
quick test with ceph+fscache and didn't run into any issues, but that's
not too surprising since this patchset doesn't really change the
codepaths that it uses.

Reviewed-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
