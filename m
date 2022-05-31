Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3987B539329
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 May 2022 16:29:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nw2rn-0006sx-UX; Tue, 31 May 2022 14:29:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nw2rm-0006sk-Bq
 for v9fs-developer@lists.sourceforge.net; Tue, 31 May 2022 14:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ryNbELSrN1UgeAm1L5RK1KAe6rt4cp/z+pMhBtO69Bc=; b=REJBoVLP/j9e8dJt1yEYg5YC2n
 2Xx8w2vIoJ/vazYK3vfyfwJAIXvJ3Ymowd4jpEcKQrEpbNh8KhAK1EBSCzI0iNkk6OPVrmJJWoxfd
 c2JjmzSr/3QUN/aYwoUKfMGTHCEUUZd7kjrcDKndrBM8pcmSd4hjO7VDPJ5nkD1yy0pM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ryNbELSrN1UgeAm1L5RK1KAe6rt4cp/z+pMhBtO69Bc=; b=cgYcPh/3C4iCcX6bPFV4/k6WXW
 iZPNqx5U7S3dafdmhGoCnJe4IpFvZ8Fwx97E22Q+F3pLYGTp9oExaMw3TzwUVfg5TT+wavVYO6/KL
 YDOnVSdMhRysCbhenjcQgY99pC0tYqOvGCajil1IiasMTZTfNjIWow64fmmmNBoYxDTY=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nw2rg-00AdGT-S2
 for v9fs-developer@lists.sourceforge.net; Tue, 31 May 2022 14:29:02 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 9DCC020BE49E;
 Tue, 31 May 2022 07:28:47 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9DCC020BE49E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1654007328;
 bh=ryNbELSrN1UgeAm1L5RK1KAe6rt4cp/z+pMhBtO69Bc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IT38DGMfxOc0gs/w6HpQF+GUYMrKwnWz1ZY0U2y8afLHLGsV08aw/xB5pnutYT0VW
 lkDCSUIL1xZzUOC8Jv4kuloC2otZyj2qSHj5E940cbnsVbCkOYn7bMREOm5cmF4V94
 mizwZNF8eBBqob3iQ/nYyvV1bSIoU4wyr2lW2lUs=
Date: Tue, 31 May 2022 09:28:29 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <20220531142829.GA6868@sequoia>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <20220527000003.355812-2-tyhicks@linux.microsoft.com>
 <43525959.9j6oIFhYhY@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43525959.9j6oIFhYhY@silver>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-05-30 19:14:43, Christian Schoenebeck wrote: > On
 Freitag,
 27. Mai 2022 01:59:59 CEST Tyler Hicks wrote: > > Decrement the refcount
 of the parent dentry's fid after walking > > each path compo [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nw2rg-00AdGT-S2
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-05-30 19:14:43, Christian Schoenebeck wrote:
> On Freitag, 27. Mai 2022 01:59:59 CEST Tyler Hicks wrote:
> > Decrement the refcount of the parent dentry's fid after walking
> > each path component during a full path walk for a lookup. Failure to do
> > so can lead to fids that are not clunked until the filesystem is
> > unmounted, as indicated by this warning:
> > 
> >  9pnet: found fid 3 not clunked
> 
> That explains why I saw so many fids not being clunked with recent Linux 
> kernel versions while doing some 9p protocol debugging with QEMU recently.

In addition to this refcounting bug, there's another one that I noticed
while running fstests. My series does not fix it and I haven't had a
chance to look into it more. The generic/531 test triggers it.

 https://git.kernel.org/pub/scm/fs/xfs/xfstests-dev.git/tree/tests/generic/531

> 
> > The improper refcounting after walking resulted in open(2) returning
> > -EIO on any directories underneath the mount point when using the virtio
> > transport. When using the fd transport, there's no apparent issue until
> > the filesytem is unmounted and the warning above is emitted to the logs.
> 
> Actually I never saw that open() = -EIO error. Do you have a reproducer?

The reproducer that I have is binary only (fairly large and runs a bunch
of different tests) and is used to regression test the Windows Subsystem
for Linux 2 (WSL2) host <-> guest filesystem sharing. Now that I think
about it, I'm not sure if the open() = -EIO error happens with other 9p
servers.

I can try to tease out the exact sequence of filesystem operations from
this test binary but it might take me a bit. It looks like it has to do
with switching UIDs, which could make sense because different users may
not be connected to the filesystem yet (the conditional block that does
p9_client_attach() and v9fs_fid_add()).

> 
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
> > @@ -152,7 +152,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> > dentry *dentry, const unsigned char **wnames, *uname;
> >  	int i, n, l, clone, access;
> >  	struct v9fs_session_info *v9ses;
> > -	struct p9_fid *fid, *old_fid = NULL;
> > +	struct p9_fid *fid, *old_fid;
> > 
> >  	v9ses = v9fs_dentry2v9ses(dentry);
> >  	access = v9ses->flags & V9FS_ACCESS_MASK;
> > @@ -194,13 +194,12 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> > dentry *dentry, if (IS_ERR(fid))
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
> 
> Hmm, wouldn't it then be possible that the root fid is returned with refcount 
> being 2 here?

Yes and I think that's correct. One refcount taken for adding the root
fid to the root dentry and another refcount taken for the original
purpose of the lookup.

Reverting this portion of the change and re-testing with the reproducer
triggers a refcount underflow.

> 
> >  	/*
> >  	 * Do a multipath walk with attached root.
> >  	 * When walking parent we need to make sure we
> > @@ -212,6 +211,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> > dentry *dentry, fid = ERR_PTR(n);
> >  		goto err_out;
> >  	}
> > +	old_fid = fid;
> >  	clone = 1;
> >  	i = 0;
> >  	while (i < n) {
> > @@ -221,15 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> > dentry *dentry, * walk to ensure none of the patch component change
> >  		 */
> >  		fid = p9_client_walk(fid, l, &wnames[i], clone);
> > +		p9_client_clunk(old_fid);
> >  		if (IS_ERR(fid)) {
> > -			if (old_fid) {
> > -				/*
> > -				 * If we fail, clunk fid which are 
> mapping
> > -				 * to path component and not the last 
> component
> > -				 * of the path.
> > -				 */
> > -				p9_client_clunk(old_fid);
> > -			}
> >  			kfree(wnames);
> >  			goto err_out;
> >  		}
> 
> So this is the actual fix mentioned in the commit log. Makes sense.

I think the refcount_inc() change for the root fid is an important and
required part of the fix.

> Nitpicking: Wouldn't it be a bit cleaner to set old_fid solely within the 
> while loop and just before overwriting fid? And as we now have bumped to
> -std=C11, probably making old_fid a local variable within loop scope only?

You're right that it would be cleaner for the purposes of this single
patch. In a followup patch in this series, I start tracking the root fid
with a root_fid variable and that requires "old_fid = root_fid" before
we enter the loop and then "old_fid = fid" inside of the loop.

Tyler

> 
> Best regards,
> Christian Schoenebeck
> 
> 
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
