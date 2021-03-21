Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 022E1343205
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Mar 2021 11:54:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lNvit-0001zg-0O; Sun, 21 Mar 2021 10:54:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lNvip-0001zU-1H
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Mar 2021 10:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IPWTpmNlwvQD2iMEaDZM4gbTBQw2JCKTcw+XHs6sAEA=; b=inLw9P7+cUljfjVND2cvq+LiGY
 2gQRoY2EwGH6skQK4mu1VnsfkdPYkfVdd8dryNeLZQgEjqmg2phOKPX7SewZ17sErovtomRhGaZ1J
 fhrv0/jMzC+/CV4csFE3eu/6tYKinwQMo+goUaoFSe7rQyl4gZn+p+p//Kuz/t5zgkcE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IPWTpmNlwvQD2iMEaDZM4gbTBQw2JCKTcw+XHs6sAEA=; b=TG91LcH1u6RlJK4lbJ1MmVZOay
 SHzDCU/SrHQTz87Mhhl9mnnltlPBttryssvD5vaRKL/SOSFCS/Y3a+5z3mJAyM7Hd2k4qhPbZ514K
 5zt8iV3cMqoX2Mpnb1IiI34Wn/RH8EQJYBhIUWcTgynjvui1hw46hMIFAjKvfCJ/bD+A=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lNvik-009Zks-39
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Mar 2021 10:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IPWTpmNlwvQD2iMEaDZM4gbTBQw2JCKTcw+XHs6sAEA=; b=MycDLrIcd3ic8F/80A6VFdemDq
 mP6wMKgaJ+5fZ8A/5UZohpMbjrn0frButsf5ebBykDEX/RU1WPXs8HsON7xXx/0rh1H8iKU1zW2Bo
 gQnxM6q4iczEUtjYAhChY4xbcUghuUJ8SxLKS+Scas5RUAPIY1QVsjBRYZNB4Td9A/GdUbK+pGXzm
 ZxqPcKHFmjWFBOpIOxuPGE2Ge3lH75MgJq4zOA4kCUIW8QztYln6orsFPBg70IOQjgwHxMTUkpQvT
 sP5/cIEzN7DAaOGyHDRzy6+/swS96oUDvvYZzfmO85Y4+6qJHHEg0lpaPO9kP30HPHtXl8+ynO5/A
 9oZufQ3g==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lNvhl-007173-MX; Sun, 21 Mar 2021 10:53:12 +0000
Date: Sun, 21 Mar 2021 10:53:09 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210321105309.GG3420@casper.infradead.org>
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
X-Headers-End: 1lNvik-009Zks-39
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

One of the things which confused me about this was ... where's the other
side?  Where's lock_page_private_2()?  Then I found this:

#ifdef CONFIG_AFS_FSCACHE
        if (PageFsCache(page) &&
            wait_on_page_bit_killable(page, PG_fscache) < 0)
                return VM_FAULT_RETRY;
#endif

Please respect the comment!

/*
 * This is exported only for wait_on_page_locked/wait_on_page_writeback, etc.,
 * and should not be used directly.
 */
extern void wait_on_page_bit(struct page *page, int bit_nr);
extern int wait_on_page_bit_killable(struct page *page, int bit_nr);

I think we need the exported API to be wait_on_page_private_2(), and
AFS needs to not tinker in the guts of filemap.  Otherwise you miss
out on bugfixes like c2407cf7d22d0c0d94cf20342b3b8f06f1d904e7 (see also
https://lore.kernel.org/linux-fsdevel/20210320054104.1300774-4-willy@infradead.org/T/#u
).

That also brings up that there is no set_page_private_2().  I think
that's OK -- you only set PageFsCache() immediately after reading the
page from the server.  But I feel this "unlock_page_private_2" is actually
"clear_page_private_2" -- ie it's equivalent to writeback, not to lock.

> +++ b/mm/filemap.c
> @@ -1432,6 +1432,26 @@ void unlock_page(struct page *page)
>  }
>  EXPORT_SYMBOL(unlock_page);
>  
> +/**
> + * unlock_page_private_2 - Unlock a page that's locked with PG_private_2
> + * @page: The page
> + *
> + * Unlocks a page that's locked with PG_private_2 and wakes up sleepers in
> + * wait_on_page_private_2().
> + *
> + * This is, for example, used when a netfs page is being written to a local
> + * disk cache, thereby allowing writes to the cache for the same page to be
> + * serialised.
> + */
> +void unlock_page_private_2(struct page *page)
> +{
> +	page = compound_head(page);
> +	VM_BUG_ON_PAGE(!PagePrivate2(page), page);
> +	clear_bit_unlock(PG_private_2, &page->flags);
> +	wake_up_page_bit(page, PG_private_2);
> +}
> +EXPORT_SYMBOL(unlock_page_private_2);
> +
>  /**


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
