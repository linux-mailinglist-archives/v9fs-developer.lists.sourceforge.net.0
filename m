Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 755806D00DC
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 12:14:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phpIb-0000kz-Jt;
	Thu, 30 Mar 2023 10:14:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1phpIa-0000ks-BQ
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3sQukwgeaCd6HTG/HGkxR2VyVyZcc3rf08OOr7zwpyQ=; b=RsBb+4fhlNblUwjJe0KobifkWN
 k/T/wsjEEipyUfYtWa6u1HUN/+CfjbuUUGKATWYLq/euYOQ9xHSBxaKkqneQEz7AXupf4HqVMi4us
 M28otYNiid7QLPYeKxvcJQmkPAIA0D8RZPL4HLmE4h8M4qQvWLixgzZZXvbKVu6PvhAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3sQukwgeaCd6HTG/HGkxR2VyVyZcc3rf08OOr7zwpyQ=; b=OYr/74BVmZQNRHGJJ9phABPqW9
 GmR8+B0B8GHan5vFNoqi+HRqKGyeO13ROeR3jyIm7K3cYtYM3GWs6UDOnYGX77qy8YRxf0Eh6ci4i
 z3fERbKCDMf8/tzQWjIVWQw6Tz/Kj7JhNiu6m1nkdgOqns3mMd7AbjVRirHP1We+6pK0=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phpIY-0004gB-E2 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:14:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0BBE7B82754;
 Thu, 30 Mar 2023 10:14:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72054C433EF;
 Thu, 30 Mar 2023 10:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680171258;
 bh=1DRt/6//qsaRBAIrWLGXcGZabxxr4NuFgrQAGvbu1xY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=lcwmANd/nMY1RWYxVRtXhJPUcMXDbMg2N8O/bnT9Wkbt/SFTFf1sklp5TS70jRguH
 9kA38taE8xcNfVX27S/odMrD4o5Wr7lKeHXcmNguTsunYose8kHuLTAOjm0Xa3Ygud
 6pn/oBjDuZk67AphoPGuN0EZvsxWxskwcY5gkMEOi1TFzNXr67LKgFlHflgtCKDpTo
 0/dQjfLtbzG+md7GcBcLYUihjx1mWMdDvsWptw4jZMihVkaLp2jwBqT5MQYHtHsfJ7
 N8fNpSB6WQR9j+EFxM7kpejqiiQnx/CoaMg2XgxQjjO78Y5ryRZUkFi5C4hLVPrGGn
 DXk+E8rSMxGmQ==
Message-ID: <eba75b19eab0281f79632edc0317ea7bbda9cb58.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Christian Brauner <brauner@kernel.org>
Date: Thu, 30 Mar 2023 06:14:15 -0400
In-Reply-To: <20230330-magma-struck-e1f80f624070@brauner>
References: <20230330000157.297698-1-jlayton@kernel.org>
 <20230330-magma-struck-e1f80f624070@brauner>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2023-03-30 at 07:44 +0200, Christian Brauner wrote:
 > On Wed, Mar 29, 2023 at 08:01:55PM -0400, Jeff Layton wrote: > > There
 are 4 functions named dt_type() in the kernel. There is also the > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phpIY-0004gB-E2
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

On Thu, 2023-03-30 at 07:44 +0200, Christian Brauner wrote:
> On Wed, Mar 29, 2023 at 08:01:55PM -0400, Jeff Layton wrote:
> > There are 4 functions named dt_type() in the kernel. There is also the
> > S_DT macro in fs_types.h.
> > 
> > Replace the S_DT macro with a static inline named dt_type, and have all
> > of the existing copies call that instead. The v9fs helper is renamed to
> > distinguish it from the others.
> > 
> > Cc: Chuck Lever <chuck.lever@oracle.com>
> > Cc: Phillip Potter <phil@philpotter.co.uk>
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > ---
> >  fs/9p/vfs_dir.c          | 6 +++---
> >  fs/configfs/dir.c        | 8 +-------
> >  fs/fs_types.c            | 2 +-
> >  fs/kernfs/dir.c          | 8 +-------
> >  fs/libfs.c               | 9 ++-------
> >  include/linux/fs_types.h | 7 ++++++-
> >  6 files changed, 14 insertions(+), 26 deletions(-)
> > 
> > What about this one instead? This consolidates another copy and we use
> > Phillip's version that uses named constants instead of magic numbers.
> > 
> > There are some scary warnings in fs_types.h about not changing the
> > definitions, but hopefully the rename from S_DT() to dt_type() is OK.
> > 
> > diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
> > index 3d74b04fe0de..80b331f7f446 100644
> > --- a/fs/9p/vfs_dir.c
> > +++ b/fs/9p/vfs_dir.c
> > @@ -41,12 +41,12 @@ struct p9_rdir {
> >  };
> >  
> >  /**
> > - * dt_type - return file type
> > + * v9fs_dt_type - return file type
> >   * @mistat: mistat structure
> >   *
> >   */
> >  
> > -static inline int dt_type(struct p9_wstat *mistat)
> > +static inline int v9fs_dt_type(struct p9_wstat *mistat)
> >  {
> >  	unsigned long perm = mistat->mode;
> >  	int rettype = DT_REG;
> > @@ -128,7 +128,7 @@ static int v9fs_dir_readdir(struct file *file, struct dir_context *ctx)
> >  			}
> >  
> >  			over = !dir_emit(ctx, st.name, strlen(st.name),
> > -					 v9fs_qid2ino(&st.qid), dt_type(&st));
> > +					 v9fs_qid2ino(&st.qid), v9fs_dt_type(&st));
> >  			p9stat_free(&st);
> >  			if (over)
> >  				return 0;
> > diff --git a/fs/configfs/dir.c b/fs/configfs/dir.c
> > index 4afcbbe63e68..43863a1696eb 100644
> > --- a/fs/configfs/dir.c
> > +++ b/fs/configfs/dir.c
> > @@ -1599,12 +1599,6 @@ static int configfs_dir_close(struct inode *inode, struct file *file)
> >  	return 0;
> >  }
> >  
> > -/* Relationship between s_mode and the DT_xxx types */
> > -static inline unsigned char dt_type(struct configfs_dirent *sd)
> > -{
> > -	return (sd->s_mode >> 12) & 15;
> > -}
> > -
> >  static int configfs_readdir(struct file *file, struct dir_context *ctx)
> >  {
> >  	struct dentry *dentry = file->f_path.dentry;
> > @@ -1654,7 +1648,7 @@ static int configfs_readdir(struct file *file, struct dir_context *ctx)
> >  		name = configfs_get_name(next);
> >  		len = strlen(name);
> >  
> > -		if (!dir_emit(ctx, name, len, ino, dt_type(next)))
> > +		if (!dir_emit(ctx, name, len, ino, dt_type(next->s_mode)))
> >  			return 0;
> >  
> >  		spin_lock(&configfs_dirent_lock);
> > diff --git a/fs/fs_types.c b/fs/fs_types.c
> > index 78365e5dc08c..7dd5c0fb74fb 100644
> > --- a/fs/fs_types.c
> > +++ b/fs/fs_types.c
> > @@ -76,7 +76,7 @@ static const unsigned char fs_ftype_by_dtype[DT_MAX] = {
> >   */
> >  unsigned char fs_umode_to_ftype(umode_t mode)
> >  {
> > -	return fs_ftype_by_dtype[S_DT(mode)];
> > +	return fs_ftype_by_dtype[dt_type(mode)];
> >  }
> >  EXPORT_SYMBOL_GPL(fs_umode_to_ftype);
> 
> Nice cleanup. But looking at this a bit it makes me wonder a little. It
> seems there's a bit of indirection going on:
> 
> fs_umode_to_dtype()
> -> fs_type_to_dtype()
>    -> fs_umode_to_ftype()
>       -> fs_ftype_by_dtype()
>          -> dt_type()
> 
> Presumably it exists so that unexpected return values from dt_type() are
> caught and DT_UNKNOWN is returned instead of whatever raw value
> dt_type() returned.

> If none of the filesystems we convert to dt_type() here expects "custom"
> return values from dt_type(), i.e., would never get DT_UNKNOWN, we
> should consider just switching all those places to fs_umode_to_dtype().
> 
> However, if they do expect custom dt_type() values and so we really need
> to have them use dt_type() then we should remove fs_umode_to_dtype()
> because it is curerntly unused if my grepping skills haven't left me.

Good point.

The dt_type returns are all handed to dir_emit, and it looks like most
of the readdir actor functions just take that value as-is and stuff it
into the appropriate readdir response.

Given that, we probably don't want to hand the actors any "custom"
values and should switch these callers over to fs_umode_to_dtype
instead.

I'll plan to spin up a v3 series (and address HCH's comments in that
too).

Thanks for the review, everyone!
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
