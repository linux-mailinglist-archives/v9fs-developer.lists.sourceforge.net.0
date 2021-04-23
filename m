Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2011236A7B6
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 16:12:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lafV4-0006VW-J0; Sun, 25 Apr 2021 14:12:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lafSh-00067w-EL
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 14:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S30ovdpPLsZJJVMtk7+hTOIHIzuBQqKDqd/E3ECGbNY=; b=O39cEFc1AVdQmSIlbjPb/AiXZE
 o8mopNPB/lba/Yz7XjIT0+DTbWgZ5lV+8p0poMddjsObWs78iwRpOJ4wCamW5MdcricMrebxMJcli
 GZgyLV/i5cL/zBKZNtStf/DqtBWjW5Cu81lQNaAbBZRWuYYS0hxRh1fxiOQsBXumcZGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S30ovdpPLsZJJVMtk7+hTOIHIzuBQqKDqd/E3ECGbNY=; b=Sqk58RXTXudWO+UI60c8OmSt0B
 WFHj2f2Eha9ck6f9luSINChSIHqHRLABSAND6b/wMbdRaqD0vHQS65cMotvQp2ratI7dxz5Txywoi
 i1g03/m+x7BpXAbbAY53GEAEyE6r1Azk44YnjmbUPRGxqk0fX2c00nxWtejhgUxj9Uo0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lafSc-007AxW-Ho
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 14:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=S30ovdpPLsZJJVMtk7+hTOIHIzuBQqKDqd/E3ECGbNY=; b=PUO+5rd07iXw0IxIrYHPsCwBLF
 T5s9+4Gxq1Pd8hfLwuRHgFQnchpJzv4LivhtWC7t7a2k+z7zF0UURKHVsr3zhWI0jwEt2Xb9LhYfh
 S0bUhYDXHhGLnf56/p+MZuW1m0Q6D9mYBmQzMqKkzaYGoWVCQYSZYT67l/ARCzaj+dc6bFHCsHpzD
 be96Zbyrbq1SJJbDUhjC/2c9XNN0uvvHL3Ky34MNMADISOaMjW5NjOuuspzxLTtdyFVy9KM4eLOSm
 r6rKv9II+8C9MFuJooOLgMCL2z+QAeEjwZHDZ6TtW2ivmX6FtTqMIWOcubYB2TqpRwzNkLSTW520a
 wpnjlzHw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lZwRu-001x7h-0W; Fri, 23 Apr 2021 14:06:30 +0000
Date: Fri, 23 Apr 2021 15:06:25 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210423140625.GC235567@casper.infradead.org>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1lafSc-007AxW-Ho
Subject: Re: [V9fs-developer] [PATCH v7 01/31] iov_iter: Add ITER_XARRAY
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
 Jeff Layton <jlayton@redhat.com>, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Apr 23, 2021 at 02:28:01PM +0100, David Howells wrote:
> +#define iterate_xarray(i, n, __v, skip, STEP) {		\
> +	struct page *head = NULL;				\
> +	size_t wanted = n, seg, offset;				\
> +	loff_t start = i->xarray_start + skip;			\
> +	pgoff_t index = start >> PAGE_SHIFT;			\
> +	int j;							\
> +								\
> +	XA_STATE(xas, i->xarray, index);			\
> +								\
> +	rcu_read_lock();						\
> +	xas_for_each(&xas, head, ULONG_MAX) {				\
> +		if (xas_retry(&xas, head))				\
> +			continue;					\
> +		if (WARN_ON(xa_is_value(head)))				\
> +			break;						\
> +		if (WARN_ON(PageHuge(head)))				\
> +			break;						\
> +		for (j = (head->index < index) ? index - head->index : 0; \
> +		     j < thp_nr_pages(head); j++) {			\

if head->index > index, something has gone disastrously wrong.

		for (j = index - head->index; j < thp_nr_pages(head); j++) { \

would be enough.

However ... the tree you were originally testing this against has the
page cache fixed to use only one entry per THP.  The tree you want to
apply this to inserts 2^n entries per THP.  They're all the head page,
but they're distinct entries as far as xas_for_each() is concerned.
So I think the loop you want looks like this:

+	rcu_read_lock();						\
+	xas_for_each(&xas, head, ULONG_MAX) {				\
+		if (xas_retry(&xas, head))				\
+			continue;					\
+		if (WARN_ON(xa_is_value(head)))				\
+			break;						\
+		if (WARN_ON(PageHuge(head)))				\
+			break;						\
+		__v.bv_page = head + index - head->index;		\
+		offset = offset_in_page(i->xarray_start + skip);	\
+		seg = PAGE_SIZE - offset;				\
+		__v.bv_offset = offset;					\
+		__v.bv_len = min(n, seg);				\
+		(void)(STEP);						\
+		n -= __v.bv_len;					\
+		skip += __v.bv_len;					\
+		if (n == 0)						\
+			break;						\
+	}								\
+	rcu_read_unlock();						\

Now, is this important?  There are no filesystems which do I/O to THPs
today.  So it's not possible to pick up the fact that it doesn't work,
and I hope to have the page cache fixed soon.  And fixing this now
will create more work later as part of fixing the page cache.  But I
wouldn't feel right not mentioning this problem ...

(also, iov_iter really needs to be fixed to handle bvecs which cross
page boundaries, but that's a fight for another day)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
