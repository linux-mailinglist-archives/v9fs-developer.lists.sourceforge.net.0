Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C20F1492032
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 08:26:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9isr-000196-QV; Tue, 18 Jan 2022 07:26:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+4fe6c3c60fc7db690b35+6722+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1n9isp-00018z-AU
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 07:26:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+dhYCXllEHNKm5Sc731XzwwsjVqJhcW4C4oj7NGz3M4=; b=HzwuF3dvSWJ/1Jov3ZVCGRdYF/
 flzhpe9b3gSJ+rDOduNFHh8MG9uk88a7ua1t2TMlun7P/0UQ7RPRQIiioQeeYiRsA07OeGyOu5Z/Q
 ui8WeZ175cM/Riu8PPpcI0KwQuLrINUwDOehsWAbkJPppQAAJEsfwAP4luVTeZrBOKZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+dhYCXllEHNKm5Sc731XzwwsjVqJhcW4C4oj7NGz3M4=; b=UtyCsVHQPGZsiHYDCKCNb4P3tJ
 d4XrEP2NX8oPeUrQ5xrygna2hD8GZmVETaY/SJ4Skg44c896kybIcP/zANNebsBRZlGQbYQTNRusS
 s/rrH5i/AGydHXlK5sxnnQ9n6ZG6bpFZkfVjHq2zYbZtA3aI27ew2mk3arPPnMWZM5eM=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9isl-0004of-Vt
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 07:26:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+dhYCXllEHNKm5Sc731XzwwsjVqJhcW4C4oj7NGz3M4=; b=TGajYPjm2XkqLBdJOhVzBzTwlB
 boJ4d295sjI9UUInwlPKhDyuNoTCqGg0FQw18iEAahbV/VVb81mYPWPf2+b0qiATEyluQn27qsXLu
 5EVgEHA+7ijXmvn4H9WVCyKxYjU5n2iMLOTjwqsd83+4PS4pEhBcGzUeq1dUTDUkcbQTongiSpChY
 fMZaj3W15A+CXTQEIRuyROppX7fq6If8tvRdRgQkFWIaI+wN8ZUno+UKphp83Uu8eTqHUPFrbKJbF
 AjzrmA/xEfJMnw5y3y5YjNzCJMWjtRHB0WCK6aAmH9OhkBqR/9ABbA+LAF3arRARXloUVo1Ubox1R
 7bgznWDQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n9iri-000afR-VI; Tue, 18 Jan 2022 07:25:14 +0000
Date: Mon, 17 Jan 2022 23:25:14 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <YeZrWoQY/3dKZHfT@infradead.org>
References: <2752208.1642413437@warthog.procyon.org.uk>
 <CAHk-=wjQG5HnwQD98z8de1EvRzDnebZxh=gQUVTKCn0DOp7PQw@mail.gmail.com>
 <YeVvXToTxCsMzHZv@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YeVvXToTxCsMzHZv@casper.infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 17, 2022 at 01:30:05PM +0000,
 Matthew Wilcox wrote:
 > I think for DIO, you're sacrificing the entire buffer with any filesystem.
 > If the underlying file is split across multiple drives, o [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n9isl-0004of-Vt
Subject: Re: [V9fs-developer] Out of order read() completion and buffer
 filling beyond returned amount
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Peter Zijlstra <peterz@infradead.org>,
 David Howells <dhowells@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 17, 2022 at 01:30:05PM +0000, Matthew Wilcox wrote:
> I think for DIO, you're sacrificing the entire buffer with any filesystem.
> If the underlying file is split across multiple drives, or is even
> just fragmented on a single drive, we'll submit multiple BIOs which
> will complete independently (even for SCSI which writes sequentially;
> never mind NVMe which can DMA blocks asynchronously).  It might be
> more apparent in a networking situation where errors are more common,
> but it's always been a possibility since Linux introduced DIO.

Yes.  Probably because of that we also never allow short reads or writes
due to I/O errrors but always fail the whole I/O.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
