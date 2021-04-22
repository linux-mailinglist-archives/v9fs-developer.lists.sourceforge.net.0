Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3E73682BB
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Apr 2021 16:51:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lZag6-0004ez-JE; Thu, 22 Apr 2021 14:51:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1lZag5-0004es-U9
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Apr 2021 14:51:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mgtxhae1O66zLB4IpS3o/gKrtyB7o7mTtKynIuMRbJg=; b=bD31jX7KWfwdigdGFl+x9Sy8Bi
 BKdMRg2CcWHs5+My7ivaH4ur7GBcKUl20OUtP38zFYJKfg38CMQpEx6GnUYOwNvRBbWkfVSi5WLSI
 ZJlJCihKUWHjKBCTM2B6oR++Z2L7eHftWadKDDLDguh83xAKzsSZonSiN9eXBbrxgq94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mgtxhae1O66zLB4IpS3o/gKrtyB7o7mTtKynIuMRbJg=; b=iuuwcNjeoh4qbQ8/UFhKaRvgLI
 PkV1idGlFDkAGx97Oio2sv5vAfvQaypGmWBGanaCOZ8690pPhSC8Nfe8o5XWfUOVgUNP4V/yAfcy7
 Thr65KyLbkCk4cK6v4gp49KzpXaSIk0ivK16xObP/J0hdvuxJpfZY+P1vRjJIvXd/LbI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lZafv-0006lb-3A
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Apr 2021 14:51:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B63461425;
 Thu, 22 Apr 2021 14:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619103076;
 bh=SABrBVqsF72QfA15qnobAparqW+KASuoIMcq/PiBNyQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ISEFHesJOLuYeLHcNDksC5KuWW+5nxW3X+DhvyEAmqF/uRFP5nQxuBuVn5L/aZiYr
 2Cy7HQg4cBmEOyWy/aD5GewKDQib2hy0QHxelQ3fbslJekhlOKA8Vv0qamHl/sHAaa
 zI+F9ko8twDY4PvNrgRcbc715vs98IxZn9EO2++8yAKRZVnQHsTjOXMbGsXu8pyu1S
 7yxSntGlu+TorOs1Ps6BNrZ3UsK/LoNdK7xyDZJxRVyc4X1GriKhZAIkVarearMkBS
 Ex8eq+2aZnRgx41OlNE2DBmA2pe7SPgzHIlqYkoZljNTB+4QBRADLXV1hfqWwTv8f7
 U/aewDPyMcKtQ==
Message-ID: <95de6e0ff902903cfc8825a4e0b7f1c64594630f.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Thu, 22 Apr 2021 10:51:13 -0400
In-Reply-To: <2293710.1619099492@warthog.procyon.org.uk>
References: <27c369a8f42bb8a617672b2dc0126a5c6df5a050.camel@kernel.org>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789064740.6155.11932541175173658065.stgit@warthog.procyon.org.uk>
 <2293710.1619099492@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lZafv-0006lb-3A
Subject: Re: [V9fs-developer] [PATCH v6 01/30] iov_iter: Add ITER_XARRAY
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
 linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2021-04-22 at 14:51 +0100, David Howells wrote:
> Jeff Layton <jlayton@kernel.org> wrote:
> 
> > As a general note, iov_iter.c could really do with some (verbose)
> > comments explaining things. A kerneldoc header that explains the
> > arguments to iterate_all_kinds would sure make this easier to review.
> 
> Definitely.  But that really requires a separate patch.
> 

I suppose.

> > > @@ -1126,7 +1199,12 @@ void iov_iter_revert(struct iov_iter *i, size_t unroll)
> > >  		return;
> > >  	}
> > >  	unroll -= i->iov_offset;
> > > -	if (iov_iter_is_bvec(i)) {
> > > +	if (iov_iter_is_xarray(i)) {
> > > +		BUG(); /* We should never go beyond the start of the specified
> > > +			* range since we might then be straying into pages that
> > > +			* aren't pinned.
> > > +			*/
> > 
> > It's not needed now, but there are a lot of calls to iov_iter_revert in
> > the kernel, and going backward doesn't necessarily mean we'd be straying
> > into an unpinned range. xarray_start never changes; would it not be ok
> > to allow reverting as long as you don't move to a lower offset than that
> > point?
> 
> This is handled starting a couple of lines above the start of the hunk:
> 
> 	if (unroll <= i->iov_offset) {
> 		i->iov_offset -= unroll;
> 		return;
> 	}
> 
> As long as the amount you want to unroll by doesn't exceed the amount you've
> consumed of the iterator, it will allow you to do it.  The BUG is there to
> catch someone attempting to over-revert (and there's no way to return an
> error).
> 

Ahh thanks. I misread that bit. That makes sense. Sucks about having to
BUG() there, but I'm not sure what else you can do.

> > > +static ssize_t iter_xarray_copy_pages(struct page **pages, struct xarray *xa,
> > > +				       pgoff_t index, unsigned int nr_pages)
> > 
> > nit: This could use a different name -- I was expecting to see page
> > _contents_ copied here, but it's just populating the page array with
> > pointers.
> 
> Fair point.  Um...  how about iter_xarray_populate_pages() or
> iter_xarray_list_pages()?
> 

I like "populate" better.

> > I think you've planned to remove iov_iter_for_each_range as well? I'll
> > assume that this is going away. It might be nice to post the latest
> > version of this patch with that change, just for posterity.
> 
> I'll put that in a separate patch.
> 
> > In any case, this all looks reasonable to me, modulo a few nits and a
> > general dearth of comments.
> > 
> > Reviewed-by: Jeff Layton <jlayton@kernel.org>
> 
> Thanks,
> David
> 

Cheers,
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
