Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF0E433DCC
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 19:50:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mctGG-0002B5-33; Tue, 19 Oct 2021 17:50:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mctG7-0002Au-5P
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 17:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mynaPcIS4/xJZke7bR/lNJShfr/rMA3h3M2LDF6A+e4=; b=EM/ibPLh3Y/h0HMSsYYezCie9y
 BasMAv1xmYue4ztFfcasT2Q8Bhm2009SXE8tcEXCIThY7r6wNMiLjlRIseS3SN5SZknsxtlF3yFtm
 wGJY3oIXyFdaFmZbUM0gyajTolUUYFJmYzcxehhdwLDtJ3zNco2IpORSTsPKMMRgYq1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mynaPcIS4/xJZke7bR/lNJShfr/rMA3h3M2LDF6A+e4=; b=THeaO5IYGohVOIyGaFS6OV408F
 gwZ8WUTCxhuDtJnBLt7pE+0H209slQLU/2Z878NmPO6SpkYIFaJq4T0/+Sd9rzPfI9JjSKNvp9FF+
 3twXJILe0Sx1jONkFq2SC62wGwhwCj8zlhA57Je05gA/sOI81A6OhrJvQQ6KeoexkvKQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mctFy-0003dV-OO
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 17:50:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A89D60FE8;
 Tue, 19 Oct 2021 17:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634665826;
 bh=8v7A6Qf0qK3RAVf6vqG5w29wPYAXjBilMy9shMrRCkQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=R6qAPrzfosAYoDQuzub3mPKQg1fITfhazgBW8JetVBZ32Y+F3So5uxMBXFKZtyfJE
 fuJBWVnD1U1/aG3ISY4dFwASCr7pGbOBZ5RTP3QavoE7yqYLlOzknaYy207bDITXvd
 UPznHSvBqjP+PZY8hO5pEXtNIgre2wFdMBdOo2Mf8788tsTu4YIPA237PLYSGDLRLO
 gnEgZPsnFpVJ9sEGPGUvvBtW3yZ1memgO3x+JgkyLMQSWu9loIFZ0u3fPtPvjDvrxA
 YjWJo3TDnN9EM/5zWE5j29bPw05vHzNvSGUKVAlobLT9/wbWDKvO+XW1ds+g5fr54b
 CsVhORncno8bQ==
Message-ID: <67f55d920f40bf6c49643af08fe8a5cfc97a9542.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 19 Oct 2021 13:50:24 -0400
In-Reply-To: <163456871794.2614702.15398637170877934146.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456871794.2614702.15398637170877934146.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2021-10-18 at 15:51 +0100, David Howells wrote: >
 Temporarily disable the use of fscache by the various Linux network >
 filesystems, 
 apart from afs, so that the fscache core can be rewritten. [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mctFy-0003dV-OO
Subject: Re: [V9fs-developer] [PATCH 06/67] nfs, cifs, ceph,
 9p: Disable use of fscache prior to its rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>, Omar Sandoval <osandov@osandov.com>,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-10-18 at 15:51 +0100, David Howells wrote:
> Temporarily disable the use of fscache by the various Linux network
> filesystems, apart from afs, so that the fscache core can be rewritten.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Dave Wysochanski <dwysocha@redhat.com>
> cc: Trond Myklebust <trond.myklebust@hammerspace.com>
> cc: Anna Schumaker <anna.schumaker@netapp.com>
> cc: linux-nfs@vger.kernel.org
> cc: Jeff Layton <jlayton@kernel.org>
> cc: Ilya Dryomov <idryomov@gmail.com>
> cc: ceph-devel@vger.kernel.org
> cc: Steve French <sfrench@samba.org>
> cc: linux-cifs@vger.kernel.org
> cc: Eric Van Hensbergen <ericvh@gmail.com>
> cc: Latchesar Ionkov <lucho@ionkov.net>
> cc: Dominique Martinet <asmadeus@codewreck.org>
> cc: v9fs-developer@lists.sourceforge.net
> ---
> 
>  fs/9p/Kconfig      |    2 +-
>  fs/ceph/Kconfig    |    2 +-
>  fs/cifs/Kconfig    |    2 +-
>  fs/fscache/Kconfig |    4 ++++
>  fs/nfs/Kconfig     |    2 +-
>  5 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
> index d7bc93447c85..b11c15c30bac 100644
> --- a/fs/9p/Kconfig
> +++ b/fs/9p/Kconfig
> @@ -14,7 +14,7 @@ config 9P_FS
>  if 9P_FS
>  config 9P_FSCACHE
>  	bool "Enable 9P client caching support"
> -	depends on 9P_FS=m && FSCACHE || 9P_FS=y && FSCACHE=y
> +	depends on 9P_FS=m && FSCACHE_OLD || 9P_FS=y && FSCACHE_OLD=y
>  	help
>  	  Choose Y here to enable persistent, read-only local
>  	  caching support for 9p clients using FS-Cache
> diff --git a/fs/ceph/Kconfig b/fs/ceph/Kconfig
> index 94df854147d3..77ad452337ee 100644
> --- a/fs/ceph/Kconfig
> +++ b/fs/ceph/Kconfig
> @@ -21,7 +21,7 @@ config CEPH_FS
>  if CEPH_FS
>  config CEPH_FSCACHE
>  	bool "Enable Ceph client caching support"
> -	depends on CEPH_FS=m && FSCACHE || CEPH_FS=y && FSCACHE=y
> +	depends on CEPH_FS=m && FSCACHE_OLD || CEPH_FS=y && FSCACHE_OLD=y
>  	help
>  	  Choose Y here to enable persistent, read-only local
>  	  caching support for Ceph clients using FS-Cache
> diff --git a/fs/cifs/Kconfig b/fs/cifs/Kconfig
> index 3b7e3b9e4fd2..c5477abbcff0 100644
> --- a/fs/cifs/Kconfig
> +++ b/fs/cifs/Kconfig
> @@ -188,7 +188,7 @@ config CIFS_SMB_DIRECT
>  
>  config CIFS_FSCACHE
>  	bool "Provide CIFS client caching support"
> -	depends on CIFS=m && FSCACHE || CIFS=y && FSCACHE=y
> +	depends on CIFS=m && FSCACHE_OLD || CIFS=y && FSCACHE_OLD=y
>  	help
>  	  Makes CIFS FS-Cache capable. Say Y here if you want your CIFS data
>  	  to be cached locally on disk through the general filesystem cache
> diff --git a/fs/fscache/Kconfig b/fs/fscache/Kconfig
> index b313a978ae0a..7850de3bdee0 100644
> --- a/fs/fscache/Kconfig
> +++ b/fs/fscache/Kconfig
> @@ -38,3 +38,7 @@ config FSCACHE_DEBUG
>  	  enabled by setting bits in /sys/modules/fscache/parameter/debug.
>  
>  	  See Documentation/filesystems/caching/fscache.rst for more information.
> +
> +config FSCACHE_OLD
> +	bool
> +	default n
> diff --git a/fs/nfs/Kconfig b/fs/nfs/Kconfig
> index 14a72224b657..a8b73c90aa00 100644
> --- a/fs/nfs/Kconfig
> +++ b/fs/nfs/Kconfig
> @@ -170,7 +170,7 @@ config ROOT_NFS
>  
>  config NFS_FSCACHE
>  	bool "Provide NFS client caching support"
> -	depends on NFS_FS=m && FSCACHE || NFS_FS=y && FSCACHE=y
> +	depends on NFS_FS=m && FSCACHE_OLD || NFS_FS=y && FSCACHE_OLD=y
>  	help
>  	  Say Y here if you want NFS data to be cached locally on disc through
>  	  the general filesystem cache manager
> 
> 

The typical way to do this would be to rebrand the existing FSCACHE
Kconfig symbols into FSCACHE_OLD and then build the new fscache
structure such that it exists in parallel with the old. You'd then just
drop the old infrastructure once all of the fs's are converted to the
new. You could even make them conflict with one another in Kconfig too,
so that only one could be built in during the transition period if
supporting both at runtime is too difficult.

This approach of disabling everything is much more of an all-or-nothing
affair. It may mean less "churn" overall, but it seems less "nice"
because you have an interval of commits where fscache is non-functional.

I'm not necessarily opposed to this approach, but I'd like to better
understand why doing it this way was preferred.
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
