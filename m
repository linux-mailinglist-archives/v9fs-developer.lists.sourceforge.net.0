Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D25D4D50F8
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 18:56:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSN1K-0002nR-T3; Thu, 10 Mar 2022 17:56:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nSN18-0002my-EA
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 17:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5WHA8cX0IjRWoEU+/QyOoT4AKSBf8UpaTdk8EFs5aE=; b=bDpRrYp7xbtzWjK9YXxrSi3a/x
 4YE67WlagnCYBQs29wzgpB8QhHhEpTkNnUdDtc8kBWyqiOkhPgZy0h/zY00Q/kAw+KyKQOfQinFGT
 DBg+NNcc0GORvgvIUBLayVaq8O9+caQyW/Q44t6+CNKu3F8nCQgo/l3KoxFttceEd9MM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y5WHA8cX0IjRWoEU+/QyOoT4AKSBf8UpaTdk8EFs5aE=; b=E6uvnneP+r9+7NMGR9x5GAFGOR
 AreBr1guzG6arfzIzwYLrzp9LRN6xRK4cVonpfRZ7MrLjB77l4s9hAXofL9iZYKk/d5Y86gNzcm+D
 y7CAGGLiPR3nDBkUCeTdkImVGdEg3/zqi4ZeFA6j+dshMu0joUPMsufZXeiw/ovGijlE=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSN11-0002pO-Dt
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 17:55:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E00D0B8278D;
 Thu, 10 Mar 2022 17:55:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 276EFC340E8;
 Thu, 10 Mar 2022 17:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646934947;
 bh=8SokjuteknyPbDBElq0ySc4jhTHmTXxe/n+HWRjmBwI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=TGC/PkBY+FjkX5N95DtfOHkkJzsvQ6RMc6hOqr1z8tvukharUP+1rAZR/ZggQLqc3
 N311M6elMSdFX5NADEPONwbt75bxhup2j9x60tG8G6V0KYFH/6xiryBca8lJEtVzn2
 1ywT8GT1zqNvbfMQPMiPmCkhSkxisxLoRg3gj5N6pYuQ0ypLPsviIT2iE1DzGpIrKx
 pWep7J4u53tUNMQp6c14DqgQMqB3Wi/UnYirc8Ij3VNlr0OOYBohToxaR13G0hs2kz
 T+XmBsA3DUPA+DuO6mlQMMAUD+nN8buPap9+TMqHD+SCxH1QvtEYSd7k+DmcvloIwN
 lEwhuk9FrI3gw==
Message-ID: <53541fbe950ac4a767e25177ba686b8fbbf371d4.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Thu, 10 Mar 2022 12:55:44 -0500
In-Reply-To: <164692911113.2099075.1060868473229451371.stgit@warthog.procyon.org.uk>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
 <164692911113.2099075.1060868473229451371.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2022-03-10 at 16:18 +0000, David Howells wrote: >
 Add a function to do the steps needed to begin a read request, allowing >
 this code to be removed from several other functions and consolidate [...]
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
X-Headers-End: 1nSN11-0002pO-Dt
Subject: Re: [V9fs-developer] [PATCH v3 14/20] netfs: Add a function to
 consolidate beginning a read
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

On Thu, 2022-03-10 at 16:18 +0000, David Howells wrote:
> Add a function to do the steps needed to begin a read request, allowing
> this code to be removed from several other functions and consolidated.
> 
> Changes
> =======
> ver #2)
>  - Move before the unstaticking patch so that some functions can be left
>    static.
>  - Set uninitialised return code in netfs_begin_read()[1][2].
>  - Fixed a refleak caused by non-removal of a get from netfs_write_begin()
>    when the request submission code got moved to netfs_begin_read().
>  - Use INIT_WORK() to (re-)init the request work_struct[3].
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/20220303163826.1120936-1-nathan@kernel.org/ [1]
> Link: https://lore.kernel.org/r/20220303235647.1297171-1-colin.i.king@gmail.com/ [2]
> Link: https://lore.kernel.org/r/9d69be49081bccff44260e4c6e0049c63d6d04a1.camel@redhat.com/ [3]
> Link: https://lore.kernel.org/r/164623004355.3564931.7275693529042495641.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/164678214287.1200972.16734134007649832160.stgit@warthog.procyon.org.uk/ # v2
> ---
> 
>  fs/netfs/internal.h          |    2 -
>  fs/netfs/objects.c           |    1 
>  fs/netfs/read_helper.c       |  144 +++++++++++++++++++++---------------------
>  include/trace/events/netfs.h |    5 +
>  4 files changed, 76 insertions(+), 76 deletions(-)
> 
> diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
> index 5f9719409f21..937c2465943f 100644
> --- a/fs/netfs/internal.h
> +++ b/fs/netfs/internal.h
> @@ -39,7 +39,7 @@ static inline void netfs_see_request(struct netfs_io_request *rreq,
>   */
>  extern unsigned int netfs_debug;
>  
> -void netfs_rreq_work(struct work_struct *work);
> +int netfs_begin_read(struct netfs_io_request *rreq, bool sync);
>  
>  /*
>   * stats.c
> diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
> index 657b19e60118..e86107b30ba4 100644
> --- a/fs/netfs/objects.c
> +++ b/fs/netfs/objects.c
> @@ -35,7 +35,6 @@ struct netfs_io_request *netfs_alloc_request(struct address_space *mapping,
>  	rreq->i_size	= i_size_read(inode);
>  	rreq->debug_id	= atomic_inc_return(&debug_ids);
>  	INIT_LIST_HEAD(&rreq->subrequests);
> -	INIT_WORK(&rreq->work, netfs_rreq_work);
>  	refcount_set(&rreq->ref, 1);
>  	__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
>  	if (rreq->netfs_ops->init_request) {
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 73be06c409bb..6864716cfcac 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -443,7 +443,7 @@ static void netfs_rreq_assess(struct netfs_io_request *rreq, bool was_async)
>  	netfs_rreq_completed(rreq, was_async);
>  }
>  
> -void netfs_rreq_work(struct work_struct *work)
> +static void netfs_rreq_work(struct work_struct *work)
>  {
>  	struct netfs_io_request *rreq =
>  		container_of(work, struct netfs_io_request, work);
> @@ -688,6 +688,69 @@ static bool netfs_rreq_submit_slice(struct netfs_io_request *rreq,
>  	return false;
>  }
>  
> +/*
> + * Begin the process of reading in a chunk of data, where that data may be
> + * stitched together from multiple sources, including multiple servers and the
> + * local cache.
> + */
> +int netfs_begin_read(struct netfs_io_request *rreq, bool sync)
> +{
> +	unsigned int debug_index = 0;
> +	int ret;
> +
> +	_enter("R=%x %llx-%llx",
> +	       rreq->debug_id, rreq->start, rreq->start + rreq->len - 1);
> +
> +	if (rreq->len == 0) {
> +		pr_err("Zero-sized read [R=%x]\n", rreq->debug_id);
> +		netfs_put_request(rreq, false, netfs_rreq_trace_put_zero_len);
> +		return -EIO;
> +	}
> +
> +	INIT_WORK(&rreq->work, netfs_rreq_work);
> +
> +	if (sync)
> +		netfs_get_request(rreq, netfs_rreq_trace_get_hold);
> +
> +	/* Chop the read into slices according to what the cache and the netfs
> +	 * want and submit each one.
> +	 */
> +	atomic_set(&rreq->nr_outstanding, 1);
> +	do {
> +		if (!netfs_rreq_submit_slice(rreq, &debug_index))
> +			break;
> +
> +	} while (rreq->submitted < rreq->len);
> +
> +	if (sync) {
> +		/* Keep nr_outstanding incremented so that the ref always belongs to
> +		 * us, and the service code isn't punted off to a random thread pool to
> +		 * process.
> +		 */
> +		for (;;) {
> +			wait_var_event(&rreq->nr_outstanding,
> +				       atomic_read(&rreq->nr_outstanding) == 1);
> +			netfs_rreq_assess(rreq, false);
> +			if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
> +				break;
> +			cond_resched();
> +		}
> +
> +		ret = rreq->error;
> +		if (ret == 0 && rreq->submitted < rreq->len) {
> +			trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_read);
> +			ret = -EIO;
> +		}
> +		netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
> +	} else {
> +		/* If we decrement nr_outstanding to 0, the ref belongs to us. */
> +		if (atomic_dec_and_test(&rreq->nr_outstanding))
> +			netfs_rreq_assess(rreq, false);
> +		ret = 0;
> +	}
> +	return ret;
> +}
> +
>  static void netfs_cache_expand_readahead(struct netfs_io_request *rreq,
>  					 loff_t *_start, size_t *_len, loff_t i_size)
>  {
> @@ -750,7 +813,6 @@ void netfs_readahead(struct readahead_control *ractl)
>  {
>  	struct netfs_io_request *rreq;
>  	struct netfs_i_context *ctx = netfs_i_context(ractl->mapping->host);
> -	unsigned int debug_index = 0;
>  	int ret;
>  
>  	_enter("%lx,%x", readahead_index(ractl), readahead_count(ractl));
> @@ -777,22 +839,13 @@ void netfs_readahead(struct readahead_control *ractl)
>  
>  	netfs_rreq_expand(rreq, ractl);
>  
> -	atomic_set(&rreq->nr_outstanding, 1);
> -	do {
> -		if (!netfs_rreq_submit_slice(rreq, &debug_index))
> -			break;
> -
> -	} while (rreq->submitted < rreq->len);
> -
>  	/* Drop the refs on the folios here rather than in the cache or
>  	 * filesystem.  The locks will be dropped in netfs_rreq_unlock().
>  	 */
>  	while (readahead_folio(ractl))
>  		;
>  
> -	/* If we decrement nr_outstanding to 0, the ref belongs to us. */
> -	if (atomic_dec_and_test(&rreq->nr_outstanding))
> -		netfs_rreq_assess(rreq, false);
> +	netfs_begin_read(rreq, false);
>  	return;
>  
>  cleanup_free:
> @@ -821,7 +874,6 @@ int netfs_readpage(struct file *file, struct page *subpage)
>  	struct address_space *mapping = folio->mapping;
>  	struct netfs_io_request *rreq;
>  	struct netfs_i_context *ctx = netfs_i_context(mapping->host);
> -	unsigned int debug_index = 0;
>  	int ret;
>  
>  	_enter("%lx", folio_index(folio));
> @@ -836,42 +888,16 @@ int netfs_readpage(struct file *file, struct page *subpage)
>  
>  	if (ctx->ops->begin_cache_operation) {
>  		ret = ctx->ops->begin_cache_operation(rreq);
> -		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS) {
> -			folio_unlock(folio);
> -			goto out;
> -		}
> +		if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
> +			goto discard;
>  	}
>  
>  	netfs_stat(&netfs_n_rh_readpage);
>  	trace_netfs_read(rreq, rreq->start, rreq->len, netfs_read_trace_readpage);
> +	return netfs_begin_read(rreq, true);
>  
> -	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
> -
> -	atomic_set(&rreq->nr_outstanding, 1);
> -	do {
> -		if (!netfs_rreq_submit_slice(rreq, &debug_index))
> -			break;
> -
> -	} while (rreq->submitted < rreq->len);
> -
> -	/* Keep nr_outstanding incremented so that the ref always belongs to us, and
> -	 * the service code isn't punted off to a random thread pool to
> -	 * process.
> -	 */
> -	do {
> -		wait_var_event(&rreq->nr_outstanding,
> -			       atomic_read(&rreq->nr_outstanding) == 1);
> -		netfs_rreq_assess(rreq, false);
> -	} while (test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags));
> -
> -	ret = rreq->error;
> -	if (ret == 0 && rreq->submitted < rreq->len) {
> -		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_readpage);
> -		ret = -EIO;
> -	}
> -out:
> -	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
> -	return ret;
> +discard:
> +	netfs_put_request(rreq, false, netfs_rreq_trace_put_discard);
>  alloc_error:
>  	folio_unlock(folio);
>  	return ret;
> @@ -966,7 +992,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>  	struct netfs_io_request *rreq;
>  	struct netfs_i_context *ctx = netfs_i_context(file_inode(file ));
>  	struct folio *folio;
> -	unsigned int debug_index = 0, fgp_flags;
> +	unsigned int fgp_flags;
>  	pgoff_t index = pos >> PAGE_SHIFT;
>  	int ret;
>  
> @@ -1029,39 +1055,13 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>  	 */
>  	ractl._nr_pages = folio_nr_pages(folio);
>  	netfs_rreq_expand(rreq, &ractl);
> -	netfs_get_request(rreq, netfs_rreq_trace_get_hold);
>  
>  	/* We hold the folio locks, so we can drop the references */
>  	folio_get(folio);
>  	while (readahead_folio(&ractl))
>  		;
>  
> -	atomic_set(&rreq->nr_outstanding, 1);
> -	do {
> -		if (!netfs_rreq_submit_slice(rreq, &debug_index))
> -			break;
> -
> -	} while (rreq->submitted < rreq->len);
> -
> -	/* Keep nr_outstanding incremented so that the ref always belongs to
> -	 * us, and the service code isn't punted off to a random thread pool to
> -	 * process.
> -	 */
> -	for (;;) {
> -		wait_var_event(&rreq->nr_outstanding,
> -			       atomic_read(&rreq->nr_outstanding) == 1);
> -		netfs_rreq_assess(rreq, false);
> -		if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
> -			break;
> -		cond_resched();
> -	}
> -
> -	ret = rreq->error;
> -	if (ret == 0 && rreq->submitted < rreq->len) {
> -		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_write_begin);
> -		ret = -EIO;
> -	}
> -	netfs_put_request(rreq, false, netfs_rreq_trace_put_hold);
> +	ret = netfs_begin_read(rreq, true);
>  	if (ret < 0)
>  		goto error;
>  
> diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
> index f00e3e1821c8..beec534cbaab 100644
> --- a/include/trace/events/netfs.h
> +++ b/include/trace/events/netfs.h
> @@ -56,17 +56,18 @@
>  	EM(netfs_fail_check_write_begin,	"check-write-begin")	\
>  	EM(netfs_fail_copy_to_cache,		"copy-to-cache")	\
>  	EM(netfs_fail_read,			"read")			\
> -	EM(netfs_fail_short_readpage,		"short-readpage")	\
> -	EM(netfs_fail_short_write_begin,	"short-write-begin")	\
> +	EM(netfs_fail_short_read,		"short-read")		\
>  	E_(netfs_fail_prepare_write,		"prep-write")
>  
>  #define netfs_rreq_ref_traces					\
>  	EM(netfs_rreq_trace_get_hold,		"GET HOLD   ")	\
>  	EM(netfs_rreq_trace_get_subreq,		"GET SUBREQ ")	\
>  	EM(netfs_rreq_trace_put_complete,	"PUT COMPLT ")	\
> +	EM(netfs_rreq_trace_put_discard,	"PUT DISCARD")	\
>  	EM(netfs_rreq_trace_put_failed,		"PUT FAILED ")	\
>  	EM(netfs_rreq_trace_put_hold,		"PUT HOLD   ")	\
>  	EM(netfs_rreq_trace_put_subreq,		"PUT SUBREQ ")	\
> +	EM(netfs_rreq_trace_put_zero_len,	"PUT ZEROLEN")	\
>  	E_(netfs_rreq_trace_new,		"NEW        ")
>  
>  #define netfs_sreq_ref_traces					\
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
