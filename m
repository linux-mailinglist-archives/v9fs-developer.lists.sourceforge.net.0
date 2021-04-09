Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7D1359169
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 03:25:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUftm-0002TN-KS; Fri, 09 Apr 2021 01:25:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <viro@ftp.linux.org.uk>) id 1lUftk-0002TE-Kg
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 01:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ORNDbGFrJMcVenOMVt4SAW1AXGvjGd32eipOigJSut8=; b=A3faXyyyEDHNuNsWAjED2ivt3
 dLrE8jEakjEgLJO0mksx3RFjSh9DtYL3yoWe18u29AOsSmV0gL9Y4AJYMUiY6KTKyk0CyX2ieZH+T
 qpwoOKAZ6crF6EYbVf+hH0S6BLqfD4khYRtSMIDnutPj7T+/ANkdCWNNeCS0A8iA7YBAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ORNDbGFrJMcVenOMVt4SAW1AXGvjGd32eipOigJSut8=; b=P2UkOos5HkS5RDLNhxs2EG69/o
 2Rlycwv/298zOyddeFO6hEaofbVoc9vpCWjN4hFBLBD0OBf8XKR9nh3QVJTKWrdLRjFxPmtuPT+sl
 +iy20eEk5/54FvMWj90UOW5vkNFIYhR2umBeeI6K2Ttpk1tyVvPGwKazAO9dvRIFgsx0=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUftO-007a71-Ra
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 01:25:23 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lUfsw-003sCi-JE; Fri, 09 Apr 2021 01:24:34 +0000
Date: Fri, 9 Apr 2021 01:24:34 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789064740.6155.11932541175173658065.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161789064740.6155.11932541175173658065.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUftO-007a71-Ra
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Apr 08, 2021 at 03:04:07PM +0100, David Howells wrote:
> Add an iterator, ITER_XARRAY, that walks through a set of pages attached to
> an xarray, starting at a given page and offset and walking for the
> specified amount of bytes.  The iterator supports transparent huge pages.
> 
> The iterate_xarray() macro calls the helper function with rcu_access()
> helped.  I think that this is only a problem for iov_iter_for_each_range()
> - and that returns an error for ITER_XARRAY (also, this function does not
> appear to be called).

Unused since lustre had gone away.

> +#define iterate_all_kinds(i, n, v, I, B, K, X) {		\

Do you have any users that would pass different B and X?

> @@ -1440,7 +1665,7 @@ ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
>  		return v.bv_len;
>  	}),({
>  		return -EFAULT;
> -	})
> +	}), 0

Correction - users that might get that flavour.  This one explicitly checks
for xarray and doesn't get to iterate_... in that case.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
