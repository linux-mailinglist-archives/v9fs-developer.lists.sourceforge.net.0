Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBE8240B41
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 18:37:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k5AnF-0004tG-Jd; Mon, 10 Aug 2020 16:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1k5AnE-0004t0-8u
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 16:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E7cstcAHVFGfhscj0UF342G+MM1KSXqD/P1R9pHujqc=; b=XvVaQGo46+wH94HiZQk36yl4c8
 tbj/+yUjnoLb85FSuX2LO6QrP0bqCVHJ2+06vGmR2WfM/pvzmDonY2xPZZgUhj9aG3Cdb3rIPR5r9
 oYy9PXXGNdL+3ofBfGe1fLjCHrJY5zT0KMOOHPXPLd03n0jmWEb92246F8Nrsr+gQ7ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E7cstcAHVFGfhscj0UF342G+MM1KSXqD/P1R9pHujqc=; b=MYMRJ3953IKgpqLYK+ATxXEGbM
 +GPek8gmXMi6K4a/AizmWcXVDBABcyZP3HhEqhWGVAqfunaVqcGXF8/YV6keGE4rNa2Hmz5KqUcwT
 gjn/16cLFUGtwJY6AvKGEKceXuaDxF6f14/io0AN5nhf0Coch6285YRdBPQW/c5WQ0C0=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k5An7-002yDg-C6
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 16:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597077394;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=E7cstcAHVFGfhscj0UF342G+MM1KSXqD/P1R9pHujqc=;
 b=Qbq1S0xc0lQSx2UtS3Tn6Ea1XHiRPh3IcXNTs3ne8LbiI99XMwjTFtPIuGue22+psdieB/
 SbokdoFx2HyRq7Ar/eikH4RkbegXSfCSqwIRPzJpcTteZxQCHS/kRHZ03f6qslW0hbTJQ2
 cJRlOTppYUr7MQi3om6ULSSHr+KUQUI=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-SmbxfLz0PX6R50n7x1SUiA-1; Mon, 10 Aug 2020 12:36:30 -0400
X-MC-Unique: SmbxfLz0PX6R50n7x1SUiA-1
Received: by mail-ed1-f70.google.com with SMTP id z19so3435524edr.10
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Aug 2020 09:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7cstcAHVFGfhscj0UF342G+MM1KSXqD/P1R9pHujqc=;
 b=MYVB6aIAysI6UToIP1e43TWHsrA1BmtGgm+hAi1vgUtoy1WuOwwQT0yRVy/8kDPIaZ
 H5r7AT+Hba1cX+9tkipSFFeXY2u3BrXaHoHc3Ks9P+3Wpfd0Tb0gqxu6UhHYqiM7cz+t
 chbSwGZ7nAt3i0nxMh3Kh6/rnsVv9xBm1NkTt/9ObJ5D3pGQKLL9jR1ZZDLh2N+zBWLa
 xCQp3QXM1AbbxB24DwSZZE+g1xIluwSUhmvV+9nYjoEqrlrVPijZ/10JlUE7ohOVvzL+
 Pid1PR9tcY47XJQHFutiKRSlHjt1MOPL5ejGJGF6J/+C6/NtCr2anZjnSk6zcIxKPHnQ
 h4yA==
X-Gm-Message-State: AOAM531RS0d2Vp5Ke0qfjAC0yqTWy9Hqffa25CaXfnVk79wz6QU8R3DN
 FibYuAHCNNSuSiC24cljPgFvpkYFX/xzutPsUfdwZzOGU1lnQBcgc8AKVUSA39I6YxRbm05oKLi
 eDulKD+ynowbgAvFUALW6Ik49PpXJ9yrkZ9elJPbOad5pgTZoT34=
X-Received: by 2002:a17:906:a4b:: with SMTP id
 x11mr23475880ejf.83.1597077389407; 
 Mon, 10 Aug 2020 09:36:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxf3SVX6ZuISdp8oMWj+mkcjWbaPxLFNRh9thEVecTra/0s+AaKG5bkamyJTprqlXgn7eVTDeevbLYmrbh9t0=
X-Received: by 2002:a17:906:a4b:: with SMTP id
 x11mr23475853ejf.83.1597077389176; 
 Mon, 10 Aug 2020 09:36:29 -0700 (PDT)
MIME-Version: 1.0
References: <447452.1596109876@warthog.procyon.org.uk>
 <1851200.1596472222@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
 <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
 <672169.1597074488@warthog.procyon.org.uk>
In-Reply-To: <672169.1597074488@warthog.procyon.org.uk>
From: David Wysochanski <dwysocha@redhat.com>
Date: Mon, 10 Aug 2020 12:35:53 -0400
Message-ID: <CALF+zO=DkGmNDrrr-WxU6L1Xw8MA4+NrqVbvNMctwSKjy0Yh_w@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k5An7-002yDg-C6
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Steve French <smfrench@gmail.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Aug 10, 2020 at 11:48 AM David Howells <dhowells@redhat.com> wrote:
>
> Steve French <smfrench@gmail.com> wrote:
>
> > cifs.ko also can set rsize quite small (even 1K for example, although
> > that will be more than 10x slower than the default 4MB so hopefully no
> > one is crazy enough to do that).
>
> You can set rsize < PAGE_SIZE?
>
> > I can't imagine an SMB3 server negotiating an rsize or wsize smaller than
> > 64K in today's world (and typical is 1MB to 8MB) but the user can specify a
> > much smaller rsize on mount.  If 64K is an adequate minimum, we could change
> > the cifs mount option parsing to require a certain minimum rsize if fscache
> > is selected.
>
> I've borrowed the 256K granule size used by various AFS implementations for
> the moment.  A 512-byte xattr can thus hold a bitmap covering 1G of file
> space.
>
>

Is it possible to make the granule size configurable, then reject a
registration if the size is too small or not a power of 2?  Then a
netfs using the API could try to set equal to rsize, and then error
out with a message if the registration was rejected.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
