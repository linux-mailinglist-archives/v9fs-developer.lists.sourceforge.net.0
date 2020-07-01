Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A6F2109E0
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 Jul 2020 13:00:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jqaTC-0006uZ-Jw; Wed, 01 Jul 2020 11:00:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jqaTB-0006uD-16
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Jul 2020 11:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nCr1ZEwgcWbols4NNzw9WfqYKyFsPeuwSwekCCLUt7Y=; b=MKzCuaG8AhVFgd+5cujwyTaSF+
 HF+XFS/e5sQwb7K76m1RKHzQPu3ohnarL+Xh1he+aUnEsesS+c2askPP5MqOrR2RVUKaO2vU/umrN
 J9dnMTvDNcgmIJmV8DgfB2Kv4Sl7fEAZqEclYJF9B4j/PdHmGzVmwoYlMeU7w9apBEL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nCr1ZEwgcWbols4NNzw9WfqYKyFsPeuwSwekCCLUt7Y=; b=FxjCNroixiVt7Pe0mBsTIj4RcT
 XVwvMhG5L9HMzX5wssOIT4ma4X3lSyxzoUaDa1h+UBByNuw9JciRsSNnvt+gZdTX+ROk1GC1aI0P0
 0QFyq2aIG7NUPAInoJloyLCRQ4uCiEhwfZjwm8j2fmd0EdWqYrMytyatbNZT1y7ZsfKU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jqaT9-008ZQr-0M
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Jul 2020 11:00:00 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id BCAA5C021; Wed,  1 Jul 2020 12:59:42 +0200 (CEST)
Date: Wed, 1 Jul 2020 12:59:27 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200701105927.GA20762@nautica>
References: <20200701023821.5387-1-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701023821.5387-1-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jqaT9-008ZQr-0M
Subject: Re: [V9fs-developer] [PATCH v2] 9p: retrieve fid from file when
 file instance exist.
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
Cc: lucho@ionkov.net, justin.he@arm.com, wei.chen@arm.com, Steve.Capper@arm.com,
 ericvh@gmail.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Wed, Jul 01, 2020:
> In the current setattr implementation in 9p, fid is always retrieved
> from dentry no matter file instance exists or not. There may be
> some info related to opened file instance dropped. so it's better
> to retrieve fid from file instance if file instance is passed to setattr.
> 
> for example:
> fd=open("tmp", O_RDWR);
> ftruncate(fd, 10);
> 
> The file context related with fd will be lost as fid is always
> retrieved from dentry, then the backend can't get the info of
> file context. It is against the original intention of user and
> may lead to bug.

Thanks for the commit message - still feels a bit odd but at least
correct enough for me :)

> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  fs/9p/vfs_inode.c      | 6 +++++-
>  fs/9p/vfs_inode_dotl.c | 6 +++++-
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index c9255d399917..b33574d347fa 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -1100,7 +1100,11 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
>  
>  	retval = -EPERM;
>  	v9ses = v9fs_dentry2v9ses(dentry);
> -	fid = v9fs_fid_lookup(dentry);
> +	if (iattr->ia_valid & ATTR_FILE) {
> +		fid = iattr->ia_file->private_data;
> +		WARN_ON(!fid);

That would crash in 9p_client_wstat a few lines below with the current
else ; so I'm not sure WARN_ON is appropriate with this code.

the snippet I had suggested had v9fs_fid_lookup in a different if, not
as a else statement to avoid this crash (and then warning is OK)

> +	} else
> +		fid = v9fs_fid_lookup(dentry);

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
