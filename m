Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C09594D34EC
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 17:52:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRzYL-00062f-SC; Wed, 09 Mar 2022 16:52:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nRzYK-00062Z-KM
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 16:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Njmta2ivzpGzRtqKRosHns0s4I6ZO2D6QDrt1woOTvQ=; b=JjfgvIGbMbay7wSDMzlMqOvttA
 O+NH1mOJZjbDmv2W8UrKTmAO2nleqMOqzk1eJARy7ai5kcdgkiC7DOEjYm7FDcSQdO+fVn8bWVmg+
 +Z+fpI4R2ZIKDf5w5+wckfivtc2O0dr6lZLQIqAZBmR4Q0rympcswxZeaBMA2ATyGeHY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Njmta2ivzpGzRtqKRosHns0s4I6ZO2D6QDrt1woOTvQ=; b=ZKV4aeVxUqZT/9sLSewehSbsQW
 nEj0D+luHbE1bBprRFpXfqIB37rbfKvbCStojmgCmQIinJUBiVIyiZwALMArXVRdF2GK+BjHlk2hf
 iX5h3hqlTHFHkD13fH8isQDTMYGoiqG1SJDwdKRdmfwV8QNQFu/CA9srWNkVFIu5MTs8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRzYI-009vsg-8I
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 16:52:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0E69661B46;
 Wed,  9 Mar 2022 16:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07F6CC340EC;
 Wed,  9 Mar 2022 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646844755;
 bh=wIeGbE6Q41oIhTY+lLUbah8qqKEMzvsX86DStRQLx9g=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ajZf+msEiuAWYsEHyAa1la9mmAEWm9CLYkJ001PCn+OQvcazGSJy3d9bN2D8B8QOl
 5AmoJJMr61AzJpz/9+Ut/VwC1v4hD8jL5NrR+B7Tcg/own5k4BGYTnt/h4otdOlDEa
 5nzPVdlP12f35p/OQIYWEAYEpd+EMx+VJpxJ9RwcIpFERATK2geEjU5UtMXmU3dMTt
 8+VCsgjtIlQWdTx6ECnl08vIoCehsmH4HavcgIT1iTq9WjSopxA4kmJQ4PjDaBaak/
 zxymJkFfufPzJLXiDgcXeJwV6wBNC7DrdpaFm2CX46qY7OsD49zaSn1Xoof0/8QlTi
 63TkLPMr13Wtg==
Message-ID: <4cbb2bb06eafb8f03135fc377ced779102004ea7.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 11:52:32 -0500
In-Reply-To: <164678212401.1200972.16537041523832944934.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678212401.1200972.16537041523832944934.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-03-08 at 23:28 +0000, David Howells wrote: >
 Change the request initialisation function to return an error code so that
 > the network filesystem can return a failure (ENOMEM, for example) [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1nRzYI-009vsg-8I
Subject: Re: [V9fs-developer] [PATCH v2 11/19] netfs: Change
 ->init_request() to return an error code
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

On Tue, 2022-03-08 at 23:28 +0000, David Howells wrote:
> Change the request initialisation function to return an error code so that
> the network filesystem can return a failure (ENOMEM, for example).
> 
> This will also allow ceph to abort a ->readahead() op if the server refuses
> to give it a cap allowing local caching from within the netfslib framework
> (errors aren't passed back through ->readahead(), so returning, say,
> -ENOBUFS will cause the op to be aborted).
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> ---
> 
>  fs/9p/vfs_addr.c       |    3 ++-
>  fs/afs/file.c          |    3 ++-
>  fs/netfs/objects.c     |   41 ++++++++++++++++++++++++-----------------
>  fs/netfs/read_helper.c |   20 ++++++++++++--------
>  include/linux/netfs.h  |    2 +-
>  5 files changed, 41 insertions(+), 28 deletions(-)
> 
> diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
> index fdc1033a1546..91d3926c9559 100644
> --- a/fs/9p/vfs_addr.c
> +++ b/fs/9p/vfs_addr.c
> @@ -56,12 +56,13 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
>   * @rreq: The read request
>   * @file: The file being read from
>   */
> -static void v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
> +static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
>  {
>  	struct p9_fid *fid = file->private_data;
>  
>  	refcount_inc(&fid->count);
>  	rreq->netfs_priv = fid;
> +	return 0;
>  }
>  
>  /**
> diff --git a/fs/afs/file.c b/fs/afs/file.c
> index b19d635eed12..6469d7f98ef5 100644
> --- a/fs/afs/file.c
> +++ b/fs/afs/file.c
> @@ -359,9 +359,10 @@ static int afs_symlink_readpage(struct file *file, struct page *page)
>  	return ret;
>  }
>  
> -static void afs_init_request(struct netfs_io_request *rreq, struct file *file)
> +static int afs_init_request(struct netfs_io_request *rreq, struct file *file)
>  {
>  	rreq->netfs_priv = key_get(afs_file_key(file));
> +	return 0;
>  }
>  
>  static bool afs_is_cache_enabled(struct inode *inode)
> diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
> index 986d7a9d25dd..ae18827e156b 100644
> --- a/fs/netfs/objects.c
> +++ b/fs/netfs/objects.c
> @@ -20,27 +20,34 @@ struct netfs_io_request *netfs_alloc_request(struct address_space *mapping,
>  {
>  	static atomic_t debug_ids;
>  	struct netfs_io_request *rreq;
> +	int ret;
>  
>  	rreq = kzalloc(sizeof(struct netfs_io_request), GFP_KERNEL);
> -	if (rreq) {
> -		rreq->start	= start;
> -		rreq->len	= len;
> -		rreq->origin	= origin;
> -		rreq->netfs_ops	= ops;
> -		rreq->netfs_priv = netfs_priv;
> -		rreq->mapping	= mapping;
> -		rreq->inode	= file_inode(file);
> -		rreq->i_size	= i_size_read(rreq->inode);
> -		rreq->debug_id	= atomic_inc_return(&debug_ids);
> -		INIT_LIST_HEAD(&rreq->subrequests);
> -		INIT_WORK(&rreq->work, netfs_rreq_work);
> -		refcount_set(&rreq->ref, 1);
> -		__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
> -		if (ops->init_request)
> -			ops->init_request(rreq, file);
> -		netfs_stat(&netfs_n_rh_rreq);
> +	if (!rreq)
> +		return ERR_PTR(-ENOMEM);
> +
> +	rreq->start	= start;
> +	rreq->len	= len;
> +	rreq->origin	= origin;
> +	rreq->netfs_ops	= ops;
> +	rreq->netfs_priv = netfs_priv;
> +	rreq->mapping	= mapping;
> +	rreq->inode	= file_inode(file);
> +	rreq->i_size	= i_size_read(rreq->inode);
> +	rreq->debug_id	= atomic_inc_return(&debug_ids);
> +	INIT_LIST_HEAD(&rreq->subrequests);
> +	INIT_WORK(&rreq->work, netfs_rreq_work);
> +	refcount_set(&rreq->ref, 1);
> +	__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
> +	if (rreq->netfs_ops->init_request) {
> +		ret = rreq->netfs_ops->init_request(rreq, file);
> +		if (ret < 0) {
> +			kfree(rreq);
> +			return ERR_PTR(ret);
> +		}
>  	}
>  
> +	netfs_stat(&netfs_n_rh_rreq);
>  	return rreq;
>  }
>  
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index dea085715286..b5176f4320f4 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -768,7 +768,7 @@ void netfs_readahead(struct readahead_control *ractl,
>  				   readahead_pos(ractl),
>  				   readahead_length(ractl),
>  				   NETFS_READAHEAD);
> -	if (!rreq)
> +	if (IS_ERR(rreq))
>  		goto cleanup;
>  
>  	if (ops->begin_cache_operation) {
> @@ -842,11 +842,9 @@ int netfs_readpage(struct file *file,
>  	rreq = netfs_alloc_request(folio->mapping, file, ops, netfs_priv,
>  				   folio_file_pos(folio), folio_size(folio),
>  				   NETFS_READPAGE);
> -	if (!rreq) {
> -		if (netfs_priv)
> -			ops->cleanup(folio_file_mapping(folio), netfs_priv);
> -		folio_unlock(folio);
> -		return -ENOMEM;
> +	if (IS_ERR(rreq)) {
> +		ret = PTR_ERR(rreq);
> +		goto alloc_error;
>  	}
>  
>  	if (ops->begin_cache_operation) {
> @@ -887,6 +885,11 @@ int netfs_readpage(struct file *file,
>  out:
>  	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
>  	return ret;
> +alloc_error:
> +	if (netfs_priv)
> +		ops->cleanup(folio_file_mapping(folio), netfs_priv);
> +	folio_unlock(folio);
> +	return ret;
>  }
>  EXPORT_SYMBOL(netfs_readpage);
>  
> @@ -1007,12 +1010,13 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>  		goto have_folio_no_wait;
>  	}
>  
> -	ret = -ENOMEM;
>  	rreq = netfs_alloc_request(mapping, file, ops, netfs_priv,
>  				   folio_file_pos(folio), folio_size(folio),
>  				   NETFS_READ_FOR_WRITE);
> -	if (!rreq)
> +	if (IS_ERR(rreq)) {
> +		ret = PTR_ERR(rreq);
>  		goto error;
> +	}
>  	rreq->no_unlock_folio	= folio_index(folio);
>  	__set_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags);
>  	netfs_priv = NULL;
> diff --git a/include/linux/netfs.h b/include/linux/netfs.h
> index 7dc741d9b21b..4b99e38f73d9 100644
> --- a/include/linux/netfs.h
> +++ b/include/linux/netfs.h
> @@ -193,7 +193,7 @@ struct netfs_io_request {
>   */
>  struct netfs_request_ops {
>  	bool (*is_cache_enabled)(struct inode *inode);
> -	void (*init_request)(struct netfs_io_request *rreq, struct file *file);
> +	int (*init_request)(struct netfs_io_request *rreq, struct file *file);
>  	int (*begin_cache_operation)(struct netfs_io_request *rreq);
>  	void (*expand_readahead)(struct netfs_io_request *rreq);
>  	bool (*clamp_length)(struct netfs_io_subrequest *subreq);
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
