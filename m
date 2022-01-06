Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B4248695C
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Jan 2022 19:04:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5X7x-0002bo-KR; Thu, 06 Jan 2022 18:04:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1n5X7w-0002bg-77
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 18:04:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d/xbXnbX6aQClsXsj9v5+JdldE2DeooIVim+9rnFUJU=; b=hT9kWBEq7ZAhupDlqy5WXWYvZk
 oOnao8qDI0W459rrsCpO8aST3wr+6/hD9RIwvLF4ax5nvwxMuEmTxSqTG7Ywc9lWHGe+TuTZQva4C
 Qc9BLJ3JULUrfZ9X9SX+gCMWEEhFxinW1XjTNuHcCEg5WLcGtvFz7gTgqovRf/qulcLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d/xbXnbX6aQClsXsj9v5+JdldE2DeooIVim+9rnFUJU=; b=jR4nnxsdq5Sr1NUg4nRLzYTzHw
 yIK2bdrzVEase87rN9jpuzibADCnPcdAwWSuPxIBSebp7WYGllf47vOqzdUbnKu2wQxmGz3jnizbB
 baOVeXDo/EZgfwcCyDs6qEgNJ3YiCaBfTBlK+JU4fhtrt/bBdoh0d+B7TgGykzHDhn3o=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5X7u-00034J-NI
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 18:04:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 77A8D61D42;
 Thu,  6 Jan 2022 18:04:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6642AC36AE3;
 Thu,  6 Jan 2022 18:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641492267;
 bh=zFzYedvnQkx/JKEXhTYO/gwqLA3DqUv7vETRuabLtmg=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=qJjhwPu2xUwjQYsODD4fKKnLXOrI2BDhhyj7cpDqilYVrJ32Zh/8aPjkdmttjDU51
 CzbcMuyZT2zHIAwayCULqnOZmN5n1Lwamr0UUYtlVg070ve5lTZ3uDkyKjts65Nz4s
 g1XHNln/Z+s+bSjxTi7IkNcfh8sRAa4lxY9dwkg7FOPjAukYJTGl4o2I5ocKbcMTYE
 ymUwcvIZ37mJ56eOEwJo83aiouJDXAtwOnPAXkxpPP8axloIH4Rf0qhb8RUhkE6bJu
 ucF+0cg11xHNJsNE14EMyO6TVIQUTVmqHfAF3uWzAuDVxBkdHozdD0BnWfNNQCuJtl
 IGxmTMB0CefQQ==
Message-ID: <94b5163b0652c6106aa01a0f4c03bdf57c0a7e71.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Thu, 06 Jan 2022 13:04:25 -0500
In-Reply-To: <164021552299.640689.10578652796777392062.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021552299.640689.10578652796777392062.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2021-12-22 at 23:25 +0000, David Howells wrote: >
 Use an inode flag, S_KERNEL_FILE, to mark that a backing file is in use by
 > the kernel to prevent cachefiles or other kernel services from in [...]
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
X-Headers-End: 1n5X7u-00034J-NI
Subject: Re: [V9fs-developer] [PATCH v4 46/68] cachefiles: Mark a backing
 file in use with an inode flag
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

On Wed, 2021-12-22 at 23:25 +0000, David Howells wrote:
> Use an inode flag, S_KERNEL_FILE, to mark that a backing file is in use by
> the kernel to prevent cachefiles or other kernel services from interfering
> with that file.
> 
> Using S_SWAPFILE instead isn't really viable as that has other effects in
> the I/O paths.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/163819642273.215744.6414248677118690672.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163906943215.143852.16972351425323967014.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/163967154118.1823006.13227551961786743991.stgit@warthog.procyon.org.uk/ # v3
> ---
> 
>  fs/cachefiles/internal.h |    2 ++
>  fs/cachefiles/namei.c    |   35 +++++++++++++++++++++++++++++++++++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
> index 01071e7a7c02..7c67a70a3dff 100644
> --- a/fs/cachefiles/internal.h
> +++ b/fs/cachefiles/internal.h
> @@ -187,6 +187,8 @@ extern struct kmem_cache *cachefiles_object_jar;
>  /*
>   * namei.c
>   */
> +extern void cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
> +					   struct file *file);
>  extern struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
>  					       struct dentry *dir,
>  					       const char *name,
> diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
> index 11a33209ab5f..db60a671c3fc 100644
> --- a/fs/cachefiles/namei.c
> +++ b/fs/cachefiles/namei.c
> @@ -31,6 +31,18 @@ static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
>  	return can_use;
>  }
>  
> +static bool cachefiles_mark_inode_in_use(struct cachefiles_object *object,
> +					 struct dentry *dentry)
> +{
> +	struct inode *inode = d_backing_inode(dentry);
> +	bool can_use;
> +
> +	inode_lock(inode);
> +	can_use = __cachefiles_mark_inode_in_use(object, dentry);
> +	inode_unlock(inode);
> +	return can_use;
> +}
> +
>  /*
>   * Unmark a backing inode.  The caller must hold the inode lock.
>   */
> @@ -43,6 +55,29 @@ static void __cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
>  	trace_cachefiles_mark_inactive(object, inode);
>  }
>  
> +/*
> + * Unmark a backing inode and tell cachefilesd that there's something that can
> + * be culled.
> + */
> +void cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
> +				    struct file *file)
> +{
> +	struct cachefiles_cache *cache = object->volume->cache;
> +	struct inode *inode = file_inode(file);
> +
> +	if (inode) {
> +		inode_lock(inode);
> +		__cachefiles_unmark_inode_in_use(object, file->f_path.dentry);
> +		inode_unlock(inode);
> +
> +		if (!test_bit(CACHEFILES_OBJECT_USING_TMPFILE, &object->flags)) {
> +			atomic_long_add(inode->i_blocks, &cache->b_released);
> +			if (atomic_inc_return(&cache->f_released))
> +				cachefiles_state_changed(cache);
> +		}
> +	}
> +}
> +
>  /*
>   * get a subdirectory
>   */
> 
> 

Probably, this patch should be merged with #38. The commit logs are the
same, and they are at least somewhat related.

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
