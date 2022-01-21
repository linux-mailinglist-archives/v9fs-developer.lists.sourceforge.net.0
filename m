Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4241D496479
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Jan 2022 18:51:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nAy4c-0002gO-3m; Fri, 21 Jan 2022 17:51:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nAy4b-0002gH-1f
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 17:51:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IxpPqKQKc/ZYR/LWhRA2/c5l6aoqawARrEsmgSd73mQ=; b=PT8WysbtlVNr53GMTra3wHvyBT
 AnNFRDV+F4AfzaPxqsmlEbluOk3FgWU5ubYB7iyhokp176EOGRruj9NeK+wMdlQS/xszBML6ZyxCZ
 ACGZpegA2k5t8butWasWUx2s0gdKa4cI8LWtndhcP1+iiTem6qpeXRU0pFFXksK3LXSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IxpPqKQKc/ZYR/LWhRA2/c5l6aoqawARrEsmgSd73mQ=; b=CsjspQVWgemx290Y4Z6ixtEOhQ
 /NlddJ7cYPtwSnm6BCB0D9krjBVNLo3Ur9bqHjMuX6LREUoNxdqSlPnNSxQmb3TfykDo4B9cCNuFy
 17TTcv/bUKoKwcjL4FJr7Yfep0Q1f3D7BDTiFAX7AN/OOHgtsJeVt1AmtTtubbnaSCu4=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAy4Y-006W8x-Rl
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 17:51:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id AF151CE2348;
 Fri, 21 Jan 2022 17:51:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75DBCC340E1;
 Fri, 21 Jan 2022 17:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642787490;
 bh=tYe2qeyG3K8Ybask+5r18i3T0TXGMZtvCPQR9mEQiGg=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=e0/S6Uu1IgSh1ZWOBTOoulHrURo3/79rcEeGLtCgQ2sUCKPfa7edjdBmPYBhJf5Y/
 hK4Hb4VP2POLuuDOe1GG8yg9UP8wRTeiL96e+Tv6l2EI21tkswFqMm0sSEBwhGxjsu
 tchWZJleK06F8U/2mVC9rEG0sfWnWROnuhne0/vmZ4qzljjQBXhQtDY/l/oG9WKQ2R
 9DJ7QyUBxBmU9m1N8E41t4+RJE3GkZ9wSNO9JHYizhjSceHUX3cu3X6LM5CtQTgxs2
 13IJ5FlEvIgHPsCL/ZfLtGPQWgWTl8KBis89xvXqOO1Kse6bjnmEJO+4b6Zwvr2Ne2
 Hv3b24ePSPGcQ==
Message-ID: <d99c4042fa900187b179b9087981b25c22edd645.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Fri, 21 Jan 2022 12:51:27 -0500
In-Reply-To: <164251399914.3435901.4761991152407411408.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251399914.3435901.4761991152407411408.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-01-18 at 13:53 +0000, David Howells wrote: >
 From: Jeffle Xu <jefflexu@linux.alibaba.com> > > fscache_acquire_cache()
 requires
 a non-empty name, while 'tag <name>' > command is optional f [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nAy4Y-006W8x-Rl
Subject: Re: [V9fs-developer] [PATCH 03/11] cachefiles: set default tag name
 if it's unspecified
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
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <smfrench@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-01-18 at 13:53 +0000, David Howells wrote:
> From: Jeffle Xu <jefflexu@linux.alibaba.com>
> 
> fscache_acquire_cache() requires a non-empty name, while 'tag <name>'
> command is optional for cachefilesd.
> 
> Thus set default tag name if it's unspecified to avoid the regression of
> cachefilesd. The logic is the same with that before rewritten.
> 
> Signed-off-by: Jeffle Xu <jefflexu@linux.alibaba.com>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> ---
> 
>  fs/cachefiles/daemon.c |   11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
> index 40a792421fc1..7ac04ee2c0a0 100644
> --- a/fs/cachefiles/daemon.c
> +++ b/fs/cachefiles/daemon.c
> @@ -703,6 +703,17 @@ static int cachefiles_daemon_bind(struct cachefiles_cache *cache, char *args)
>  		return -EBUSY;
>  	}
>  
> +	/* Make sure we have copies of the tag string */
> +	if (!cache->tag) {
> +		/*
> +		 * The tag string is released by the fops->release()
> +		 * function, so we don't release it on error here
> +		 */
> +		cache->tag = kstrdup("CacheFiles", GFP_KERNEL);
> +		if (!cache->tag)
> +			return -ENOMEM;
> +	}
> +
>  	return cachefiles_add_cache(cache);
>  }
>  
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
