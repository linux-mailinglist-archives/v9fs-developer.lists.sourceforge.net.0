Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F033E2F3
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Mar 2021 01:44:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMKIe-0007J4-Hh; Wed, 17 Mar 2021 00:44:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lMKIc-0007Ix-T5
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 00:44:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hdc3Z4qXX9l8XXJJcPsajObPuLYLca+A1Hq/au570EA=; b=TCinSP2k4OO5Sg1McGBwj+48bX
 zxrlgn1SviFRXJdOC1KnAz/LKzKrNCVSugcTFRBjNn6pA2HDRL0o/ioo1fNHuVuTbqCGzQwu5Q5XZ
 S3JpsWzCctebH5ocN8cNIvaHAiTbpbffqiedSXYEtO2yffsSrMbwaOuh3hijY8kIiOxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hdc3Z4qXX9l8XXJJcPsajObPuLYLca+A1Hq/au570EA=; b=IV1m79rjAZZnBqiMKS3qOwWUjj
 Ja4EKVt2BpA3y4rDztph+sEAQBmf34e65UdfVSUlG/q/AxJhBHiIM9R0g/o6gxmBcT9FHonfef3FU
 +L3OShpn+VtI6I5SGbT8MePWT6Rt44bMsVg9z127wV3L648gWdHJR802hiPe/CSfNPKU=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lMKIJ-008Q4b-H5
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 00:44:34 +0000
Received: by mail-lf1-f41.google.com with SMTP id t18so383062lfl.3
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Mar 2021 17:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hdc3Z4qXX9l8XXJJcPsajObPuLYLca+A1Hq/au570EA=;
 b=YqsIQMoBpBXzCzWbXra19j5jdGRkI2qmReN0oKioV0Shal06ZaKrGs1JdX7FzgzYcr
 nVdCUGWHZEm/QGFrHGtKf2wWR/L5xQyhWnIB3r3hvDiwBN64JQlL/ROMD8G8P5PUnBxO
 I6l7MXffemgprdgtj4mLDpX7ZtfZ2Y1ecu3YE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hdc3Z4qXX9l8XXJJcPsajObPuLYLca+A1Hq/au570EA=;
 b=RDkQmJZfbmzstfIPg2f9Ki7ga2bEC41bRMacmDEGOzyU77LSPrAAvSl1W4eS5oNGip
 ht5pqJGVikr3oYCDD62f4AwNfO+2VeqiUtOUuJ8hZy6T+b46gDT6GFMZ5IvdBSZ49UhZ
 GgfyXa6GKEI6dvp5v8ilM0q4jTQ8sOb5yPm5/c2/R0OTmXvRx+5burECd1A3L+4gDikb
 9Iylxbbc8h6JP7rX77AbiYkLXj0nnCjA5MTvpJNuSJUAJPCUpXVNxYeJ+j1vgKDXSjCh
 5wfpLqpmYrWWLOIaBnoNAPqeDZ9VADfhZbAL9TDIm0jMEt7/XbGIxEb0vic1OwAM/+QO
 5LkQ==
X-Gm-Message-State: AOAM531ySQLkTHv2L84RqX3xbQEyNR8WITJLmYK+oVRK8e3jo7H+3HYa
 DZn9alCDonSsywyN/ZJWIHmwhgodJcGV3A==
X-Google-Smtp-Source: ABdhPJzSYB68m6B4MuFcpyXbl0MCpaTOL0+Lyekh4K5GOTFxtye1AO9B0FXQ3MdKPByaAPOvoDjJ7A==
X-Received: by 2002:a05:6512:1085:: with SMTP id
 j5mr807797lfg.592.1615941848382; 
 Tue, 16 Mar 2021 17:44:08 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id v19sm3215117lfi.39.2021.03.16.17.44.06
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Mar 2021 17:44:07 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id p21so333841lfu.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Mar 2021 17:44:06 -0700 (PDT)
X-Received: by 2002:ac2:4250:: with SMTP id m16mr745431lfl.40.1615941846610;
 Tue, 16 Mar 2021 17:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <20210316190707.GD3420@casper.infradead.org>
In-Reply-To: <20210316190707.GD3420@casper.infradead.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 16 Mar 2021 17:43:50 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
Message-ID: <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.41 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lMKIJ-008Q4b-H5
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 David Howells <dhowells@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

[ Adding btrfs people explicitly, maybe they see this on the fs-devel
list, but maybe they don't react .. ]

On Tue, Mar 16, 2021 at 12:07 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> This isn't a problem with this patch per se, but I'm concerned about
> private2 and expected page refcounts.

Ugh. You are very right.

It would be good to just change the rules - I get the feeling nobody
actually depended on them anyway because they were _so_ esoteric.

> static inline int is_page_cache_freeable(struct page *page)
> {
>         /*
>          * A freeable page cache page is referenced only by the caller
>          * that isolated the page, the page cache and optional buffer
>          * heads at page->private.
>          */
>         int page_cache_pins = thp_nr_pages(page);
>         return page_count(page) - page_has_private(page) == 1 + page_cache_pins;

You're right, that "page_has_private()" is really really nasty.

The comment is, I think, the traditional usage case, which used to be
about page->buffers. Obviously these days it is now about
page->private with PG_private set, pointing to buffers
(attach_page_private() and detach_page_private()).

But as you point out:

> #define PAGE_FLAGS_PRIVATE                              \
>         (1UL << PG_private | 1UL << PG_private_2)
>
> So ... a page with both flags cleared should have a refcount of N.
> A page with one or both flags set should have a refcount of N+1.

Could we just remove the PG_private_2 thing in this context entirely,
and make the rule be that

 (a) PG_private means that you have some local private data in
page->private, and that's all that matters for the "freeable" thing.

 (b) PG_private_2 does *not* have the same meaning, and has no bearing
on freeability (and only the refcount matters)

I _)think_ the btrfs behavior is to only use PagePrivate2() when it
has a reference to the page, so btrfs doesn't care?

I think fscache is already happy to take the page count when using
PG_private_2 for locking, exactly because I didn't want to have any
confusion about lifetimes. But this "page_has_private()" math ends up
meaning it's confusing anyway.

btrfs people? What are the semantics for PG_private_2? Is it just a
flag, and you really don't want it to have anything to do with any
page lifetime decisions? Or?

        Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
