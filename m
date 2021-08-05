Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E763E1E7C
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Aug 2021 00:12:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBlb4-0006tQ-6V; Thu, 05 Aug 2021 22:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mBlb2-0006t9-3B
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 22:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RvO+6JeVpLxlPcNmPsjLLYdjB15f9d7yagNnMlUscyM=; b=XMxf2Vr+7zdRCq/NC6oTxy6Xgk
 4xlG3WbXUO4NOPTlUs3ABAT7sOx4WAXoqxoU4eD4n/H1mNOzVfql+0WD2jN+e17F9AUzx5JxIKYON
 zfCFWz+lb64cDeYjxxu8aOLnmpvyQZzAf7jdTZv/T0C6jPBIE213mBsILWvfplWH1Ngo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RvO+6JeVpLxlPcNmPsjLLYdjB15f9d7yagNnMlUscyM=; b=jODisbXgoQSIlQs7L1gQqPOww7
 D2WJVnd9X3K4+PsK28Ge7ZNZ8Ttkl2k3P6ir6DyMPePGHORVTUZQR/HyK1A0ddbCbzMEiA7W0n8CB
 ivBbKKzv4seo9Ra0k/Q2ia97i4Pk3yGx7XsSXeuPubb472344AuBfy2Cy/l9Ki95qn+E=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mBlb0-00Dqhj-5O
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 22:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RvO+6JeVpLxlPcNmPsjLLYdjB15f9d7yagNnMlUscyM=; b=JmZQe8YwHGdxpbt0TwH//rA7bp
 HfAA5mzWQ300vIpQYo2arTXyklr5l76dKVELRLgAZnUKxXoRc+QEJSbaJuD0GoNpSfCd/Tm0UBMuE
 8SlOk735EbFz/87qkcy75AdIYWBzf/6Pu9MY7CX3ueVVY4JMora1+0oRcuu8osroUGfT0mXjfvMK6
 YRKger+O0AuVg9xmmLmzYUXKEtKW1DDQMgyAYZHjWr1kcBaMhMeG32BSAx4/3o6o/iRQtgZutc3wC
 Ppbf+HBE58BXsebQaFSh/F53V7A49MoL26n7Xo3oyaKsNZoU5Zwaw2sdDXexB/tn2REY4APSX99IZ
 UDs7r7iQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mBla0-007ZDJ-Ph; Thu, 05 Aug 2021 22:11:12 +0000
Date: Thu, 5 Aug 2021 23:11:08 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YQxh/G0xGl3GtC8y@casper.infradead.org>
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
 <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mBlb0-00Dqhj-5O
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>, CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 David Howells <dhowells@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Aug 05, 2021 at 10:27:05AM -0700, Linus Torvalds wrote:
> On Thu, Aug 5, 2021 at 9:36 AM David Howells <dhowells@redhat.com> wrote:
> > Some network filesystems, however, currently keep track of which byte ranges
> > are modified within a dirty page (AFS does; NFS seems to also) and only write
> > out the modified data.
> 
> NFS definitely does. I haven't used NFS in two decades, but I worked
> on some of the code (read: I made nfs use the page cache both for
> reading and writing) back in my Transmeta days, because NFSv2 was the
> default filesystem setup back then.
> 
> See fs/nfs/write.c, although I have to admit that I don't recognize
> that code any more.
> 
> It's fairly important to be able to do streaming writes without having
> to read the old contents for some loads. And read-modify-write cycles
> are death for performance, so you really want to coalesce writes until
> you have the whole page.

I completely agree with you.  The context you're missing is that Dave
wants to do RMW twice.  He doesn't do the delaying SetPageUptodate dance.
If the write is less than the whole page, AFS, Ceph and anybody else
using netfs_write_begin() will first read the entire page in and mark
it Uptodate.

Then he wants to track which parts of the page are dirty (at byte
granularity) and send only those bytes to the server in a write request.
So it's worst of both worlds; first the client does an RMW, then the
server does an RMW (assuming the client's data is no longer in the
server's cache.

The NFS code moves the RMW from the client to the server, and that makes
a load of sense.

> That said, I suspect it's also *very* filesystem-specific, to the
> point where it might not be worth trying to do in some generic manner.

It certainly doesn't make sense for block filesystems.  Since they
can only do I/O on block boundaries, a sub-block write has to read in
the surrounding block, and once you're doing that, you might as well
read in the whole page.

Tracking sub-page dirty bits still makes sense.  It's on my to-do
list for iomap.

> [ goes off and looks. See "nfs_write_begin()" and friends in
> fs/nfs/file.c for some of the examples of these things, althjough it
> looks like the code is less aggressive about avoding the
> read-modify-write case than I thought I remembered, and only does it
> for write-only opens ]

NFS is missing one trick; it could implement aops->is_partially_uptodate
and then it would be able to read back bytes that have already been
written by this client without writing back the dirty ranges and fetching
the page from the server.

Maybe this isn't an important optimisation.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
