Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CE936E67D
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Apr 2021 10:05:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lc1fb-00018e-L5; Thu, 29 Apr 2021 08:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1lc1fa-00018W-M8
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 08:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cEaWsqveglqKutwIfCWg/c1k8Pjc9F7AASjTBk3kAB0=; b=C3WciNM68ksNx7OidhpFde5Axl
 RcyVFGOGJqkCvRn/5FBjzKsENabL3uxh1CnlyaSq82NDKe64VoYDRARlJb7OKy0NVhPnZ7v1etE/G
 tsm9FSV62e67pT8oYhscBCtGX/rh5ZfIf52tl9z9dx1S5aTIikN33/YwTWe6ZvIGFim4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cEaWsqveglqKutwIfCWg/c1k8Pjc9F7AASjTBk3kAB0=; b=aftnPy49Q3epYYfU0xkETBDOMt
 JAKS27lQGOodFaJ6DxxWiger/wW7WUD8HcKDD5YD6MI5HgW6gx1xNVjNhBvXvBbhGoHUXuvqbx0Mo
 R9mxIp5TwpOiGVRlSjuYOZw90prnSy1V2BFcMrftk5e2sywrPMjk5jfCJEM5oNJCtVRc=;
Received: from mail-vs1-f54.google.com ([209.85.217.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lc1fT-0005ES-A8
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 08:05:10 +0000
Received: by mail-vs1-f54.google.com with SMTP id b4so1110937vst.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 29 Apr 2021 01:05:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cEaWsqveglqKutwIfCWg/c1k8Pjc9F7AASjTBk3kAB0=;
 b=TPy2JCb29Djmgazb2ltXidgK56JLpREsNbKwppMxCrQ9cYR+4R5YP2pXL6IRdvNbj6
 x1OpYQFDR5MXIPdisG3fmwLb2xJOEkwmyLaigVBYJMGvuakk3rXnPPw8A0378LTEX/S2
 qMNf3ivLhKfqNYn/0THum2orEJ1RyZ7gSEGS4YaNAdjETywR5reF75XkvKZlPUm5/ISE
 yEB7THNPJAHqXUjUwj1DcZ8NBPOySL82UIowJmURm29WCwQjFvXqd6eG8Fc6pa2GE3cZ
 wEEbLuNiGl+vOwN1xm/Qcs68OXkwuq8Zm9HiDjC5n1EaC4CD5rDP40Mh0Hb4TRuKTgbM
 4giA==
X-Gm-Message-State: AOAM533cLJlCv9wkaPsarFMep6cSEcU/hgSg2TgfxBEQWeXEXN7zuz+J
 3HJr+8DLW/fo/UNjzSFe5hnFKbbKXU0RCW+GHUQ=
X-Google-Smtp-Source: ABdhPJyOQfCSFL6ivPQSvopdsprRnA2n+Ja7fwwMwXAF5cOL+2KKLY+oOwM93GwYMJWOqvFowThQ0q/7iQPRdk2pFdw=
X-Received: by 2002:a67:fc57:: with SMTP id p23mr29422049vsq.40.1619683497839; 
 Thu, 29 Apr 2021 01:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918455721.3145707.4063925145568978308.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918455721.3145707.4063925145568978308.stgit@warthog.procyon.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Apr 2021 10:04:46 +0200
Message-ID: <CAMuHMdXJZ7iNQE964CdBOU=vRKVMFzo=YF_eiwsGgqzuvZ+TuA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-m68k.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.54 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lc1fT-0005ES-A8
Subject: Re: [V9fs-developer] [PATCH v7 07/31] netfs: Make a netfs helper
 module
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Linux MM <linux-mm@kvack.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 ceph-devel <ceph-devel@vger.kernel.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi David,

On Fri, Apr 23, 2021 at 3:31 PM David Howells <dhowells@redhat.com> wrote:
> Make a netfs helper module to manage read request segmentation, caching
> support and transparent huge page support on behalf of a network
> filesystem.
>
> Signed-off-by: David Howells <dhowells@redhat.com>

Thanks for your patch, which is now commit 3ca236440126f75c ("mm:
Implement readahead_control pageset expansion") upstream.

> --- /dev/null
> +++ b/fs/netfs/Kconfig
> @@ -0,0 +1,8 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config NETFS_SUPPORT
> +       tristate "Support for network filesystem high-level I/O"
> +       help
> +         This option enables support for network filesystems, including
> +         helpers for high-level buffered I/O, abstracting out read
> +         segmentation, local caching and transparent huge page support.

TBH, this help text didn't give me any clue on whether I want to enable
this config option or not.  Do I need it for e.g. NFS, which is a
network filesystem?

I see later patches make AFS and FSCACHE select NETFS_SUPPORT.  If this
is just a library of functions, to be selected by its users, then please
make the symbol invisible.

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
