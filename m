Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7665A4D3214
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 16:46:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRyW2-0002ZJ-6v; Wed, 09 Mar 2022 15:46:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nRyVu-0002Z7-4v
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 15:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lhKdT7SrLbJxDUKz3+peoMdyrEfd0t51XgyVzt5abHI=; b=hoInaTms04muMgjlsmuYS2GDtK
 NBonOD1tjP1BMcslAL1bZ84lBELh9txWXSbUcKvzk1SS7RgjBeTOBPWi7a/PMY8CP/3QNWNXfFk5A
 HYH6u5Q6RxBRI+Jx3FBFCvZSBHziTXJLNOMT9GDHtX7K/+kro9QCWn/Jr5C7dNm/Abug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lhKdT7SrLbJxDUKz3+peoMdyrEfd0t51XgyVzt5abHI=; b=hRZECVCg4ni05l8Vbhi4CTib4U
 qgc92SEV8DB7xQgWJtOzSrfnf3rpi4mWMfxFnA6Scyv3lsIZMZal6awzBezLbFW5f6LmJp/YrjNB0
 ZEj6PbZX/7WCDASn9c4ALyVLQmlUT4E/UP2TH2yVWa0NcyVLK2I/W2mXpPurlG9jHhNg=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRyVl-009sUG-BC
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 15:46:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 10E03B8216D;
 Wed,  9 Mar 2022 15:45:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42702C340E8;
 Wed,  9 Mar 2022 15:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646840753;
 bh=JcjbwficnT5HSFxU++0rxH+SOkMYh+Q/0GQjWeHYYts=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=PisR0LQ5zQVYJyJ484puq/l3orA8rvxQrD4771IojLnRjsqCTRTHweABN+VGnMjAN
 CiPoqBnQM62mUDCNH/trKobaxotcS+yb3tlZ3tq66fhukeWbN0s4X7makoWuk+6b25
 7egYjezt0hXbp7LcNo9cCJvmA7y49ynJPIYO+x4h5VcxE9q9sxP34KgQ6+pVQQj250
 H2KMKjC3byDuR8DSo2TKNYLZqkfSlQeTwxJloHGPabWMwTGUtDl26I0HkqMFmBxTW5
 sU1HI+g2uQmSugdfn0eK1EvP9G+bNm7Xcj8jfhskRGZAFGZjSQmXc+TPKVbUkmCIoM
 cbuoLdQfEeeVg==
Message-ID: <9763458f708e3021f7606cfdb4c578f2591b9bd7.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 10:45:51 -0500
In-Reply-To: <164678199468.1200972.17275585970238114726.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678199468.1200972.17275585970238114726.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-03-08 at 23:26 +0000, David Howells wrote: >
 Adjust the netfs_rreq tracepoint to include the origin of the request and
 > to increase the size of the "what trace" output strings by a chara [...]
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
X-Headers-End: 1nRyVl-009sUG-BC
Subject: Re: [V9fs-developer] [PATCH v2 06/19] netfs: Adjust the netfs_rreq
 tracepoint slightly
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

On Tue, 2022-03-08 at 23:26 +0000, David Howells wrote:
> Adjust the netfs_rreq tracepoint to include the origin of the request and
> to increase the size of the "what trace" output strings by a character so
> that "ENCRYPT" and "DECRYPT" will fit without abbreviation.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> 
> Link: https://lore.kernel.org/r/164622996715.3564931.4252319907990358129.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  fs/netfs/read_helper.c       |    2 +-
>  include/trace/events/netfs.h |   18 +++++++++---------
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index ef23ef9889d5..181aeda32649 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -181,7 +181,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_io_request *rreq)
>  	struct iov_iter iter;
>  	int ret;
>  
> -	trace_netfs_rreq(rreq, netfs_rreq_trace_write);
> +	trace_netfs_rreq(rreq, netfs_rreq_trace_copy);
>  
>  	/* We don't want terminating writes trying to wake us up whilst we're
>  	 * still going through the list.
> diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
> index 2d0665b416bf..daf171de2142 100644
> --- a/include/trace/events/netfs.h
> +++ b/include/trace/events/netfs.h
> @@ -22,13 +22,13 @@
>  	E_(netfs_read_trace_write_begin,	"WRITEBEGN")
>  
>  #define netfs_rreq_traces					\
> -	EM(netfs_rreq_trace_assess,		"ASSESS")	\
> -	EM(netfs_rreq_trace_done,		"DONE  ")	\
> -	EM(netfs_rreq_trace_free,		"FREE  ")	\
> -	EM(netfs_rreq_trace_resubmit,		"RESUBM")	\
> -	EM(netfs_rreq_trace_unlock,		"UNLOCK")	\
> -	EM(netfs_rreq_trace_unmark,		"UNMARK")	\
> -	E_(netfs_rreq_trace_write,		"WRITE ")
> +	EM(netfs_rreq_trace_assess,		"ASSESS ")	\
> +	EM(netfs_rreq_trace_copy,		"COPY   ")	\
> +	EM(netfs_rreq_trace_done,		"DONE   ")	\
> +	EM(netfs_rreq_trace_free,		"FREE   ")	\
> +	EM(netfs_rreq_trace_resubmit,		"RESUBMT")	\
> +	EM(netfs_rreq_trace_unlock,		"UNLOCK ")	\
> +	E_(netfs_rreq_trace_unmark,		"UNMARK ")
>  
>  #define netfs_sreq_sources					\
>  	EM(NETFS_FILL_WITH_ZEROES,		"ZERO")		\
> @@ -134,7 +134,7 @@ TRACE_EVENT(netfs_rreq,
>  
>  	    TP_STRUCT__entry(
>  		    __field(unsigned int,		rreq		)
> -		    __field(unsigned short,		flags		)
> +		    __field(unsigned int,		flags		)
>  		    __field(enum netfs_rreq_trace,	what		)
>  			     ),
>  
> @@ -182,8 +182,8 @@ TRACE_EVENT(netfs_sreq,
>  
>  	    TP_printk("R=%08x[%u] %s %s f=%02x s=%llx %zx/%zx e=%d",
>  		      __entry->rreq, __entry->index,
> -		      __print_symbolic(__entry->what, netfs_sreq_traces),
>  		      __print_symbolic(__entry->source, netfs_sreq_sources),
> +		      __print_symbolic(__entry->what, netfs_sreq_traces),
>  		      __entry->flags,
>  		      __entry->start, __entry->transferred, __entry->len,
>  		      __entry->error)
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
