Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B0E4D31B6
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 16:26:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRyCq-0001ws-7m; Wed, 09 Mar 2022 15:26:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nRyCo-0001wm-Lb
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 15:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jw1do3AstgxiOEeNFslVBm+AEAMh6CrBbF30pMdME2I=; b=gl4V/hy7WctWmEj4dHe0HLAxLu
 myttf34p8xYdPDycj4q2Z2PGLJLKNQ3sS4QMvKBjTG2uowQyuXBsINiaRErpu4QyzdjSHk55zd5ec
 ogA/wcfdbcoEFM6Jtsauq4dTKpZoxyhk8STd+BhicfcTuL4Yr1tw/Ni65256q5imGGB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jw1do3AstgxiOEeNFslVBm+AEAMh6CrBbF30pMdME2I=; b=VN1jCEyMKNtdK1thvYtmRBLOS2
 j9WCqfl1wk6OzafGH+N0hmK5V0XMclY2drwrMwGsyGWYzAzOY5vBpLkc4AYnMHLEoqo+GgQABqqSd
 eMemFtWHfo8/Bf825dDZ/j+g3TNuVwJaqtYrQuOQKgw/pukNGWogcWOl5nlxaMBqI5fI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRyCm-009rcH-Np
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 15:26:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F403C60FB7;
 Wed,  9 Mar 2022 15:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 061A3C340E8;
 Wed,  9 Mar 2022 15:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646839578;
 bh=wE8WScMA30oNgZIX8sgYX722g0p0ycgmgh/CjHL+/9w=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=saBHRU4rxxqAcFBQKx8VXhVd6Txoc8aJG9uJ8Y2DdijC8a6sESxud37tDU6VI6LpN
 LEGtepyE0wLYuFchvbMlHh+APL6RmUim4Uauz2QLj35GhT3/yynrYMkndXBu3rTXUL
 HVAm5j7okn3Lw3uBthbQ38cWSm7PTv1KXX4kBbxuJDARAYqjvS02bBwwe60C3/2WJs
 WB+6mn4Azf+jRxi7ukfUPFXcUMI2Ose765kUGV/vzSBrSzz1KlYYPBpACr7LqRQff+
 V2JtM5G0UfLKMCfY/oORRVoyolYe+JD+aNY5oO+dNETtfNRYozYh4joHKh8Ko/vtw6
 SLHP8MQv9n5dA==
Message-ID: <9132b97b5e52fec9c2838b31739175619df3e752.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 10:26:15 -0500
In-Reply-To: <164678190346.1200972.7453733431978569479.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678190346.1200972.7453733431978569479.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-03-08 at 23:25 +0000, David Howells wrote: >
 From: Jeffle Xu <jefflexu@linux.alibaba.com> > > Export
 fscache_end_operation()
 to avoid code duplication. > > Besides, considering the paired [...] 
 Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRyCm-009rcH-Np
Subject: Re: [V9fs-developer] [PATCH v2 01/19] fscache: export
 fscache_end_operation()
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
 linux-afs@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-03-08 at 23:25 +0000, David Howells wrote:
> From: Jeffle Xu <jefflexu@linux.alibaba.com>
> 
> Export fscache_end_operation() to avoid code duplication.
> 
> Besides, considering the paired fscache_begin_read_operation() is
> already exported, it shall make sense to also export
> fscache_end_operation().
> 

Not what I think of when you say "exporting" but the patch itself looks
fine.

> Signed-off-by: Jeffle Xu <jefflexu@linux.alibaba.com>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> 
> Link: https://lore.kernel.org/r/20220302125134.131039-2-jefflexu@linux.alibaba.com/ # Jeffle's v4
> Link: https://lore.kernel.org/r/164622971432.3564931.12184135678781328146.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  fs/cifs/fscache.c       |    8 --------
>  fs/fscache/internal.h   |   11 -----------
>  fs/nfs/fscache.c        |    8 --------
>  include/linux/fscache.h |   14 ++++++++++++++
>  4 files changed, 14 insertions(+), 27 deletions(-)
> 
> diff --git a/fs/cifs/fscache.c b/fs/cifs/fscache.c
> index 33af72e0ac0c..b47c2011ce5b 100644
> --- a/fs/cifs/fscache.c
> +++ b/fs/cifs/fscache.c
> @@ -134,14 +134,6 @@ void cifs_fscache_release_inode_cookie(struct inode *inode)
>  	}
>  }
>  
> -static inline void fscache_end_operation(struct netfs_cache_resources *cres)
> -{
> -	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
> -
> -	if (ops)
> -		ops->end_operation(cres);
> -}
> -
>  /*
>   * Fallback page reading interface.
>   */
> diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
> index f121c21590dc..ed1c9ed737f2 100644
> --- a/fs/fscache/internal.h
> +++ b/fs/fscache/internal.h
> @@ -70,17 +70,6 @@ static inline void fscache_see_cookie(struct fscache_cookie *cookie,
>  			     where);
>  }
>  
> -/*
> - * io.c
> - */
> -static inline void fscache_end_operation(struct netfs_cache_resources *cres)
> -{
> -	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
> -
> -	if (ops)
> -		ops->end_operation(cres);
> -}
> -
>  /*
>   * main.c
>   */
> diff --git a/fs/nfs/fscache.c b/fs/nfs/fscache.c
> index cfe901650ab0..39654ca72d3d 100644
> --- a/fs/nfs/fscache.c
> +++ b/fs/nfs/fscache.c
> @@ -249,14 +249,6 @@ void nfs_fscache_release_file(struct inode *inode, struct file *filp)
>  	}
>  }
>  
> -static inline void fscache_end_operation(struct netfs_cache_resources *cres)
> -{
> -	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
> -
> -	if (ops)
> -		ops->end_operation(cres);
> -}
> -
>  /*
>   * Fallback page reading interface.
>   */
> diff --git a/include/linux/fscache.h b/include/linux/fscache.h
> index 296c5f1d9f35..d2430da8aa67 100644
> --- a/include/linux/fscache.h
> +++ b/include/linux/fscache.h
> @@ -456,6 +456,20 @@ int fscache_begin_read_operation(struct netfs_cache_resources *cres,
>  	return -ENOBUFS;
>  }
>  
> +/**
> + * fscache_end_operation - End the read operation for the netfs lib
> + * @cres: The cache resources for the read operation
> + *
> + * Clean up the resources at the end of the read request.
> + */
> +static inline void fscache_end_operation(struct netfs_cache_resources *cres)
> +{
> +	const struct netfs_cache_ops *ops = fscache_operation_valid(cres);
> +
> +	if (ops)
> +		ops->end_operation(cres);
> +}
> +
>  /**
>   * fscache_read - Start a read from the cache.
>   * @cres: The cache resources to use
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
