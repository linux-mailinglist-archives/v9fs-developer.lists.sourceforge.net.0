Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C0A69B915
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 10:25:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTJT3-00011O-Ag;
	Sat, 18 Feb 2023 09:25:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTJSr-00011B-Uj
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 09:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fv1Xa/SdJbPVdgb22Wd0HxHPViznBbgTQBzuT6vWa4s=; b=jhTWxK2Kv+leVFO4iVntEVhw8p
 1Fl7Bn4kzqMHZRL/lQ7qzDkW3eFTiaNZesKuutG34HzBY+RZwQ9VfkdjFVzyJHRSwegcg8h+LyjSm
 8Cjgc63Aa1H51XW7NC65o7CFgnSOdWtbXhpeR4l9BNB6lbF5Tw5wW2eFhEFydLFDW/Jk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fv1Xa/SdJbPVdgb22Wd0HxHPViznBbgTQBzuT6vWa4s=; b=VDNkPnlhr4exLW6qwEvTtmu/vc
 driYKwlwF1d8lmB8+K1BtAi0tvJi66Kij5RORkp3MDy1FWJuAS5FlUaQsujy9fxS2uIf3BdG0CGJZ
 6ThjVq5RcZHYNh77baWebc431h8FqYugsD58FYbhLcEOtb7K1tqlg21ly3zjhneLR+OQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTJSq-008Koc-3T for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 09:25:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 78950C01D; Sat, 18 Feb 2023 10:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676712321; bh=Fv1Xa/SdJbPVdgb22Wd0HxHPViznBbgTQBzuT6vWa4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RkL7NDWgKW4g1RBq2jX65R8U6cJlq4t6VJvhNO3qbDbDWri6tHAg1h4yXjprK2jGF
 M5W4pyuCWb/bIr8t1zH4btgfeLZqnlRTsOFXFMoCHVSSvjseEvlyxaw8raQTZOCXZc
 K4N2pF9dprdl0g0cVvtu/Txju7SU6nlJge2xmgryEfMzgt+uFV34D61w1Zn4YVhMV1
 qeX6mhBljLr7J8+c4f5ss5yRidJkJNrKMO0kYqSHHYSlBGdD5TT3ONvl47DG+vnzZm
 fwzLozhWBuQr2FMC+eyah5xiEpTJAdEfxwbWuNrXXjjAgSSWSj/N5bGa0SnCkOX3GO
 Q9C40RZrOFA0Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D37DCC009;
 Sat, 18 Feb 2023 10:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676712319; bh=Fv1Xa/SdJbPVdgb22Wd0HxHPViznBbgTQBzuT6vWa4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PCKAsESDWJSsRfs27kYSmTkWJg50dBu8i1q9ti9fDsHgZ+2XnsaSlcVrjfquQ2Yev
 UPLdh2JZkuJ611E6STtGdlW9rkfVaDJFfWSNb5rw93maSbQJfIXsONfe4Fzb3PJ76+
 bY1Uv+czQixdKinrVAgrnbL7aVJBskUZ7ewu1nmC8JTGW2M9H+5JFsTyZ8So0Bc++5
 gP+ER+CiiRB9SE2RPEOaH/MnO4vnbT11DkfimOaGvOedCm3uOADLsVjcAWSgB+baSF
 MYZgR9dPt/ag9Im+ZOGjFgH/oFG3WQQWSnib3gBSyO+3OOFRgttoToKX+Fr/Cxrx07
 0lwsjObHVou2g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a9009f08;
 Sat, 18 Feb 2023 09:24:51 +0000 (UTC)
Date: Sat, 18 Feb 2023 18:24:36 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CZVEQPFFo0zMjo@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-4-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-4-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:15AM
 +0000: > We had 3 different sets of file operations across 2 different
 protocol
 > variants differentiated by cache which really only change [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTJSq-008Koc-3T
Subject: Re: [V9fs-developer] [PATCH v4 03/11] fs/9p: Consolidate file
 operations and add readahead and writeback
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:15AM +0000:
> We had 3 different sets of file operations across 2 different protocol
> variants differentiated by cache which really only changed 3
> functions.  But the real problem is that certain file modes, mount
> options, and other factors weren't being considered when we
> decided whether or not to use caches.
> 
> This consolidates all the operations and switches
> to conditionals within a common set to decide whether or not
> to do different aspects of caching.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

> ---
>  struct inode *v9fs_alloc_inode(struct super_block *sb);
> diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
> index 59b0e8948f78..bd31593437f3 100644
> --- a/fs/9p/vfs_dir.c
> +++ b/fs/9p/vfs_dir.c
> @@ -214,6 +214,9 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
>  	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
>  		 inode, filp, fid ? fid->fid : -1);
>  	if (fid) {
> +		if ((fid->qid.type == P9_QTFILE) && (filp->f_mode & FMODE_WRITE))
> +			v9fs_flush_inode_writeback(inode);
> +

Ok so this bugged me to no end; that seems to be because we use the same
v9fs_dir_release for v9fs_file_operations's .release and not just
v9fs_dir_operations... So it's to be expected we'll get files here.

At this point I'd suggest to use two functions, but that's probably
overdoing it.
Let's check S_ISREG(inode->i_mode) instead of fid->qid though; it
shouldn't make any difference but that's what you use in other parts of
the code and it will be easier to understand for people familiar with
the vfs.


> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index 33e521c60e2c..8ffa6631b1fd 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -219,6 +219,35 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
>  	wstat->extension = NULL;
>  }
>  
> +/**
> + * v9fs_flush_inode_writeback - writeback any data associated with inode
> + * @inode: inode to writeback
> + *
> + * This is used to make sure anything that needs to be written
> + * to server gets flushed before we do certain operations (setattr, getattr, close)
> + *
> + */
> +
> +int v9fs_flush_inode_writeback(struct inode *inode)
> +{
> +	struct writeback_control wbc = {
> +		.nr_to_write = LONG_MAX,
> +		.sync_mode = WB_SYNC_ALL,
> +		.range_start = 0,
> +		.range_end = -1,
> +	};
> +
> +	int retval = filemap_fdatawrite_wbc(inode->i_mapping, &wbc);

Hmm, that function only starts the writeback, but doesn't wait for it.

Wasn't the point to replace 'filemap_write_and_wait' with
v9fs_flush_inode_writeback?
I don't think it's a good idea to remove the wait before setattrs and
the like; if you don't want to wait on close()'s release (but we
probably should too) perhaps split this in two?

> diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
> index bff37a312e64..4f01808c3bae 100644
> --- a/fs/9p/vfs_inode_dotl.c
> +++ b/fs/9p/vfs_inode_dotl.c
> @@ -593,9 +602,14 @@ int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
>  		return retval;
>  	}
>  
> -	if ((iattr->ia_valid & ATTR_SIZE) &&
> -	    iattr->ia_size != i_size_read(inode))
> +	if ((iattr->ia_valid & ATTR_SIZE) && iattr->ia_size !=
> +		 i_size_read(inode)) {
>  		truncate_setsize(inode, iattr->ia_size);
> +		if (v9ses->cache == CACHE_FSCACHE)
> +			fscache_resize_cookie(v9fs_inode_cookie(v9inode), iattr->ia_size);
> +		else
> +			invalidate_mapping_pages(&inode->i_data, 0, -1);

Hm, I don't think these are exclusive; resize_cookie doesn't seem to do
much about the page cache.

However, truncate_setsize calls trucate_pagecache which I believe does
the right thing; and I don't see why we would need to invalidate
[0;size[ here? We didn't before.

. . . . . . .
Ah, you've replaced it preciesly with that in "fs/9p: writeback mode
fixes"; this is annoying to review :/

So with that problem gone, I think I'm ok with this patch with the
exception of the flush inode writeback that doesn't wait (and the
nitpick on S_ISREG)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
