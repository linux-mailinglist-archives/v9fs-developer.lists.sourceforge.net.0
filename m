Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFC94D3B4B
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 21:45:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS3BM-0002G7-OR; Wed, 09 Mar 2022 20:45:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nS3BL-0002G1-L8
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 20:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cV0MtXWr8bXv6rXIDd5y6gh0/DmyiGa6mAaHnfSoXps=; b=gcfQYBFOfoaxnfm6hE+MWcgTTv
 tBlVKSwdIM9PDzxYrkeUsuM4+Izpzi/3Y3PFiVER2iqwHf21+6wXGMyz7tRJfAF2hAfzvbBpa0hHd
 Pw95gOnSAPQmHpyIRbAoFJdkuA70Q2ZBUzK19hwaZmSDba6jfSSmIuk/RAstCb9YySs0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cV0MtXWr8bXv6rXIDd5y6gh0/DmyiGa6mAaHnfSoXps=; b=XcTywN9HE8Bo8FiwmdiHKCsTnj
 +6t1U1tsRFlYz3LgzFGH46+XpWPrlwauXjcNZ4RiKs67lXoWbPvzZjkZFaFLgPtXWO2BUlduPAzzn
 LiWuIe8N6rkj2ED3lWJyHTlMxbBcYa33xUVdlEDXG/hb9DRV2BT9JBhrKyTEjf72bjak=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS3BJ-0006Q3-6s
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 20:45:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E9263B82396;
 Wed,  9 Mar 2022 20:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6BCC340EC;
 Wed,  9 Mar 2022 20:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646858705;
 bh=PjlPqpJTmh6e0UAumy4g+1qzPoTzrLX0saZj7KzVbFE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=YgtDwQ/Syc9j0sruZWhi5nSmNtctoT/Pkqg7fyRRP4P1nxS1pSFdOSjqnapcrmAkZ
 bZQ8+H7Ev6tBOqGlEm4gXR7WSZK6pjZomSX2n4FMj64ZPBwDVhP1MDD+OSXZ70mUHd
 4/GWTztgS3UauP6/nOJ8cq1RcZg7GOX4uX/9XCBDkpMs9DRKeCDYCzEavFL+aeUuxL
 tzpRBeauQpYcs+JCUzPP2TG6EXsGK7ZGVINcUv5d8EtCq3zHfKVcN3CENVS9/yJR2q
 xcaZK1e7EUjbySOG43QZoydp7UfT5H4Ggxj5QlSr0INPwZhk/HlnPJzjohuL3u26fI
 fUZAN+8feRtXQ==
Message-ID: <2ebfd2f772ceef605896e58bbd0e733e1413ff71.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 15:45:02 -0500
In-Reply-To: <164678219305.1200972.6459431995188365134.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678219305.1200972.6459431995188365134.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-03-08 at 23:29 +0000, David Howells wrote: >
 Provide a place in which to keep track of the actual remote file size in >
 the netfs context. This is needed because inode->i_size will be upd [...]
 Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS3BJ-0006Q3-6s
Subject: Re: [V9fs-developer] [PATCH v2 18/19] netfs: Keep track of the
 actual remote file size
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
 linux-afs@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-03-08 at 23:29 +0000, David Howells wrote:
> Provide a place in which to keep track of the actual remote file size in
> the netfs context.  This is needed because inode->i_size will be updated as
> we buffer writes in the pagecache, but the server file size won't get
> updated until we flush them back.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> 
> Link: https://lore.kernel.org/r/164623013727.3564931.17659955636985232717.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  include/linux/netfs.h |   16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/include/linux/netfs.h b/include/linux/netfs.h
> index 8458b30172a5..c7bf1eaf51d5 100644
> --- a/include/linux/netfs.h
> +++ b/include/linux/netfs.h
> @@ -126,6 +126,7 @@ struct netfs_i_context {
>  #if IS_ENABLED(CONFIG_FSCACHE)
>  	struct fscache_cookie	*cache;
>  #endif
> +	loff_t			remote_i_size;	/* Size of the remote file */
>  };
>  
>  /*
> @@ -324,6 +325,21 @@ static inline void netfs_i_context_init(struct inode *inode,
>  
>  	memset(ctx, 0, sizeof(*ctx));
>  	ctx->ops = ops;
> +	ctx->remote_i_size = i_size_read(inode);
> +}
> +
> +/**
> + * netfs_resize_file - Note that a file got resized
> + * @inode: The inode being resized
> + * @new_i_size: The new file size
> + *
> + * Inform the netfs lib that a file got resized so that it can adjust its state.
> + */
> +static inline void netfs_resize_file(struct inode *inode, loff_t new_i_size)
> +{
> +	struct netfs_i_context *ctx = netfs_i_context(inode);
> +
> +	ctx->remote_i_size = new_i_size;
>  }
>  
>  /**
> 
> 

This seems like something useful, but I wonder if it'll need some sort
of serialization vs. concurrent updates. Can we assume that netfs itself
will never call netfs_resize_file?

Ceph already has some pretty complicated size tracking, since it can get
async notifications of size changes from the MDS. We'll have to consider
how to integrate this with what it does. Probably this will replace one
(or more?) of its fields.

We may need to offer up some guidance wrt locking.

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
