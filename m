Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 832E9549E98
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 22:09:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0qMr-0000iZ-W2; Mon, 13 Jun 2022 20:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1o0qMq-0000iQ-31
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 20:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XospWdGbHYHg5WXVT5fW8u5lsaucq+kL7Wo1CwwcVMw=; b=V8+rcLcjPWXzEllhwSjpr3q7Dw
 mNVjQgInqD4TjAj8Gi1hU4cjw1hQa/r1b5ioaHvCN4wMPoawV2FpXkJvkdO1cAgK2Nu8MdRhudrfK
 n13y+96V6zhpnHlUoroD76HVJxLEeLskNm4tyhzbB6/UmofX8XGmm6+Pd49jqcRlqQ00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XospWdGbHYHg5WXVT5fW8u5lsaucq+kL7Wo1CwwcVMw=; b=KDtjm42TOSccCN2/y1U5JvOpE5
 oqRs5Uz6+Usz0ftg0Ovfp3gaRRWlhtORn9O6fvPnRsVhC+BWBST2EKMwz9q+VVbxozEWPTb6Yl0qb
 GbIgee9qvo1GUeC2wz4ML3a6Gn+dMGJColNTtDGh1FDnt+GPzrAu0/hFj6O8Jh9VyXAA=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o0qMm-000W7p-2b
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 20:08:56 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id DE7A420C28A2;
 Mon, 13 Jun 2022 13:08:38 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com DE7A420C28A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1655150919;
 bh=XospWdGbHYHg5WXVT5fW8u5lsaucq+kL7Wo1CwwcVMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K6PkvaAdtO/qtQk2lCF6H4LffXHfpy01yoDfJ3XFk9dTVjHUbln+RI66pxu0CosF7
 Q8OaT0IoJFrT2MkxRrHqfAeGevs2soCKvYe1LhLECpoz8JXerJFy2REeTn3Ui3RiMj
 K25Ej+7BMg8LWiVNVjMAXzRMox41n3TAburGA2i8=
Date: Mon, 13 Jun 2022 15:08:35 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220613200835.GG7401@sequoia>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-4-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220612085330.1451496-4-asmadeus@codewreck.org>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-12 17:53:26, Dominique Martinet wrote: > Tyler,
 I can just squash this in your commit if you're ok with this, > as I've already
 rebased the other patches on top of it. Yes, that is fine. I've also tested
 this with my (binary-only) reproducer and it works as expected. 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0qMm-000W7p-2b
Subject: Re: [V9fs-developer] [PATCH 03/06] 9p: v9fs_fid_lookup_with_uid
 fix's fix suggestion
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-12 17:53:26, Dominique Martinet wrote:
> Tyler, I can just squash this in your commit if you're ok with this,
> as I've already rebased the other patches on top of it.

Yes, that is fine. I've also tested this with my (binary-only)
reproducer and it works as expected.

Thanks!

Tyler

> 
> Cc: Tyler Hicks <tyhicks@linux.microsoft.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
>  fs/9p/fid.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> index 5a469b79c1ee..baf2b152229e 100644
> --- a/fs/9p/fid.c
> +++ b/fs/9p/fid.c
> @@ -221,12 +221,15 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
>  		 * walk to ensure none of the patch component change
>  		 */
>  		fid = p9_client_walk(fid, l, &wnames[i], clone);
> -		p9_client_clunk(old_fid);
> +		/* non-cloning walk will return the same fid */
> +		if (fid != old_fid) {
> +			p9_client_clunk(old_fid);
> +			old_fid = fid;
> +		}
>  		if (IS_ERR(fid)) {
>  			kfree(wnames);
>  			goto err_out;
>  		}
> -		old_fid = fid;
>  		i += l;
>  		clone = 0;
>  	}
> -- 
> 2.35.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
