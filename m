Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0CF33DD22
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Mar 2021 20:08:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMF2t-0000uA-40; Tue, 16 Mar 2021 19:07:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lMF2r-0000u2-SY
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Mar 2021 19:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a+0vOSKhaFyvZ89GWuo3huxCDtu4K+x/0Wx25fIk42U=; b=E+2YXGkFcOoY4EEZ28x/Km8xYi
 yOOpM66+VcU3pKU4snw6Zb9purZR8ofi6y42UfHUACGkGJp3TekV9QIoISwemgjqryzQr1aQ1ng6n
 XJKtANSA+IIzOtYPBI/bjieogi165Im0vt2f/8K9TeTAYDFZ+Jm9DCDd8Gt7JRd+G2Yc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a+0vOSKhaFyvZ89GWuo3huxCDtu4K+x/0Wx25fIk42U=; b=LAI441i8dVVDIZQerXphXqTQrd
 21cFDh7isTr3RPhl45fB10o6mOhA7C6sopq1EqsE8/CfSix0RkLRVZAQSUO4dZIwG0q0nhEs4+VrV
 8R2+XPQ+Rhb/sL5lHRQY414ozrSnqqCk1QuxOSlkAQlRnmVY1vWBDFspT5M9r3STpRbE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lMF2l-0007z5-Us
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Mar 2021 19:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=a+0vOSKhaFyvZ89GWuo3huxCDtu4K+x/0Wx25fIk42U=; b=jt05dHVt86rt/fg//Nd6cO5DVR
 1G3IYjzp8NmtC3ioV47ZhvEwsVO11uGSJs4d6RoCIe/BcJ/xaLebCaSFyAaRPStsmz5aU3Z0/tTjC
 i2D7OiygMf3930tWOiLJfa4OdaVC2y2beYtlioE8Uk6T6FlNM29ZnQ8CELwXsvZbjeDKpcF11lhjh
 fxWoakrSFVJne6ZMS7JRWMDDO0gZO7qnjt44rLaOVOowDrCMDY6XwMEq7NZ3RYp/xCyc/iArZ07hH
 6dhLiP7mVnkIYcFu7Y/+Bu3gq9ijgn43hiplbkX3GbtJmVLUTJ4dq2oS7nwTEqPpCsU1+5QgJ/TDr
 8DraJk1w==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lMF23-000UZR-6Y; Tue, 16 Mar 2021 19:07:08 +0000
Date: Tue, 16 Mar 2021 19:07:07 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210316190707.GD3420@casper.infradead.org>
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lMF2l-0007z5-Us
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Mar 10, 2021 at 04:54:49PM +0000, David Howells wrote:
> Add a function, unlock_page_private_2(), to unlock PG_private_2 analogous
> to that of PG_lock.  Add a kerneldoc banner to that indicating the example
> usage case.

This isn't a problem with this patch per se, but I'm concerned about
private2 and expected page refcounts.

static inline int is_page_cache_freeable(struct page *page)
{
        /*
         * A freeable page cache page is referenced only by the caller
         * that isolated the page, the page cache and optional buffer
         * heads at page->private.
         */
        int page_cache_pins = thp_nr_pages(page);
        return page_count(page) - page_has_private(page) == 1 + page_cache_pins;
}

static inline int page_has_private(struct page *page)
{
        return !!(page->flags & PAGE_FLAGS_PRIVATE);
}

#define PAGE_FLAGS_PRIVATE                              \
        (1UL << PG_private | 1UL << PG_private_2)

So ... a page with both flags cleared should have a refcount of N.
A page with one or both flags set should have a refcount of N+1.

How is a poor filesystem supposed to make that true?  Also btrfs has this
problem since it uses private_2 for its own purposes.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
