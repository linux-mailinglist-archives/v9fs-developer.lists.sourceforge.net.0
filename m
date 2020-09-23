Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6422B275AB1
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Sep 2020 16:50:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kL66H-0004Q5-Io; Wed, 23 Sep 2020 14:50:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kL66F-0004PR-Hh
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u1uamCm+OaHHKxQfr8/vIkD3/m/9aDaSEJM85FTZ18Q=; b=OTSpp+/C7s7eD3UhojBrN1k4ru
 xv04S/B5L929WXLCklTRVRPewMJjvPuv4YzFNs4q/DKAPoB0GzJC0SNSFADH6/kCmnUI4PCFRd9ak
 kBNPt/CnG2PM/oQj+taD2IB70Mt63eQMzwJwFLyjpM6NaXSnEOTar4KvU6h1aygsE1Rw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u1uamCm+OaHHKxQfr8/vIkD3/m/9aDaSEJM85FTZ18Q=; b=K+lp3SRNjPjUs9J25TkzsIf2vE
 oCxXc94M89zcxqtuDDfZj+KoPkPoMpb5K7uUcEIqPlO75J1C8b0UeGlpVqgYqnAtvV2ZdOL5YxdoF
 JCKZHDBx7/39546xIHfCPdFKHmxMi46Q8b/Lb8XkDV6GjPGx+H+wh3sKibs8bRxqn0zM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kL667-004iH1-K6
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:50:27 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 3A6C2C009; Wed, 23 Sep 2020 16:50:08 +0200 (CEST)
Date: Wed, 23 Sep 2020 16:49:53 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200923144953.GA1685@nautica>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
 <20200923141146.90046-5-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923141146.90046-5-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kL667-004iH1-K6
Subject: Re: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
 contention.
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 qemu_oss@crudebyte.com, groug@kaod.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Overall looks good; a few comments.

Jianyong Wu wrote on Wed, Sep 23, 2020:
> open-unlink-f*syscall test:
> I have tested for f*syscall include: ftruncate fstat fchown fchmod faccessat.

Given the other thread, what did you test this with?
Since qemu doesn't work apparently do you have a in-house server at arm
I could test?
(I'll try with ganesha otherwise, it keeps files open so it should work
I think...)

> +	atomic_set(&fid->count, 1);

I kind of like the refcount API becauese it has some extra overflow
checks; but it requires a bit more work around clunk (instead of bailing
out early if counter hits 0, you need to have it call a separate
function in case it does)

That's mostly esthetics though I'm not going to fuss over that.

> @@ -74,6 +77,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
>  void v9fs_open_fid_add(struct inode *inode, struct p9_fid *fid)
>  {
>  	spin_lock(&inode->i_lock);
> +	atomic_set(&fid->count, 1);

Hm, that should be done at fid creation time in net/9p/client.c
p9_fid_create ; no ?
(you do it there already, I don't see what reseting count here brings
except confusion)

> diff --git a/fs/9p/fid.h b/fs/9p/fid.h
> index dfa11df02818..1fed96546728 100644
> --- a/fs/9p/fid.h
> +++ b/fs/9p/fid.h
> @@ -22,6 +22,14 @@ static inline struct p9_fid *clone_fid(struct p9_fid *fid)
>  }
>  static inline struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
>  {
> -	return clone_fid(v9fs_fid_lookup(dentry));
> +	struct p9_fid *fid, *nfid;
> +
> +	fid = v9fs_fid_lookup(dentry);
> +	if (!fid || IS_ERR(fid))
> +		return fid;
> +
> +	nfid = p9_client_walk(fid, 0, NULL, 1);

I think you clone_fid() here is slightly easier to understand; everyone
doesn't know that a walk with no component is a clone.
The compiler will optimize that IS_ERR(fid) is checked twice, it's fine.

> diff --git a/include/net/9p/client.h b/include/net/9p/client.h
> index ce7882da8e86..58ed9bd306bd 100644
> --- a/include/net/9p/client.h
> +++ b/include/net/9p/client.h
> @@ -140,10 +140,16 @@ struct p9_client {
>   *
>   * TODO: This needs lots of explanation.
>   */
> +enum fid_source {
> +	FID_FROM_OTHER,
> +	FID_FROM_INODE,
> +	FID_FROM_DENTRY,
> +};

leftovers from previous iteration.


Overall looks good to me.
I'd need to spend some time checking the actual counting part &
hammering the fs a bit then confirming no fid got forgotten (there's a
pr_info at umount time) but I'm happy with this ; thanks!

-- 
Dominique






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
