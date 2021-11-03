Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B564445ED
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 17:30:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miJ9Y-0001pk-EA; Wed, 03 Nov 2021 16:30:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1miJ9T-0001pU-4B
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cj3Ogsyg3Lz2VHkzTH5tWxtqDLyQrRH//9PvxlJINbM=; b=GYJ+CQ9cwvoH/GtgDOeAvlhlMu
 GFCjU48DA7iFnV4L8vhOeLYpzatdo/oRgXlRlIP2m/+nh03z4FCNt6RVvf0Yowjtd97hFrxCVgzRN
 VTETK706x/4Q5Eq2WR4LZ80EtqGbHX0dwUjA/n0dbDZ3oZdsQcSOFd7O0HS+OWptddAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cj3Ogsyg3Lz2VHkzTH5tWxtqDLyQrRH//9PvxlJINbM=; b=d3F4NB5u9/CzJPR/KhNBPQCSH8
 NVmoFw00uATLJKoiVa0tDvgux+E4n9Mh4FIdlj6Eh0ghlb66yqUJv94POC/14oTWQizuebOkSzRZD
 n+EsdAxcYI99oyc3WP5xKo+ewVmKw/oz8PurR9YOIc1w40qdQoOkSu60oP3qhq+3G0YU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miJ9Q-0004Fy-OO
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Cj3Ogsyg3Lz2VHkzTH5tWxtqDLyQrRH//9PvxlJINbM=; b=fzyxYkOmFPj5mYRu0/Oue66U8S
 mc6O0rW/kmK4juSuHAU3CVAQPNMgm/sfRYX1W3hu9MEF0wdRYKKU+fMwrX6m5CqZ5H9YIcVCkfcsG
 tYwUkAuyvHDFBxme5tS/H3+Es/qGwxYcpTd7gwU2WwiYAM9FbeA1misue+ng5vVHMjNcJYibRS6HE
 WIkIM4l8gezYIUYMFZGIcCXKadJJeAR4yJaMhMtwUkrY1uGtwpY6b8RSwIvBFDPLB0QRcCKqv77Tc
 OmzJM6qWyh30kQ5HqTByWvac7h2bKmAEP9UdCHaANqqkbZa1njQxffyq02IGVOdug+WDpHrY1jdQV
 lT9xVz4g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1miJ6W-005Jo8-KL; Wed, 03 Nov 2021 16:27:44 +0000
Date: Wed, 3 Nov 2021 16:27:12 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YYK4YKCnDyoJx5eW@casper.infradead.org>
References: <YYKa3bfQZxK5/wDN@casper.infradead.org>
 <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
 <163584187452.4023316.500389675405550116.stgit@warthog.procyon.org.uk>
 <1038257.1635951492@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1038257.1635951492@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 03, 2021 at 02:58:12PM +0000,
 David Howells wrote:
 > Matthew Wilcox <willy@infradead.org> wrote: > > > > + len = (size >= start
 + gran) ? gran : size - start; > > > > This seems like the m [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1miJ9Q-0004Fy-OO
Subject: Re: [V9fs-developer] [PATCH v3 5/6] netfs, 9p, afs, ceph: Use folios
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Nov 03, 2021 at 02:58:12PM +0000, David Howells wrote:
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > > +	len = (size >= start + gran) ? gran : size - start;
> > 
> > This seems like the most complicated way to write this ... how about:
> > 
> >         size_t len = min_t(loff_t, isize - start, folio_size(folio));
> 
> I was trying to hedge against isize-start going negative.  Can this code race
> against truncate?  truncate_setsize() changes i_size *before* invalidating the
> pages.

We should check for isize < start separately, and skip the writeback
entirely.

> > >  static int afs_symlink_readpage(struct file *file, struct page *page)
> > >  {
> > > -	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
> > > +	struct afs_vnode *vnode = AFS_FS_I(page_mapping(page)->host);
> > 
> > How does swap end up calling readpage on a symlink?
> 
> Um - readpage is called to read the symlink.

But the only reason to use page_mapping() instead of page->mapping
is if you don't know that the page is in the page cache.  You know
that here, so I don't understand why you changed it.

> > > -	page_endio(page, false, ret);
> > > +	page_endio(&folio->page, false, ret);
> > 
> > We need a folio_endio() ...
> 
> I think we mentioned this before and I think you said you had or would make a
> patch for it.  I can just create a wrapper for it if that'll do.

Probably better to convert it and put a page_endio wrapper in
folio-compat.c


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
