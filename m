Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A9369B8C6
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:38:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTIk1-0008TY-39;
	Sat, 18 Feb 2023 08:38:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTIjv-0008TM-Cr
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6nGYl4ejl2yh1QxdThtP9LlS0BqHmw+97k9eUDdQAZw=; b=fzDcTIpxSz9AKgRxVdr0h20JZn
 JwA+HQPdLMB6aK6vAQ2ePF/r8Lje4z7nDw4K+64I2aoVviAz1lN0hrAI0eHq6pl0daN026bZ0nynK
 4PBqkIHs5nknpAUeoxoN5yQPEAJT0mc85E9IB/Gn0AgNi5veDFlOXMq5HkzlZ/sD23Sg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6nGYl4ejl2yh1QxdThtP9LlS0BqHmw+97k9eUDdQAZw=; b=fZ5kvuo1roRXsTD1sRSSoZPFqE
 vckgjAR8w39yeFHsq80hY9I8+D1DdeRvfZQ4PBuU/2ZB5TwFaoiXg1Rodpxo5yrSgw8TEBpKGBjjl
 VZRvNBer1mMMgEJId86GqG4ftadok0wfor3W3g8fjApCo5vFbWBUX0ewCEf3ZNhQO4xY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTIjo-0001ni-PC for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:38:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id EA919C01E; Sat, 18 Feb 2023 09:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676709530; bh=6nGYl4ejl2yh1QxdThtP9LlS0BqHmw+97k9eUDdQAZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pdayO/1Xe8UnM8r50Ub20p9qAOkKq6VRfMWXq4lBYExTfbspcjOba+AwtwrlLog7w
 XL8a/Cio3XFgyk5ULxXlAmhQi7JqXb3L9kP/c6o9e6WLe3NHikDG6x5BobbCYUTSwY
 3lY3HG9mzzdX9mtl/JI+VDk3NCefHbNJdYAtwB6OF3t3XEl0H/bLNQep78SXDXjxmt
 naD2G006/lHlELC3XKMsyTJA2h7GitDSpmtgVlVdNE0G5d9/L4PUXXjimeEQLWkh/a
 xkvfswlFZHFFqWGUsI4HHSW8UTxPG50IUnUAWu+ArAtq4Z0iwsgDVYIjxbkPGiTvVr
 Y9R45slUlZKTg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7251FC009;
 Sat, 18 Feb 2023 09:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676709529; bh=6nGYl4ejl2yh1QxdThtP9LlS0BqHmw+97k9eUDdQAZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dCXyXZ5HJplA4zxCLnbvG+69kgYc+r1fvx0ob7kNc+oeizj3bYMCk6yvb4xlBAj8l
 BrLaETACkLt1iaFCCToVS99jS7dxr+abePVGxIxJSvaZnlAaCrWvoqkc+9mkxgEX8n
 RPz1Nf0OcdFHmO0ItdHDT2xNOSF9CHWgM50ogjq2jIUwDABemUKTsHpsdO4XQWTMtJ
 /QG3ld/BdNGIoETiygulWZ5eFWext6QyawMQHHOCZOYt91zmnvNkvSx3TEcvkf2w34
 zVyDuq4LwU7jQUR44Ox3t0GJXvNPxy1BUwmHYzzNxVQqICeFxALVuCDoYO0vT052LS
 3gpmU4+EEkylA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id eab71d22;
 Sat, 18 Feb 2023 08:38:21 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:38:06 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CObgqBJT/xq3LU@codewreck.org>
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
 Content preview:  (not reviewed this yet, just a kerneldoc warning first before
 I forget) Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM +0000:
 > diff --git a/fs/9p/fid.c b/fs/9p/fid.c > index 805151114e96..8c1697619f3d
 100644 > --- a/fs/9p/fid.c > +++ b/fs/9p/fid.c > @@ -41, [...] 
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
X-Headers-End: 1pTIjo-0001ni-PC
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

(not reviewed this yet, just a kerneldoc warning first before I forget)

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM +0000:
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
> +		return true;
> +	else
> +		return false;
> +}
> +
>  /**
>   * v9fs_fid_find_inode - search for an open fid off of the inode list
>   * @inode: return a fid pointing to a specific inode
> + * @writeable: only consider fids which are writeable

`make M=fs/9p W=1` complains about doc discreptancy here,
writeable vs. want_writeable.

These are a pain, but let's make sure new ones don't creep in...
(I just wish we could make W=1 the default for part of the subtree, but
I didn't find an easy way to do so last time I checked -- perhaps you'll
have more luck if you have time to look)

>   * @uid: return a fid belonging to the specified user
> + * @any: ignore uid as a selection criteria
>   *
>   */
> -
> -static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
> +struct p9_fid *v9fs_fid_find_inode(struct inode *inode, bool want_writeable,
> +	kuid_t uid, bool any)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
