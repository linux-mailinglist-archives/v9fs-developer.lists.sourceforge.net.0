Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F6D1C6EF3
	for <lists+v9fs-developer@lfdr.de>; Wed,  6 May 2020 13:10:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jWHwA-0000yy-7C; Wed, 06 May 2020 11:10:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1jWHw8-0000yY-7W
 for v9fs-developer@lists.sourceforge.net; Wed, 06 May 2020 11:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vfQ2xLQJnaSv4eyB6fGBnkHjNO7cWTECMxbc0VqkGy0=; b=UMJ6CjDRdJTKSlwgzSQfe+uP95
 L3B337SmHwHHH7YaHWH7b4KwuUjiHVBH888QNTX62JrmCVu+cN2HAsAwyM7tfmL7gVKl7SZQN1pAh
 jo50SNYZKtz5n/fdBgSALkF0v//MPbDUePFS3NCORMOspFYb+ycHhL11Gff4X4cFZ4rU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vfQ2xLQJnaSv4eyB6fGBnkHjNO7cWTECMxbc0VqkGy0=; b=kK7g6FouJeCUtukHf3zOWPokWw
 sXQFkKn+NnLezXKUBPxwdPV/t8rbiIWzSRNZZRuOasdElcYRyUzGz0Dhux9p61rdDa7SLFvA29XUl
 HBTilNHTiHkrjLRaav3XCOGsV+jLSv11JaXbmeV3BWE88rYF4CZaV7ruSiDXr9CngYQc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWHw6-00CixU-Rp
 for v9fs-developer@lists.sourceforge.net; Wed, 06 May 2020 11:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vfQ2xLQJnaSv4eyB6fGBnkHjNO7cWTECMxbc0VqkGy0=; b=tnbyHqNTBqyLYSKmKdfmPbRTZu
 0HU8rZ2kSJ85KuTjgAOzhh5mBjRJtnCSyCsyRTHJNBkezNrvw6JjyT0hN0fsiuFMt/D0UO31Uyaj0
 Cgq0Sw1/9ekun8nxOq73YMn6DKuegBmQUMVFceY3ns5sH4A2w7nmsZSU9yyFRxn4RU0wd5y92VABJ
 GmnF3fk82h8xF2i+MYQIIVq4xzP2IxGNvBw+dZjWza8mm9PoG+zEq+011Yr6Sp1f7lcANyvzI0rP8
 Z2SwZzJrOqp27iZuKDrosbbRxVeY1qJo5KFDsLVNR0PHbg199RyKT8jQ9eIg1uMIdx2ASMaCO0f60
 3McnRVTw==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jWHvq-0005ga-Fj; Wed, 06 May 2020 11:09:42 +0000
Date: Wed, 6 May 2020 04:09:42 -0700
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200506110942.GL16070@bombadil.infradead.org>
References: <20200505115946.GF16070@bombadil.infradead.org>
 <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
 <158861253957.340223.7465334678444521655.stgit@warthog.procyon.org.uk>
 <683739.1588751878@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <683739.1588751878@warthog.procyon.org.uk>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWHw6-00CixU-Rp
Subject: Re: [V9fs-developer] [RFC PATCH 54/61] afs: Wait on PG_fscache
 before modifying/releasing a page
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, May 06, 2020 at 08:57:58AM +0100, David Howells wrote:
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > > PG_fscache is going to be used to indicate that a page is being written to
> > > the cache, and that the page should not be modified or released until it's
> > > finished.
> > > 
> > > Make afs_invalidatepage() and afs_releasepage() wait for it.
> > 
> > Well, why?  Keeping a refcount on the page will prevent it from going
> > away while it's being written to storage.  And the fact that it's
> > being written to this cache is no reason to delay the truncate of a file
> > (is it?)
> 
> Won't that screw up ITER_MAPPING?  Does that mean that ITER_MAPPING isn't
> viable?

Can you remind me why ITER_MAPPING needs:

"The caller must guarantee that the pages are all present and they must be
locked using PG_locked, PG_writeback or PG_fscache to prevent them from
going away or being migrated whilst they're being accessed."

An elevated refcount prevents migration, and it also prevents the pages
from being freed.  It doesn't prevent them from being truncated out of
the file, but it does ensure the pages aren't reallocated.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
