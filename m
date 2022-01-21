Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3582496466
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Jan 2022 18:47:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nAy0g-0007Xv-VF; Fri, 21 Jan 2022 17:47:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nAy0f-0007Xo-AZ
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 17:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Q5iOOl2jsPkuDjv6261fWEi0rKXb6Z81ArpVTWDWFA=; b=lumwKvw8QU4MGujrEkRs/1cMXG
 1yDPBfE5tsLmE4rqMQPWY8D+Zv83P0bgdfjJWPZGnLNyky7tI0M3QFdSL3u+p+tmEs24nh37YZTAx
 focjSqjj70ghoffMvRdcqk35yGgGRj4SKnTOVMCSQZRONxRUvXz1IG4GOon2YO/Rsnsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2Q5iOOl2jsPkuDjv6261fWEi0rKXb6Z81ArpVTWDWFA=; b=banBU3Qc959OUX7VdtW8llj0cl
 H9sodV3HvMRA4Hqq7oJzXktR2l5yvf+iXn3mW/t3AqwDhrxsl+VC3fKXdfiLcou7fLoYPCUPjiXRZ
 UjlTaOFpmIXEV/+egbVmwUFMPJQJ/I5lwPvnoWqWgbm0P/xM5J18pDvDaINCIcfpDJiM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAy0b-006W3G-V8
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 17:47:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4E48661B17;
 Fri, 21 Jan 2022 17:47:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E3DC340E1;
 Fri, 21 Jan 2022 17:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642787247;
 bh=oKkPWd9txk9tE7fz7famX/0zcd82lrEm08j+OdI1AT4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=XNye038kVucvuvASSDWSFeJ+KZjUERhEx5LppAPprw3yBD6/Cd7Eo8MJ9P+a/V9sw
 hDDeuPayw2/9OplJ332k3lNGLFVd6YgiY5/W9i5SXQ3Cqe6h8vqu1qkE4h6aO6FZL0
 qJ/Qxf77uvE6rAqq1//DYm9TPlWUBmpIoVnrLg+hCBHSVlWpjJoK4lMjg9Q7CxhBBj
 5WBBsM7YbDBeeXKzcyTCosgZm8h6X83oeNrjLK7kM7GFOtGucuS4oIootz8JR9c2DE
 rkjfgPtMT9xkYOz8yHHR+gqtJqrz+lhN3cjrvMxIH5bq9u1e0rpFTKyn67xD0nnOgF
 sHVmGmcXMTGQg==
Message-ID: <725c4bcacded089553341003117a3f49104c971b.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Fri, 21 Jan 2022 12:47:24 -0500
In-Reply-To: <164251398954.3435901.7138806620218474123.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251398954.3435901.7138806620218474123.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-01-18 at 13:53 +0000, David Howells wrote: >
 Cachefiles keeps track of how much space is available on the backing >
 filesystem
 and refuses new writes permission to start if there isn't en [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nAy0b-006W3G-V8
Subject: Re: [V9fs-developer] [PATCH 02/11] cachefiles: Calculate the
 blockshift in terms of bytes, not pages
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
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <smfrench@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-01-18 at 13:53 +0000, David Howells wrote:
> Cachefiles keeps track of how much space is available on the backing
> filesystem and refuses new writes permission to start if there isn't enough
> (we especially don't want ENOSPC happening).  It also tracks the amount of
> data pending in DIO writes (cache->b_writing) and reduces the amount of
> free space available by this amount before deciding if it can set up a new
> write.
> 
> However, the old fscache I/O API was very much page-granularity dependent
> and, as such, cachefiles's cache->bshift was meant to be a multiplier to
> get from PAGE_SIZE to block size (ie. a blocksize of 512 would give a shift
> of 3 for a 4KiB page) - and this was incorrectly being used to turn the
> number of bytes in a DIO write into a number of blocks, leading to a
> massive over estimation of the amount of data in flight.
> 
> Fix this by changing cache->bshift to be a multiplier from bytes to
> blocksize and deal with quantities of blocks, not quantities of pages.
> 
> Fix also the rounding in the calculation in cachefiles_write() which needs
> a "- 1" inserting.
> 
> Fixes: 047487c947e8 ("cachefiles: Implement the I/O routines")
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> ---
> 
>  fs/cachefiles/cache.c    |    7 ++-----
>  fs/cachefiles/internal.h |    2 +-
>  fs/cachefiles/io.c       |    2 +-
>  3 files changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/fs/cachefiles/cache.c b/fs/cachefiles/cache.c
> index ce4d4785003c..1e9c71666c6a 100644
> --- a/fs/cachefiles/cache.c
> +++ b/fs/cachefiles/cache.c
> @@ -84,9 +84,7 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
>  		goto error_unsupported;
>  
>  	cache->bsize = stats.f_bsize;
> -	cache->bshift = 0;
> -	if (stats.f_bsize < PAGE_SIZE)
> -		cache->bshift = PAGE_SHIFT - ilog2(stats.f_bsize);
> +	cache->bshift = ilog2(stats.f_bsize);
>  
>  	_debug("blksize %u (shift %u)",
>  	       cache->bsize, cache->bshift);
> @@ -106,7 +104,6 @@ int cachefiles_add_cache(struct cachefiles_cache *cache)
>  	       (unsigned long long) cache->fcull,
>  	       (unsigned long long) cache->fstop);
>  
> -	stats.f_blocks >>= cache->bshift;
>  	do_div(stats.f_blocks, 100);
>  	cache->bstop = stats.f_blocks * cache->bstop_percent;
>  	cache->bcull = stats.f_blocks * cache->bcull_percent;
> @@ -209,7 +206,7 @@ int cachefiles_has_space(struct cachefiles_cache *cache,
>  		return ret;
>  	}
>  
> -	b_avail = stats.f_bavail >> cache->bshift;
> +	b_avail = stats.f_bavail;
>  	b_writing = atomic_long_read(&cache->b_writing);
>  	if (b_avail > b_writing)
>  		b_avail -= b_writing;
> diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
> index 8dd54d9375b6..c793d33b0224 100644
> --- a/fs/cachefiles/internal.h
> +++ b/fs/cachefiles/internal.h
> @@ -86,7 +86,7 @@ struct cachefiles_cache {
>  	unsigned			bcull_percent;	/* when to start culling (% blocks) */
>  	unsigned			bstop_percent;	/* when to stop allocating (% blocks) */
>  	unsigned			bsize;		/* cache's block size */
> -	unsigned			bshift;		/* min(ilog2(PAGE_SIZE / bsize), 0) */
> +	unsigned			bshift;		/* ilog2(bsize) */
>  	uint64_t			frun;		/* when to stop culling */
>  	uint64_t			fcull;		/* when to start culling */
>  	uint64_t			fstop;		/* when to stop allocating */
> diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
> index 60b1eac2ce78..04eb52736990 100644
> --- a/fs/cachefiles/io.c
> +++ b/fs/cachefiles/io.c
> @@ -264,7 +264,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
>  	ki->term_func		= term_func;
>  	ki->term_func_priv	= term_func_priv;
>  	ki->was_async		= true;
> -	ki->b_writing		= (len + (1 << cache->bshift)) >> cache->bshift;
> +	ki->b_writing		= (len + (1 << cache->bshift) - 1) >> cache->bshift;
>  
>  	if (ki->term_func)
>  		ki->iocb.ki_complete = cachefiles_write_complete;
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
