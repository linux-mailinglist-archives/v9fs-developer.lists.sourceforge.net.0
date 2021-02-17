Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E24731DD5D
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Feb 2021 17:31:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCPjL-0006Le-Qx; Wed, 17 Feb 2021 16:31:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hubcap@omnibond.com>) id 1lCPjK-0006LK-Tv
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 16:31:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KRNZjZzTqfrWLRx1QJmelJFfxfPUcehdqwqj+L7mkPQ=; b=msuQUh/SYjAvZwGuorD+ZAJsAP
 Ol35Z93F3UX0e7RFB08vtTm52YUq+GYieEE1ytCOLCEXZFojE39HP0Q1NqGlj7GRXUorDKsuhk7JA
 wZfPMVF7qmOSZf9vcFzyfD1XBvSQOp3SKriig72+pt+arwZ8iaq/VHwMlpuAouvQ21dQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KRNZjZzTqfrWLRx1QJmelJFfxfPUcehdqwqj+L7mkPQ=; b=PIl0u9sW50D/X1RifTlgJSUYU9
 ouzzBdgOa5iPbdIimzEywPg06oW3Z85yeGAugZ5mxtI5yljYq3zAuekqYui8kEjMmywUPgMXEmyw1
 rUrHhG/uDAyJ9Zb1l4rrX1kGteGBhjFzXAUkXHRzKCGoxlVvbIUjDwpqXiCW9G1UL7ek=;
Received: from mail-yb1-f179.google.com ([209.85.219.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lCPjH-00077J-Vi
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 16:31:10 +0000
Received: by mail-yb1-f179.google.com with SMTP id p193so14349537yba.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 17 Feb 2021 08:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=omnibond-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KRNZjZzTqfrWLRx1QJmelJFfxfPUcehdqwqj+L7mkPQ=;
 b=R8hCb4eKqdCpoFdkYTrVn7FoN33zUtyi/ljWByVLrm0nNn3tup4D+Hft33LDzdElis
 n16SrG3viJflBxrjVIN2QmmXO/BgPFSDWJe1ljVa2OopffyUF0+G8Fh9aoQpou3/MlTR
 6lOKbNE6+B3j4d5dwhv33gPtGhtt8L27dc4EMEm0vGnJ/TAunXib+QvZcOCi9i0mwM86
 k3prqX0Oe/sUpTqzEgE3HcERBdh4YwNsSjrGveT+xsSircuhGURdlWmXiZnYI5Mz2W8Z
 jNhEhauvpFlyX/F69JD4IZFRmykIsAN3vuO7r6enaGZ5EvFYprDuRwGgQKV+8pJmk5aD
 UJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRNZjZzTqfrWLRx1QJmelJFfxfPUcehdqwqj+L7mkPQ=;
 b=cCMkPJJW5A4gdPejXqUeTvZyvlPAhSC2+2R8vVXsM952s3JZm/QjFbuP58bnsQcxkw
 ZTUSF4uRnizOSw5eWdAM+LI8rG3iiY/eGqgnjYTPjkWpSdxc1bwg4HWkGD/gFnE87jjX
 rLK3OxDVQvR9v2LAy4weNlbAm8Jtc7sI2Hz06rbMVqTcFAH7g+yBD3wb1pQPTtsWTCgc
 OoQTD6EJ2IeKYy9ojg3ojlwuPuAxVwkuHVgLPeD+cRgo8Uqd4VIEklIIvT9+fX3F0tv9
 NVM0pFCgAZDocjASNLzw3mvkqOfYBG30q8XLIsGoOjReYB5l82P3/QHBNRFtSP+/+2tv
 C2XA==
X-Gm-Message-State: AOAM530O2O2/LXmvapk8SvSeCw56tXpKszghZ9YtmcOn6Zv16X3jieGU
 TESC0yGjaeApHSsKhavFm0a2bcwITww5zaf4F/mt2uKtjejvBEYo
X-Google-Smtp-Source: ABdhPJy4hyW/PUrDPGqVg3UI4ZfJfCb8Vr2cdTNl0Mc8udn+hWDu9ZRGdP0xDV4oyRaIVmDhAucDgP/5yXuHdlUvdPs=
X-Received: by 2002:a05:6830:2424:: with SMTP id
 k4mr7412732ots.352.1613572627726; 
 Wed, 17 Feb 2021 06:37:07 -0800 (PST)
MIME-Version: 1.0
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
 <20210216103215.GB27714@lst.de>
 <20210216132251.GI2858050@casper.infradead.org>
In-Reply-To: <20210216132251.GI2858050@casper.infradead.org>
From: Mike Marshall <hubcap@omnibond.com>
Date: Wed, 17 Feb 2021 09:36:56 -0500
Message-ID: <CAOg9mSQYBjnMsDj5pMd6MOGTY5w_ZR=pw7VRYKfP5ZwmHBj2=Q@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.179 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.179 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lCPjH-00077J-Vi
Subject: Re: [V9fs-developer] [PATCH 03/33] mm: Implement readahead_control
 pageset expansion
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
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I plan to try and use readahead_expand in Orangefs...

-Mike

On Tue, Feb 16, 2021 at 8:28 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Tue, Feb 16, 2021 at 11:32:15AM +0100, Christoph Hellwig wrote:
> > On Mon, Feb 15, 2021 at 03:44:52PM +0000, David Howells wrote:
> > > Provide a function, readahead_expand(), that expands the set of pages
> > > specified by a readahead_control object to encompass a revised area with a
> > > proposed size and length.
> > >
> > > The proposed area must include all of the old area and may be expanded yet
> > > more by this function so that the edges align on (transparent huge) page
> > > boundaries as allocated.
> > >
> > > The expansion will be cut short if a page already exists in either of the
> > > areas being expanded into.  Note that any expansion made in such a case is
> > > not rolled back.
> > >
> > > This will be used by fscache so that reads can be expanded to cache granule
> > > boundaries, thereby allowing whole granules to be stored in the cache, but
> > > there are other potential users also.
> >
> > So looking at linux-next this seems to have a user, but that user is
> > dead wood given that nothing implements ->expand_readahead.
> >
> > Looking at the code structure I think netfs_readahead and
> > netfs_rreq_expand is a complete mess and needs to be turned upside
> > down, that is instead of calling back from netfs_readahead to the
> > calling file system, split it into a few helpers called by the
> > caller.
>
> That's funny, we modelled it after iomap.
>
> > But even after this can't we just expose the cache granule boundary
> > to the VM so that the read-ahead request gets setup correctly from
> > the very beginning?
>
> The intent is that this be usable by filesystems which want to (for
> example) compress variable sized blocks.  So they won't know which pages
> they want to readahead until they're in their iomap actor routine,
> see that the extent they're in is compressed, and find out how large
> the extent is.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
