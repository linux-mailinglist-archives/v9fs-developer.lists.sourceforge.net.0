Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE854922B
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 18:30:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0mxL-00017P-Pu; Mon, 13 Jun 2022 16:30:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1o0mxD-00016P-Mw
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 16:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VHKLq2BI+ptgotAr2Y/DtZAYZ5G9EvxX5w++UzCKBJg=; b=WGHg79vJy9ZkO+ut9Zzb0N4tui
 MjnqP1ZMIzNM8Re09jcglApdZdxIyDwDtCcAGic9yQxuJQkxyhp80JlnnqkD2oGEZh19O1FGWXqHg
 kvgafm3SofVYvZPA/jcXP6uq3pJyAaSPsWafu6O22cNUnDEnqXRoOMU3ziwSdJZslG/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VHKLq2BI+ptgotAr2Y/DtZAYZ5G9EvxX5w++UzCKBJg=; b=czkC3AIm8gEPAyJl235NcGIpah
 pbp9We2r5V3Pu67i7MRKL7CyUgUpY3V9H8i8jDDZLNi/fiiE7Uje6ZivDFeaueXgqaFjdxi2pN76v
 KwbWO70OI2+PNt2npS1NiPysZEtA/Rp91P7sJtlLyrvKDWDa5W0CFFtcuTIlJqow/Dg8=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o0mx6-000IgS-Js
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 16:30:14 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id C9DB120BE530;
 Mon, 13 Jun 2022 09:29:53 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C9DB120BE530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1655137794;
 bh=VHKLq2BI+ptgotAr2Y/DtZAYZ5G9EvxX5w++UzCKBJg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pzj/hgNUG7ikF8xXWIFd7nKIh7dKYgZQNn8csX0Ya4DJiuWAPqmIMkwCf2pOz9QXC
 ShumvvFjhi9MhqDlX/dLwh85vCqeQkA9nMxUbUFLgfe7oc6hilR6/nNnvKDs1tz9wC
 TD5WFKlQ3xBp950c4hfCgf6kL7bybeDac2yDEbVQ=
Date: Mon, 13 Jun 2022 11:29:50 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220613162950.GC7401@sequoia>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-3-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220612085330.1451496-3-asmadeus@codewreck.org>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-12 17:53:25, Dominique Martinet wrote: > we check
 for protocol version later than required, after a fid has > been obtained.
 Just move the version check earlier. > > Fixes: 6636b6dcc3db ("9 [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1o0mx6-000IgS-Js
Subject: Re: [V9fs-developer] [PATCH 02/06] 9p: fix fid refcount leak in
 v9fs_vfs_get_link
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
 stable@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-12 17:53:25, Dominique Martinet wrote:
> we check for protocol version later than required, after a fid has
> been obtained. Just move the version check earlier.
> 
> Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> Cc: stable@vger.kernel.org

Reviewed-by: Tyler Hicks <tyhicks@linux.microsoft.com>

Tyler

> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
>  fs/9p/vfs_inode.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index 55367ecb9442..18c780ffd4b5 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -1250,15 +1250,15 @@ static const char *v9fs_vfs_get_link(struct dentry *dentry,
>  		return ERR_PTR(-ECHILD);
>  
>  	v9ses = v9fs_dentry2v9ses(dentry);
> -	fid = v9fs_fid_lookup(dentry);
> +	if (!v9fs_proto_dotu(v9ses))
> +		return ERR_PTR(-EBADF);
> +
>  	p9_debug(P9_DEBUG_VFS, "%pd\n", dentry);
> +	fid = v9fs_fid_lookup(dentry);
>  
>  	if (IS_ERR(fid))
>  		return ERR_CAST(fid);
>  
> -	if (!v9fs_proto_dotu(v9ses))
> -		return ERR_PTR(-EBADF);
> -
>  	st = p9_client_stat(fid);
>  	p9_client_clunk(fid);
>  	if (IS_ERR(st))
> -- 
> 2.35.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
