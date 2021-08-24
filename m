Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2963F6029
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:22:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIXJw-0007iD-QR; Tue, 24 Aug 2021 14:22:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <willy@infradead.org>) id 1mIXJu-0007hz-6i
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:22:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8p5CUy6U95FpiQX1SR3TxR7Nlkajc1FQ/FDXrLP/IZA=; b=kzmF5hcW9spZ+N1SoEw9FzTfcm
 nmIIy9MaOAnkklm93m/70rUVdZtQhinVY6xOsbX9L+AcbUdKRUMw5AGkXDChnGlAUAEM5+BkS9TtH
 Zz934bUMFBL+dNzXvJLuz8RiPHuNG6ZPLmJCH4ds1zP1Ghc54ERXhQK6W45rd29rfu1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8p5CUy6U95FpiQX1SR3TxR7Nlkajc1FQ/FDXrLP/IZA=; b=d1EtB1ZzuMO646PzDlGVGFdh+U
 9vO0jYLWZtLnhLOcdcGCSqwHBt8IsEU6ALT8tHVzU69OjpaSVys51Nblp8F9IT4hmaBTNXr1zcVVQ
 RbjbqcqC9sGCGYoX1I7E2o+QLTxga9e3fYUIeMO2Kz36wn7qgvPmrcL7E13mQKEKz19Q=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIXJr-0005FX-TM
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:22:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8p5CUy6U95FpiQX1SR3TxR7Nlkajc1FQ/FDXrLP/IZA=; b=gmQStllbsDfxhL9Ny4Ypbajc9B
 AcuIKR5UEnqGNmPSkJNryXHo5K3/qGo9XisKSp4PeViL70tVZCfRyRIKM7Pks/gR9+1c5gQ8LslCE
 SwlnwVu44kJZYljS4J28VFqBfsedgtIbfgNV+mKLPBwX5dG6ZrZh4GpFUgasRfkCN2d6Cpe4XhaKk
 vZKrFRVJp4LlVBwycN4++0xmAyx8gkb59zc4Q/ObQ6dGehVPbiL5bLdNO++PT2MbsqGzl+qcZAJ1o
 jV+e2RD+b6OxzRYZB3sHiu2ugQDMIiokhnWGSmZdK3BgXAXapjC1f5WzNYiljdPWmKNgGgdFNCi8F
 mIdXxPTw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mIXGU-00B9sS-0V; Tue, 24 Aug 2021 14:19:23 +0000
Date: Tue, 24 Aug 2021 15:18:57 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YST/0e92OdSH0zjg@casper.infradead.org>
References: <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
 <162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1mIXJr-0005FX-TM
Subject: Re: [V9fs-developer] [PATCH 1/6] afs: Fix afs_launder_page() to set
 correct start file position
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
 Jeffrey Altman <jaltman@auristor.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Aug 24, 2021 at 02:24:47PM +0100, David Howells wrote:
> +++ b/fs/afs/write.c
> @@ -950,8 +950,8 @@ int afs_launder_page(struct page *page)
>  		iov_iter_bvec(&iter, WRITE, bv, 1, bv[0].bv_len);
>  
>  		trace_afs_page_dirty(vnode, tracepoint_string("launder"), page);
> -		ret = afs_store_data(vnode, &iter, (loff_t)page->index * PAGE_SIZE,
> -				     true);
> +		ret = afs_store_data(vnode, &iter,
> +				     (loff_t)page->index * PAGE_SIZE + f, true);

This could be page_offset(page), which reads better to me:

		ret = afs_store_data(vnode, &iter, page_offset(page) + f, true);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
