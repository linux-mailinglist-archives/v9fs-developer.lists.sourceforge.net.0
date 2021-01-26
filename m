Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C26430315C
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 02:38:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4DJd-0004Sq-NT; Tue, 26 Jan 2021 01:38:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l4DJc-0004Sj-5c
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 01:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I4QtGGdUD49OQbpnA/+iW6hZGEJcEQdxNTE3QJXFu+k=; b=LmazKl1f1N+kAG2PuDZj4PKsEh
 A0PHuIdGnA4HEQc29MckjTHSUYXOh+3DB6y3oPKHAEdgZO3P7T05xD1PSKif0/SJUMfnc8oW2hJNW
 Heix8ea7kWQjmQ0Av5+nqWZELX5VTfcOPan9SYyCEDJ/NgawRlIGspuCXpPojRgP5rUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I4QtGGdUD49OQbpnA/+iW6hZGEJcEQdxNTE3QJXFu+k=; b=HIDkZhWscMMZ/sR1v1vleaqS+1
 XXX3n/wuSsV9Z9n4t1fPUJ/yEybHJqqeEhWomQNo2Dcm9foRsK69+XQfqSKBzgxgV74gAQH0XGfOW
 pYh4h6ak9Hn/Z4O4Xlj3pQzTrN9NPoKv3ldt0vIuLnORuhmID/NMbepSz04HpQbw/PKE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4DJW-00551p-Qw
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 01:38:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=I4QtGGdUD49OQbpnA/+iW6hZGEJcEQdxNTE3QJXFu+k=; b=th6+D7onHmuxEzk677tybiCqfY
 hhGc9w/VT61khYhuxx2E1kXIsOZGSF8+E1JP2Cvik6UBR/5b9Nw1Gin/GJ/RDDPaHQuwd8aX3Z5R6
 LuJpCUqsZxHBgVXAyJOFwvagUUVKqq/2tD0/zQ5NLUIocvQ3sFd+r65lKsnAv70oMOdY65n7/vmc0
 5u4hBE/tFpodrVaPe+lRr8QseonmbE9ty/7mie8ThsqBBqlrcHJgYHdXAyo8VhXZYJeq+djp+RU1Z
 bkG5n7D1xoNHEi6ZrSR5P+ndK11HLCtkbsp86N94CxpjEcmp6tYmalu5GJ74rGgTmoQ4gK9HCOanm
 TCWQ7O8g==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l4DH9-004uVe-DU; Tue, 26 Jan 2021 01:36:32 +0000
Date: Tue, 26 Jan 2021 01:36:11 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210126013611.GI308988@casper.infradead.org>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161064956.2537118.3354798147866150631.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161161064956.2537118.3354798147866150631.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l4DJW-00551p-Qw
Subject: Re: [V9fs-developer] [PATCH 32/32] NFS: Convert readpage to
 readahead and use netfs_readahead for fscache
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


For Subject: s/readpage/readpages/

On Mon, Jan 25, 2021 at 09:37:29PM +0000, David Howells wrote:
> +int __nfs_readahead_from_fscache(struct nfs_readdesc *desc,
> +				 struct readahead_control *rac)

I thought you wanted it called ractl instead of rac?  That's what I've
been using in new code.

> -	dfprintk(FSCACHE, "NFS: nfs_getpages_from_fscache (0x%p/%u/0x%p)\n",
> -		 nfs_i_fscache(inode), npages, inode);
> +	dfprintk(FSCACHE, "NFS: nfs_readahead_from_fscache (0x%p/0x%p)\n",
> +		 nfs_i_fscache(inode), inode);

We do have readahead_count() if this is useful information to be logging.

> +static inline int nfs_readahead_from_fscache(struct nfs_readdesc *desc,
> +					     struct readahead_control *rac)
>  {
> -	if (NFS_I(inode)->fscache)
> -		return __nfs_readpages_from_fscache(ctx, inode, mapping, pages,
> -						    nr_pages);
> +	if (NFS_I(rac->mapping->host)->fscache)
> +		return __nfs_readahead_from_fscache(desc, rac);
>  	return -ENOBUFS;
>  }

Not entirely sure that it's worth having the two functions separated any more.

>  	/* attempt to read as many of the pages as possible from the cache
>  	 * - this returns -ENOBUFS immediately if the cookie is negative
>  	 */
> -	ret = nfs_readpages_from_fscache(desc.ctx, inode, mapping,
> -					 pages, &nr_pages);
> +	ret = nfs_readahead_from_fscache(&desc, rac);
>  	if (ret == 0)
>  		goto read_complete; /* all pages were read */
>  
>  	nfs_pageio_init_read(&desc.pgio, inode, false,
>  			     &nfs_async_read_completion_ops);
>  
> -	ret = read_cache_pages(mapping, pages, readpage_async_filler, &desc);
> +	while ((page = readahead_page(rac))) {
> +		ret = readpage_async_filler(&desc, page);
> +		put_page(page);
> +	}

I thought with the new API we didn't need to do this kind of thing
any more?  ie no matter whether fscache is configured in or not, it'll
submit the I/Os.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
