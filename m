Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA3C2F659D
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Jan 2021 17:20:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l05Me-0006bB-36; Thu, 14 Jan 2021 16:20:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l05Mb-0006b1-Bj
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 16:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L957m6SCsm4YfRvwt1RQwkHpsqdoGDsxSLN6pjGCXjg=; b=l5jmVmBfHQerHgPpJtgy0KvmyR
 3bNpaNDH4683YX1coTTt/2kfaMWh47c1+P/uSFAd4jEInZ+FS5b8bzzAw5PqxRHLFNszuj/kCEi1j
 Xm/iEM/RUf7wW58dIAqfblUh6F27N7lD9NvFvxaOVd3viBWPUTWU0x1Gcf6qYWmoNxXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L957m6SCsm4YfRvwt1RQwkHpsqdoGDsxSLN6pjGCXjg=; b=L4LZp4TUzvu9Mmd4UzZEN1Zaa7
 DVCBzze+Tw/3S3soXyKBFAB7ybXpx5Ys2zR/MObY3zs9zJRMT/A6igq0I5kpd5tpifRUuMdReHMKP
 e30gNRVSY4Valu9F1h/lVTZhnLGSagsyLC8doguRuHHevd6I4Wa5Kat9KcxC8kskfSPw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l05MV-009KBq-62
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 16:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=L957m6SCsm4YfRvwt1RQwkHpsqdoGDsxSLN6pjGCXjg=; b=SwgoX4biWiRfNIkgGKBzF1hThh
 fgohm23xOlFZxJhSLZKiwJXvlpOT7mQ1aERIfxlbDnMSz8cAhA501/6QBLnf5vxFq+Kvg8w7lNzGu
 lKsu5VUh30ZpNT1bDp4PgQQDOAF2zDky3QBOcd8dN/XGAqJ/p2C2tMdWALZA6gQ+xCzpv+dn065rk
 2TTrQt7lGJCVnnHfj+gY6z8VUTG1gzIwprxJtAF5iFkyufA4tU7Q2Fuvhh6wXdjjz4/2sT9ZCH6eX
 Aa9Hq52wo/tTnFG/QpwZVj0ONsXxVxsjndY/W8xQ7Zm0pIhz05bcYui4M6gozuphqFgWnJ9k7MeB2
 tBm+E3uQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l05LN-007mRF-WF; Thu, 14 Jan 2021 16:19:41 +0000
Date: Thu, 14 Jan 2021 16:19:29 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210114161929.GQ35215@casper.infradead.org>
References: <2758811.1610621106@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2758811.1610621106@warthog.procyon.org.uk>
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
X-Headers-End: 1l05MV-009KBq-62
Subject: Re: [V9fs-developer] Redesigning and modernising fscache
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
 linux-afs@lists.infradead.org, jlayton@redhat.com,
 Linus Torvalds <torvalds@linux-foundation.org>, dwysocha@redhat.com,
 dchinner@redhat.com, linux-kernel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 10:45:06AM +0000, David Howells wrote:
> However, there've been some objections to the approach I've taken to
> implementing this.  The way I've done it is to disable the use of fscache by
> the five network filesystems that use it, remove much of the old code, put in
> the reimplementation, then cut the filesystems over.  I.e. rip-and-replace.
> It leaves unported filesystems unable to use it - but three of the five are
> done (afs, ceph, nfs), and I've supplied partially-done patches for the other
> two (9p, cifs).
> 
> It's been suggested that it's too hard to review this way and that either I
> should go for a gradual phasing in or build the new one in parallel.  The
> first is difficult because I want to change how almost everything in there
> works - but the parts are tied together; the second is difficult because there
> are areas that would *have* to overlap (the UAPI device file, the cache
> storage, the cache size limits and at least some state for managing these), so
> there would have to be interaction between the two variants.  One refinement
> of the latter would be to make the two implementations mutually exclusive: you
> can build one or the other, but not both.

My reservation with "build fscache2" is that it's going to take some
time to do, and I really want rid of ->readpages as soon as possible.

What I'd like to see is netfs_readahead() existing as soon as possible,
built on top of the current core.  Then filesystems can implement
netfs_read_request_ops one by one, and they become insulated from the
transition.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
