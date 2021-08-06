Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E62303E2C65
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Aug 2021 16:19:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mC0h0-0006oe-6r; Fri, 06 Aug 2021 14:19:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mC0gy-0006oJ-Ku
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Aug 2021 14:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AIojU9OyEcFpwE1NJjuvzE4uBfRHyEf2CFdTUs7T8kY=; b=T2db5CsUP85PctDm3/MCz7BFgR
 RF2u2U6opVgwruM44pjsK67JQu9jYVf/Uq4GPsH+bxFef9tIsqTIGlcan1yjRLOhqbXy+CFnNmLLy
 UHsWtjjeJVKnD9gPGKUp7mSkldKnoPzS5DZSeo8QnydDsv9M4LZnMzJjYfDMJP8uvX2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AIojU9OyEcFpwE1NJjuvzE4uBfRHyEf2CFdTUs7T8kY=; b=b4LsfM//ZTDVES4DL/0kMA2d3p
 4bEWPYbCsdoS4dFnY4bXd6asKpAmMZKsRc16m9Ya3KRa2EoLNNF/eEfgVgtk0ZLNTg0u7n/SkCmwd
 ZLsoiXmBuhMnnXbP7JSaYu5qkb+8ESV/lU0TEDj660eeHtEYLVLrdyuQAGaNh2UoSDgs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mC0gu-00084j-Ap
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Aug 2021 14:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=AIojU9OyEcFpwE1NJjuvzE4uBfRHyEf2CFdTUs7T8kY=; b=aQCFuYjMfZmvdIItkIfG7EIyUL
 xuIJ9C4tiobJN1yMNBEBjYsSC8QXO0hYNGPowU15nqhg7a/kJH57+PqWeTMX4HufuAxQTsAggaWS5
 ME1HlzklZZhEV/AnOyoy74T8AjkOjYcYF/uaP4V+Xpez9HjQB54burcKwvyZITCfZYC10Wos2QC5w
 wVdt7p2nnNP9Puj38Fs+ho752eI4vIKNfSJNnve0Yz26UbAq//TDiQ5Z3KzTI37DU+2S7Q6HpK4E8
 UAAYFjQc2iw7eS23GDd8Y5JeUjywfgyXF1zu+PS9gZ1VjjcqAthhBS5MighJ9XGjHqi4n+J+WcodS
 OfOax+ig==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mC0fT-008GBJ-Rm; Fri, 06 Aug 2021 14:17:55 +0000
Date: Fri, 6 Aug 2021 15:17:47 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YQ1Ei9lv9ov2AheS@casper.infradead.org>
References: <YQxh/G0xGl3GtC8y@casper.infradead.org>
 <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
 <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
 <1302671.1628257357@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302671.1628257357@warthog.procyon.org.uk>
X-Spam-Score: 0.1 (/)
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
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mC0gu-00084j-Ap
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, Linux-MM <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Aug 06, 2021 at 02:42:37PM +0100, David Howells wrote:
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > > It's fairly important to be able to do streaming writes without having
> > > to read the old contents for some loads. And read-modify-write cycles
> > > are death for performance, so you really want to coalesce writes until
> > > you have the whole page.
> > 
> > I completely agree with you.  The context you're missing is that Dave
> > wants to do RMW twice.  He doesn't do the delaying SetPageUptodate dance.
> 
> Actually, I do the delaying of SetPageUptodate in the new write helpers that
> I'm working on - at least to some extent.  For a write of any particular size
> (which may be more than a page), I only read the first and last pages affected
> if they're not completely changed by the write.  Note that I have my own
> version of generic_perform_write() that allows me to eliminate write_begin and
> write_end for any filesystem using it.

No, that is very much not the same thing.  Look at what NFS does, like
Linus said.  Consider this test program:

	fd = open();
	lseek(fd, 5, SEEK_SET);
	write(fd, buf, 3);
	write(fd, buf2, 10);
	write(fd, buf3, 2);
	close(fd);

You're going to do an RMW.  NFS keeps track of which bytes are dirty,
and writes only those bytes to the server (when that page is eventually
written-back).  So yes, it's using the page cache, but it's not doing
an unnecessary read from the server.

> It has occurred to me that I don't actually need the pages to be uptodate and
> completely filled out.  I'm tracking which bits are dirty - I could defer
> reading the missing bits till someone wants to read or mmap.
> 
> But that kind of screws with local caching.  The local cache might need to
> track the missing bits, and we are likely to be using blocks larger than a
> page.

There's nothing to cache.  Pages which are !Uptodate aren't going to get
locally cached.

> Basically, there are a lot of scenarios where not having fully populated pages
> sucks.  And for streaming writes, wouldn't it be better if you used DIO
> writes?

DIO can't do sub-512-byte writes.

> > If the write is less than the whole page, AFS, Ceph and anybody else
> > using netfs_write_begin() will first read the entire page in and mark
> > it Uptodate.
> 
> Indeed - but that function is set to be replaced.  What you're missing is that
> if someone then tries to read the partially modified page, you may have to do
> two reads from the server.

NFS doesn't.  It writes back the dirty data from the page and then
does a single read of the entire page.  And as I said later on, using
->is_partially_uptodate can avoid that for some cases.

> > Then he wants to track which parts of the page are dirty (at byte
> > granularity) and send only those bytes to the server in a write request.
> 
> Yes.  Because other constraints may apply, for example the handling of
> conflicting third-party writes.  The question here is how much we care about
> that - and that's why I'm trying to write back only what's changed where
> possible.

If you care about conflicting writes from different clients, you really
need to establish a cache ownership model.  Or treat the page-cache as
write-through.

> > > That said, I suspect it's also *very* filesystem-specific, to the
> > > point where it might not be worth trying to do in some generic manner.
> > 
> > It certainly doesn't make sense for block filesystems.  Since they
> > can only do I/O on block boundaries, a sub-block write has to read in
> > the surrounding block, and once you're doing that, you might as well
> > read in the whole page.
> 
> I'm not trying to do this for block filesystems!  However, a block filesystem
> - or even a blockdev - might be involved in terms of the local cache.

You might not be trying to do anything for block filesystems, but we
should think about what makes sense for block filesystems as well as
network filesystems.

> > Tracking sub-page dirty bits still makes sense.  It's on my to-do
> > list for iomap.
> 
> /me blinks
> 
> "bits" as in parts of a page or "bits" as in the PG_dirty bits on the pages
> contributing to a folio?

Perhaps I should have said "Tracking dirtiness on a sub-page basis".
Right now, that looks like a block bitmap, but maybe it should be a
range-based data structure.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
