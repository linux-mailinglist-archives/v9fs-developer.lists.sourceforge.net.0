Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EAC433D22
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 19:13:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcsfy-0006eT-Oo; Tue, 19 Oct 2021 17:13:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@redhat.com>) id 1mcsfx-0006eL-QX
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 17:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4i8IYWG9Vqjc7NrxHtrIVVcfleXY1klKtzfa0ewfz4w=; b=jY1sltYEp/OCrpuqPeK9cbJ/sQ
 K0H44RZ6kmW7OJvJfE4m0rjkWiGGiTi64sIEHtbuH4G956IlLdW2hV5GWj13l5T9dsbUmgEpUBaGz
 i9BxSY/p26ApU3YBjXBPj+o6wtsHlUhzizn6Rl9MFGlQp4HuBxexcn2FuBGl136QqPfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4i8IYWG9Vqjc7NrxHtrIVVcfleXY1klKtzfa0ewfz4w=; b=FEsh+uo5kxDTdvoE9QhZ3c+Y3K
 CdhbBARfSQLjshyKBaLiHIbPBcJdVxuoSIpE72HSoJ8p4vVcf9dFLSMNJW26v4T5w7U5ZuKTCD1VW
 4E5qrhiWEhyM3ObIq9ci+mdp/v0qNa82hpHT/hu16u8CiDUI+kT0E1elEU6XWO9N/eRk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcsfp-000241-J0
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 17:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634663587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4i8IYWG9Vqjc7NrxHtrIVVcfleXY1klKtzfa0ewfz4w=;
 b=gCwv+PqV7NJfQgAG0eVDmGkuM3HW+5uSYXJbWK5MCwk5Vbt85RxTazvEo6NGuzc4tJxOK4
 DpcrvPUl8kljKr99KkE/01KuiZj59w/L5pG7UsKpWlJ69uDq7mNxdvDT/VSpFNlk8KbV+7
 SNvICqWKMDTILFgEFIR/u+CdFy4IzfQ=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-568-y8S6K1KYMA-lKskpVAcxzQ-1; Tue, 19 Oct 2021 13:13:06 -0400
X-MC-Unique: y8S6K1KYMA-lKskpVAcxzQ-1
Received: by mail-qv1-f71.google.com with SMTP id
 q9-20020ad45749000000b00382b7c83aa1so485889qvx.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 19 Oct 2021 10:13:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=4i8IYWG9Vqjc7NrxHtrIVVcfleXY1klKtzfa0ewfz4w=;
 b=0dCFrJn3lFulVc2FlpBCPwP2CIg0XcT73yW6Ip6ZNviei3CTpL9X19ILIEEv58dRZ1
 uESLseIrHLiFM9jSFYuBHaqNzE06x0uRi794gFqoWbycLdkwkKiNmhOAlw81RQ6GVB6r
 pkHQZxZKWHa9meJgQcLKJdMWJ3NBCsRso6zNejSfHwRF7zJAiMC42BhERgrz4s18I09R
 Pgj3JtwlqES5W/YnEtHr7390CliV4EXhDYGHdO3LZf5PNH3JJFqCNHgKYcEixvLnaeTh
 z7OW+x6YKUAb3jf34o86WvDQ7uEL839kt/JPQmnZGWamWddTFrgGxT0hAlKsMR/ew/Kz
 0rvw==
X-Gm-Message-State: AOAM531DuNqjovtmm1DdRgRb1tKavu88mkLnSc3aUgSwMZv+Gwq2sN+D
 Fd6Iwk5T+AoDejkhcjXaZtAPXVFqDbEVDRGHiajMMJas6JXNMR42EHERv+uW+RTph/Jqxeee3QT
 AtoVwSi3x+YndRC7hyKbcSLHe3IioCDRoPnc=
X-Received: by 2002:ac8:59ce:: with SMTP id f14mr1309289qtf.418.1634663585803; 
 Tue, 19 Oct 2021 10:13:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxCTLnI4O14CVDS0WnTvhZl4wAoj8tNDS3DFRVR0xteRC6rTs30rKL1ujbd9t4swW1RKTIeyw==
X-Received: by 2002:ac8:59ce:: with SMTP id f14mr1309267qtf.418.1634663585628; 
 Tue, 19 Oct 2021 10:13:05 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id s203sm8190618qke.21.2021.10.19.10.13.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 10:13:05 -0700 (PDT)
Message-ID: <b8cd66bd0c6341b5f9fb8c885013bbb7a8abd3f2.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 19 Oct 2021 13:13:04 -0400
In-Reply-To: <163456863216.2614702.6384850026368833133.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456863216.2614702.6384850026368833133.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2021-10-18 at 15:50 +0100, David Howells wrote: >
 Under some circumstances, filemap_read() will allocate sufficient pages to
 > read to the end of the file, call readahead/readpages on them and [...]
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcsfp-000241-J0
Subject: Re: [V9fs-developer] [PATCH 01/67] mm: Stop filemap_read() from
 grabbing a superfluous page
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Kent Overstreet <kent.overstreet@gmail.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-10-18 at 15:50 +0100, David Howells wrote:
> Under some circumstances, filemap_read() will allocate sufficient pages to
> read to the end of the file, call readahead/readpages on them and copy the
> data over - and then it will allocate another page at the EOF and call
> readpage on that and then ignore it.  This is unnecessary and a waste of
> time and resources.
> 
> filemap_read() *does* check for this, but only after it has already done
> the allocation and I/O.  Fix this by checking before calling
> filemap_get_pages() also.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> Acked-by: Kent Overstreet <kent.overstreet@gmail.com>
> cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> cc: linux-mm@kvack.org
> cc: linux-fsdevel@vger.kernel.org
> Link: https://lore.kernel.org/r/160588481358.3465195.16552616179674485179.stgit@warthog.procyon.org.uk/
> ---
> 
>  mm/filemap.c |    4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/mm/filemap.c b/mm/filemap.c
> index dae481293b5d..c0cdc44c844e 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -2625,6 +2625,10 @@ ssize_t filemap_read(struct kiocb *iocb, struct iov_iter *iter,
>  		if ((iocb->ki_flags & IOCB_WAITQ) && already_read)
>  			iocb->ki_flags |= IOCB_NOWAIT;
>  
> +		isize = i_size_read(inode);
> +		if (unlikely(iocb->ki_pos >= isize))
> +			goto put_pages;
> +
>  		error = filemap_get_pages(iocb, iter, &pvec);
>  		if (error < 0)
>  			break;
> 
> 

I would wager that it's worth checking for this. I imagine read calls
beyond EOF are common enough that it's probably helpful to optimize that
case:

Acked-by: Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
