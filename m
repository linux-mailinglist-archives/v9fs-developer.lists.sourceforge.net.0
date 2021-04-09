Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A13359E1D
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 13:59:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUpnQ-0006cl-Ph; Fri, 09 Apr 2021 11:59:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <willy@infradead.org>) id 1lUpnO-0006VW-Tk
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c1r8qKf2WZUBFC6KK+MUpMLPvRW0EBtQK/vl4+qTDxg=; b=Hdp5hPDi8vZyxUhVDKm15yuucP
 CRNDkjpxuk/ssH08IeHwq1rXeEe5r4vR2DRcfSzI9FIH35b13rddjLr6RkVvGrTQSgup0i3+fqBNb
 9svER8BebYVs1Ql2PC6jy6V01tpB991nDfXSV6eX4i6s17jPURMK6ygz3W76jyrHDcEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c1r8qKf2WZUBFC6KK+MUpMLPvRW0EBtQK/vl4+qTDxg=; b=jKzibr809Tcu4CGOi+G6qCWVQP
 fl4fCgRGuvzev75Liu5o+XYVvI+Ucy6/QIeosCd/uxsM7PjjCm3nIWCm1fFXaDOSScIG/I8WaqMlq
 i6Bxrm1ypsdwRHEoCWQ/qRP6AOoOCmXRV8FdnQhh3ylPvvpTTvjvnr4yNd8gj/VgXuF0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUpam-00A2Aq-Lu
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:47:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=c1r8qKf2WZUBFC6KK+MUpMLPvRW0EBtQK/vl4+qTDxg=; b=NOPeCLY4PZdlE1Sl+vERrsPYCI
 kaU09fmm4qGEaxVbWWYfFtOZ0dfLZ0wlHt1TzAnVRj0Z2OnnJiJQ0JujMFGZxOCpvd+X6kmCbo3AS
 s5+ioH0yGL6LgNWu2HItUFI8XLwGijzp9kyjepKmcaUnw64YW8EIvsTg/nnJn/u6n330Gve2P9cwj
 rXMtz0FIN995Nc8299Q4VfAqFO+HJOxpNwc+t30qega9f7aXSdDzrTspNvtwCRTmQ5YA6Ul7BgXXa
 UlbaHzCLXvvLEl1pr2Gck45gORD7uhzGD0ESWrGa2jpa3n0HxAGKyWlmP+ZsmPzLNoVPdMTj/I6Rm
 mdx5vNFA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lUpZI-000Iht-4A; Fri, 09 Apr 2021 11:45:05 +0000
Date: Fri, 9 Apr 2021 12:44:56 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210409114456.GT2531743@casper.infradead.org>
References: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789064740.6155.11932541175173658065.stgit@warthog.procyon.org.uk>
 <289825.1617959345@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <289825.1617959345@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUpam-00A2Aq-Lu
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
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Al Viro <viro@zeniv.linux.org.uk>, Anna Schumaker <anna.schumaker@netapp.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Apr 09, 2021 at 10:09:05AM +0100, David Howells wrote:
> Al Viro <viro@zeniv.linux.org.uk> wrote:
> 
> > > +#define iterate_all_kinds(i, n, v, I, B, K, X) {		\
> > 
> > Do you have any users that would pass different B and X?
> > 
> > > @@ -1440,7 +1665,7 @@ ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
> > >  		return v.bv_len;
> > >  	}),({
> > >  		return -EFAULT;
> > > -	})
> > > +	}), 0
> > 
> > Correction - users that might get that flavour.  This one explicitly checks
> > for xarray and doesn't get to iterate_... in that case.
> 
> This is the case for iterate_all_kinds(), but not for iterate_and_advance().
> 
> See _copy_mc_to_iter() for example: that can return directly out of the middle
> of the loop, so the X variant must drop the rcu_read_lock(), but the B variant
> doesn't need to.  You also can't just use break to get out as the X variant
> has a loop within a loop to handle iteration over the subelements of a THP.

"Why does it need a loop? bvecs can contain multi-page vectors"
"memcpy_from_page can't handle that"
"doesn't that mean that iterating over a bvec is already broken?"
"yes"


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
