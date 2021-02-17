Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CE431DD1F
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Feb 2021 17:18:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCPX1-0003oc-IQ; Wed, 17 Feb 2021 16:18:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lCPWx-0003nU-EK
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 16:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VfrUoqOUihVjvmCvSLv9mlyS0o00nDdsmdN3qvEoA00=; b=kOK7eoPKTrQYEwq7xBS3t5p/fH
 kmg+9eaEe++W/AQvsRkru0Zte2Ay24fSSTG0E5wLzOMAl71jEb2agS4jl9QbpzC0y5RdTWKooVQJM
 D8dw0DbAVlSALtQ8oLKyjH913U+UaS1OPp5jy87mBR7WGWcq0cpj+r6yBrbGvcBK1u4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VfrUoqOUihVjvmCvSLv9mlyS0o00nDdsmdN3qvEoA00=; b=StEiKzXCpkj8EvM/E7aNOcmK4n
 L2NdfqxbTC8RTe18tz6bwf0CCr75V3jwZoAncQUVNSm9JeoDDpdIfTXQ8hyAOUaxUc5sQ0f3CNiRi
 Am5zXghJdwFJkgOv/nmqWmCw69pe/GwBBnoEAz+Lz0K0b6bY6WHGiErKIDk32tMRA8A4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lCPWr-00Cazq-Aw
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 16:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VfrUoqOUihVjvmCvSLv9mlyS0o00nDdsmdN3qvEoA00=; b=cSa+ST1CT82tnPFcDFN6385/gf
 fX5ue2PIy1WjeGVEzkDGZMTsFzLmqC7c+WYAQLnYutzJbsajtl2Jh42nC0w4lqBcrHrlZkXESMSyp
 xlcoDR3Wp9R6AuEdsi/ty3h3DDMfecTJMK444IMwUHEhC9geKbbRqshaygCMw7xBUsOlIbyDSduNy
 dmDRIklz83kii8sK5gQXi1rPYZtyfyYvM4vvxJRvwGML8x9D7AnF0WgJAsIE2nAV7DOSN//6W8z37
 7Iss1QwTmm8FBDB49gMScTNNT7Ln/Ocl0tdU2/isZxvLSBXMpl/SURMPrdCcTpYsHSkF0tAUW3gJk
 KVjidQgA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lCPSg-000e1H-2j; Wed, 17 Feb 2021 16:14:28 +0000
Date: Wed, 17 Feb 2021 16:13:58 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210217161358.GM2858050@casper.infradead.org>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1lCPWr-00Cazq-Aw
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 03:44:52PM +0000, David Howells wrote:
> +++ b/include/linux/pagemap.h
> @@ -761,6 +761,8 @@ extern void __delete_from_page_cache(struct page *page, void *shadow);
>  int replace_page_cache_page(struct page *old, struct page *new, gfp_t gfp_mask);
>  void delete_from_page_cache_batch(struct address_space *mapping,
>  				  struct pagevec *pvec);
> +void readahead_expand(struct readahead_control *ractl,
> +		      loff_t new_start, size_t new_len);

If we're revising this patchset, I'd rather this lived with the other
readahead declarations, ie after the definition of readahead_control.

> +	/* Expand the trailing edge upwards */
> +	while (ractl->_nr_pages < new_nr_pages) {
> +		unsigned long index = ractl->_index + ractl->_nr_pages;
> +		struct page *page = xa_load(&mapping->i_pages, index);
> +
> +		if (page && !xa_is_value(page))
> +			return; /* Page apparently present */
> +
> +		page = __page_cache_alloc(gfp_mask);
> +		if (!page)
> +			return;
> +		if (add_to_page_cache_lru(page, mapping, index, gfp_mask) < 0) {
> +			put_page(page);
> +			return;
> +		}
> +		ractl->_nr_pages++;
> +	}

We're defeating the ondemand_readahead() algorithm here.  Let's suppose
userspace is doing 64kB reads, the filesystem is OrangeFS which only
wants to do 4MB reads, the page cache is initially empty and there's
only one thread doing a sequential read.  ondemand_readahead() calls
get_init_ra_size() which tells it to allocate 128kB and set the async
marker at 64kB.  Then orangefs calls readahead_expand() to allocate the
remainder of the 4MB.  After the app has read the first 64kB, it comes
back to read the next 64kB, sees the readahead marker and tries to trigger
the next batch of readahead, but it's already present, so it does nothing
(see page_cache_ra_unbounded() for what happens with pages present).

Then it keeps going through the 4MB that's been read, not seeing any more
readahead markers, gets to 4MB and asks for ... 256kB?  Not quite sure.
Anyway, it then has to wait for the next 4MB because the readahead didn't
overlap with the application processing.

So readahead_expand() needs to adjust the file's f_ra so that when the
application gets to 64kB, it kicks off the readahead of 4MB-8MB chunk (and
then when we get to 4MB+256kB, it kicks off the readahead of 8MB-12MB,
and so on).

Unless someone sees a better way to do this?  I don't
want to inadvertently break POSIX_FADV_WILLNEED which calls
force_page_cache_readahead() and should not perturb the kernel's
ondemand algorithm.  Perhaps we need to add an 'ra' pointer to the
ractl to indicate whether the file_ra_state should be updated by
readahead_expand()?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
