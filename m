Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 879A4549DD6
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 21:38:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0ptN-0005dh-ND; Mon, 13 Jun 2022 19:38:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1o0ptN-0005dX-7E
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 19:38:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nlhe89f21s2Nn6sZlzNNWxjIOhCd8EeCNee7Yy+xEvU=; b=UNIP7lgHuvumbUf7T+siz60YPa
 YZJZevR+uBONxURqjxjeGoamfNkI5qMsN5DIbPqem/UW9hRG04T8vuDIoIeA5S/Bhr66jJYyvgAs1
 woifN+Gg+/EKnxVOm4JhluQxOFwAQm9++lKkan8UPzxYsaNoKE3OPG3KxXPY8nqyGtiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nlhe89f21s2Nn6sZlzNNWxjIOhCd8EeCNee7Yy+xEvU=; b=SF1AAMEUeHbu2BEiVN8o9+SLEs
 weer3COXrlVaDafck6H290uenL6i+uhwhTXBKXeL15QKWkEWc0xErV4F2ey6RJRwyoMG1kqtnZSM2
 JnDI7oIhR5bBs8VXBJPWyHKtf8v6IweC/MUYAaP2akTza6ZpFS7pwiOmZ6KUjeykIi3c=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o0ptB-0005A1-V4
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 19:38:27 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id BDFC520C154C;
 Mon, 13 Jun 2022 12:38:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com BDFC520C154C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1655149091;
 bh=Nlhe89f21s2Nn6sZlzNNWxjIOhCd8EeCNee7Yy+xEvU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ikjQZmtHOZ+WLe7eXSv06sgC+WIMy6qYOHsYl7R3s+ezYufbTNoh1MQu0ZSQzrnng
 xYlX8CztPE8odeMby13fHDEYRtASMSs4m0XSf4+JW3cYWTVZbxjIdlxMwQbapVww7H
 VaYAyOL+V7jxcNjtFFJJebiJadQAYuPPUzUWKM6k=
Date: Mon, 13 Jun 2022 14:38:07 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220613193807.GF7401@sequoia>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <20220527000003.355812-2-tyhicks@linux.microsoft.com>
 <YqUifCFPTG8Qmn7a@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqUifCFPTG8Qmn7a@codewreck.org>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-12 08:17:16, Dominique Martinet wrote: > Tyler
 Hicks wrote on Thu, May 26,
 2022 at 06:59:59PM -0500: > > Decrement the refcount
 of the parent dentry's fid after walking > > each path compon [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1o0ptB-0005A1-V4
Subject: Re: [V9fs-developer] [PATCH v2 1/5] 9p: Fix refcounting during full
 path walks for fid lookups
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jianyong Wu <jianyong.wu@arm.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-12 08:17:16, Dominique Martinet wrote:
> Tyler Hicks wrote on Thu, May 26, 2022 at 06:59:59PM -0500:
> > Decrement the refcount of the parent dentry's fid after walking
> > each path component during a full path walk for a lookup. Failure to do
> > so can lead to fids that are not clunked until the filesystem is
> > unmounted, as indicated by this warning:
> > 
> >  9pnet: found fid 3 not clunked
> > 
> > The improper refcounting after walking resulted in open(2) returning
> > -EIO on any directories underneath the mount point when using the virtio
> > transport. When using the fd transport, there's no apparent issue until
> > the filesytem is unmounted and the warning above is emitted to the logs.
> > 
> > In some cases, the user may not yet be attached to the filesystem and a
> > new root fid, associated with the user, is created and attached to the
> > root dentry before the full path walk is performed. Increment the new
> > root fid's refcount to two in that situation so that it can be safely
> > decremented to one after it is used for the walk operation. The new fid
> > will still be attached to the root dentry when
> > v9fs_fid_lookup_with_uid() returns so a final refcount of one is
> > correct/expected.
> > 
> > Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
> > ---
> >  fs/9p/fid.c | 17 +++++------------
> >  1 file changed, 5 insertions(+), 12 deletions(-)
> > 
> > diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> > index 79df61fe0e59..5a469b79c1ee 100644
> > --- a/fs/9p/fid.c
> > +++ b/fs/9p/fid.c
> > @@ -152,7 +152,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> >  	const unsigned char **wnames, *uname;
> >  	int i, n, l, clone, access;
> >  	struct v9fs_session_info *v9ses;
> > -	struct p9_fid *fid, *old_fid = NULL;
> > +	struct p9_fid *fid, *old_fid;
> >  
> >  	v9ses = v9fs_dentry2v9ses(dentry);
> >  	access = v9ses->flags & V9FS_ACCESS_MASK;
> > @@ -194,13 +194,12 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> >  		if (IS_ERR(fid))
> >  			return fid;
> >  
> > +		refcount_inc(&fid->count);
> >  		v9fs_fid_add(dentry->d_sb->s_root, fid);
> >  	}
> >  	/* If we are root ourself just return that */
> > -	if (dentry->d_sb->s_root == dentry) {
> > -		refcount_inc(&fid->count);
> > +	if (dentry->d_sb->s_root == dentry)
> >  		return fid;
> > -	}
> >  	/*
> >  	 * Do a multipath walk with attached root.
> >  	 * When walking parent we need to make sure we
> > @@ -212,6 +211,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> >  		fid = ERR_PTR(n);
> >  		goto err_out;
> >  	}
> > +	old_fid = fid;
> >  	clone = 1;
> >  	i = 0;
> >  	while (i < n) {
> > @@ -221,15 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> >  		 * walk to ensure none of the patch component change
> >  		 */
> >  		fid = p9_client_walk(fid, l, &wnames[i], clone);
> > +		p9_client_clunk(old_fid);
> 
> hmm, if we're not cloning then fid == old_fid and the refcount is not
> increased? (I think... I didn't even realize/remember that walk had a
> no-clone mode, sorry.)
> 
> So we'd only need to clunk if old fid here if we're cloning (old fid is
> the initial root fid), but I'm not sure how to test this path as I
> couldn't think of any pattern that'd trigger a multi-level lookup,
> so I'm not 100% sure; I'll try a bit more.

Yes, you're correct. Nice catch!

Tyler

> 
> -- 
> Dominique
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
