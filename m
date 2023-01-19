Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D9A672F42
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Jan 2023 03:52:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pIL2Y-00021E-Av;
	Thu, 19 Jan 2023 02:52:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1pIL2W-000218-Cl
 for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 02:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HnE8fVbkB/BVCYxP+S1x8sDjBJ0ldtemNXen2hWnksk=; b=YER807MAB69ivG8BUwvAZhnCNk
 3F+PcS0rA247+G0CzZw0nF3uzRWi4oLZGKkO3R8gEr7NEnlD82A4H4HC8Bz5XCBoX5qts0yOpWwxv
 PIFbpzvuUH/wBfUgA5Al3OUq922zlSNLYn7Lc6iNRVV/7ui1Z6KDg4t4Q4kgkiZ47kww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HnE8fVbkB/BVCYxP+S1x8sDjBJ0ldtemNXen2hWnksk=; b=dKntIOvpG87MVu5aleRUVp0J+P
 Oq8fXlNXA8kvzGuXVHYAdI3CPoquHUdKmuqZPAZpMW79I7fvQzdfef6TsH89uvxOAWTHOKzVY36VS
 TCJW7CIdcE0J+yTN5wBjYT5gj7dVyD4H9MvLMfPie7khXnURq8U0RGa7IRXZ60OfcstU=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIL2U-0002cA-0R for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 02:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=HnE8fVbkB/BVCYxP+S1x8sDjBJ0ldtemNXen2hWnksk=; b=oqdy5dQXQK8UKr2bchgDpmzr4u
 /YEa4vss13qzDFzF/5SZ6+YIyD4koYihP2urPA99HHyQPAeqFTwNoDCD/nwRMM99Gud8hcYQ6kWQO
 3NNQaUuORpB5S2seuDUMhMGySxvMub3F89zZnCiXz9KHoAAHJdZMXDiLpsAp6znVF4da8iOzr0OlJ
 +QiwMga1XvlbOpQz+A4ICPE0otE5Y88xCqIwMlyvaVVGTJ+Ydurhxd3SADgPaxnJ8iVYYPN4h04JC
 tmtjCQB/Ozgx7lcaNDD7I9yYZ5Ja69xsVH95GxSK8u16M5ZaZ3m/9nHWKGUeSsd/a5KcWAHDZbfft
 Vmx9DLiw==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1pIL2C-002f1r-1E; Thu, 19 Jan 2023 02:52:12 +0000
Date: Thu, 19 Jan 2023 02:52:12 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y8iwXJ2gMcCyXzm4@ZenIV>
References: <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
 <167391063242.2311931.3275290816918213423.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <167391063242.2311931.3275290816918213423.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 16, 2023 at 11:10:32PM +0000,
 David Howells wrote:
 > @@ -310,73 +310,34 @@ static int p9_get_mapped_pages(struct virtio_chan
 *chan, > struct iov_iter *data, > int count, > size_t *offs, > - int *need_drop,
 > + int *cleanup_mode, > unsigned int gup_fla [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pIL2U-0002cA-0R
Subject: Re: [V9fs-developer] [PATCH v6 21/34] 9p: Pin pages rather than
 ref'ing if appropriate
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Jan Kara <jack@suse.cz>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 16, 2023 at 11:10:32PM +0000, David Howells wrote:

> @@ -310,73 +310,34 @@ static int p9_get_mapped_pages(struct virtio_chan *chan,
>  			       struct iov_iter *data,
>  			       int count,
>  			       size_t *offs,
> -			       int *need_drop,
> +			       int *cleanup_mode,
>  			       unsigned int gup_flags)
>  {
>  	int nr_pages;
>  	int err;
> +	int n;
>  
>  	if (!iov_iter_count(data))
>  		return 0;
>  
> -	if (!iov_iter_is_kvec(data)) {
> -		int n;
> -		/*
> -		 * We allow only p9_max_pages pinned. We wait for the
> -		 * Other zc request to finish here
> -		 */
> -		if (atomic_read(&vp_pinned) >= chan->p9_max_pages) {
> -			err = wait_event_killable(vp_wq,
> -			      (atomic_read(&vp_pinned) < chan->p9_max_pages));
> -			if (err == -ERESTARTSYS)
> -				return err;
> -		}
> -		n = iov_iter_get_pages_alloc(data, pages, count, offs,
> -					     gup_flags);
> -		if (n < 0)
> -			return n;
> -		*need_drop = 1;
> -		nr_pages = DIV_ROUND_UP(n + *offs, PAGE_SIZE);
> -		atomic_add(nr_pages, &vp_pinned);
> -		return n;
> -	} else {
> -		/* kernel buffer, no need to pin pages */
> -		int index;
> -		size_t len;
> -		void *p;
> -
> -		/* we'd already checked that it's non-empty */
> -		while (1) {
> -			len = iov_iter_single_seg_count(data);
> -			if (likely(len)) {
> -				p = data->kvec->iov_base + data->iov_offset;
> -				break;
> -			}
> -			iov_iter_advance(data, 0);
> -		}
> -		if (len > count)
> -			len = count;
> -
> -		nr_pages = DIV_ROUND_UP((unsigned long)p + len, PAGE_SIZE) -
> -			   (unsigned long)p / PAGE_SIZE;
> -
> -		*pages = kmalloc_array(nr_pages, sizeof(struct page *),
> -				       GFP_NOFS);
> -		if (!*pages)
> -			return -ENOMEM;
> -
> -		*need_drop = 0;
> -		p -= (*offs = offset_in_page(p));
> -		for (index = 0; index < nr_pages; index++) {
> -			if (is_vmalloc_addr(p))
> -				(*pages)[index] = vmalloc_to_page(p);
> -			else
> -				(*pages)[index] = kmap_to_page(p);
> -			p += PAGE_SIZE;
> -		}
> -		iov_iter_advance(data, len);
> -		return len;
> +	/*
> +	 * We allow only p9_max_pages pinned. We wait for the
> +	 * Other zc request to finish here
> +	 */
> +	if (atomic_read(&vp_pinned) >= chan->p9_max_pages) {
> +		err = wait_event_killable(vp_wq,
> +					  (atomic_read(&vp_pinned) < chan->p9_max_pages));
> +		if (err == -ERESTARTSYS)
> +			return err;
>  	}
> +
> +	n = iov_iter_extract_pages(data, pages, count, offs, gup_flags);

Wait a sec; just how would that work for ITER_KVEC?  AFAICS, in your
tree that would blow with -EFAULT...

Yup; in p9_client_readdir() in your tree:

net/9p/client.c:2057:	iov_iter_kvec(&to, ITER_DEST, &kv, 1, count);

net/9p/client.c:2077:		req = p9_client_zc_rpc(clnt, P9_TREADDIR, &to, NULL, rsize, 0,
net/9p/client.c:2078:				       11, "dqd", fid->fid, offset, rsize);

where
net/9p/client.c:799:	err = c->trans_mod->zc_request(c, req, uidata, uodata,
net/9p/client.c:800:				       inlen, olen, in_hdrlen);

and in p9_virtio_zc_request(), which is a possible ->zc_request() instance
net/9p/trans_virtio.c:402:		int n = p9_get_mapped_pages(chan, &out_pages, uodata,
net/9p/trans_virtio.c:403:					    outlen, &offs, &cleanup_mode,
net/9p/trans_virtio.c:404:					    FOLL_DEST_BUF);

with p9_get_mapped_pages() hitting
net/9p/trans_virtio.c:334:	n = iov_iter_extract_pages(data, pages, count, offs, gup_flags);
net/9p/trans_virtio.c:335:	if (n < 0)
net/9p/trans_virtio.c:336:		return n;

and in iov_iter_extract_get_pages()
lib/iov_iter.c:2250:	if (likely(user_backed_iter(i)))
lib/iov_iter.c:2251:		return iov_iter_extract_user_pages(i, pages, maxsize,
lib/iov_iter.c:2252:						   maxpages, gup_flags,
lib/iov_iter.c:2253:						   offset0);
lib/iov_iter.c:2254:	if (iov_iter_is_bvec(i))
lib/iov_iter.c:2255:		return iov_iter_extract_bvec_pages(i, pages, maxsize,
lib/iov_iter.c:2256:						   maxpages, gup_flags,
lib/iov_iter.c:2257:						   offset0);
lib/iov_iter.c:2258:	if (iov_iter_is_pipe(i))
lib/iov_iter.c:2259:		return iov_iter_extract_pipe_pages(i, pages, maxsize,
lib/iov_iter.c:2260:						   maxpages, gup_flags,
lib/iov_iter.c:2261:						   offset0);
lib/iov_iter.c:2262:	if (iov_iter_is_xarray(i))
lib/iov_iter.c:2263:		return iov_iter_extract_xarray_pages(i, pages, maxsize,
lib/iov_iter.c:2264:						     maxpages, gup_flags,
lib/iov_iter.c:2265:						     offset0);
lib/iov_iter.c:2266:	return -EFAULT;

All quoted lines by your
https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/tree/
How could that possibly work?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
