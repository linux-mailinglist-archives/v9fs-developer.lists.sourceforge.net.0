Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7856CA936
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Mar 2023 17:39:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgovz-0003hG-8A;
	Mon, 27 Mar 2023 15:39:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pgovw-0003h8-LJ
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 15:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AaSiFEt747OYX/FlMBHNQmZ4ArJHr1TpFZs9gh0OC08=; b=RjR5jq8jyAfx2q+BqAcX4/7zAA
 MP92r0NhMCU4uP/RXkRTlt6PCqarAjHg+LIE0GgYvp87MmO1dQ6POyRnPC07yRA3gPn3fNYRF1A91
 pxg6WCBBWr8/b/AAmS2+cr986xuje3Mp2G9Ml/FJj0ANF7VTxW/UvONRqk13+LFQTJmg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AaSiFEt747OYX/FlMBHNQmZ4ArJHr1TpFZs9gh0OC08=; b=nDKmLbvhc5UhAgD9FB1X2h90EP
 BqAO0tnnAufdSddDPsczLMdlD8R/Rsn1vSJDb193wuYV2jqshBXeutRnTh3MRIwlTUTa3OH+HsKUD
 rmqa5SXFXUctwuxSLgSAZ7YRBUxxPQ5oXUxy9P6JWMr1U3GMWjFa+kX/KaPwVc7XiPu8=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgovr-005tif-CV for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 15:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=AaSiFEt747OYX/FlMBHNQmZ4ArJHr1TpFZs9gh0OC08=; b=NZrj7Gh0E8z3Gow1jhx8jaJAq0
 yWqunMZSpKSSxCaFrmwpwKXnIqffvoAAwg34dh03mjAXB8ur9zbRC/3Fqbnm5daAuXxFjWRjlInPv
 LEeHYbYDs+DzLJADGizhSlvdoL7jt5aRmldzE9NVnBygIa5iM4D6xXCaqxpOYWeqqqCY8m9LDTde/
 7xITS/L50aks4j3FK5OvbXaM6MwloMLO8PrT/hZdOjX1cK+WdYsCvOOpADuMTx+mmon+ZpDzpqvRc
 GZECmq1eMKoq31xoVioeN2Kp43UJb+naFTReGFnbl5YK2RxoezoeAL9SAISopvb2b80tuWclLSHYC
 mEga8txJ5f71PpRwWoGnfb0KXHeV2MBQ6g28hbFg29pWk3+49ptw7QDI/C16sBWRxmYaz/aRVlK3f
 EJqDwyo8hHPRiwF+Wjo0RUoWTQlm8Hw7cwT0VOABHHY5jD1tNz+XYvXL569fk2nKDBFztBx/ZC6em
 aOMsBbw5Qbotzz6/hPtG9H3WBdQI54SNI1miLdBoIIbGXoVy5gXS2VF9Cs3JVmaArXHx72Y7p/V0K
 7sNMVJfgND1FnnrvhVGCzXy9iGGjJeUssuGcO8PZ+9tO/J/MX7vbci/a0PknQfsyj+PMjM57U0TDf
 izwQSBlWob/Zurw88kQkhTM3msh+R+EnDN6Zat+Ds=;
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Date: Mon, 27 Mar 2023 17:38:41 +0200
Message-ID: <3443961.DhAEVoPbTG@silver>
In-Reply-To: <ZCEIEKC0s/MFReT0@7e9e31583646>
References: <ZCEIEKC0s/MFReT0@7e9e31583646>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, March 27, 2023 5:05:52 AM CEST Eric Van Hensbergen
 wrote: > Need to update the documentation for new mount flags > and cache
 modes. > > Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pgovr-005tif-CV
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Add new options to Documentation
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
Cc: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, March 27, 2023 5:05:52 AM CEST Eric Van Hensbergen wrote:
> Need to update the documentation for new mount flags
> and cache modes.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
> ---
>  Documentation/filesystems/9p.rst | 29 ++++++++++++++++-------------
>  1 file changed, 16 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
> index 0e800b8f73cc..6d257854a02a 100644
> --- a/Documentation/filesystems/9p.rst
> +++ b/Documentation/filesystems/9p.rst
> @@ -78,19 +78,18 @@ Options
>    		offering several exported file systems.
>  
>    cache=mode	specifies a caching policy.  By default, no caches are used.
> -
> -                        none
> -				default no cache policy, metadata and data
> -                                alike are synchronous.
> -			loose
> -				no attempts are made at consistency,
> -                                intended for exclusive, read-only mounts
> -                        fscache
> -				use FS-Cache for a persistent, read-only
> -				cache backend.
> -                        mmap
> -				minimal cache that is only used for read-write
> -                                mmap.  Northing else is cached, like cache=none
> +		Modes are progressive and inclusive.  For example, specifying fscache
> +		will use loose caches, writeback, and readahead.  Due to their
> +		inclusive nature, only one cache mode can be specified per mount.

I would highly recommend to rather specify below for each option "this option
implies writeback, readahead ..." etc., as it is not obvious otherwise which
option would exactly imply what. It is worth those extra few lines IMO to
avoid confusion.

> +
> +			=========	=============================================
> +			none		no cache of file or metadata
> +			readahead	readahead caching of files
> +			writeback	delayed writeback of files
> +			mmap		support mmap operations read/write with cache
> +			loose		meta-data and file cache with no coherency
> +			fscache		use FS-Cache for a persistent cache backend
> +			=========	=============================================
>  
>    debug=n	specifies debug level.  The debug level is a bitmask.
>  
> @@ -137,6 +136,10 @@ Options
>    		This can be used to share devices/named pipes/sockets between
>  		hosts.  This functionality will be expanded in later versions.
>  
> +  directio	bypass page cache on all read/write operations
> +
> +  ignoreqv	ignore qid.version==0 as a marker to ignore cache
> +
>    noxattr	do not offer xattr functions on this mount.
>  
>    access	there are four access modes.
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
