Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D43A3241F9
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Feb 2021 17:21:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEwv2-0003bC-4a; Wed, 24 Feb 2021 16:21:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lEwv0-0003b4-3p
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 16:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1iUhtDEi+5CkGUvyZLsVBOnlGWt86U2HUz3W2iE42HY=; b=bWRuyBQ+vbcTX2QjdDsWgYez3e
 QMYSJauklkOIdh6Vc/rcSfoyH8sGaacjJiEOXnYFvLFCAMAZBijo296SCgDE9curJMzjYm2JfW8WP
 trFG+azCrvYao6pTPpPIaQcan4IMd971kfhEof7ptrM+C/sKlhSTWgOZpm/gMP+xb4rU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1iUhtDEi+5CkGUvyZLsVBOnlGWt86U2HUz3W2iE42HY=; b=eyDBR2l9Y2+oI+/7WYbR6MyHmI
 7oBr9K3YCROvWbHsugwi3jI7DVvrPGtSxmsqqDSKnRPWfZ5cvU34zw2XckM1st83k3VGsA1dQ9Y5h
 Uc6zKqlRz0s5IFsFCj3TEiln3e6uQe1dfFPCZrfULVAfDN5sSBivaeHFw3VQZ1eXJNuM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lEwun-003qrb-HF
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 16:21:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1iUhtDEi+5CkGUvyZLsVBOnlGWt86U2HUz3W2iE42HY=; b=LBROo6968UJXNWuvJt7SF366Zt
 iIP5QF+rM+aTNmUyr+hfxsInxV40EbrDM7j/il7G5o/9qtY6exZWs/T6Iqf772qHIppcDJMb1NJZn
 phm9I1J2568XEQfvf+XTA4PWCrbE7MeMmOEr5A3VlbG1kogSiPxU2i8TByW/7aipMq0msY8WHuFL+
 DgbfVbHfY0vuyMKSDHXFgyV2cRxWbSHN+hXpKc1fzxc12Mg6lodWqRBhNKxqAmvW0pWmI5sv5jOp2
 WtiPX3StG7iGvARSYw8+rEEGy4Za1PT4EW+UM1FP4DxZaZWq2K6vpiCflB6eB+DAqQEgWaA2XVibt
 +0Wh2msw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lEwRd-009aTu-W2; Wed, 24 Feb 2021 15:51:25 +0000
Date: Wed, 24 Feb 2021 15:51:21 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210224155121.GQ2858050@casper.infradead.org>
References: <CAH2r5mv=PZk_wn2=b0VQcaom9TEw1MGLz+qB_Ktxxm2bnV9Nig@mail.gmail.com>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
 <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
 <20210216021015.GH2858050@casper.infradead.org>
 <3743319.1614173522@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3743319.1614173522@warthog.procyon.org.uk>
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
X-Headers-End: 1lEwun-003qrb-HF
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
Cc: David Wysochanski <dwysocha@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 linux-nfs <linux-nfs@vger.kernel.org>,
 William Kucharski <william.kucharski@oracle.com>,
 Jeff Layton <jlayton@redhat.com>, linux-mm <linux-mm@kvack.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, Steve French <smfrench@gmail.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Feb 24, 2021 at 01:32:02PM +0000, David Howells wrote:
> Steve French <smfrench@gmail.com> wrote:
> 
> > This (readahead behavior improvements in Linux, on single large file
> > sequential read workloads like cp or grep) gets particularly interesting
> > with SMB3 as multichannel becomes more common.  With one channel having one
> > readahead request pending on the network is suboptimal - but not as bad as
> > when multichannel is negotiated. Interestingly in most cases two network
> > connections to the same server (different TCP sockets,but the same mount,
> > even in cases where only network adapter) can achieve better performance -
> > but still significantly lags Windows (and probably other clients) as in
> > Linux we don't keep multiple I/Os in flight at one time (unless different
> > files are being read at the same time by different threads).
> 
> I think it should be relatively straightforward to make the netfs_readahead()
> function generate multiple read requests.  If I wasn't handed sufficient pages
> by the VM upfront to do two or more read requests, I would need to do extra
> expansion.  There are a couple of ways this could be done:

I don't think this is a job for netfs_readahead().  We can get into a
similar situation with SSDs or RAID arrays where ideally we would have
several outstanding readahead requests.

If your drive is connected through a 1Gbps link (eg PCIe gen 1 x1) and
has a latency of 10ms seek time, with one outstanding read, each read
needs to be 12.5MB in size in order to saturate the bus.  If the device
supports 128 outstanding commands, each read need only be 100kB.

We need the core readahead code to handle this situation.  My suggestion
for doing this is to send off an extra readahead request every time we
hit a !Uptodate page.  It looks something like this (assuming the app
is processing the data fast and always hits the !Uptodate case) ...

1. hit 0,
	set readahead size to 64kB,
	mark 32kB as Readahead, send read for 0-64kB
	wait for 0-64kB to complete
2. hit 32kB (Readahead), no reads outstanding
	inc readahead size to 128kB,
	mark 128kB as Readahead, send read for 64k-192kB
3. hit 64kB (!Uptodate), one read outstanding
	mark 256kB as Readahead, send read for 192-320kB
	mark 384kB as Readahead, send read for 320-448kB
	wait for 64-192kB to complete
4. hit 128kB (Readahead), two reads outstanding
	inc readahead size to 256kB,
	mark 576kB as Readahead, send read for 448-704kB
5. hit 192kB (!Uptodate), three reads outstanding
	mark 832kB as Readahead, send read for 704-960kB
	mark 1088kB as Readahead, send read for 960-1216kB
	wait for 192-320kB to complete
6. hit 256kB (Readahead), four reads outstanding
	mark 1344kB as Readahead, send read for 1216-1472kB
7. hit 320kB (!Uptodate), five reads outstanding
	mark 1600kB as Readahead, send read for 1472-1728kB
	mark 1856kB as Readahead, send read for 1728-1984kB
	wait for 320-448kB to complete
8. hit 384kB (Readahead), five reads outstanding
	mark 2112kB as Readahead, send read for 1984-2240kB
9. hit 448kB (!Uptodate), six reads outstanding
	mark 2368kB as Readahead, send read for 2240-2496kB
	mark 2624kB as Readahead, send read for 2496-2752kB
	wait for 448-704kB to complete
10. hit 576kB (Readahead), seven reads outstanding
	mark 2880kB as Readahead, send read for 2752-3008kB

...

Once we stop hitting !Uptodate pages, we'll maintain the number of pages
marked as Readahead, and thus keep the number of readahead requests
at the level it determined was necessary to keep the link saturated.
I think we may need to put a parallelism cap in the bdi so that a device
which is just slow instead of at the end of a long fat pipe doesn't get
overwhelmed with requests.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
