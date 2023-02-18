Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B34F69B937
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 11:01:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTK2T-0007WQ-Kf;
	Sat, 18 Feb 2023 10:01:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTK2S-0007WJ-7U
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 10:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFmYvXV61X47590TdvsFDX3eZIEYY1RVNT6C/giG+Bs=; b=fMZVw30zj9dkpa/+OtnJLQQlNz
 dUpfz56+UI57QC1jZc0aTYQ8JUTnrlx4+UzGj79lIS48qdkJUC1v2aCb8xYrvrwzaaRRMiWmhe2ui
 sADs3TpqAp3rD1HqAMvKN5v4rnZDeajsK8q2eqP9WXBFM4dyxmZPcd70PiRqP9d3Nodw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NFmYvXV61X47590TdvsFDX3eZIEYY1RVNT6C/giG+Bs=; b=RjNvpK4hBR0VO3XB5xUZN6QtP0
 8cHGX/Tq8q+Thn3aSaZzE4dK+yqKdAr8H1yCQv3+mKrAvWxz+hmVILYPTuaRcOZ1mzSCWYW0YgO69
 8pKKVJaO904gOr35aEppE+/niJ21RZkLe7mFex4wfJVT4ZSvrSILNsioHiAPiQpsmqSE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTK2Q-008NLu-24 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 10:01:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 40DEDC009; Sat, 18 Feb 2023 11:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676714527; bh=NFmYvXV61X47590TdvsFDX3eZIEYY1RVNT6C/giG+Bs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GzWvUSinsvSQMaaeDYhi5/lerYSbBC2DXRh1NoVyUdo0nZMAjKfq5X7dT+ry4lmHm
 xPpTxUWBoIOHQ/RQkeXMvU6pJZdxW33BVMBzwoUy5u9Ko0KGtyt5Bif68NkxB1ApIQ
 JL5XXAmEK2teXQzWkP5PlgsnNcofY2AJ5R/78VtBagM3Oa4RmUq0TBOIhW41sEPwys
 /5zzW/aIhXrc847a6j+/415gJbL04MPk+Vcm7mEnwxERbsvACxcVVWfTZdjEUHdVrC
 Qt/UAUI6myqPHNRe1M7T5KKtqFsprnBX7+bU95INzh4iZEhEjrpY2Tisg6Sx0LtrrV
 r+uCU1zLEO4Xw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 23129C009;
 Sat, 18 Feb 2023 11:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676714526; bh=NFmYvXV61X47590TdvsFDX3eZIEYY1RVNT6C/giG+Bs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NMzB2HuMjWh9W+IaPRu8g+7WB9qjmuO0Cw9KeQNH7x/Mwf6Pfjwwb3BMC7MSGS7Nd
 q7q++Mw+gDrxPW4yyN1W0HKdGAB7D/kG2tMB7TyWgHvg6COxy+g33cNJLZcfEyni5g
 +Lb96rBrUXDFo+riV0Lt0asRZALM+8rMl97Ksl/RhRmLQPALz70W72PjD4QeJy9oux
 pD5ovrmo6qyg9i3c95qQTMi/koybtUIx9m0T3+Tx/vBWBcI8iBB6icj1KXjRYYLYp/
 OSbfzBU+wbfQX1qZop/gEom7wmRr99DxXJTaaflZFYBxEvQ12vZvOjWKIDWKs+KwjQ
 4DzATOGyNX6lA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 629c7762;
 Sat, 18 Feb 2023 10:01:37 +0000 (UTC)
Date: Sat, 18 Feb 2023 19:01:22 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/Ch8o/6HVS8Iyeh@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-11-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM
 +0000: > This fixes several detected problems from preivous > patches when
 running with writeback mode. In > particular this fixes issues w [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTK2Q-008NLu-24
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM +0000:
> This fixes several detected problems from preivous
> patches when running with writeback mode.  In
> particular this fixes issues with files which are opened
> as write only and getattr on files which dirty caches.
> 
> This patch makes sure that cache behavior for an open file is stored in
> the client copy of fid->mode.  This allows us to reflect cache behavior
> from mount flags, open mode, and information from the server to
> inform readahead and writeback behavior.
> 
> This includes adding support for a 9p semantic that qid.version==0
> is used to mark a file as non-cachable which is important for
> synthetic files.  This may have a side-effect of not supporting
> caching on certain legacy file servers that do not properly set
> qid.version.  There is also now a mount flag which can disable
> the qid.version behavior.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

Didn't have time to review it all thoroughly, sending what I have
anyway...

> diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
> index 0e800b8f73cc..0c2c7a181d85 100644
> --- a/Documentation/filesystems/9p.rst
> +++ b/Documentation/filesystems/9p.rst
> @@ -79,18 +79,14 @@ Options
>  
>    cache=mode	specifies a caching policy.  By default, no caches are used.
>  
> -                        none
> -				default no cache policy, metadata and data
> -                                alike are synchronous.
> -			loose
> -				no attempts are made at consistency,
> -                                intended for exclusive, read-only mounts
> -                        fscache
> -				use FS-Cache for a persistent, read-only
> -				cache backend.
> -                        mmap
> -				minimal cache that is only used for read-write
> -                                mmap.  Northing else is cached, like cache=none
> +			=========	=============================================
> +			none		no cache of file or metadata
> +			readahead	readahead caching of files
> +			writeback	delayed writeback of files
> +			mmap		support mmap operations read/write with cache
> +			loose		meta-data and file cache with no coherency
> +			fscache		use FS-Cache for a persistent cache backend
> +			=========	=============================================

perhaps a word saying the caches are incremental, only one can be used,
and listing them in order?
e.g. it's not clear from this that writeback also enables readahead,
and as a user I'd try to use cache=readahead,cache=writeback and wonder
why that doesn't work (well, I guess it would in that order...)


> diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> index 805151114e96..8c1697619f3d 100644
> --- a/fs/9p/fid.c
> +++ b/fs/9p/fid.c
> @@ -41,14 +40,24 @@ void v9fs_fid_add(struct dentry *dentry, struct p9_fid **pfid)
>  	*pfid = NULL;
>  }
>  
> +static bool v9fs_is_writeable(int mode)
> +{
> +	if ((mode & P9_OWRITE) || (mode & P9_ORDWR))

(style) that's usually written 'if (mode & (P9_OWRITE | P9_ORDWR))'

(I don't really care, the compiler will likely generate the same more
efficient check)

> @@ -32,4 +34,33 @@ static inline struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
>  	p9_fid_put(fid);
>  	return nfid;
>  }
> +/**
> + * v9fs_fid_addmodes - add cache flags to fid mode (for client use only)
> + * @fid: fid to augment
> + * @s_flags: session info mount flags
> + * @s_cache: session info cache flags
> + * @f_flags: unix open flags
> + *
> + * make sure mode reflects flags of underlying mounts
> + * also qid.version == 0 reflects a synthetic or legacy file system
> + * NOTE: these are set after open so only reflect 9p client not
> + * underlying file system on server.

Ok, so ignore my comment about that in other commit; but that note
really should also be in the header or commits should make sense in
order...
Rand aside, what's the point? It saves a lookup for the session in
v9fs_file_read/write_iter ? We don't support changing cache mode for new
fids with `mount -o remount` do we...

Ah, I see you're adding DIRECT to the mode if you fail opening the
writeback fid; ok that makes more sense.
I'd appreciate a comment as well for that, around the enum definition
rather than here, if you want to humor me on this.


> v9fs_file.c
> @@ -59,7 +59,19 @@ int v9fs_file_open(struct inode *inode, struct file *file)
>  		if (IS_ERR(fid))
>  			return PTR_ERR(fid);
>  
> -		err = p9_client_open(fid, omode);
> +		if ((v9ses->cache >= CACHE_WRITEBACK) && (omode & P9_OWRITE)) {
> +			int writeback_omode = (omode & !P9_OWRITE) | P9_ORDWR;

omode & ~P9_OWRITE ?
`!P9_OWRITE` will be 0...

> diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
> index 5fc6a945bfff..797f717e1a91 100644
> --- a/fs/9p/vfs_super.c
> +++ b/fs/9p/vfs_super.c

> @@ -323,16 +327,17 @@ static int v9fs_write_inode_dotl(struct inode *inode,
>  	 */
>  	v9inode = V9FS_I(inode);
>  	p9_debug(P9_DEBUG_VFS, "%s: inode %p, writeback_fid %p\n",
> -		 __func__, inode, v9inode->writeback_fid);
> -	if (!v9inode->writeback_fid)
> -		return 0;
> +		 __func__, inode, fid);
> +	if (!fid)
> +		return -EINVAL;

Hmm, what happens if we return EINVAL here?
Might want a WARN_ONCE or something?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
