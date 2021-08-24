Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7C83F603B
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:24:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIXLe-0004NJ-TT; Tue, 24 Aug 2021 14:24:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1mIXLe-0004N4-3S
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rXM+IBI3cANg1BoBFaXjt+OJ0V+p5mrya6klP9WdYlA=; b=H4/q4C220F0Tle9VljFahpnLzQ
 Za0NttmUCTN4GaS8ZE/sBMNWK21UkbdXSz7PjpEu33Ic9H2ll2ire6cbUBQ5cmpnRIXsz6j5I2+tK
 kiPs9FOqF96ANMU33foXGm6Z9E+NNfeVXZrOsVh2MoUceyf5kx+m6Qhn0Xg9dAG/NVIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rXM+IBI3cANg1BoBFaXjt+OJ0V+p5mrya6klP9WdYlA=; b=a2jy6fBPFWLIbQldfCyKwzOfyk
 MqH0ug8Qdki0EQ4XhHMeLgjpNGJEJ/D49I88gxmL0wgkRr/wuwmBv4qt8qf7ryH5qSJGuAhI7XTrQ
 4zwfho4VO5qQoOAS5y6HtuDaJH1yIvWINghThYeE19K2uLf0g8Qm7rsiterlEILuWgiI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIXLc-0005Mq-3D
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629815047;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rXM+IBI3cANg1BoBFaXjt+OJ0V+p5mrya6klP9WdYlA=;
 b=blgt5QHXN/+r0Gs60xHNTw07lsppJhxUMHtAuTHPRo0dFyWuev2QX8zEOIr/sT7KPIkoX7
 ChaYocHJqiX5rUpr93oZdeUcIRKj1/89PiyfG2aNSVGOmLpxmZiWZ6WmMXXtjKbH3vD4is
 r8ymLnghpL8QCkhILdjWGg8bMvPBEWA=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-lRAvsL7tOZiC4nhOaQkmLw-1; Tue, 24 Aug 2021 10:24:06 -0400
X-MC-Unique: lRAvsL7tOZiC4nhOaQkmLw-1
Received: by mail-qv1-f72.google.com with SMTP id
 h14-20020a0cffce000000b00372ea3f12a5so1273000qvv.9
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 Aug 2021 07:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=rXM+IBI3cANg1BoBFaXjt+OJ0V+p5mrya6klP9WdYlA=;
 b=QYutMD6DISTjC8U0RNmJInsbsgVooIZYAi2pykRFUtIeOkwJLJJWrBMNP/mfdPCEuc
 JE0rNTjN1J2nnIZM1aHucYzR3IdDbP3ZuqZCTB0Hs6zpXhOxeGCjb120P4v5bWRKmYhC
 lccI8/QFxEPlHWCGhX1WH79hhJcqj+EmV3o2x7rciUGDSUX9asZv/JzphPzLSumIuAsL
 WpbLYsIb/EC6o6RO+MIB6Uqxwi5GzG5DhpwfFv8dvIlNrE203rjYG03EmW/BgeXSKtoc
 IuxsrbEY7TYaWoxMqP6tgRgv+qiyQVOrp4NzzijB9KBiKxoCxdW4x6rv/wAZQNglNc5U
 6Phg==
X-Gm-Message-State: AOAM530iKwIOwmA3ZzaigtX4TOprUiPSLI1MZ1CwrHIZG92BPIOn6G7v
 7yyDN94IWzyHykrH94boFJmEqxOId7aN7IVGC6MAauq1sIc4zxdknAX7xoPkV1lM4TA+U+Ld9Gn
 QSMP0Z4Wg6i7469sSLzJrZPZ/nb8hcl/YxWs=
X-Received: by 2002:ae9:ea19:: with SMTP id f25mr8455948qkg.341.1629815045876; 
 Tue, 24 Aug 2021 07:24:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz0k36wj5zNWxDPPKfaTblHo9ascSv6RZDAgZIszilZOADFHpaoZorFodsGnWRqf0RVmvNYxA==
X-Received: by 2002:ae9:ea19:: with SMTP id f25mr8455927qkg.341.1629815045702; 
 Tue, 24 Aug 2021 07:24:05 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id f29sm273492qtv.34.2021.08.24.07.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 07:24:05 -0700 (PDT)
Message-ID: <6370d0a74c3ceb79c53305a64ba7a982d16d34b4.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 24 Aug 2021 10:24:04 -0400
In-Reply-To: <162431203107.2908479.3259582550347000088.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
 <162431203107.2908479.3259582550347000088.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIXLc-0005Mq-3D
Subject: Re: [V9fs-developer] [PATCH 11/12] fscache: Fix
 fscache_cookie_put() to not deref after dec
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
 linux-afs@lists.infradead.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-06-21 at 22:47 +0100, David Howells wrote:
> fscache_cookie_put() accesses the cookie it has just put inside the
> tracepoint that monitors the change - but this is something it's not
> allowed to do if we didn't reduce the count to zero.

Do you mean "if the count went to zero." ?

> 
> Fix this by dropping most of those values from the tracepoint and grabbing
> the cookie debug ID before doing the dec.
> 
> Also take the opportunity to switch over the usage and where arguments on
> the tracepoint to put the reason last.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
> 
>  fs/fscache/cookie.c            |   10 ++++++----
>  fs/fscache/internal.h          |    2 +-
>  fs/fscache/netfs.c             |    2 +-
>  include/trace/events/fscache.h |   24 +++++++-----------------
>  4 files changed, 15 insertions(+), 23 deletions(-)
> 
> diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
> index 2558814193e9..6df3732cf1b4 100644
> --- a/fs/fscache/cookie.c
> +++ b/fs/fscache/cookie.c
> @@ -225,8 +225,8 @@ struct fscache_cookie *fscache_hash_cookie(struct fscache_cookie *candidate)
>  
>  collision:
>  	if (test_and_set_bit(FSCACHE_COOKIE_ACQUIRED, &cursor->flags)) {
> -		trace_fscache_cookie(cursor, fscache_cookie_collision,
> -				     atomic_read(&cursor->usage));
> +		trace_fscache_cookie(cursor->debug_id, atomic_read(&cursor->usage),
> +				     fscache_cookie_collision);
>  		pr_err("Duplicate cookie detected\n");
>  		fscache_print_cookie(cursor, 'O');
>  		fscache_print_cookie(candidate, 'N');
> @@ -305,7 +305,8 @@ struct fscache_cookie *__fscache_acquire_cookie(
>  
>  	cookie = fscache_hash_cookie(candidate);
>  	if (!cookie) {
> -		trace_fscache_cookie(candidate, fscache_cookie_discard, 1);
> +		trace_fscache_cookie(candidate->debug_id, 1,
> +				     fscache_cookie_discard);
>  		goto out;
>  	}
>  
> @@ -866,8 +867,9 @@ void fscache_cookie_put(struct fscache_cookie *cookie,
>  	_enter("%x", cookie->debug_id);
>  
>  	do {
> +		unsigned int cookie_debug_id = cookie->debug_id;
>  		usage = atomic_dec_return(&cookie->usage);
> -		trace_fscache_cookie(cookie, where, usage);
> +		trace_fscache_cookie(cookie_debug_id, usage, where);
>  
>  		if (usage > 0)
>  			return;
> diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
> index a49136c63e4b..345105dbbfd1 100644
> --- a/fs/fscache/internal.h
> +++ b/fs/fscache/internal.h
> @@ -291,7 +291,7 @@ static inline void fscache_cookie_get(struct fscache_cookie *cookie,
>  {
>  	int usage = atomic_inc_return(&cookie->usage);
>  
> -	trace_fscache_cookie(cookie, where, usage);
> +	trace_fscache_cookie(cookie->debug_id, usage, where);
>  }
>  
>  /*
> diff --git a/fs/fscache/netfs.c b/fs/fscache/netfs.c
> index cce92216fa28..d6bdb7b5e723 100644
> --- a/fs/fscache/netfs.c
> +++ b/fs/fscache/netfs.c
> @@ -37,7 +37,7 @@ int __fscache_register_netfs(struct fscache_netfs *netfs)
>  	if (!cookie)
>  		goto already_registered;
>  	if (cookie != candidate) {
> -		trace_fscache_cookie(candidate, fscache_cookie_discard, 1);
> +		trace_fscache_cookie(candidate->debug_id, 1, fscache_cookie_discard);
>  		fscache_free_cookie(candidate);
>  	}
>  
> diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
> index 0b9e058aba4d..55b8802740fa 100644
> --- a/include/trace/events/fscache.h
> +++ b/include/trace/events/fscache.h
> @@ -160,37 +160,27 @@ fscache_cookie_traces;
>  
>  
>  TRACE_EVENT(fscache_cookie,
> -	    TP_PROTO(struct fscache_cookie *cookie,
> -		     enum fscache_cookie_trace where,
> -		     int usage),
> +	    TP_PROTO(unsigned int cookie_debug_id,
> +		     int usage,
> +		     enum fscache_cookie_trace where),
>  
> -	    TP_ARGS(cookie, where, usage),
> +	    TP_ARGS(cookie_debug_id, usage, where),
>  
>  	    TP_STRUCT__entry(
>  		    __field(unsigned int,		cookie		)
> -		    __field(unsigned int,		parent		)
>  		    __field(enum fscache_cookie_trace,	where		)
>  		    __field(int,			usage		)
> -		    __field(int,			n_children	)
> -		    __field(int,			n_active	)
> -		    __field(u8,				flags		)
>  			     ),
>  
>  	    TP_fast_assign(
> -		    __entry->cookie	= cookie->debug_id;
> -		    __entry->parent	= cookie->parent ? cookie->parent->debug_id : 0;
> +		    __entry->cookie	= cookie_debug_id;
>  		    __entry->where	= where;
>  		    __entry->usage	= usage;
> -		    __entry->n_children	= atomic_read(&cookie->n_children);
> -		    __entry->n_active	= atomic_read(&cookie->n_active);
> -		    __entry->flags	= cookie->flags;
>  			   ),
>  
> -	    TP_printk("%s c=%08x u=%d p=%08x Nc=%d Na=%d f=%02x",
> +	    TP_printk("%s c=%08x u=%d",
>  		      __print_symbolic(__entry->where, fscache_cookie_traces),
> -		      __entry->cookie, __entry->usage,
> -		      __entry->parent, __entry->n_children, __entry->n_active,
> -		      __entry->flags)
> +		      __entry->cookie, __entry->usage)
>  	    );
>  
>  TRACE_EVENT(fscache_netfs,
> 
> 

Patch itself looks fine though.
-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
