Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6CC488A33
	for <lists+v9fs-developer@lfdr.de>; Sun,  9 Jan 2022 16:27:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6a6l-0003MN-MH; Sun, 09 Jan 2022 15:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1n6a6k-0003MB-TG
 for v9fs-developer@lists.sourceforge.net; Sun, 09 Jan 2022 15:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K1LDbFs9x4FB1xx/2X8IZzLK48z/oeIROR9FxWFKpro=; b=hV3sRydpI0rnDpCaA3pj/w8x5a
 Vsg33M+PeOONR8STfXo43qjYWO5M7mxbHA0os/rBmXYY9UKUFJa98YhtuytQHIRdS6yBn2zUjEXvd
 BUMDg+YewQvFqWzyFlmvoimLUbW1oIT3G/cv70Bq3zFpR6CXN7cYOiqXkGjuMVq1uAQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K1LDbFs9x4FB1xx/2X8IZzLK48z/oeIROR9FxWFKpro=; b=axEOWXjWrd/WNXOKxaJEezTI7b
 6YdkPKKjodKi+8TjtJQwIeeYLjD3FuP2q55/uMH9tlpJfmW9YpkfxVqE37JE4PLXqH2V4A7r7DXIi
 bLkmYmJBkf3bErzGzlSPIz1OCyrEBnvvjDjBa0bOAtV6MUVFJVsPMrtcmd16lImKXVyg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6a6e-009VlU-FH
 for v9fs-developer@lists.sourceforge.net; Sun, 09 Jan 2022 15:27:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5AF8460A55;
 Sun,  9 Jan 2022 15:27:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EEB8C36AED;
 Sun,  9 Jan 2022 15:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641742048;
 bh=3b6/4NoAXJJWUq2gsg5iKUmGqebtBOvDSo33LeKf8cI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=a1hj3BUPWWcC7naVx2AqX6O5K4Bl3I+t2LBa9cQpCeBaYAyBwaQn/PS+HGCeidy8q
 V59tCbLL4SVGkupihAebTzDinf84wfBOUo5fKOH7h3X5A0HUfBNkBat2GC2klEJeJY
 z+IrlZGIg9r8ZNjuzIUxUmJMEv6GlWlOIoflShkFfNhrr3x3ss7+217Fc1LcujWwRm
 7pL1r7FXe40v8cxvGgS62Sd7KvDKkZkLRU+AyfWhS4/bR++UNpoDXsTk0iczsBxVVz
 WuIg7JKBR2T5fTONlCI3jYhT3vWzHFWf9ioixoaAQwvW7eDBJGFhPbJuSq/hJfW7C+
 gd+Ip0LdKRERQ==
Message-ID: <6e44856a8711bf1eb95c16de9efdb1bb108cf25c.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com, Steve
 French <sfrench@samba.org>
Date: Sun, 09 Jan 2022 10:27:25 -0500
In-Reply-To: <3419813.1641592362@warthog.procyon.org.uk>
References: <164021579335.640689.2681324337038770579.stgit@warthog.procyon.org.uk>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <3419813.1641592362@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2022-01-07 at 21:52 +0000, David Howells wrote: >
 This patch isn't quite right and needs a fix. The attached patch fixes it.
 > I'll fold that in and post a v5 of this patch. > > David > --- > [...] 
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
X-Headers-End: 1n6a6e-009VlU-FH
Subject: Re: [V9fs-developer] [PATCH v4 63/68] cifs: Support fscache
 indexing rewrite (untested)
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
 linux-nfs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 2022-01-07 at 21:52 +0000, David Howells wrote:
> This patch isn't quite right and needs a fix.  The attached patch fixes it.
> I'll fold that in and post a v5 of this patch.
> 
> David
> ---
> cifs: Fix the fscache cookie management
> 
> Fix the fscache cookie management in cifs in the following ways:
> 
>  (1) The cookie should be released in cifs_evict_inode() after it has been
>      unused from being pinned by cifs_set_page_dirty().
> 
>  (2) The cookie shouldn't be released in cifsFileInfo_put_final().  That's
>      dealing with closing a file, not getting rid of an inode.  The cookie
>      needs to persist beyond the last file close because writepages may
>      happen after closure.
> 
>  (3) The cookie needs to be used in cifs_atomic_open() to match
>      cifs_open().  As yet unknown files being opened for writing seem to go
>      by the former route rather than the latter.
> 
> This can be triggered by something like:
> 
>         # systemctl start cachefilesd
>         # mount //carina/test /xfstest.test -o user=shares,pass=xxxx.fsc
>         # bash 5</xfstest.test/bar
>         # echo hello >/xfstest.test/bar
> 
> The key is to open the file R/O and then open it R/W and write to it whilst
> it's still open for R/O.  A cookie isn't acquired if it's just opened R/W
> as it goes through the atomic_open method rather than the open method.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
>  fs/cifs/cifsfs.c |    8 ++++++++
>  fs/cifs/dir.c    |    4 ++++
>  fs/cifs/file.c   |    2 --
>  3 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
> index d3f3acf340f1..26cf2193c9a2 100644
> --- a/fs/cifs/cifsfs.c
> +++ b/fs/cifs/cifsfs.c
> @@ -398,6 +398,7 @@ cifs_evict_inode(struct inode *inode)
>  	truncate_inode_pages_final(&inode->i_data);
>  	if (inode->i_state & I_PINNING_FSCACHE_WB)
>  		cifs_fscache_unuse_inode_cookie(inode, true);
> +	cifs_fscache_release_inode_cookie(inode);
>  	clear_inode(inode);
>  }
>  
> @@ -722,6 +723,12 @@ static int cifs_show_stats(struct seq_file *s, struct dentry *root)
>  }
>  #endif
>  
> +static int cifs_write_inode(struct inode *inode, struct writeback_control *wbc)
> +{
> +	fscache_unpin_writeback(wbc, cifs_inode_cookie(inode));
> +	return 0;
> +}
> +
>  static int cifs_drop_inode(struct inode *inode)
>  {
>  	struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
> @@ -734,6 +741,7 @@ static int cifs_drop_inode(struct inode *inode)
>  static const struct super_operations cifs_super_ops = {
>  	.statfs = cifs_statfs,
>  	.alloc_inode = cifs_alloc_inode,
> +	.write_inode	= cifs_write_inode,
>  	.free_inode = cifs_free_inode,
>  	.drop_inode	= cifs_drop_inode,
>  	.evict_inode	= cifs_evict_inode,
> diff --git a/fs/cifs/dir.c b/fs/cifs/dir.c
> index 6e8e7cc26ae2..6186824b366e 100644
> --- a/fs/cifs/dir.c
> +++ b/fs/cifs/dir.c
> @@ -22,6 +22,7 @@
>  #include "cifs_unicode.h"
>  #include "fs_context.h"
>  #include "cifs_ioctl.h"
> +#include "fscache.h"
>  
>  static void
>  renew_parental_timestamps(struct dentry *direntry)
> @@ -509,6 +510,9 @@ cifs_atomic_open(struct inode *inode, struct dentry *direntry,
>  		rc = -ENOMEM;
>  	}
>  
> +	fscache_use_cookie(cifs_inode_cookie(file_inode(file)),
> +			   file->f_mode & FMODE_WRITE);
> +
>  out:
>  	cifs_put_tlink(tlink);
>  out_free_xid:
> diff --git a/fs/cifs/file.c b/fs/cifs/file.c
> index d872f6fe8e7d..44da7646f789 100644
> --- a/fs/cifs/file.c
> +++ b/fs/cifs/file.c
> @@ -376,8 +376,6 @@ static void cifsFileInfo_put_final(struct cifsFileInfo *cifs_file)
>  	struct cifsLockInfo *li, *tmp;
>  	struct super_block *sb = inode->i_sb;
>  
> -	cifs_fscache_release_inode_cookie(inode);
> -
>  	/*
>  	 * Delete any outstanding lock records. We'll lose them when the file
>  	 * is closed anyway.
> 

Looks good.

Acked-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
