Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 613FC3D1554
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 19:44:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6GGO-0006i6-M2; Wed, 21 Jul 2021 17:44:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1m6GGN-0006hw-Nc
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 17:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3dOn7+nrEQrDF2IcT4kr/9MG9FoA4OKzs2zFSvE50Nw=; b=Rd83Pte6yEMwaUC3YSnscadRkf
 13AE0qThA2w0GJIXNn1P3MqjG6OhGMHyQj6U977PVrbngjIDZf36J3v0VhnXIuCm4R6b4Qdal19pB
 vAoFKY6wTGV9XWL24dCOMIAiRCjt7F1+kqnY5/yRSynwTCDe6Ob+Dw5NSz6br2SP2ZRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3dOn7+nrEQrDF2IcT4kr/9MG9FoA4OKzs2zFSvE50Nw=; b=QJCBeF5PkRH8QUKGizqQdccuzc
 jUUXWkT5zIqdRl6j69BUlLoU26siHfJXhI0WUJEwMwW/tMMmBb3y4yRaDLyEai9GSM54WO9WJFdJm
 SMC5uzVbO6195VRkNlwFUlxOLuUcpjdm44lAy8GGrf0sDEmjESLYvUep+9R5hwEbEcEg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6GGE-00FwLh-DK
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 17:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626889432;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3dOn7+nrEQrDF2IcT4kr/9MG9FoA4OKzs2zFSvE50Nw=;
 b=CA058x+0rjiqMOlC5roFUtPhYi5qtlBpwowjWXiUwvG5IgiaR2JKP8F8JQJlXk9w7SOaMi
 BNHVeIMXX2cZVW9EHKi9ZuWR9KwgxGkqtg6KOpTmKOzuLD5mib3Cb4VPzjCIHbDkgRE08D
 nr+fD8Tc6PggM00AObUgsn6FVSGqsTw=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-549-M56gmSALNi2Sy13GhbNzYA-1; Wed, 21 Jul 2021 13:43:48 -0400
X-MC-Unique: M56gmSALNi2Sy13GhbNzYA-1
Received: by mail-qt1-f199.google.com with SMTP id
 j16-20020ac855100000b029025bf786be09so1951829qtq.20
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Jul 2021 10:43:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=3dOn7+nrEQrDF2IcT4kr/9MG9FoA4OKzs2zFSvE50Nw=;
 b=bRNlO1apUZNZNrxsc/ZwmjkMYYoIV3aIu8jbrGUOO8kHS9GpBqYLqktGmrGdC24yKj
 CfrhgnBctknqeiscAhUCsohxHQJO8a+LeXbr9Jg6Gjad8ZjozjY9NNLHiBU+sOhk9S74
 NeaV5hEPLt9KZi9UrxEctV4Qvf7ERxo4BeGcUdUNiRsgSX7deTaPREoUXa8HnZ2gEjDM
 bHbpGuJadJss7BwuMRv89k1hdsWRZxz0Ixa7iOF+gSBtLsHqDYiDuR8edccpOSh4C0hd
 BT1sHsrgu4w7K99RcfRfcgi4FstIeX40Lm4IXtoMLAkqfHtRg05ho2tfM6FFzRMAkRrY
 be8A==
X-Gm-Message-State: AOAM531lvcdsTzlC1bfv0GElHEZd1kRCsFKArhhZ2zJFYAIrzYWPgIt8
 pdf3/wfSJ3nz9cy68/6Lzxb2OlatzksGlCLWAHpjEv8jRSAmokiLotqa2ItGZXCt8nAGV49qM/9
 RBHNBCVYZBb9ExsGyo5KFXql8ThBrberYjc0=
X-Received: by 2002:a05:622a:1653:: with SMTP id
 y19mr18163567qtj.305.1626889428564; 
 Wed, 21 Jul 2021 10:43:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy73QoeXgeoF1lBpX1Vc7kQ/yjCgrGxg1ygCZQ38G6t9sqd8L74fPzeKuZd3aAUpkrFW+V2/g==
X-Received: by 2002:a05:622a:1653:: with SMTP id
 y19mr18163539qtj.305.1626889428351; 
 Wed, 21 Jul 2021 10:43:48 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id r16sm11484664qke.73.2021.07.21.10.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 10:43:47 -0700 (PDT)
Message-ID: <e7a3b850e8a42845f4e020c7642743b3dce2b9f1.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org
Date: Wed, 21 Jul 2021 13:43:47 -0400
In-Reply-To: <162687511125.276387.15493860267582539643.stgit@warthog.procyon.org.uk>
References: <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
 <162687511125.276387.15493860267582539643.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m6GGE-00FwLh-DK
Subject: Re: [V9fs-developer] [RFC PATCH 03/12] netfs: Remove
 netfs_read_subrequest::transferred
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2021-07-21 at 14:45 +0100, David Howells wrote:
> Remove netfs_read_subrequest::transferred as it's redundant as the count on
> the iterator added to the subrequest can be used instead.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
> 
>  fs/afs/file.c                |    4 ++--
>  fs/netfs/read_helper.c       |   26 ++++----------------------
>  include/linux/netfs.h        |    1 -
>  include/trace/events/netfs.h |   12 ++++++------
>  4 files changed, 12 insertions(+), 31 deletions(-)
> 
> diff --git a/fs/afs/file.c b/fs/afs/file.c
> index ca529f23515a..82e945dbe379 100644
> --- a/fs/afs/file.c
> +++ b/fs/afs/file.c
> @@ -315,8 +315,8 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
>  		return netfs_subreq_terminated(subreq, -ENOMEM, false);
>  
>  	fsreq->subreq	= subreq;
> -	fsreq->pos	= subreq->start + subreq->transferred;
> -	fsreq->len	= subreq->len   - subreq->transferred;
> +	fsreq->pos	= subreq->start + subreq->len - iov_iter_count(&subreq->iter);
> +	fsreq->len	= iov_iter_count(&subreq->iter);
>  	fsreq->key	= subreq->rreq->netfs_priv;
>  	fsreq->vnode	= vnode;
>  	fsreq->iter	= &subreq->iter;
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 715f3e9c380d..5e1a9be48130 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -148,12 +148,7 @@ static void __netfs_put_subrequest(struct netfs_read_subrequest *subreq,
>   */
>  static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
>  {
> -	struct iov_iter iter;
> -
> -	iov_iter_xarray(&iter, READ, &subreq->rreq->mapping->i_pages,
> -			subreq->start + subreq->transferred,
> -			subreq->len   - subreq->transferred);
> -	iov_iter_zero(iov_iter_count(&iter), &iter);
> +	iov_iter_zero(iov_iter_count(&subreq->iter), &subreq->iter);
>  }
>  
>  static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error,
> @@ -173,14 +168,9 @@ static void netfs_read_from_cache(struct netfs_read_request *rreq,
>  				  bool seek_data)
>  {
>  	struct netfs_cache_resources *cres = &rreq->cache_resources;
> -	struct iov_iter iter;
>  
>  	netfs_stat(&netfs_n_rh_read);
> -	iov_iter_xarray(&iter, READ, &rreq->mapping->i_pages,
> -			subreq->start + subreq->transferred,
> -			subreq->len   - subreq->transferred);
> -
> -	cres->ops->read(cres, subreq->start, &iter, seek_data,
> +	cres->ops->read(cres, subreq->start, &subreq->iter, seek_data,
>  			netfs_cache_read_terminated, subreq);
>  }
>  

The above two deltas seem like they should have been in patch #2.

> @@ -419,7 +409,7 @@ static void netfs_rreq_unlock(struct netfs_read_request *rreq)
>  			if (pgend < iopos + subreq->len)
>  				break;
>  
> -			account += subreq->transferred;
> +			account += subreq->len - iov_iter_count(&subreq->iter);
>  			iopos += subreq->len;
>  			if (!list_is_last(&subreq->rreq_link, &rreq->subrequests)) {
>  				subreq = list_next_entry(subreq, rreq_link);
> @@ -635,15 +625,8 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
>  		goto failed;
>  	}
>  
> -	if (WARN(transferred_or_error > subreq->len - subreq->transferred,
> -		 "Subreq overread: R%x[%x] %zd > %zu - %zu",
> -		 rreq->debug_id, subreq->debug_index,
> -		 transferred_or_error, subreq->len, subreq->transferred))
> -		transferred_or_error = subreq->len - subreq->transferred;
> -
>  	subreq->error = 0;
> -	subreq->transferred += transferred_or_error;
> -	if (subreq->transferred < subreq->len)
> +	if (iov_iter_count(&subreq->iter))
>  		goto incomplete;
>  

I must be missing it, but where does subreq->iter get advanced to the
end of the current read? If you're getting rid of subreq->transferred
then I think that has to happen above, no?

>  complete:
> @@ -667,7 +650,6 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
>  incomplete:
>  	if (test_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags)) {
>  		netfs_clear_unread(subreq);
> -		subreq->transferred = subreq->len;
>  		goto complete;
>  	}
>  
> diff --git a/include/linux/netfs.h b/include/linux/netfs.h
> index 5e4fafcc9480..45d40c622205 100644
> --- a/include/linux/netfs.h
> +++ b/include/linux/netfs.h
> @@ -116,7 +116,6 @@ struct netfs_read_subrequest {
>  	struct iov_iter		iter;		/* Iterator for this subrequest */
>  	loff_t			start;		/* Where to start the I/O */
>  	size_t			len;		/* Size of the I/O */
> -	size_t			transferred;	/* Amount of data transferred */
>  	refcount_t		usage;
>  	short			error;		/* 0 or error that occurred */
>  	unsigned short		debug_index;	/* Index in list (for debugging output) */
> diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
> index 4d470bffd9f1..04ac29fc700f 100644
> --- a/include/trace/events/netfs.h
> +++ b/include/trace/events/netfs.h
> @@ -190,7 +190,7 @@ TRACE_EVENT(netfs_sreq,
>  		    __field(enum netfs_read_source,	source		)
>  		    __field(enum netfs_sreq_trace,	what		)
>  		    __field(size_t,			len		)
> -		    __field(size_t,			transferred	)
> +		    __field(size_t,			remain		)
>  		    __field(loff_t,			start		)
>  			     ),
>  
> @@ -202,7 +202,7 @@ TRACE_EVENT(netfs_sreq,
>  		    __entry->source	= sreq->source;
>  		    __entry->what	= what;
>  		    __entry->len	= sreq->len;
> -		    __entry->transferred = sreq->transferred;
> +		    __entry->remain	= iov_iter_count(&sreq->iter);
>  		    __entry->start	= sreq->start;
>  			   ),
>  
> @@ -211,7 +211,7 @@ TRACE_EVENT(netfs_sreq,
>  		      __print_symbolic(__entry->what, netfs_sreq_traces),
>  		      __print_symbolic(__entry->source, netfs_sreq_sources),
>  		      __entry->flags,
> -		      __entry->start, __entry->transferred, __entry->len,
> +		      __entry->start, __entry->len - __entry->remain, __entry->len,
>  		      __entry->error)
>  	    );
>  
> @@ -230,7 +230,7 @@ TRACE_EVENT(netfs_failure,
>  		    __field(enum netfs_read_source,	source		)
>  		    __field(enum netfs_failure,		what		)
>  		    __field(size_t,			len		)
> -		    __field(size_t,			transferred	)
> +		    __field(size_t,			remain		)
>  		    __field(loff_t,			start		)
>  			     ),
>  
> @@ -242,7 +242,7 @@ TRACE_EVENT(netfs_failure,
>  		    __entry->source	= sreq ? sreq->source : NETFS_INVALID_READ;
>  		    __entry->what	= what;
>  		    __entry->len	= sreq ? sreq->len : 0;
> -		    __entry->transferred = sreq ? sreq->transferred : 0;
> +		    __entry->remain	= sreq ? iov_iter_count(&sreq->iter) : 0;
>  		    __entry->start	= sreq ? sreq->start : 0;
>  			   ),
>  
> @@ -250,7 +250,7 @@ TRACE_EVENT(netfs_failure,
>  		      __entry->rreq, __entry->index,
>  		      __print_symbolic(__entry->source, netfs_sreq_sources),
>  		      __entry->flags,
> -		      __entry->start, __entry->transferred, __entry->len,
> +		      __entry->start, __entry->len - __entry->remain, __entry->len,
>  		      __print_symbolic(__entry->what, netfs_failures),
>  		      __entry->error)
>  	    );
> 
> 

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
