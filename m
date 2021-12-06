Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA3B46952E
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Dec 2021 12:42:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1muCOB-0000aU-Uy; Mon, 06 Dec 2021 11:42:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jefflexu@linux.alibaba.com>) id 1muCOA-0000aO-RI
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Dec 2021 11:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qj6fXkj9hHjb69jvcMKTVtAL+eDTYd3D1NtjR1gIAaA=; b=IUCOBWKZYchcSEDNxeKtDi105e
 rujP+uxbMCLnqFrK6xrH4dYd+4XntbLsopQA9Xlx9IMCX4eyyRZ8cc3zkxsCkuGDxRhPXU0EbLE+l
 R/aGht15Ex/r96ZnCZw3H2IJpPfblN8pC0D+8Atj6Ho70LyGlxN8UmAhwmdcA2YrbQ/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qj6fXkj9hHjb69jvcMKTVtAL+eDTYd3D1NtjR1gIAaA=; b=MOovZaaLh9kihTS3MRYLqhYyrj
 UGPSS0gEblKteKMjBMEVgYOb7feUvZe8rMBMCDvCvjdNaEsnH2BivnNMEjj3ZBmfBcoHusYChV3bI
 9QAaR3NkY2KGlIZccrfZoKdcPfvV560J+Zv87hu0umh0nPelzaPPQKqkD9k37lyCZ8zk=;
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1muCO9-006AQl-Cp
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Dec 2021 11:42:34 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R271e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395; MF=jefflexu@linux.alibaba.com;
 NM=1; PH=DS; RN=18; SR=0; TI=SMTPD_---0UzcMKwq_1638790938; 
Received: from 30.225.24.25(mailfrom:jefflexu@linux.alibaba.com
 fp:SMTPD_---0UzcMKwq_1638790938) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 06 Dec 2021 19:42:19 +0800
Message-ID: <d4167c15-b3ce-73b2-1d66-97d651723305@linux.alibaba.com>
Date: Mon, 6 Dec 2021 19:42:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.0
Content-Language: en-US
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
 <163819612321.215744.9738308885948264476.stgit@warthog.procyon.org.uk>
From: JeffleXu <jefflexu@linux.alibaba.com>
In-Reply-To: <163819612321.215744.9738308885948264476.stgit@warthog.procyon.org.uk>
X-Spam-Score: -10.0 (----------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/29/21 10:28 PM,
 David Howells wrote: > Pass more information
 to the cache on how to deal with a hole if it > encounters one when trying
 to read from the cache. Three options are > provided: > > [...] 
 Content analysis details:   (-10.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.131 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1muCO9-006AQl-Cp
Subject: Re: [V9fs-developer] [PATCH 24/64] netfs: Pass more information on
 how to deal with a hole in the cache
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
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



On 11/29/21 10:28 PM, David Howells wrote:
> Pass more information to the cache on how to deal with a hole if it
> encounters one when trying to read from the cache.  Three options are
> provided:
> 
>  (1) NETFS_READ_HOLE_IGNORE.  Read the hole along with the data, assuming
>      it to be a punched-out extent by the backing filesystem.
> 
>  (2) NETFS_READ_HOLE_CLEAR.  If there's a hole, erase the requested region
>      of the cache and clear the read buffer.
> 
>  (3) NETFS_READ_HOLE_FAIL.  Fail the read if a hole is detected.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> ---
> 
>  fs/netfs/read_helper.c |    8 ++++----
>  include/linux/netfs.h  |   11 ++++++++++-
>  2 files changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 7dc79fa8a1f3..08df413efdf3 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -170,7 +170,7 @@ static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error
>   */
>  static void netfs_read_from_cache(struct netfs_read_request *rreq,
>  				  struct netfs_read_subrequest *subreq,
> -				  bool seek_data)
> +				  enum netfs_read_from_hole read_hole)
>  {
>  	struct netfs_cache_resources *cres = &rreq->cache_resources;
>  	struct iov_iter iter;
> @@ -180,7 +180,7 @@ static void netfs_read_from_cache(struct netfs_read_request *rreq,
>  			subreq->start + subreq->transferred,
>  			subreq->len   - subreq->transferred);
>  
> -	cres->ops->read(cres, subreq->start, &iter, seek_data,
> +	cres->ops->read(cres, subreq->start, &iter, read_hole,
>  			netfs_cache_read_terminated, subreq);
>  }
>  
> @@ -466,7 +466,7 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
>  	netfs_get_read_subrequest(subreq);
>  	atomic_inc(&rreq->nr_rd_ops);
>  	if (subreq->source == NETFS_READ_FROM_CACHE)
> -		netfs_read_from_cache(rreq, subreq, true);
> +		netfs_read_from_cache(rreq, subreq, NETFS_READ_HOLE_CLEAR);

Hi I'm not sure why NETFS_READ_HOLE_CLEAR style should be used in 'short
read' case.

Besides,

```
static void netfs_read_from_cache(struct netfs_read_request *rreq,
				  struct netfs_read_subrequest *subreq,
				  enum netfs_read_from_hole read_hole)
{
	struct netfs_cache_resources *cres = &rreq->cache_resources;
	struct iov_iter iter;

	netfs_stat(&netfs_n_rh_read);
	iov_iter_xarray(&iter, READ, &rreq->mapping->i_pages,
			subreq->start + subreq->transferred,
			subreq->len   - subreq->transferred);

	cres->ops->read(cres, subreq->start, &iter, read_hole,
			netfs_cache_read_terminated, subreq);
}
```

I'm not sure why 'subreq->start' is not incremented with
'subreq->transferred' when calling cres->ops->read() in 'short read' case.


>  	else
>  		netfs_read_from_server(rreq, subreq);
>  }
> @@ -794,7 +794,7 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
>  		netfs_read_from_server(rreq, subreq);
>  		break;
>  	case NETFS_READ_FROM_CACHE:
> -		netfs_read_from_cache(rreq, subreq, false);
> +		netfs_read_from_cache(rreq, subreq, NETFS_READ_HOLE_IGNORE);
>  		break;
>  	default:
>  		BUG();




> diff --git a/include/linux/netfs.h b/include/linux/netfs.h
> index 5a46fde65759..b46c39d98bbd 100644
> --- a/include/linux/netfs.h
> +++ b/include/linux/netfs.h
> @@ -196,6 +196,15 @@ struct netfs_read_request_ops {
>  	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
>  };
>  
> +/*
> + * How to handle reading from a hole.
> + */
> +enum netfs_read_from_hole {
> +	NETFS_READ_HOLE_IGNORE,
> +	NETFS_READ_HOLE_CLEAR,
> +	NETFS_READ_HOLE_FAIL,
> +};
> +
>  /*
>   * Table of operations for access to a cache.  This is obtained by
>   * rreq->ops->begin_cache_operation().
> @@ -208,7 +217,7 @@ struct netfs_cache_ops {
>  	int (*read)(struct netfs_cache_resources *cres,
>  		    loff_t start_pos,
>  		    struct iov_iter *iter,
> -		    bool seek_data,
> +		    enum netfs_read_from_hole read_hole,
>  		    netfs_io_terminated_t term_func,
>  		    void *term_func_priv);
>  
> 

-- 
Thanks,
Jeffle


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
