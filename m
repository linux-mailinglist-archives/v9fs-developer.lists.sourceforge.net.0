Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4BF359D51
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 13:27:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUpIT-0002Ct-UL; Fri, 09 Apr 2021 11:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lUpIS-0002CV-W5
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:27:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r8vsQAWqPO257QZ14b6/67BsYk32ojx3EAVHaQFltyM=; b=muMER7F3fZSn/Rre32UmlA7Uwq
 kt1sbRgsXA31MFAJnN31K1OuL2Vu1+ZTHVBMlGWGxGTfXgcPcC1qqIJqK471VWtX434Z3WuHtgGgX
 8dyfEW6OgV7LxopOGICxoxz4UPQ6R7leNiDwLPL1usgr46LbNJLPlhchOl47OuMNBbZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r8vsQAWqPO257QZ14b6/67BsYk32ojx3EAVHaQFltyM=; b=GEbPiqMuhGZcYVQTfkgPSFMoWQ
 vBxdTL0O9T1thQIuGSE4W7Js7RTRIjdX7Yn6MwDlzUY9vv0Z5qprVBLlRmXVZo2RHpb+sbJpckeE3
 R/5WzN4DKVafdlS+CfqEkQLRlvRmjU5g7Hz07ZLYolX92JzAnH1Ze8w9SfY3iytYhRhk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUpI5-00022T-Gr
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=r8vsQAWqPO257QZ14b6/67BsYk32ojx3EAVHaQFltyM=; b=ZqgBOOOVr8Xg5gLfjCGe8UTcyL
 VLHWVrkDWGsOAZvGBCi4v8R7+frMSg3kDV6atzgQdS7NNpzGiR2I2TDzdZ3Knat9ed2wUzhjsCpNh
 FJD0HeD7A6k5ik83urs9txoAuWXtj7Pj2VIoLObRahlAS3m6xtw64nBdwjyCskD5+kgPTER6b4e4w
 C8Ms8a2NHJ5vu8vaLJL9efvyWzIZE45C+Y23OLonG9BpTSIfkJkHBUApavG/uyd60BKQDn1h/h9k0
 xKaEE0zYerAUJCJfF+J6B3JoDsrnDALhW/tmeOA+8BJ2fvVnmUzxtR411IpAZXL3csMnvGbV6sza6
 Wbkz1ZyA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lUpFw-000HJN-Uc; Fri, 09 Apr 2021 11:25:05 +0000
Date: Fri, 9 Apr 2021 12:24:56 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210409112456.GS2531743@casper.infradead.org>
References: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
 <161796596902.350846.10297397888865722494.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161796596902.350846.10297397888865722494.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUpI5-00022T-Gr
Subject: Re: [V9fs-developer] [RFC PATCH 3/3] mm: Split page_has_private()
 in two to better handle PG_private_2
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
 linux-kernel@vger.kernel.org, jlayton@kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-afs@lists.infradead.org,
 linux-mm@kvack.org, ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Apr 09, 2021 at 11:59:29AM +0100, David Howells wrote:
> diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
> index 414769a6ad11..9c89db033548 100644
> --- a/fs/iomap/buffered-io.c
> +++ b/fs/iomap/buffered-io.c
> @@ -41,7 +41,7 @@ static inline struct iomap_page *to_iomap_page(struct page *page)
>  	 */
>  	VM_BUG_ON_PGFLAGS(PageTail(page), page);
>  
> -	if (page_has_private(page))
> +	if (page_needs_cleanup(page))

That should be PagePrivate(page)

>  		return (struct iomap_page *)page_private(page);
>  	return NULL;
>  }
> @@ -163,7 +163,7 @@ iomap_set_range_uptodate(struct page *page, unsigned off, unsigned len)
>  	if (PageError(page))
>  		return;
>  
> -	if (page_has_private(page))
> +	if (PagePrivate(page))
>  		iomap_iop_set_range_uptodate(page, off, len);
>  	else
>  		SetPageUptodate(page);
> @@ -502,7 +502,7 @@ iomap_migrate_page(struct address_space *mapping, struct page *newpage,
>  	if (ret != MIGRATEPAGE_SUCCESS)
>  		return ret;
>  
> -	if (page_has_private(page))
> +	if (PagePrivate(page))
>  		attach_page_private(newpage, detach_page_private(page));
>  
>  	if (mode != MIGRATE_SYNC_NO_COPY)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
