Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B672A4D31C9
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 16:30:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRyH7-00087i-Hq; Wed, 09 Mar 2022 15:30:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@redhat.com>) id 1nRyH6-00087c-St
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 15:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6EsyJDNMaW7aLzLkycFQGvPjjJ3FlfDqU3pzS9T1Q8I=; b=XP+b8AiE4iFbCcCZD4Gtr8fyEO
 OJNsAqATjJ09+f1NQo3tR82gPZ5RklqP+HVgMuhgG1c3uur6fgMFAxHH5P0Bz7NkiUAjAimzl3+2X
 XSxPDYCA2ricf0IwVVXN4d9M5Y/k6fZdxN9fhMxieQizXTNtOjmLz8jrrDO1qIa3KQr4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6EsyJDNMaW7aLzLkycFQGvPjjJ3FlfDqU3pzS9T1Q8I=; b=gab0mFn2nKov3AJRYt93dffQ4r
 3Wq3ohf2FoWFRF4xVHB5Lh6b3lHG2mzPZkXPiS7XefSWhQJVBGY/sckHY6ZO9HYCFcSvN0x6tWfV2
 6YWTWu/tNQMAmocVNhXYItHbVfaakCm2+tzpmA9F10YOG/xg+AhJKHW/+AiJBacLMIm4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRyH2-0004jo-41
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 15:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646839841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6EsyJDNMaW7aLzLkycFQGvPjjJ3FlfDqU3pzS9T1Q8I=;
 b=N+gY2C4FWhyo1L05/xf6vKSLuQkAulCUSmVu0XiV7Z6gzHPMLM21dUwrLo/xUWbfXyrR+0
 ISvIu+9QslLVYxu7SDnq52ImpumYVzFO0Jr76RZUpUrH1ruRZApYAn/00s60WNmKAPA2li
 eyTXRJGZ+umn/9PCyd7qN5D5lZfFB3w=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-14-oat7xHoENN6L820a6DstVw-1; Wed, 09 Mar 2022 10:30:39 -0500
X-MC-Unique: oat7xHoENN6L820a6DstVw-1
Received: by mail-qk1-f200.google.com with SMTP id
 m6-20020a37a306000000b0067b189190c3so1744871qke.20
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 09 Mar 2022 07:30:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=6EsyJDNMaW7aLzLkycFQGvPjjJ3FlfDqU3pzS9T1Q8I=;
 b=OM4pj0Xq+iJrg7/8Dj0XS18EBggq2zj6K36IL3KF50Y3xlYWO2jpdExd2wB7IRI4eP
 z8yh5GDI1YLXTXnlYfCh/uOjdIZFXznCytGeyc9Gd8t21OgU8pGcN4x/5ThW8PoPOTIG
 vPwzrGOTnTzMqgoo5obsY/7F65GdMtHM6MLVN7jKt3Vc5uWtip5mN/7p7NPouYR+W1t7
 pAx3UGYCzlP1AHeiDVrRG90OVopCp+3mfu0Uk/E54u9D3L9FhhnCmQ2e3cC2gN6XlVwy
 8/yOnmYdcJ3uaEO1RikWHJHYh75ATe92Juw6aCVjDAQ7qtJaZtbPOQ7KEmxfHvvKGxh6
 OAHg==
X-Gm-Message-State: AOAM533LV4MoA7PKGPqg+dGO5peTGkuzn0Obbk+0IFC+V6EWAVAKyU/9
 qYyWX6nBepId21XilbuF/nLqEWxVp7AcpQOd+7MBvQVMBIko6Y3/3RCfOWhEpBk5rcDI3TpXEdr
 2Df5dIBXVKtQn/fj+xqOdS1LTUce9G5OI2Ks=
X-Received: by 2002:a05:622a:102:b0:2de:6596:73ff with SMTP id
 u2-20020a05622a010200b002de659673ffmr166620qtw.75.1646839838462; 
 Wed, 09 Mar 2022 07:30:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwFSSJDdxTCAvhdcrcS/qlT4SNihglL15R3cIkJvlDoonZ+iPAI4r0UaiLtAuAoNBZeA0b9IA==
X-Received: by 2002:a05:622a:102:b0:2de:6596:73ff with SMTP id
 u2-20020a05622a010200b002de659673ffmr166596qtw.75.1646839838220; 
 Wed, 09 Mar 2022 07:30:38 -0800 (PST)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154]) by smtp.gmail.com with ESMTPSA id
 x12-20020a05620a14ac00b0060deaee7a21sm1055813qkj.51.2022.03.09.07.30.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 07:30:37 -0800 (PST)
Message-ID: <c2f4b3dc107b106e04c48f54945a12715cccfdf3.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 10:30:36 -0500
In-Reply-To: <164678192454.1200972.4428834328108580460.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678192454.1200972.4428834328108580460.stgit@warthog.procyon.org.uk>
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
 Content preview:  On Tue, 2022-03-08 at 23:25 +0000, David Howells wrote: >
 netfs has a number of lists of symbols for use in tracing, listed in an >
 enum and then listed again in a symbol->string mapping for use with [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1nRyH2-0004jo-41
Subject: Re: [V9fs-developer] [PATCH v2 02/19] netfs: Generate enums from
 trace symbol mapping lists
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

On Tue, 2022-03-08 at 23:25 +0000, David Howells wrote:
> netfs has a number of lists of symbols for use in tracing, listed in an
> enum and then listed again in a symbol->string mapping for use with
> __print_symbolic().  This is, however, redundant.
> 
> Instead, use the symbol->string mapping list to also generate the enum
> where the enum is in the same file.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> 
> Link: https://lore.kernel.org/r/164622980839.3564931.5673300162465266909.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  include/trace/events/netfs.h |   57 ++++++++++--------------------------------
>  1 file changed, 14 insertions(+), 43 deletions(-)
> 
> diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
> index e6f4ebbb4c69..88d9a74dd346 100644
> --- a/include/trace/events/netfs.h
> +++ b/include/trace/events/netfs.h
> @@ -15,49 +15,6 @@
>  /*
>   * Define enums for tracing information.
>   */
> -#ifndef __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
> -#define __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
> -
> -enum netfs_read_trace {
> -	netfs_read_trace_expanded,
> -	netfs_read_trace_readahead,
> -	netfs_read_trace_readpage,
> -	netfs_read_trace_write_begin,
> -};
> -
> -enum netfs_rreq_trace {
> -	netfs_rreq_trace_assess,
> -	netfs_rreq_trace_done,
> -	netfs_rreq_trace_free,
> -	netfs_rreq_trace_resubmit,
> -	netfs_rreq_trace_unlock,
> -	netfs_rreq_trace_unmark,
> -	netfs_rreq_trace_write,
> -};
> -
> -enum netfs_sreq_trace {
> -	netfs_sreq_trace_download_instead,
> -	netfs_sreq_trace_free,
> -	netfs_sreq_trace_prepare,
> -	netfs_sreq_trace_resubmit_short,
> -	netfs_sreq_trace_submit,
> -	netfs_sreq_trace_terminated,
> -	netfs_sreq_trace_write,
> -	netfs_sreq_trace_write_skip,
> -	netfs_sreq_trace_write_term,
> -};
> -
> -enum netfs_failure {
> -	netfs_fail_check_write_begin,
> -	netfs_fail_copy_to_cache,
> -	netfs_fail_read,
> -	netfs_fail_short_readpage,
> -	netfs_fail_short_write_begin,
> -	netfs_fail_prepare_write,
> -};
> -
> -#endif
> -
>  #define netfs_read_traces					\
>  	EM(netfs_read_trace_expanded,		"EXPANDED ")	\
>  	EM(netfs_read_trace_readahead,		"READAHEAD")	\
> @@ -98,6 +55,20 @@ enum netfs_failure {
>  	EM(netfs_fail_short_write_begin,	"short-write-begin")	\
>  	E_(netfs_fail_prepare_write,		"prep-write")
>  
> +#ifndef __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
> +#define __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
> +
> +#undef EM
> +#undef E_
> +#define EM(a, b) a,
> +#define E_(a, b) a
> +
> +enum netfs_read_trace { netfs_read_traces } __mode(byte);
> +enum netfs_rreq_trace { netfs_rreq_traces } __mode(byte);
> +enum netfs_sreq_trace { netfs_sreq_traces } __mode(byte);
> +enum netfs_failure { netfs_failures } __mode(byte);
> +

Should you undef EM and E_ here after creating these?

> +#endif
>  
>  /*
>   * Export enum symbols via userspace.
> 
> 

Looks fine otherwise:

Acked-by: Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
