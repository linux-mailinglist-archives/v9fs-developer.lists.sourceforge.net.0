Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2B231CB0C
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 14:25:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lC0Lh-0000XQ-B1; Tue, 16 Feb 2021 13:25:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lC0Lf-0000XI-S1
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 13:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hgIp8cMPVwAuFQ5Q63EIotyWvfFSj1q5sKGA4WuuKGw=; b=brvrUB6o2VLp7qYGmfKSquhtuQ
 q3KiBm7GQ00/RjfzhpYvOtRAwUVP3wzW9hiTAa/uZcE+dK6YmY1MQHUU+QAfDjAHamCccbLsd8kT8
 kirjZs2+j7uvRyPAjI+Crt9o/a0Urkb0Q2u6JQEGOAXWGwgx+QDrnfd1x0eOibmX930g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hgIp8cMPVwAuFQ5Q63EIotyWvfFSj1q5sKGA4WuuKGw=; b=imVkfbOiuABHyGzQGyCQqDgVQg
 tr02/d7k/uqDXZgrYV6ywhYkNgjt6QyCE2N1rRMMwtFnvD7PZaUQnF+2gC2o6X0tBJPp+Ow3Qou73
 JrnpTOyQcnf8MTqI9vbZxWLcVi3olWOxodPGycyanXfVu5vugfFkMyAreNH22XoqjMC8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lC0LX-00Atva-2D
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 13:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hgIp8cMPVwAuFQ5Q63EIotyWvfFSj1q5sKGA4WuuKGw=; b=ctbhiVSDQqbf2BoXqncvKXwa5V
 yyZuAi6Jd2FD+1ogrQXZd4B3GkugraUEBxghjXti1sjtmIMBZbtRojFeQVOLvcSCNN7KWI8zGjHRB
 aTbPwSH/89Xk8nb6cxXt7r/DpupCtu6PRowMHNCggqKOsYqrSAKydaABwFJxd50yJQZnTj8UdGVoW
 V0fYtHecjoaTww/OoSZkKEThNGDBmEEDfNhjuoQuWlthj7jZ2lk6XmekUKGID08dGYnEgvpmu1c/k
 v7MMetTzabs77GeK+SjHzRTKERB2iiyjh2pOZt5/wPCbJ4YKul+uZv2isOLBi843nry0+UN0Q914n
 9/DbbT1w==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lC0JX-00Gtih-RC; Tue, 16 Feb 2021 13:22:58 +0000
Date: Tue, 16 Feb 2021 13:22:51 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20210216132251.GI2858050@casper.infradead.org>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
 <20210216103215.GB27714@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216103215.GB27714@lst.de>
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
X-Headers-End: 1lC0LX-00Atva-2D
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Feb 16, 2021 at 11:32:15AM +0100, Christoph Hellwig wrote:
> On Mon, Feb 15, 2021 at 03:44:52PM +0000, David Howells wrote:
> > Provide a function, readahead_expand(), that expands the set of pages
> > specified by a readahead_control object to encompass a revised area with a
> > proposed size and length.
> > 
> > The proposed area must include all of the old area and may be expanded yet
> > more by this function so that the edges align on (transparent huge) page
> > boundaries as allocated.
> > 
> > The expansion will be cut short if a page already exists in either of the
> > areas being expanded into.  Note that any expansion made in such a case is
> > not rolled back.
> > 
> > This will be used by fscache so that reads can be expanded to cache granule
> > boundaries, thereby allowing whole granules to be stored in the cache, but
> > there are other potential users also.
> 
> So looking at linux-next this seems to have a user, but that user is
> dead wood given that nothing implements ->expand_readahead.
> 
> Looking at the code structure I think netfs_readahead and
> netfs_rreq_expand is a complete mess and needs to be turned upside
> down, that is instead of calling back from netfs_readahead to the
> calling file system, split it into a few helpers called by the
> caller.

That's funny, we modelled it after iomap.

> But even after this can't we just expose the cache granule boundary
> to the VM so that the read-ahead request gets setup correctly from
> the very beginning?

The intent is that this be usable by filesystems which want to (for
example) compress variable sized blocks.  So they won't know which pages
they want to readahead until they're in their iomap actor routine,
see that the extent they're in is compressed, and find out how large
the extent is.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
