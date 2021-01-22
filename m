Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 624EB2FFE6D
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Jan 2021 09:43:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2s2h-000610-7J; Fri, 22 Jan 2021 08:43:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+b01c54811d84ab4bba87+6361+infradead.org+hch@casper.srs.infradead.org>)
 id 1l2s2f-00060W-3T
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Jan 2021 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=72GbwhSaNm+KhJ5+LNT/6O1Ghfel0X9o+LJMfhOiuQk=; b=TRXNGJ825Uq/ZxA7sjPNZINOz4
 MfhbgcY8AFqYpnrAZ9Lg2NFNbcZrvrfD16B+4ZDcfaj7G38ki7QQOYE7Dl22bR1V0gl1O+zbcMLy/
 RE5/evYVobfluyRf/hRbpGt1ykEh8TUTDFQ6LkmuYDTx+WgssRnMKI8f6IryYoc8UL60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=72GbwhSaNm+KhJ5+LNT/6O1Ghfel0X9o+LJMfhOiuQk=; b=R1SQbqG4UZCaRwbdtaRIGov7S3
 KNGgjLgLxbB71Lj6xi+FWDnYYLbprPdqqZcCGRnwiAhLf4R2wExjiteFMaaXpbi3SVGsFqb+lr8he
 rHmXOUw3tKh91cL9UgBqO9Z+m1R3JBY5TkrreSeMbQwond4DFmxI5AscI8Qx6AsLTS+g=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2s2N-00FPUj-BB
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Jan 2021 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=72GbwhSaNm+KhJ5+LNT/6O1Ghfel0X9o+LJMfhOiuQk=; b=IQkHaX7tWmIiZsoJtwtMD5PQh6
 6sSMyLyDrUNouXEQbmbUFvF24EdKoRDQa0ZVLwmyKYTwKkk5xp0VZU5CE31ATf2ZiFwwXx2JWbobI
 L6BxLzzOyWotGM5q0hLW/+GqNioImLvxzCtdhYXF4e+LcRdZ1djRabadZ94sEhJbx2J7UPgXgvjfa
 tqDLPtgWNi4VqC7fTxuk4GVga87ZtHgv2MpOkaBZNnosvzNqcAZirFHTO8gkgafO10FkseKAjRJRH
 pPnEAyzULxisEGO6ubnq1mviR0vHDhTSpgRApSNaMNMdIYD05p10HJrJYd5YtG0+6ZmbWyHSwiX+4
 B1c4lT/Q==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l2rj0-000VVB-L7; Fri, 22 Jan 2021 08:23:27 +0000
Date: Fri, 22 Jan 2021 08:23:22 +0000
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210122082322.GB119852@infradead.org>
References: <20210121174306.GB20964@fieldses.org>
 <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <1794286.1611248577@warthog.procyon.org.uk>
 <1851804.1611255313@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1851804.1611255313@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
X-Headers-End: 1l2s2N-00FPUj-BB
Subject: Re: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
 fscache kiocb API
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
 linux-cifs@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, "J. Bruce Fields" <bfields@fieldses.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 21, 2021 at 06:55:13PM +0000, David Howells wrote:
> > Is it that those "bridging" blocks only show up in certain corner cases
> > that users can arrange to avoid?  Or that it's OK as long as you use
> > certain specific file systems whose behavior goes beyond what's
> > technically required by the bamp or seek interfaces?
> 
> That's a question for the xfs, ext4 and btrfs maintainers, and may vary
> between kernel versions and fsck or filesystem packing utility versions.

For XFS if you do not use reflinks, extent size hints or the RT
subvolume there are no new allocations before i_size that will magically
show up.  But relying on such undocumented assumptions is very
dangerous.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
