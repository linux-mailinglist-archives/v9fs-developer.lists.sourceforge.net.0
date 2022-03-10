Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F924D50A2
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 18:34:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSMgf-00047A-QN; Thu, 10 Mar 2022 17:34:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@redhat.com>) id 1nSMge-000470-1G
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 17:34:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+sI8yl68F8AaSxc5/19rLFgsuz0y8nt6Rj/YSh3VHaE=; b=hwW1Nwl1TkITPnqJmBF0UPhDdH
 7fShw+s9m+jcpNdB6mw1DJKEz0wxlbx7i71Ud8EC0+6YsGN6ldAVnWNf/hyQbnTImKcjXaH9MjO1P
 SWvM4j+O/h170n5lIY5N9XjbT9fzhp8XElAiYqx9NwxqS5nLx7AG3dvm+QBMDxNyH1V0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+sI8yl68F8AaSxc5/19rLFgsuz0y8nt6Rj/YSh3VHaE=; b=RwSn6xM/XIrytegnPXaWiasq9E
 QcQalOhdCRm9CQSb0o8zXRr2jz+XmcWhfc0nwFLAOSl3nmHQbJGyDH4Ll8ZxxJYX9VBfspk8dr8o2
 NbBbBeajFRYjOmjEQUlBiGUuE1Ibor0o96JB8SonKBzNkUVNz+dAhmpWgIMnheZZ0tCc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSMgX-0001eN-L7
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 17:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646933679;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+sI8yl68F8AaSxc5/19rLFgsuz0y8nt6Rj/YSh3VHaE=;
 b=Obbk4XFJSBLnZCrcjJnf7o/YP1Owenk1T61mvUfxzyNj9nTXbrHgPT7X9/zDgtrY8UVci1
 yvbAVvnI7Hgy864nILc2ebO1CQc9X4kWzvRaHTA2bPq7dTp2q1eTnlt+aJnMnatYR8c0UW
 Lrnv9/7Nh54f4En3uGdo6g+n9weR658=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-Q1RbWGAzNGKnpViTslvpuA-1; Thu, 10 Mar 2022 12:34:38 -0500
X-MC-Unique: Q1RbWGAzNGKnpViTslvpuA-1
Received: by mail-qk1-f197.google.com with SMTP id
 v16-20020a376110000000b0067b2749e0fbso4396759qkb.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 10 Mar 2022 09:34:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=+sI8yl68F8AaSxc5/19rLFgsuz0y8nt6Rj/YSh3VHaE=;
 b=c1Q/sHySNFIO4gm9I1n8KlYCsNDwMpDO7t6uLWihYLFHiBdzOhSw6jEzGSmNDBy/al
 JuNNRuyuhNG4/h9SS0hAtitIp0XmoPLQduj2yvgLxqSaBu6P2lkWTnJkgdVwrTETSYZ6
 yla51rsyr5DiWfjhiCR9JimzNiJn1P9mMcwoLbfBiNXepaO7MJKQGhnFRdu9oq2Urtsk
 wz2C/JtI2b4Hhc1Kwy2u9OH+8yP2qnt6UI3kxXoo8LW6FMwHw+2aypX1N96GfKPK5dh9
 +LvDgzDwxqLODEIASttxiD2FzSGDZw++bEW/dZEBA1L657T6D+Yhzib5PPaPys2yv8U7
 MpPA==
X-Gm-Message-State: AOAM530JAPwIsJTf0UvMWoQyVcVlh1U6AR+4JWFlwwPGO0UUDhoKw96x
 RuO/9j3MSelCHMOHvMlFZtsA2xDU9v3oaO9NGFPFaGcmmMZhh4sFPGC3ihJfn46XZfM2XT5QZs+
 /UXywXK4+PyXrcdvZ42WGInJMzLk56wwhjdc=
X-Received: by 2002:ac8:5f84:0:b0:2e0:6965:c999 with SMTP id
 j4-20020ac85f84000000b002e06965c999mr4925471qta.477.1646933676594; 
 Thu, 10 Mar 2022 09:34:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzM49ZVae3bPgm0svuUu3uf+AJzp4pMchlkgmKNd23/D20Xgvy0iFYR1hc8U1liK5jF6Izwyg==
X-Received: by 2002:ac8:5f84:0:b0:2e0:6965:c999 with SMTP id
 j4-20020ac85f84000000b002e06965c999mr4925451qta.477.1646933676349; 
 Thu, 10 Mar 2022 09:34:36 -0800 (PST)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154]) by smtp.gmail.com with ESMTPSA id
 t28-20020a05620a005c00b00662fb1899d2sm2562187qkt.0.2022.03.10.09.34.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 09:34:35 -0800 (PST)
Message-ID: <dd054c962818716e718bd9b446ee5322ca097675.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 12:34:34 -0500
In-Reply-To: <164692907694.2099075.10081819855690054094.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
 <164692907694.2099075.10081819855690054094.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2022-03-10 at 16:17 +0000, David Howells wrote: >
 Move the caps check from ceph_readahead() to ceph_init_request(), > conditional
 on the origin being NETFS_READAHEAD so that in a future patch, [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSMgX-0001eN-L7
Subject: Re: [V9fs-developer] [PATCH v3 12/20] ceph: Make
 ceph_init_request() check caps on readahead
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
 David Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Jeffle Xu <jefflexu@linux.alibaba.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2022-03-10 at 16:17 +0000, David Howells wrote:
> Move the caps check from ceph_readahead() to ceph_init_request(),
> conditional on the origin being NETFS_READAHEAD so that in a future patch,
> ceph can point its ->readahead() vector directly at netfs_readahead().
> 
> Changes
> =======
> ver #3)
>  - Split from the patch to add a netfs inode context[1].
>  - Need to store the caps got in rreq->netfs_priv for later freeing.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: ceph-devel@vger.kernel.org
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org/ [1]
> ---
> 
>  fs/ceph/addr.c |   69 +++++++++++++++++++++++++++++++++-----------------------
>  1 file changed, 41 insertions(+), 28 deletions(-)
> 
> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
> index 9189257476f8..6d056db41f50 100644
> --- a/fs/ceph/addr.c
> +++ b/fs/ceph/addr.c
> @@ -354,6 +354,45 @@ static void ceph_netfs_issue_read(struct netfs_io_subrequest *subreq)
>  	dout("%s: result %d\n", __func__, err);
>  }
>  
> +static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
> +{
> +	struct inode *inode = rreq->inode;
> +	int got = 0, want = CEPH_CAP_FILE_CACHE;
> +	int ret = 0;
> +
> +	if (file) {
> +		struct ceph_rw_context *rw_ctx;
> +		struct ceph_file_info *fi = file->private_data;
> +
> +		rw_ctx = ceph_find_rw_context(fi);
> +		if (rw_ctx)
> +			return 0;
> +	}
> +
> +	if (rreq->origin != NETFS_READAHEAD)
> +		return 0;
> +

^^^
I think you should move this check above the if (file) block above it.
We don't need to anything at all if we're not in readahead.

> +	/*
> +	 * readahead callers do not necessarily hold Fcb caps
> +	 * (e.g. fadvise, madvise).
> +	 */
> +	ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
> +	if (ret < 0) {
> +		dout("start_read %p, error getting cap\n", inode);
> +		return ret;
> +	}
> +
> +	if (!(got & want)) {
> +		dout("start_read %p, no cache cap\n", inode);
> +		return -EACCES;
> +	}
> +	if (ret == 0)
> +		return -EACCES;
> +
> +	rreq->netfs_priv = (void *)(uintptr_t)got;
> +	return 0;
> +}
> +
>  static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
>  {
>  	struct inode *inode = mapping->host;
> @@ -365,7 +404,7 @@ static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
>  }
>  
>  static const struct netfs_request_ops ceph_netfs_read_ops = {
> -	.is_cache_enabled	= ceph_is_cache_enabled,
> +	.init_request		= ceph_init_request,
>  	.begin_cache_operation	= ceph_begin_cache_operation,
>  	.issue_read		= ceph_netfs_issue_read,
>  	.expand_readahead	= ceph_netfs_expand_readahead,
> @@ -393,33 +432,7 @@ static int ceph_readpage(struct file *file, struct page *subpage)
>  
>  static void ceph_readahead(struct readahead_control *ractl)
>  {
> -	struct inode *inode = file_inode(ractl->file);
> -	struct ceph_file_info *fi = ractl->file->private_data;
> -	struct ceph_rw_context *rw_ctx;
> -	int got = 0;
> -	int ret = 0;
> -
> -	if (ceph_inode(inode)->i_inline_version != CEPH_INLINE_NONE)
> -		return;
> -
> -	rw_ctx = ceph_find_rw_context(fi);
> -	if (!rw_ctx) {
> -		/*
> -		 * readahead callers do not necessarily hold Fcb caps
> -		 * (e.g. fadvise, madvise).
> -		 */
> -		int want = CEPH_CAP_FILE_CACHE;
> -
> -		ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
> -		if (ret < 0)
> -			dout("start_read %p, error getting cap\n", inode);
> -		else if (!(got & want))
> -			dout("start_read %p, no cache cap\n", inode);
> -
> -		if (ret <= 0)
> -			return;
> -	}
> -	netfs_readahead(ractl, &ceph_netfs_read_ops, (void *)(uintptr_t)got);
> +	netfs_readahead(ractl, &ceph_netfs_read_ops, NULL);
>  }
>  
>  #ifdef CONFIG_CEPH_FSCACHE
> 
> 

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
