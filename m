Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7885E358784
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:52:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUW10-0007s3-8e; Thu, 08 Apr 2021 14:52:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lUW0y-0007rs-FK
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+cewsqIjy3KyilGPYnpep4bhBTgpsrNatr9SSgJPp+A=; b=l+86bOFz+ucC2LbeKO783t9X9w
 2GWHLZr2/aWZkeNCkFTHjtCd5XCoNoqoAaQxJy1YR41ynvSNN5floajjTNQ3nusaDni/c4Bc03/Df
 koV5gBTOf325ZbupsWIGhzYkB5b5jWz/JaauRgkPu2ErpJflqxYtW1B4kKImlFkOKXsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+cewsqIjy3KyilGPYnpep4bhBTgpsrNatr9SSgJPp+A=; b=DaciOvGYTuZt2HVoFrGfZgJb5P
 xHe0VxLk5yN5c0tbDqlHa7BO3YaxuTkkE6EO0belYF3D0ABwc3cV2D+zmZu27Anw5YC7uf/xIxexH
 7ATUPUC4duR7HXXv08tYMePrG93okJQf2JRJpNqfdV+zLUM8mGq1UuHeB5BRD6blG8dw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUW0t-0004cz-Nb
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+cewsqIjy3KyilGPYnpep4bhBTgpsrNatr9SSgJPp+A=; b=Xq6rS14iEtk33sZT1twqc2gQB0
 jTafc881dELFdZxc453Afl84KSiCv9BlDNWFMmnJqrJ7+pawRB2ciuCtRFt6kKI+67dnyH1Vd/aA7
 7recD+wKVjyEya+hf36HVxPE0dSKP9CBNHdVCkNzZWKcJpH/ZJ2zX25TtfW/6NVV1IjRtxvZ+Y3Kf
 /g0OXDI4v3N1ArJHE3LwyaVlOjJjpbQQ8+YtWS2daRZRHbFa6TRRt+0A3Y+zpZh/i8glAZMVgyLPP
 PhwAcASqyaMDlSOzGFxhq/JZ5fYkxv2Mq+XkfA5VgxX/Xx+g4UBo2NUNNibb8nZFuAboaixfLddhj
 uGQILrJg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lUVzl-00GNO2-Ap; Thu, 08 Apr 2021 14:51:03 +0000
Date: Thu, 8 Apr 2021 15:50:57 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210408145057.GN2531743@casper.infradead.org>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1lUW0t-0004cz-Nb
Subject: Re: [V9fs-developer] [PATCH v6 02/30] mm: Add set/end/wait
 functions for PG_private_2
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
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Apr 08, 2021 at 03:04:20PM +0100, David Howells wrote:
> +static inline void set_page_private_2(struct page *page)
> +{
> +	get_page(page);
> +	SetPagePrivate2(page);

PAGEFLAG(OwnerPriv1, owner_priv_1, PF_ANY)

So we can set Private2 on any tail page ...

> +void end_page_private_2(struct page *page)
> +{
> +	page = compound_head(page);
> +	VM_BUG_ON_PAGE(!PagePrivate2(page), page);
> +	clear_bit_unlock(PG_private_2, &page->flags);
> +	wake_up_page_bit(page, PG_private_2);

... but when we try to end on a tail, we actually wake up the head ...

> +void wait_on_page_private_2(struct page *page)
> +{
> +	while (PagePrivate2(page))
> +		wait_on_page_bit(page, PG_private_2);

... although if we were waiting on a tail, the wake up won't find us ...

if only we had a way to ensure this kind of bug can't happen *cough,
lend your support to the page folio patches*.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
