Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E40931E2CE
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Feb 2021 23:52:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCVgR-0003jt-Pg; Wed, 17 Feb 2021 22:52:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lCVgQ-0003ji-SA
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 22:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=exGxKvz2dkO6Ia4BmvggC59Ll6D9+WqpkO0LLDpW53U=; b=mMjIsv25Tx0qg8qG9Z19d5icaw
 x7EItbkIAXX4Mi09JeMCXqZntQhHoW9AJgN00xddcSxkM6EBkci0TTF1576Z2WC+Ar4gQ59g/g46F
 uvFoY9r9rIJRhjLdGpqIi8MbaJ4PgH+LNMW0GCZYXpDaEOdEpAA0D69YDcpv8OFpo29k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=exGxKvz2dkO6Ia4BmvggC59Ll6D9+WqpkO0LLDpW53U=; b=YCn/kG2z1wchsuuqcAjYIAkAnQ
 qj7tleNpNoIwnlWusP8Q9T/zzrHcEezKKr+eq1S9Xjgpx2LdIzfte87NxAM189MLCVSDIIWtZOj7z
 oKEUdvD1i5POSIckmUK22xOQV1OgzZQN5PeozZqvSLA6rOGhJibjpvYntjHSy8C4uZVk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lCVgF-00D7CW-7p
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 22:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=exGxKvz2dkO6Ia4BmvggC59Ll6D9+WqpkO0LLDpW53U=; b=DAsadcKxmsU6ocqG684beBo7F/
 pwtwAkJtxmTMpf4Yaf/uMliVqkqw8h9mTKmhc9jES0ZyI7WcfPT69f5KQCv6xNKgnrvwupFO9uIti
 qu+Lr192QSZBD65r5vcrpJeRgG7Wk6phDdZTZ6QSzm2L8F6/Rw6yoDPMSkwF70J9djiWPgzhM4bzW
 gbH8VzVJvY7blol40F8Lb+Vjx+9EPXX+e6l1ggpAsMYqr+Ou3p9dr73qkXHVrSpAjSVNld/S93yLB
 Nedtkxx4lvJsktlKJ9eFPfP//m8xQ0/weFQAgZU+eqRSoH/EpVvf4qMA+TiHJsM7LqgUgpfBqCbxz
 t0ekOKRg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lCVdG-000xt5-Iq; Wed, 17 Feb 2021 22:49:44 +0000
Date: Wed, 17 Feb 2021 22:49:18 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210217224918.GP2858050@casper.infradead.org>
References: <20210217161358.GM2858050@casper.infradead.org>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
 <1901187.1613601279@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1901187.1613601279@warthog.procyon.org.uk>
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
X-Headers-End: 1lCVgF-00D7CW-7p
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
 Christoph Hellwig <hch@lst.de>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Feb 17, 2021 at 10:34:39PM +0000, David Howells wrote:
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > We're defeating the ondemand_readahead() algorithm here.  Let's suppose
> > userspace is doing 64kB reads, the filesystem is OrangeFS which only
> > wants to do 4MB reads, the page cache is initially empty and there's
> > only one thread doing a sequential read.  ondemand_readahead() calls
> > get_init_ra_size() which tells it to allocate 128kB and set the async
> > marker at 64kB.  Then orangefs calls readahead_expand() to allocate the
> > remainder of the 4MB.  After the app has read the first 64kB, it comes
> > back to read the next 64kB, sees the readahead marker and tries to trigger
> > the next batch of readahead, but it's already present, so it does nothing
> > (see page_cache_ra_unbounded() for what happens with pages present).
> 
> It sounds like Christoph is right on the right track and the vm needs to ask
> the filesystem (and by extension, the cache) before doing the allocation and
> before setting the trigger flag.  Then we don't need to call back into the vm
> to expand the readahead.

Doesn't work.  You could read my reply to Christoph, or try to figure out
how to get rid of
https://evilpiepirate.org/git/bcachefs.git/tree/fs/bcachefs/fs-io.c#n742
for yourself.

> Also, there's Steve's request to try and keep at least two requests in flight
> for CIFS/SMB at the same time to consider.

That's not relevant to this problem.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
