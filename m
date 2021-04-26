Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6255036B7E7
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 19:17:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb4rl-0005mi-5O; Mon, 26 Apr 2021 17:17:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>) id 1lb4rg-0005ln-Qw
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 17:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mdoGQW56rez1SPH6YaAtz//5vprzd11V8d6SlZk8zPE=; b=I0y4ka0BIN+38phtZFl56eNzT
 V8vyjof07U9ZwtlzlpTztwkp3ovFiLIwlQwSbJ7uiY0CZY6qTGEKM3e9RC8Ij9jiSsLC2sgTi93Lz
 5mmmj379BE9I0+BDD3zo+0LZoqYvavykjZohVxOsRUb7LE4CwkEhGg3jZAvhB7OlPxp/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mdoGQW56rez1SPH6YaAtz//5vprzd11V8d6SlZk8zPE=; b=DlcC1a8/dNGSZuYp1hUD+ubjPh
 DFDaRv34N3hKL+Ghbeyfp3/AZsppBxmYNOptRbf/SwWtLlphT1nsxep5pGeKzl/buCIU674Arf34o
 dAmsccazML1INqj+beyFUITFR9CAMMecDeo5xDUaRUUJu0gHH3q0PoDM4a80WYAtrEXQ=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lb4rb-00Cdwo-MQ
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 17:17:44 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lb4ob-008SGJ-Lx; Mon, 26 Apr 2021 17:14:33 +0000
Date: Mon, 26 Apr 2021 17:14:33 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YIb0+b7VJJrrofCB@zeniv-ca.linux.org.uk>
References: <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <3545034.1619392490@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3545034.1619392490@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lb4rb-00Cdwo-MQ
Subject: Re: [V9fs-developer] [PATCH] iov_iter: Four fixes for ITER_XARRAY
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

On Mon, Apr 26, 2021 at 12:14:50AM +0100, David Howells wrote:
> Hi Al,
> 
> I think this patch should include all the fixes necessary.  I could merge
> it in, but I think it might be better to tag it on the end as an additional
> patch.

Looks sane, but I wonder if it would've been better to deal with this

> @@ -791,6 +791,8 @@ size_t _copy_mc_to_iter(const void *addr, size_t bytes, struct iov_iter *i)
>  			curr_addr = (unsigned long) from;
>  			bytes = curr_addr - s_addr - rem;
>  			rcu_read_unlock();
> +			i->iov_offset += bytes;
> +			i->count -= bytes;
>  			return bytes;
>  		}
>  		})

by having your iterator check the return value of X callback and, having
decremented .bv_len by return value, broke out of the loop.

       __label__ __bugger_off;

       xas_for_each(&xas, head, ULONG_MAX) {                           \
               if (xas_retry(&xas, head))                              \
                       continue;                                       \
               if (WARN_ON(xa_is_value(head)))                         \
                       break;                                          \
               if (WARN_ON(PageHuge(head)))                            \
                       break;                                          \
               for (j = (head->index < index) ? index - head->index : 0; \
                    j < thp_nr_pages(head); j++) {                     \
                       __v.bv_page = head + j;                         \

			size_t left;

                       offset = (i->xarray_start + skip) & ~PAGE_MASK; \
                       seg = PAGE_SIZE - offset;                       \
                       __v.bv_offset = offset;                         \
                       __v.bv_len = min(n, seg);                       \

                       left = (STEP);
		       __v.bv_len -= left;

                       n -= __v.bv_len;                                \
                       skip += __v.bv_len;                             \

		       if (!n || left)
				goto __bugger_off;

               }                                                       \
               if (n == 0)                                             \
                       break;                                          \
       }                                                       \

__bugger_off:


Then rename iterate_and_advance() to __iterate_and_advance() and have
#define iterate_and_advance(....., X) __iterate_and_advance(....., ((void)(X),0))
with iterate_all_kinds() using iterate_xarray(....,((void)(X),0)

Then _copy_mc_to_iter() could use __iterate_and_advance(), getting rid of
the need of doing anything special in case of short copy.  OTOH, I can do
that myself in a followup - not a problem.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
