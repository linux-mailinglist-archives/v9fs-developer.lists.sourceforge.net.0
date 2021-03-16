Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3387333E229
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Mar 2021 00:34:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMJCM-0001bj-FO; Tue, 16 Mar 2021 23:34:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lMJC5-0001ZZ-MV
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Mar 2021 23:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ugD/jJZR2x4PlwFOPLM1Z8A1WHyvGKetbXN+yb06xfM=; b=N6R0/blprXp5fKseNTljoTCW+8
 a4FhbjrO4t2O6QVbOU1OWPfC0ehwd+PY9i+eTi12vAnAEYr2jrdw8Fst/XHMA8TSRqZH4B85vSMrX
 qMduvpCLZ0xE16fDqbr4XlkwzWeEdl4lZCBEdatdtHlOxE2vyjJRPGIGujZWe98CFfRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ugD/jJZR2x4PlwFOPLM1Z8A1WHyvGKetbXN+yb06xfM=; b=m8V3xG1MOS1Er1tjXbPEvnLf7g
 U+FFO2jS0oBsqFbROMN6pg1L1p/RB6+D1m8b1sPNgsWMwCrYOdU8YHii6kw4/8jWtBv0pv0iqwaRA
 PvmA0bFebScBWw4GGrHCemE4KFbNOZtSRhxdZNQNGYvznihvvNxu86hQFEVc2NZlO8D4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lMJBv-008EQr-LW
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Mar 2021 23:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ugD/jJZR2x4PlwFOPLM1Z8A1WHyvGKetbXN+yb06xfM=; b=OX7RitBwZ7oc3GO38XAXfxdoij
 vfKiFKYeao1v7N+9Nx7PTu9Z61XntTa7fENRJtgQ3CooWOi6pFGDLJfOCWvQSPDMt18AuEvLmsG/t
 w8/YLaN0lddz/EqtFRwAlhyPeA9k4RDxbsO5JOnmoGPMQvITYjkp3S7vUIHxpsbZNUio5Ko0ZVsEk
 spv1+ANWI7xmV3T6aAKDnp+5lQTDx1iFWg+gZ2u+pQegvhUWAjAjQXwbLjDk4o9yLmXkUmEvsqvJb
 3MnhN12ApsM12ymiXHH0JigGgpTf+2cbMmzeHJageIJBcRi9noxplnjX/iPmBZqWg1lpllSgZWaT2
 pwg8kffg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lMJB6-000lEX-7N; Tue, 16 Mar 2021 23:32:48 +0000
Date: Tue, 16 Mar 2021 23:32:44 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210316233244.GE3420@casper.infradead.org>
References: <20210316190707.GD3420@casper.infradead.org>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <3313319.1615927080@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3313319.1615927080@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lMJBv-008EQr-LW
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

On Tue, Mar 16, 2021 at 08:38:00PM +0000, David Howells wrote:
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > So ... a page with both flags cleared should have a refcount of N.
> > A page with one or both flags set should have a refcount of N+1.
> > ...
> > How is a poor filesystem supposed to make that true?  Also btrfs has this
> > problem since it uses private_2 for its own purposes.
> 
> It's simpler if it's N+2 for both patches set.  Btw, patch 13 adds that - and
> possibly that should be merged into an earlier patch.

So ...

static inline int page_has_private(struct page *page)
{
	unsigned long flags = page->flags;
	return ((flags >> PG_private) & 1) + ((flags >> PG_private_2) & 1);
}

perhaps?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
