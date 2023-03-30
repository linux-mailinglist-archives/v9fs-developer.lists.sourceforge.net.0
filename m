Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6326CFAE1
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 07:44:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phl5U-0007Q4-Vz;
	Thu, 30 Mar 2023 05:44:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1phl5Q-0007Px-Mh
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 05:44:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2SqW47C8iJJr9yL4n+kASMUHj2MGZuhrdJXP2RmE8F4=; b=V0v4yLbt+4W8EmLeoii7OJPYb9
 vNG9DJkFMofcMM0AEZvmM+08Vz6VA3DydQZU99ywQ3fup2vCA5oROfAqK6ET81kn+j0pO1xXJ0GuX
 Sy5I0UhU/h0jR1vUkVOAfAl6Q3rh8XC+WwtYuAqCZaPdMYSd/mwXiefR0vhPHlfu1Yss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2SqW47C8iJJr9yL4n+kASMUHj2MGZuhrdJXP2RmE8F4=; b=alCong2v1+3KfKm6fyAgcYY8qe
 5wMCmr8Eau59JX2h1PVkPapuCT2uVRi6DlqILMXBZwwcj0/D5TAyjEOQ/Qr/+9i+8u1q71/Fj7nzn
 3BCj/ZpeA9ohvHoyT86QsUGg89AAxYEDflpgqYxKSc9uaZN4JgX2aP0LzAsCC1Qx6+U8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phl5N-009BTe-Oz for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 05:44:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E2F9461EEA;
 Thu, 30 Mar 2023 05:44:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D151BC433EF;
 Thu, 30 Mar 2023 05:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680155065;
 bh=LjZQOaXzuxwyLRrjvv2WdMyFVZ71TcZefD3/geErE6c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ceygSMN7Z6ANNoze1B9j4Q/tmfF8jApjm+pRjbgLBiAZifDzUrsKQqRZq4xd1r6Q0
 fZcSDykakonk0W5YQCdzZ24GDvRnbi5wVR/R9MOB6PYRhvbXXeIBZXzoEd4Er4Qqqu
 1siP3lGosfeBGUJ/yihDz35JVAIDmaYcEAQvnvoJOAVMURbn+L+68c2rtXzwicRXwI
 cDcduKj6CoyE40/Nn6qJ9JQvD4Im5uVL4pKom8TfoyURQ2vq/VnW4MwsAHe9CKN6kK
 UYzaWBU3AmgRq2dtcIDAOa6CFRGeUOckq1dP3kgbkPx1VEKH2j/OOS1WI9mrfimXrM
 fMwTPIXxrAk4Q==
Date: Thu, 30 Mar 2023 07:44:18 +0200
From: Christian Brauner <brauner@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20230330-magma-struck-e1f80f624070@brauner>
References: <20230330000157.297698-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230330000157.297698-1-jlayton@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 29, 2023 at 08:01:55PM -0400, Jeff Layton wrote:
 > There are 4 functions named dt_type() in the kernel. There is also the
 > S_DT macro in fs_types.h. > > Replace the S_DT macro with a stat [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phl5N-009BTe-Oz
Subject: Re: [V9fs-developer] [PATCH v2] fs: consolidate dt_type() helper
 definitions
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>, linux-fsdevel@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Joel Becker <jlbec@evilplan.org>,
 Tejun Heo <tj@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Mar 29, 2023 at 08:01:55PM -0400, Jeff Layton wrote:
> There are 4 functions named dt_type() in the kernel. There is also the
> S_DT macro in fs_types.h.
> 
> Replace the S_DT macro with a static inline named dt_type, and have all
> of the existing copies call that instead. The v9fs helper is renamed to
> distinguish it from the others.
> 
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: Phillip Potter <phil@philpotter.co.uk>
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  fs/9p/vfs_dir.c          | 6 +++---
>  fs/configfs/dir.c        | 8 +-------
>  fs/fs_types.c            | 2 +-
>  fs/kernfs/dir.c          | 8 +-------
>  fs/libfs.c               | 9 ++-------
>  include/linux/fs_types.h | 7 ++++++-
>  6 files changed, 14 insertions(+), 26 deletions(-)
> 
> What about this one instead? This consolidates another copy and we use
> Phillip's version that uses named constants instead of magic numbers.
> 
> There are some scary warnings in fs_types.h about not changing the
> definitions, but hopefully the rename from S_DT() to dt_type() is OK.
> 
> diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
> index 3d74b04fe0de..80b331f7f446 100644
> --- a/fs/9p/vfs_dir.c
> +++ b/fs/9p/vfs_dir.c
> @@ -41,12 +41,12 @@ struct p9_rdir {
>  };
>  
>  /**
> - * dt_type - return file type
> + * v9fs_dt_type - return file type
>   * @mistat: mistat structure
>   *
>   */
>  
> -static inline int dt_type(struct p9_wstat *mistat)
> +static inline int v9fs_dt_type(struct p9_wstat *mistat)
>  {
>  	unsigned long perm = mistat->mode;
>  	int rettype = DT_REG;
> @@ -128,7 +128,7 @@ static int v9fs_dir_readdir(struct file *file, struct dir_context *ctx)
>  			}
>  
>  			over = !dir_emit(ctx, st.name, strlen(st.name),
> -					 v9fs_qid2ino(&st.qid), dt_type(&st));
> +					 v9fs_qid2ino(&st.qid), v9fs_dt_type(&st));
>  			p9stat_free(&st);
>  			if (over)
>  				return 0;
> diff --git a/fs/configfs/dir.c b/fs/configfs/dir.c
> index 4afcbbe63e68..43863a1696eb 100644
> --- a/fs/configfs/dir.c
> +++ b/fs/configfs/dir.c
> @@ -1599,12 +1599,6 @@ static int configfs_dir_close(struct inode *inode, struct file *file)
>  	return 0;
>  }
>  
> -/* Relationship between s_mode and the DT_xxx types */
> -static inline unsigned char dt_type(struct configfs_dirent *sd)
> -{
> -	return (sd->s_mode >> 12) & 15;
> -}
> -
>  static int configfs_readdir(struct file *file, struct dir_context *ctx)
>  {
>  	struct dentry *dentry = file->f_path.dentry;
> @@ -1654,7 +1648,7 @@ static int configfs_readdir(struct file *file, struct dir_context *ctx)
>  		name = configfs_get_name(next);
>  		len = strlen(name);
>  
> -		if (!dir_emit(ctx, name, len, ino, dt_type(next)))
> +		if (!dir_emit(ctx, name, len, ino, dt_type(next->s_mode)))
>  			return 0;
>  
>  		spin_lock(&configfs_dirent_lock);
> diff --git a/fs/fs_types.c b/fs/fs_types.c
> index 78365e5dc08c..7dd5c0fb74fb 100644
> --- a/fs/fs_types.c
> +++ b/fs/fs_types.c
> @@ -76,7 +76,7 @@ static const unsigned char fs_ftype_by_dtype[DT_MAX] = {
>   */
>  unsigned char fs_umode_to_ftype(umode_t mode)
>  {
> -	return fs_ftype_by_dtype[S_DT(mode)];
> +	return fs_ftype_by_dtype[dt_type(mode)];
>  }
>  EXPORT_SYMBOL_GPL(fs_umode_to_ftype);

Nice cleanup. But looking at this a bit it makes me wonder a little. It
seems there's a bit of indirection going on:

fs_umode_to_dtype()
-> fs_type_to_dtype()
   -> fs_umode_to_ftype()
      -> fs_ftype_by_dtype()
         -> dt_type()

Presumably it exists so that unexpected return values from dt_type() are
caught and DT_UNKNOWN is returned instead of whatever raw value
dt_type() returned.

If none of the filesystems we convert to dt_type() here expects "custom"
return values from dt_type(), i.e., would never get DT_UNKNOWN, we
should consider just switching all those places to fs_umode_to_dtype().

However, if they do expect custom dt_type() values and so we really need
to have them use dt_type() then we should remove fs_umode_to_dtype()
because it is curerntly unused if my grepping skills haven't left me.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
