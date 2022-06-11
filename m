Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B07B5477E7
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 01:18:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0AMn-00048U-QN; Sat, 11 Jun 2022 23:18:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0AMm-00048K-7J
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 23:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=51Zpk5kYQNoaNHj5xDV/BEXLNsTdPQOa3HXVja3g0+0=; b=YAgUGHsD9i8oRXB8pbHb8tIFlw
 71yTzX+W4XHIKedypWByVjfziJhl7maV4IMtbgg0VRIuow28rs6XO3CV8XByBSz4gZQzg8A+bhlsh
 V+kOnnILYQ7g2LohqlCrKJPHUlK4BnbBuZjE4kM52jeYxWoqL2pcvzV1eHOGUw4fCl7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=51Zpk5kYQNoaNHj5xDV/BEXLNsTdPQOa3HXVja3g0+0=; b=N2yrMvITgotvswO4Rg/7LMBv6S
 LGZj6pH7Zwk9L3NPnkuqJr7T3uunDH0wyDIlBGRCr9KAFa5VUOKyH7YInZXv9AhGeDiVThRB45huG
 uqU9aGAQH2MYMqLICUwpbJZaq6pTSWCYIcKkAvOKCsdAgLQBKEhxBRSer33BomZf4Mes=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0AMh-00FMMk-JH
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 23:18:02 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 3B7FEC01A; Sun, 12 Jun 2022 01:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654989467; bh=51Zpk5kYQNoaNHj5xDV/BEXLNsTdPQOa3HXVja3g0+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jWyofHwQlo8cL8dbA9bTn32giRvkZIpzd4d3CW+1cW3rtUjvs98FrCJEkue6nYmmp
 XfsTgO/GMWuF5eA29wEJZ3TBrKVtRfK1yn/OghLTBPwSBUoTgkEhqwvYkLNsXfnJmK
 o4HjhEVgYBEGLf1N0nnc9JieNMrFy+1Q+HMKgFlG3k/MFRCLuKz2nuP2YmNRfdVUoL
 GGeNwPmxatYojJduf7Y2INOrFwA3VMgYd6NHRDkq8bHHL7gVURHcJZs8r5FEdVcdMO
 SWwfh9IW2FoWtNhgyATPF9Kz216ZmAob1XWYnB7ceOen5ivw+HLT7Y7/jEmnvoTt8m
 iNxu5GdkjwZkg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4ED0AC009;
 Sun, 12 Jun 2022 01:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654989457; bh=51Zpk5kYQNoaNHj5xDV/BEXLNsTdPQOa3HXVja3g0+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y5rF06hnrV/kr2HQYwaXZTuO/OaUIXfl7S5AcXhEJF0gGIMGpP4SUl10YGzBZvsL8
 pQ2GjYw0+8VESlpEHZR1bRITOjwSsc7P2Ilej7UaC42Bcbu3HokPhORJAQzZoYDgS2
 VeXel+euGfr46iLT10K8gF/UcuYHdaOWwFD213qbDAEwIoM0JR8N01+A2GREg7TpEr
 A9fgi+YIVluV/Wx8V3Av+HsNAJJH+eMzZ+DhOT4HiNx3NyJBVoMHza0Srv/uvaNjKH
 mhTytVGj1dDPwDYAS6fxAMislhVBvtiIUiv1bTLiVZfNNV5BnJlRDJGSC+VqLWBX7r
 m60WvEx8N1ffw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 71a9de38;
 Sat, 11 Jun 2022 23:17:31 +0000 (UTC)
Date: Sun, 12 Jun 2022 08:17:16 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tyler Hicks <tyhicks@linux.microsoft.com>
Message-ID: <YqUifCFPTG8Qmn7a@codewreck.org>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <20220527000003.355812-2-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220527000003.355812-2-tyhicks@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tyler Hicks wrote on Thu, May 26, 2022 at 06:59:59PM -0500:
 > Decrement the refcount of the parent dentry's fid after walking > each
 path component during a full path walk for a lookup. Failure to do [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o0AMh-00FMMk-JH
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

Tyler Hicks wrote on Thu, May 26, 2022 at 06:59:59PM -0500:
> Decrement the refcount of the parent dentry's fid after walking
> each path component during a full path walk for a lookup. Failure to do
> so can lead to fids that are not clunked until the filesystem is
> unmounted, as indicated by this warning:
> 
>  9pnet: found fid 3 not clunked
> 
> The improper refcounting after walking resulted in open(2) returning
> -EIO on any directories underneath the mount point when using the virtio
> transport. When using the fd transport, there's no apparent issue until
> the filesytem is unmounted and the warning above is emitted to the logs.
> 
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
> @@ -152,7 +152,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
>  	const unsigned char **wnames, *uname;
>  	int i, n, l, clone, access;
>  	struct v9fs_session_info *v9ses;
> -	struct p9_fid *fid, *old_fid = NULL;
> +	struct p9_fid *fid, *old_fid;
>  
>  	v9ses = v9fs_dentry2v9ses(dentry);
>  	access = v9ses->flags & V9FS_ACCESS_MASK;
> @@ -194,13 +194,12 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
>  		if (IS_ERR(fid))
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
>  	/*
>  	 * Do a multipath walk with attached root.
>  	 * When walking parent we need to make sure we
> @@ -212,6 +211,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
>  		fid = ERR_PTR(n);
>  		goto err_out;
>  	}
> +	old_fid = fid;
>  	clone = 1;
>  	i = 0;
>  	while (i < n) {
> @@ -221,15 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
>  		 * walk to ensure none of the patch component change
>  		 */
>  		fid = p9_client_walk(fid, l, &wnames[i], clone);
> +		p9_client_clunk(old_fid);

hmm, if we're not cloning then fid == old_fid and the refcount is not
increased? (I think... I didn't even realize/remember that walk had a
no-clone mode, sorry.)

So we'd only need to clunk if old fid here if we're cloning (old fid is
the initial root fid), but I'm not sure how to test this path as I
couldn't think of any pattern that'd trigger a multi-level lookup,
so I'm not 100% sure; I'll try a bit more.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
