Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E70293EB5CD
	for <lists+v9fs-developer@lfdr.de>; Fri, 13 Aug 2021 14:53:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mEWh9-0001xk-Uv; Fri, 13 Aug 2021 12:53:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mEWh8-0001xe-Bj
 for v9fs-developer@lists.sourceforge.net; Fri, 13 Aug 2021 12:53:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8+PG4W8WZmsnChB+Lj1WgLbRPUhHAiH0W+xV4qyVOvM=; b=QpqWqfX0yh5TpGoNP1NoJy/wmL
 IaeQ4rPJwK6n0kyFV4DvCHwSS7eLYjYRwJlw/0qRe1TxrQRs2hthPd3Oe0toyg64hF4I6mu8showO
 vOVgNDmZWqS9XQGm95vT7Xywm2kDGVwgdGFMpYN3JJe4VUWjgp+iVh8qQgtf2vEajv5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8+PG4W8WZmsnChB+Lj1WgLbRPUhHAiH0W+xV4qyVOvM=; b=KjUaqTXCJl4GRmk51KoWNVGUXO
 VBb9g2JmpSbnjBvR9Xg6gTez3FeJrpMNkJRSyd678n42C3Ksmpc3DuABRQWmKeP7ukVdgNZmD6FXD
 +8LpfwJQQTrc0ARe27e2oNArq8hP0xPVYPuChpIJUg3VXKoKw/K5KrOGveaennY32x/A=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mEWh5-0002at-1l
 for v9fs-developer@lists.sourceforge.net; Fri, 13 Aug 2021 12:53:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 210C560F91;
 Fri, 13 Aug 2021 12:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628859223;
 bh=xpS807ZsmUqY4wbbSw6MbqCagTEFVPHlwkp24KlCBRw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=L4OKBlfk2A+1+BR3+zqIganxq6pQ7QNQEY+R8SyOMmwSQOciazevmv1RnQDKHCZTZ
 IODAYTRzF0UxGu6wAbhD0TvzN8IWvSh/Y2Mwczfu85PxU1qn2vMPwEG3pLrCdfhEqk
 CfHaIp15QLs20Gt4BFGXqhfRw6SArSp+EmjBj1FkvMjodFVxmS7ZQ5exbtt591JNc5
 Su1hnJ97Dx+LYUOarYiH4ocoKxLxBVD/T4x7mdeBd8gX4ZmSp340dDk0PcChyd6LPG
 JvFuDfvJrq8c+DxYXmE83b4xf/3D9H7MroKFkp793q8lfyqc7cX0Q5wD8MeLPNAaW4
 2j7Idwp4gNBEQ==
Message-ID: <a786d17996459d1ed5530d7f193013c04d183e8c.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Fri, 13 Aug 2021 08:53:41 -0400
In-Reply-To: <162729351325.813557.9242842205308443901.stgit@warthog.procyon.org.uk>
References: <162729351325.813557.9242842205308443901.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kvack.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mEWh5-0002at-1l
Subject: Re: [V9fs-developer] [PATCH] netfs: Fix READ/WRITE confusion when
 calling iov_iter_xarray()
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-07-26 at 10:58 +0100, David Howells wrote:
> Fix netfs_clear_unread() to pass READ to iov_iter_xarray() instead of WRITE
> (the flag is about the operation accessing the buffer, not what sort of
> access it is doing to the buffer).
> 
> Fixes: 3d3c95046742 ("netfs: Provide readahead and readpage netfs helpers")
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Jeff Layton <jlayton@kernel.org>
> cc: linux-cachefs@redhat.com
> cc: linux-afs@lists.infradead.org
> cc: ceph-devel@vger.kernel.org
> cc: linux-cifs@vger.kernel.org
> cc: linux-nfs@vger.kernel.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: linux-fsdevel@vger.kernel.org
> cc: linux-mm@kvack.org
> ---
> 
>  fs/netfs/read_helper.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 0b6cd3b8734c..994ec22d4040 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -150,7 +150,7 @@ static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
>  {
>  	struct iov_iter iter;
>  
> -	iov_iter_xarray(&iter, WRITE, &subreq->rreq->mapping->i_pages,
> +	iov_iter_xarray(&iter, READ, &subreq->rreq->mapping->i_pages,
>  			subreq->start + subreq->transferred,
>  			subreq->len   - subreq->transferred);
>  	iov_iter_zero(iov_iter_count(&iter), &iter);
> 
> 

That's better!

Reviewed-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
