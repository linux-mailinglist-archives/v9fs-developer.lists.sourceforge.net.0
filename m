Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8006336B974
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 20:55:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb6Oe-0002G6-H5; Mon, 26 Apr 2021 18:55:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <viro@ftp.linux.org.uk>) id 1lb6Od-0002Fx-5h
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 18:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z8+A599FY2+hEitmyaNh45OUZ0k46y05dEWt2aRjzLw=; b=E+5XmzN6oGA1Tv6tf772tANSR
 54h23/+P7AIks92AplFb+Mm1mmzxXT8kqGKx+tesITYwh0VQKRpdIejTFI2jEtDIifWgIIlaGgheN
 SL+bBTzuFhw2BtjaARHrTrYvWtlhlwf7GxEJYhkKobrxZb8dknWaYdbwR3TZgwjPRqBiI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z8+A599FY2+hEitmyaNh45OUZ0k46y05dEWt2aRjzLw=; b=MbDWEOeh+KuS0MNgkv+Dmkkunw
 dh1CeMuTu8S41PSgR3Z+Itx8kYvA26DQ9Fpvzp0pkMEOd/Xb9mY8Ui3SEtlhzmyOnkgt05BCJPB1L
 +H33i6CuiCOLBKyX+T1h3vQ0yme/P3gnJfS8L8+2wncb2r8fV5Zen9jp0AFIDu8P2kBw=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lb6OY-00013B-2Q
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 18:55:51 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lb6N2-008TLy-M3; Mon, 26 Apr 2021 18:54:12 +0000
Date: Mon, 26 Apr 2021 18:54:12 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YIcMVCkp4xswHolw@zeniv-ca.linux.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lb6OY-00013B-2Q
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Apr 23, 2021 at 02:28:01PM +0100, David Howells wrote:
> -#define iterate_all_kinds(i, n, v, I, B, K) {			\
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

OK, now I'm really confused; what's to guarantee that restart will not have
you hit the same entry more than once?  STEP might be e.g.

		memcpy_to_page(v.bv_page, v.bv_offset,
			       (from += v.bv_len) - v.bv_len, v.bv_len)

which is clearly not idempotent - from gets incremented, after all.
What am I missing here?

> +		if (WARN_ON(xa_is_value(head)))				\
> +			break;						\
> +		if (WARN_ON(PageHuge(head)))				\
> +			break;						\
> +		for (j = (head->index < index) ? index - head->index : 0; \
> +		     j < thp_nr_pages(head); j++) {			\
> +			__v.bv_page = head + j;				\
> +			offset = (i->xarray_start + skip) & ~PAGE_MASK;	\
> +			seg = PAGE_SIZE - offset;			\
> +			__v.bv_offset = offset;				\
> +			__v.bv_len = min(n, seg);			\
> +			(void)(STEP);					\
> +			n -= __v.bv_len;				\
> +			skip += __v.bv_len;				\
> +			if (n == 0)					\
> +				break;					\
> +		}							\
> +		if (n == 0)						\
> +			break;						\
> +	}							\
> +	rcu_read_unlock();					\
> +	n = wanted - n;						\
> +}


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
