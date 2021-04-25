Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 248A536A773
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 15:16:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1laecu-0003UZ-SB; Sun, 25 Apr 2021 13:16:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <viro@ftp.linux.org.uk>) id 1laebC-0003Nn-QY
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 13:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IPU2b5MfAG6y9KSiXowu7E2AydgnRON/z7yeDXZbkEU=; b=dGroy13TyU98oN0tecqOwEKu+
 La8B7rPLtf39sEnRhPl97m5k1iVzVhk/ttqJvyH/Dv0GemwzdVu5+tBjzZRFFWJniemGck11aVRH8
 Tbq9BduCKV6KkMDGi3GasPmq3vzd+G/aonwmcxfSRI+9XbJeJFjDycr7tHnYSto2Au93Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IPU2b5MfAG6y9KSiXowu7E2AydgnRON/z7yeDXZbkEU=; b=ICxIGbGeYrjkKZ+YYXo3jxZW35
 cJ21l7EOCDUzRN/4adKBzKNtCv7i7PRQV+wS5VOtVjQqUZUZPJqEfBMdf9gAETmoTtGrFW8if1lYo
 PVzZQIEATvxHYgJSISfgvRAOJEmLJ/uLxRdcx97zcjYUjRK4r+6FLwUjgfGlDt7oDe9Y=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1laeb8-0072yR-I8
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 13:14:59 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1laeaT-008ABu-Dy; Sun, 25 Apr 2021 13:14:13 +0000
Date: Sun, 25 Apr 2021 13:14:13 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YIVrJT8GwLI0Wlgx@zeniv-ca.linux.org.uk>
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
X-Headers-End: 1laeb8-0072yR-I8
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

> diff --git a/include/linux/uio.h b/include/linux/uio.h
> index 27ff8eb786dc..5f5ffc45d4aa 100644
> --- a/include/linux/uio.h
> +++ b/include/linux/uio.h
> @@ -10,6 +10,7 @@
>  #include <uapi/linux/uio.h>
>  
>  struct page;
> +struct address_space;
>  struct pipe_inode_info;
>  
>  struct kvec {

What is that chunk for?

> +#define iterate_all_kinds(i, n, v, I, B, K, X) {		\
>  	if (likely(n)) {					\
>  		size_t skip = i->iov_offset;			\
>  		if (unlikely(i->type & ITER_BVEC)) {		\
> @@ -88,6 +125,9 @@
>  			struct kvec v;				\
>  			iterate_kvec(i, n, v, kvec, skip, (K))	\
>  		} else if (unlikely(i->type & ITER_DISCARD)) {	\
> +		} else if (unlikely(i->type & ITER_XARRAY)) {	\
> +			struct bio_vec v;			\
> +			iterate_xarray(i, n, v, skip, (X));	\
>  		} else {					\
>  			const struct iovec *iov;		\
>  			struct iovec v;				\
> @@ -96,7 +136,7 @@
>  	}							\
>  }

For the record - these forests of macros had been my mistake.  I'm trying
to get rid of that crap right now, but your changes don't look likely to be
trouble in that respect.


> @@ -738,6 +783,16 @@ size_t _copy_mc_to_iter(const void *addr, size_t bytes, struct iov_iter *i)
>  			bytes = curr_addr - s_addr - rem;
>  			return bytes;
>  		}
> +		}),
> +		({
> +		rem = copy_mc_to_page(v.bv_page, v.bv_offset,
> +				      (from += v.bv_len) - v.bv_len, v.bv_len);
> +		if (rem) {
> +			curr_addr = (unsigned long) from;
> +			bytes = curr_addr - s_addr - rem;
> +			rcu_read_unlock();
> +			return bytes;
> +		}

That's broken, same way as kvec and bvec cases are in the same primitive.
Iterator not advanced on failure halfway through.

> @@ -1246,7 +1349,8 @@ unsigned long iov_iter_alignment(const struct iov_iter *i)
>  	iterate_all_kinds(i, size, v,
>  		(res |= (unsigned long)v.iov_base | v.iov_len, 0),
>  		res |= v.bv_offset | v.bv_len,
> -		res |= (unsigned long)v.iov_base | v.iov_len
> +		res |= (unsigned long)v.iov_base | v.iov_len,
> +		res |= v.bv_offset | v.bv_len
>  	)
>  	return res;
>  }

Hmm...  That looks like a really bad overkill - do you need anything beyond count and
iov_offset in that case + perhaps "do we have the very last page"?  IOW, do you need
to iterate anything at all here?  What am I missing here?

> @@ -1268,7 +1372,9 @@ unsigned long iov_iter_gap_alignment(const struct iov_iter *i)
>  		(res |= (!res ? 0 : (unsigned long)v.bv_offset) |
>  			(size != v.bv_len ? size : 0)),
>  		(res |= (!res ? 0 : (unsigned long)v.iov_base) |
> -			(size != v.iov_len ? size : 0))
> +			(size != v.iov_len ? size : 0)),
> +		(res |= (!res ? 0 : (unsigned long)v.bv_offset) |
> +			(size != v.bv_len ? size : 0))
>  		);
>  	return res;
>  }

Very limited use; it shouldn't be called for anything other than IOV_ITER case.

> @@ -1849,7 +2111,12 @@ int iov_iter_for_each_range(struct iov_iter *i, size_t bytes,
>  		kunmap(v.bv_page);
>  		err;}), ({
>  		w = v;
> -		err = f(&w, context);})
> +		err = f(&w, context);}), ({
> +		w.iov_base = kmap(v.bv_page) + v.bv_offset;
> +		w.iov_len = v.bv_len;
> +		err = f(&w, context);
> +		kunmap(v.bv_page);
> +		err;})

Would be easier to have that sucker removed first...

Anyway, I can live with that; the only real bug is in sodding _copy_mc_to_iter(),
it's not anything new and it can be fixed at the same time we deal with kvec and
bvec cases there.  Which, unfortunately, requires untangling the macro mess ;-/

What I've got in a local branch right now is
	* removal of iov_iter_for_each_range() (yours, BTW)
	* separation of flavour and direction (and the end of pseudo-bitmaps)
	* untangling and optimizing iov_iter_advance(); iovec/kvec cases are
switched to the logics similar to bvec_iter_advance(), get considerably smaller
and should be faster
	* fixing ITER_DISCARD iov_iter_advance() - move past the end should
quietly stop at the end.
	* getting rid of iterate_all_kinds() in iov_iter_alignment(),
iov_iter_gap_alignment(), iov_iter_get_pages() and iov_iter_get_pages_alloc().

After that the only remaining irregular case of iterate_all_kinds() is in
iov_iter_npages(); that's what I'm trying to sort out right now.  With that
done, all remaining uses will be for copying-style primitives, same as for
iterate_and_advance().  What I want to try after that is a separate "tracking"
argument, so that e.g. in _copy_to_iter() we'd have
        iterate_and_advance(i, bytes, from, v,
                copyout(v.iov_base, from, v.iov_len),
                memcpy_to_page(v.bv_page, v.bv_offset, from, v.bv_len),
                memcpy(v.iov_base, from, v.iov_len)
        )
Next step will be to teach the damn thing about the possibility of short
copies in kvec/bvec cases.  We'd get
#define iterate_and_advance(i, n, p, v, I, K, B) \
	__iterate_and_advance(i, n, p, v, I, (K, 0), (B, 0))
and AFAICS it can be done in a way that won't screw code generation for
the normal ones.  At that point _copy_mc_to_iter() mess gets cleared *AND*
we can merge K and B callbacks, handling B as kmap_atomic + K + kunmap_atomic
(_copy_mc_to_iter() is the main obstacle to that).  Your callback (X) would
also fold into that.

After that I want to try and see how well iov_iter_advance() got optimized
and see if we can get e.g. _copy_to_iter() simply to

        iterate_all_kinds(i, bytes, from, v,
                copyout(v.iov_base, from, v.iov_len),
                memcpy(v.iov_base, from, v.iov_len)
        )
	iov_iter_advance(i, from - addr);
	return from - addr;
If iov_iter_advance() ends up being too much overhead - oh, well, we'll keep
iterate_and_advance() along with iterate_all_kinds().  Needs profiling,
obviously.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
