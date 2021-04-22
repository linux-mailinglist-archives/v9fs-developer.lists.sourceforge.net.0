Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B133681E5
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Apr 2021 15:52:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lZZkQ-0001xw-Lr; Thu, 22 Apr 2021 13:52:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lZZkN-0001wp-5C
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Apr 2021 13:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JGmS/xLoW189jty2r0t6cwkKx1CTQrOOThGSNPhaRfs=; b=DdmQh61cfI7MjXglkERaxDc7KO
 lURzx1cahwsafZEBBJHFJCDxwNpPOBErO8hEm0uz5G+aynjpEqp69fE+u/+CC+oSkcemycVj27XXN
 FhY6DzpGkZchUH5PY2StMbkyEh4CC2F3K9S8T8ZtARL0OXMcbjbsmkobIzomFihNREEY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JGmS/xLoW189jty2r0t6cwkKx1CTQrOOThGSNPhaRfs=; b=DXsoKZokVmIQiEBtA/jI0ONYie
 AHoRq5fWxv5xoiAWD+XN6zPPSnICB7/wBc/cuJirlVh3pXeg8bvkvBB7g7uFnhVudPZj0ej0YDljj
 dk7z/Tu4YDDfzy0+M21kMpMV0PR/UUuuohex5sDqUP+AZHWV5asRuQNWvhStSpKDQf/Q=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lZZkH-00CtCi-Dv
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Apr 2021 13:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619099504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JGmS/xLoW189jty2r0t6cwkKx1CTQrOOThGSNPhaRfs=;
 b=F2JYgmG80NZS9kJzYxX2swQYeKtcoqm3j3lzGhA8OPYyyMYOiJSB5IKtBET314mSqr/n7p
 01b70O5DI1bNvCqQRDPAICWiWXg0PlJHswqJDJs0FTTrr5ltEXE21yFfRfwwUTeYv40cys
 79z47+7AToc1mq4PAc06s+zCnz4q5Sw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-D-9gXEBGPL-JfVdk-rKe9g-1; Thu, 22 Apr 2021 09:51:42 -0400
X-MC-Unique: D-9gXEBGPL-JfVdk-rKe9g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7A82107ACF6;
 Thu, 22 Apr 2021 13:51:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0935760938;
 Thu, 22 Apr 2021 13:51:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <27c369a8f42bb8a617672b2dc0126a5c6df5a050.camel@kernel.org>
References: <27c369a8f42bb8a617672b2dc0126a5c6df5a050.camel@kernel.org>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789064740.6155.11932541175173658065.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <2293709.1619099492.1@warthog.procyon.org.uk>
Date: Thu, 22 Apr 2021 14:51:32 +0100
Message-ID: <2293710.1619099492@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lZZkH-00CtCi-Dv
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
 linux-nfs@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> As a general note, iov_iter.c could really do with some (verbose)
> comments explaining things. A kerneldoc header that explains the
> arguments to iterate_all_kinds would sure make this easier to review.

Definitely.  But that really requires a separate patch.

> > @@ -1126,7 +1199,12 @@ void iov_iter_revert(struct iov_iter *i, size_t unroll)
> >  		return;
> >  	}
> >  	unroll -= i->iov_offset;
> > -	if (iov_iter_is_bvec(i)) {
> > +	if (iov_iter_is_xarray(i)) {
> > +		BUG(); /* We should never go beyond the start of the specified
> > +			* range since we might then be straying into pages that
> > +			* aren't pinned.
> > +			*/
> 
> It's not needed now, but there are a lot of calls to iov_iter_revert in
> the kernel, and going backward doesn't necessarily mean we'd be straying
> into an unpinned range. xarray_start never changes; would it not be ok
> to allow reverting as long as you don't move to a lower offset than that
> point?

This is handled starting a couple of lines above the start of the hunk:

	if (unroll <= i->iov_offset) {
		i->iov_offset -= unroll;
		return;
	}

As long as the amount you want to unroll by doesn't exceed the amount you've
consumed of the iterator, it will allow you to do it.  The BUG is there to
catch someone attempting to over-revert (and there's no way to return an
error).

> > +static ssize_t iter_xarray_copy_pages(struct page **pages, struct xarray *xa,
> > +				       pgoff_t index, unsigned int nr_pages)
> 
> nit: This could use a different name -- I was expecting to see page
> _contents_ copied here, but it's just populating the page array with
> pointers.

Fair point.  Um...  how about iter_xarray_populate_pages() or
iter_xarray_list_pages()?

> I think you've planned to remove iov_iter_for_each_range as well? I'll
> assume that this is going away. It might be nice to post the latest
> version of this patch with that change, just for posterity.

I'll put that in a separate patch.

> In any case, this all looks reasonable to me, modulo a few nits and a
> general dearth of comments.
> 
> Reviewed-by: Jeff Layton <jlayton@kernel.org>

Thanks,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
