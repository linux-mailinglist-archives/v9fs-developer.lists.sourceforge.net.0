Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D52BA4D3A54
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 20:26:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS1xU-000167-Sj; Wed, 09 Mar 2022 19:26:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@redhat.com>) id 1nS1xS-000160-OD
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 19:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WN5GUEmgrDS5blhpeuLnIFwphWNcOPQ/ZcWUtDauiB0=; b=WBu3GyWt+cvF5RiVLl0fi9neKD
 4fT4CmdfkBSLHZjar7jP/lzI0I04inJaXD95yNn6R1a9OADYMztgT9DgfYEs7X34DyOlPfyH9onw5
 jyn5hvwRG7m6DpXuej4PEpQTYPMhp5wmsF09rJQ+LEup8mc0I7aXFy545+M6kyA0h128=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WN5GUEmgrDS5blhpeuLnIFwphWNcOPQ/ZcWUtDauiB0=; b=jY7Ya/xQF821gdnmH9YhiS4f0p
 a+SdgG0Is85Zw6xzbqy/ufa4h777OINsJIXt0S+ohd8dCLPImO1FV5FBq2hAOKWNhp5A7uCaHx5Uo
 igTlQt9zhnVHVJhAJlSMvlNFoBaQF7odYntookyVSVxk2xBcldw6UT2kk3G0OSyMZ51o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS1xO-00A4bz-Oc
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 19:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646854000;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WN5GUEmgrDS5blhpeuLnIFwphWNcOPQ/ZcWUtDauiB0=;
 b=buiVTS6vK549UGexOodGze1iLVQmsiaSyy8elR/HkWjn08IIqVw0dxTlZjVRXECywAPlKA
 sl1Oz6euq1s6uRqKtEeoTQZXlB0itdH9tHTnFqgZ9AArCauHqkem+xk/Cc/SRGbnzZB45h
 J0dTJpoHQ27LhAMyZQoTJ4dIY+hnppA=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-106-2V4cl63LNpij0eQaudzY6g-1; Wed, 09 Mar 2022 14:26:39 -0500
X-MC-Unique: 2V4cl63LNpij0eQaudzY6g-1
Received: by mail-qv1-f72.google.com with SMTP id
 fq2-20020a056214258200b0042c39c09e5dso2898949qvb.18
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 09 Mar 2022 11:26:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=WN5GUEmgrDS5blhpeuLnIFwphWNcOPQ/ZcWUtDauiB0=;
 b=Gz8/566Yu0hcLsckcYCzqkOB7TTZma64kzKwNWUn3rjsbuDFqZAYQwBZsNVwgaB5nF
 BjD/pqx8P7xvy/mJlzjUzYE+gFNTznnGxEMTtSY7688fkfp8PLMEw+k89kKKRVvMDU43
 fbKbwlYQa18etStQuoI8SCSRrSQWbg/9GZ8v+UiWOcKVQGu3cIr2oHO94XdT7hudUPXX
 P7Ib5xeH3QgqCAO5gKbT/n1hBfoMjydtwrvRAxEWZsOoPH5Y0LG47FoQXiCd7M1kRrXX
 fwEz3tbnYQRHXigIgwMVpmzDuAGGSCjmw+wNzfxjqR+HzsFRnKoJdc8nYYGSARLht2da
 8ekg==
X-Gm-Message-State: AOAM531CWuxEAiDfRwoffHVJRxYRitDGkIa//f8WTlzIWl6TETQ9rp2F
 dArryhd7sKtucGnX1QFiFGJ05giRJY/r/iQPOGGguiNAOHEwOB2W453SAELyP35mmjHmr0k0Gfy
 tRka8WMJRC63EfZxVWbPpDyWJCIn2OaDqkzY=
X-Received: by 2002:ac8:5bd3:0:b0:2de:ade1:5c39 with SMTP id
 b19-20020ac85bd3000000b002deade15c39mr1060311qtb.445.1646853998466; 
 Wed, 09 Mar 2022 11:26:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyedwqff1Gl8UKIvvRzupccuMgUSCb/i3BaeYE2aR9jC3oRSKWG8PpdoxVNsmPki2IcuXhE2w==
X-Received: by 2002:ac8:5bd3:0:b0:2de:ade1:5c39 with SMTP id
 b19-20020ac85bd3000000b002deade15c39mr1060283qtb.445.1646853998184; 
 Wed, 09 Mar 2022 11:26:38 -0800 (PST)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154]) by smtp.gmail.com with ESMTPSA id
 w2-20020a379402000000b0067b27a0598fsm1266267qkd.82.2022.03.09.11.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 11:26:37 -0800 (PST)
Message-ID: <9d69be49081bccff44260e4c6e0049c63d6d04a1.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 14:26:36 -0500
In-Reply-To: <164678214287.1200972.16734134007649832160.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678214287.1200972.16734134007649832160.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-03-08 at 23:29 +0000, David Howells wrote: >
 Add a function to do the steps needed to begin a read request, allowing >
 this code to be removed from several other functions and consolidate [...]
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS1xO-00A4bz-Oc
Subject: Re: [V9fs-developer] [PATCH v2 13/19] netfs: Add a function to
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

On Tue, 2022-03-08 at 23:29 +0000, David Howells wrote:
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
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> 
> Link: https://lore.kernel.org/r/20220303163826.1120936-1-nathan@kernel.org/ [1]
> Link: https://lore.kernel.org/r/20220303235647.1297171-1-colin.i.king@gmail.com/ [2]
> Link: https://lore.kernel.org/r/164623004355.3564931.7275693529042495641.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  fs/netfs/internal.h          |    2 -
>  fs/netfs/objects.c           |    2 -
>  fs/netfs/read_helper.c       |  144 +++++++++++++++++++++---------------------
>  include/trace/events/netfs.h |    5 +
>  4 files changed, 77 insertions(+), 76 deletions(-)
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
> index 657b19e60118..82f4d6c4f515 100644
> --- a/fs/netfs/objects.c
> +++ b/fs/netfs/objects.c
> @@ -35,7 +35,7 @@ struct netfs_io_request *netfs_alloc_request(struct address_space *mapping,
>  	rreq->i_size	= i_size_read(inode);
>  	rreq->debug_id	= atomic_inc_return(&debug_ids);
>  	INIT_LIST_HEAD(&rreq->subrequests);
> -	INIT_WORK(&rreq->work, netfs_rreq_work);
> +	INIT_WORK(&rreq->work, NULL);
>  	refcount_set(&rreq->ref, 1);
>  	__set_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags);
>  	if (rreq->netfs_ops->init_request) {
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 73be06c409bb..19d4fe0b4987 100644
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
> +	rreq->work.func = netfs_rreq_work;
> +

^^^
This seems like it should be an INIT_WORK call. I assume you're moving
this here this because you intend to use netfs_alloc_request for writes
too?

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
> index 685b07573394..55501d044bbc 100644
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

Seems reasonable otherwise.

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
