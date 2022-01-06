Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1CD486728
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Jan 2022 16:55:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5V6y-0006xz-4g; Thu, 06 Jan 2022 15:55:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1n5V6w-0006xt-CN
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 15:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6V7YFxpTXxWXbeO01rhTudulblu8Vwl+5tfC1tR78Z4=; b=C4KXb+MBhw/Vg4IvFKzb+Z3awz
 3Pm0ssEs95d+QxJ24CPapg7AA6XEsywYy0SDcozbYcqKq+gf/5ac2I7JXWDyQkxbfoSyei4VWGDW7
 kYImHXgvw+8OD7h1Tn0SRg8i7Tt9sJUuzdADc5QLiUr8Y02ErTT2k0mqV+qyF2IX6Kqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6V7YFxpTXxWXbeO01rhTudulblu8Vwl+5tfC1tR78Z4=; b=grr6z27WjgdfzX20r4D5qnjvQy
 Rtdln/OU4bGjMu6/C3zOLrMizVjPt0zZlK6yfxHzQLZz2BDVx4zo5AYjLcsFzjZ93N0IWIMYo9S08
 qHo4AmR/62VtHbMNQgX72loBPwRY0BuLYdlYCtwMI5RJGnxbNjbYiopTzv+R8oCK83rY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5V6v-0048dB-No
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 15:55:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4D39D61CBB;
 Thu,  6 Jan 2022 15:55:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EA9EC36AED;
 Thu,  6 Jan 2022 15:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641484515;
 bh=Zs49UM4op7FhcCag8kpRl0gmJmPkQMG6LyUseoRbg+0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=u/X2RYkCkXWlEbdzZylMfFjFSEVyRT5Ca3qVn7cp9C12kkSDpjgzNfNvUmOCIJizx
 DommcboOU+mfgMmoOi08pZRyP+WiWUHP2RIG7uehFtB1oWZtypyF8sWK4S/xTD38sh
 Y1XgFY7Ix5jLFUTR/9KYwRCm4cHtFN4stWf7TxUjUkUiy5DK4m/VEiFiF0MUQQtwM5
 CO6xPJVth9K2ogc2C0OdzBJPzd9r7HwWMa3eqeonRWKWg2fW5fpAghr2pKvhzexsb+
 afyqg3LXWlrEtyE5ww0K0lsmykZcj63W0+M+mg0S4X+1a8SAezzwD6LHmxXCGzt6RL
 uY4rs4xgdqKUA==
Message-ID: <043a206f03929c2667a465314144e518070a9b2d.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Thu, 06 Jan 2022 10:55:12 -0500
In-Reply-To: <164021525963.640689.9264556596205140044.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021525963.640689.9264556596205140044.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2021-12-22 at 23:20 +0000, David Howells wrote: >
 Provide a function to be called from a network filesystem's releasepage >
 method to indicate that a page has been released that might have bee [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n5V6v-0048dB-No
Subject: Re: [V9fs-developer] [PATCH v4 28/68] fscache: Provide a function
 to note the release of a page
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
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2021-12-22 at 23:20 +0000, David Howells wrote:
> Provide a function to be called from a network filesystem's releasepage
> method to indicate that a page has been released that might have been a
> reflection of data upon the server - and now that data must be reloaded
> from the server or the cache.
> 
> This is used to end an optimisation for empty files, in particular files
> that have just been created locally, whereby we know there cannot yet be
> any data that we would need to read from the server or the cache.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/163819617128.215744.4725572296135656508.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163906920354.143852.7511819614661372008.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/163967128061.1823006.611781655060034988.stgit@warthog.procyon.org.uk/ # v3
> ---
> 
>  include/linux/fscache.h |   16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/include/linux/fscache.h b/include/linux/fscache.h
> index 18e725671594..28ce258c1f87 100644
> --- a/include/linux/fscache.h
> +++ b/include/linux/fscache.h
> @@ -607,4 +607,20 @@ static inline void fscache_clear_inode_writeback(struct fscache_cookie *cookie,
>  	}
>  }
>  
> +/**
> + * fscache_note_page_release - Note that a netfs page got released
> + * @cookie: The cookie corresponding to the file
> + *
> + * Note that a page that has been copied to the cache has been released.  This
> + * means that future reads will need to look in the cache to see if it's there.
> + */
> +static inline
> +void fscache_note_page_release(struct fscache_cookie *cookie)
> +{
> +	if (cookie &&
> +	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
> +	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
> +		clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
> +}
> +
>  #endif /* _LINUX_FSCACHE_H */
> 
> 

Is this logic correct?

FSCACHE_COOKIE_HAVE_DATA gets set in cachefiles_write_complete, but will
that ever be called on a cookie that has no data? Will we ever call
cachefiles_write at all when there is no data to be written?

--
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
