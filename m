Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1461C3E1F81
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Aug 2021 01:48:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBn6O-00071k-1a; Thu, 05 Aug 2021 23:48:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <willy@infradead.org>) id 1mBn6M-00071Y-0q
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 23:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H3DXaH0DYq/AU+2Gphrkn9Lwf3WnAckLZe9TrSof2hk=; b=DaGsSUALUnaci46aqDbuN0vL4F
 sQM4Ete3t/mnY+HOAdeCZA48Yg97EdOH2CE5/I13IWhVW8ZWOmFuBJUDy4GijlzZzIGsnyGtwC5tH
 ShcfS341DpPnCkBwWEJd3FgG+RIJ2GvEQxFb4WUSLUsDVtS7wtDsubk1RBEoodLy0dog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H3DXaH0DYq/AU+2Gphrkn9Lwf3WnAckLZe9TrSof2hk=; b=KjGLkMRV2eD0HNM2WfbNH5XAMA
 Wq9TX4JkIGzYoKQt6xS2WqAVPnq4EuPnkgFctzVm/lv8vt94Jy64CSbYofih6I969d5EA7mWif5Q3
 ztkRRngYA1dTdZUKz4X43llTvg2e0LxrAoCnE4btJybRL8w8og5sB0R3efkrpqsu8dY4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mBn6E-00DvtF-Tl
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 23:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=H3DXaH0DYq/AU+2Gphrkn9Lwf3WnAckLZe9TrSof2hk=; b=abtQMLOoZXkVPjuUhEHDqRyq8B
 KaXEaoLL1BbXX3emsso4LunhdcKMhxkxFYrvD42OWevUVXBkxay+rvTGncsdtcRnfeBGk8FEEJ82g
 7/1GwpkJ5N+N8oeYGnLfSHWILFgbWRZWolqBrSWognGRqvZRQXjAioMsIt7VqwR/5y0set0rb2Sl8
 h9eiGCC6w7qRlR//cfZPoHad3zUxLgvZHKF63EjM+zKlK/T0Bdbw8efLJ0qrWM7BwE0fJDaDjccp8
 JIHfTwF5MfItHb3bT+6SzPp1jD/VaVUH71EQLFXh7i5EzMqMKWZH/pY+tCRYFBtVdRh4Xsh6Krd+Y
 hXAscibg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mBn5L-007d2p-Uz; Thu, 05 Aug 2021 23:47:39 +0000
Date: Fri, 6 Aug 2021 00:47:35 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YQx4lx7vEbvmfBnE@casper.infradead.org>
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1219713.1628181333@warthog.procyon.org.uk>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mBn6E-00DvtF-Tl
Subject: Re: [V9fs-developer] Canvassing for network filesystem write size
 vs page size
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
 Jeff Layton <jlayton@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-kernel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Aug 05, 2021 at 05:35:33PM +0100, David Howells wrote:
> With Willy's upcoming folio changes, from a filesystem point of view, we're
> going to be looking at folios instead of pages, where:
> 
>  - a folio is a contiguous collection of pages;
> 
>  - each page in the folio might be standard PAGE_SIZE page (4K or 64K, say) or
>    a huge pages (say 2M each);

This is not a great way to explain folios.

If you're familiar with compound pages, a folio is a new type for
either a base page or the head page of a compound page; nothing more
and nothing less.

If you're not familiar with compound pages, a folio contains 2^n
contiguous pages.  They are treated as a single unit.

>  - a folio has one dirty flag and one writeback flag that applies to all
>    constituent pages;
> 
>  - a complete folio currently is limited to PMD_SIZE or order 8, but could
>    theoretically go up to about 2GiB before various integer fields have to be
>    modified (not to mention the memory allocator).

Filesystems should not make an assumption about this ... I suspect
the optimum page size scales with I/O bandwidth; taking PCI bandwidth
as a reasonable proxy, it's doubled five times in twenty years.

> Willy is arguing that network filesystems should, except in certain very
> special situations (eg. O_SYNC), only write whole folios (limited to EOF).

I did also say that the write could be limited by, eg, a byte-range
lease on the file.  If the client doesn't have permission to write
a byte range, then it doesn't need to write it back.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
