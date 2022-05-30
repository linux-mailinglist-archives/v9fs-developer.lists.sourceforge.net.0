Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F455386A6
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 May 2022 19:15:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nviyv-0000eA-6j; Mon, 30 May 2022 17:15:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nviyt-0000e3-Hp
 for v9fs-developer@lists.sourceforge.net; Mon, 30 May 2022 17:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jMYehlB9aLUgQ1tstMwnwZ61QG62rksDqgFFcnCVQnw=; b=LH1kZt9ZLnoUW3eS+MrHP8O9N4
 Th+uFZD/AUG6TRzto/68USB+qLdsPuwwjDAzO8NLsygeYgYidv6dJcl7S8ip7Hwog1I+CMiykdXjC
 5Gm/70/0A+IniNuj9Xc/zMkB80cHKpq+ZDCWDMHJhTq5rvim9SjPvjL028P3ha4AqkRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jMYehlB9aLUgQ1tstMwnwZ61QG62rksDqgFFcnCVQnw=; b=CoiVYJ2qmWP3Vr7kkap2I2Uf1A
 qbx2XpucWcPdmc30bh/lQ+Po9uMvurNGG8UMfWbm9+XLYxegEUHK4fuH0HQiXifNykfqhUOY8w1G1
 ofo/UKkm3ne8miVUW7SOKfL8nuv5msR4J1vi4EKhbsYctfiZSs1SQumtnsrRYl7+lVUw=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nviym-0040ZJ-Ay
 for v9fs-developer@lists.sourceforge.net; Mon, 30 May 2022 17:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=jMYehlB9aLUgQ1tstMwnwZ61QG62rksDqgFFcnCVQnw=; b=SxpdlH8dBDao2azwBPGR9+mrEN
 En4n+oBmoxWawuMZDsQr+06EOwQkYJffGfhbDibikM/ERYN8ckVsJN6vHrE+OaNxR356uQmSTb0+I
 VLB3AqCOCt6YYrBS3SPYsndOA9htD013UdvbbAcuDTm+DOy4LZQyTCovz6tJubDzlQXEul7X5MBa+
 Vb3mFPHwe7pz/5OBl6sSpkLV9rZA7eIWlvfALjP1b0VkUCoFFxBLc/hMDEHR5Aw5dKTOxwSznlT0x
 EiPjleRqEf7w/sRaFmfi3F/Brqpg2MbtsAI/g649Bc24vYqhkXeT5exMQYHJIr5TKc/qlYhpOH4VR
 oVweRXI2fVeuCLEBV6dwmT5/71nWlz6zxPlMTLk9UJhnw0dZi0kK2GkpHjY36IgYZj3sRD+kIYqd8
 lfNx4MVfYpS57tzcNrxqWPHBfB9OVFniPco3ENau3DfnTI06gMdD1XPsdedmmkrk8woubmwpaW7ey
 FNbOw7KHDQSMfVydSmu4Po3GAIjwptYKKSqX8c6Ix/Tfrx9fbtad94ggoCrpna0zTtDLgG6W2ykqD
 VbpfjokQ4yLm8w+AdaIWxQfpV1t5ij8xmLfFtuN2FSz+E/Vj75o8dy03x8FFIJL4ctpWbpIv7c+KO
 Ma6/dsUBmXi5glfzHffEi7vpWX7qHM6SElNFJdZhQ=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Tyler Hicks <tyhicks@linux.microsoft.com>
Date: Mon, 30 May 2022 19:14:43 +0200
Message-ID: <43525959.9j6oIFhYhY@silver>
In-Reply-To: <20220527000003.355812-2-tyhicks@linux.microsoft.com>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <20220527000003.355812-2-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 27. Mai 2022 01:59:59 CEST Tyler Hicks wrote:
 > Decrement the refcount of the parent dentry's fid after walking > each path
 component during a full path walk for a lookup. Failure to do > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nviym-0040ZJ-Ay
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net, Jianyong Wu <jianyong.wu@arm.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 27. Mai 2022 01:59:59 CEST Tyler Hicks wrote:
> Decrement the refcount of the parent dentry's fid after walking
> each path component during a full path walk for a lookup. Failure to do
> so can lead to fids that are not clunked until the filesystem is
> unmounted, as indicated by this warning:
> 
>  9pnet: found fid 3 not clunked

That explains why I saw so many fids not being clunked with recent Linux 
kernel versions while doing some 9p protocol debugging with QEMU recently.

> The improper refcounting after walking resulted in open(2) returning
> -EIO on any directories underneath the mount point when using the virtio
> transport. When using the fd transport, there's no apparent issue until
> the filesytem is unmounted and the warning above is emitted to the logs.

Actually I never saw that open() = -EIO error. Do you have a reproducer?

> In some cases, the user may not yet be attached to the filesystem and a
> new root fid, associated with the user, is created and attached to the
> root dentry before the full path walk is performed. Increment the new
> root fid's refcount to two in that situation so that it can be safely
> decremented to one after it is used for the walk operation. The new fid
> will still be attached to the root dentry when
> v9fs_fid_lookup_with_uid() returns so a final refcount of one is
> correct/expected.
> 
> Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> Cc: stable@vger.kernel.org
> Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
> ---
>  fs/9p/fid.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> index 79df61fe0e59..5a469b79c1ee 100644
> --- a/fs/9p/fid.c
> +++ b/fs/9p/fid.c
> @@ -152,7 +152,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> dentry *dentry, const unsigned char **wnames, *uname;
>  	int i, n, l, clone, access;
>  	struct v9fs_session_info *v9ses;
> -	struct p9_fid *fid, *old_fid = NULL;
> +	struct p9_fid *fid, *old_fid;
> 
>  	v9ses = v9fs_dentry2v9ses(dentry);
>  	access = v9ses->flags & V9FS_ACCESS_MASK;
> @@ -194,13 +194,12 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> dentry *dentry, if (IS_ERR(fid))
>  			return fid;
> 
> +		refcount_inc(&fid->count);
>  		v9fs_fid_add(dentry->d_sb->s_root, fid);
>  	}
>  	/* If we are root ourself just return that */
> -	if (dentry->d_sb->s_root == dentry) {
> -		refcount_inc(&fid->count);
> +	if (dentry->d_sb->s_root == dentry)
>  		return fid;
> -	}

Hmm, wouldn't it then be possible that the root fid is returned with refcount 
being 2 here?

>  	/*
>  	 * Do a multipath walk with attached root.
>  	 * When walking parent we need to make sure we
> @@ -212,6 +211,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> dentry *dentry, fid = ERR_PTR(n);
>  		goto err_out;
>  	}
> +	old_fid = fid;
>  	clone = 1;
>  	i = 0;
>  	while (i < n) {
> @@ -221,15 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> dentry *dentry, * walk to ensure none of the patch component change
>  		 */
>  		fid = p9_client_walk(fid, l, &wnames[i], clone);
> +		p9_client_clunk(old_fid);
>  		if (IS_ERR(fid)) {
> -			if (old_fid) {
> -				/*
> -				 * If we fail, clunk fid which are 
mapping
> -				 * to path component and not the last 
component
> -				 * of the path.
> -				 */
> -				p9_client_clunk(old_fid);
> -			}
>  			kfree(wnames);
>  			goto err_out;
>  		}

So this is the actual fix mentioned in the commit log. Makes sense.

Nitpicking: Wouldn't it be a bit cleaner to set old_fid solely within the 
while loop and just before overwriting fid? And as we now have bumped to
-std=C11, probably making old_fid a local variable within loop scope only?

Best regards,
Christian Schoenebeck





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
