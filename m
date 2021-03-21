Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F8C343081
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Mar 2021 02:43:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lNn7U-00082B-Ea; Sun, 21 Mar 2021 01:43:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lNn7T-00081l-0r
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Mar 2021 01:43:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OHbnhUmSKXKUNQXDuUhAYkDR4SHYPZJ41RILLR4eq0o=; b=kCsYRbCM7YiSoT5ISOftrAAyF5
 TapjuQSJagmm83TKLSlMQ1ZW2lcMKG8ZCqcWp0VMEFZOgSJl01ejc1Xo9Cw/+G0oaHIrtjueSNiFt
 /RwfttuwTjnpYKMY8SM+UQlUd8mOQilHpJJbYgE8pYuiKG04AvLk+/xcWqlolHUxCcFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OHbnhUmSKXKUNQXDuUhAYkDR4SHYPZJ41RILLR4eq0o=; b=DJj/SIbeXURs5mSZhO/dmKGvwN
 zHEMzwEl7FNt5mouJs6w9V3yZCgp1fMEmSc0FaaIXmfGvf5jwm1NNDVahq1zLViguOg5os3Oyjmtk
 oBHL0Nf44nKpJwLZQD2t3sQvutT/H7AFO4BvLZb+6X96IQWcOgwuKygS49DnPE9AINFc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lNn7O-0002U9-Is
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Mar 2021 01:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OHbnhUmSKXKUNQXDuUhAYkDR4SHYPZJ41RILLR4eq0o=; b=WJD6WJqsGwCY3P1j5e3ovPL//F
 5RbS0a3Lg88hg9MB0jYULiy/rFKJzbGCbrOapYTb266XbbyKA8CTrtvek66/nG33VaFg7VdMBRbZR
 rnPMGsBm9j06adyP+A8QTZhRk0UEwOFu8zRa/WX5OeKUuZ+8YrF+LcaXS/z87nWR3tKlZ6cwW0Syp
 kq9Y5/xMHFDtxNLwNsH9lKI3RuLMynoTNQK4hzK4Vqwfsf9J1ZXgGgduQBDRr8PlJm3OFdHS6ZrwQ
 3fhRurJFVDu4wmnenxltcI7MoWu83uWJo+ueqXyOwnSdoY74gjndAyvqk62MAvIAKmI/huMjFZFAX
 h7v56bTQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lNn6Q-006Ymd-I3; Sun, 21 Mar 2021 01:42:05 +0000
Date: Sun, 21 Mar 2021 01:42:02 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210321014202.GF3420@casper.infradead.org>
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539537375.286939.16642940088716990995.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161539537375.286939.16642940088716990995.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1lNn7O-0002U9-Is
Subject: Re: [V9fs-developer] [PATCH v4 08/28] netfs: Provide readahead and
 readpage netfs helpers
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
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Mar 10, 2021 at 04:56:13PM +0000, David Howells wrote:
> +void netfs_readahead(struct readahead_control *ractl,
> +		     const struct netfs_read_request_ops *ops,
> +		     void *netfs_priv)
> +{
> +	struct netfs_read_request *rreq;
> +	struct page *page;
> +	unsigned int debug_index = 0;
> +
> +	_enter("%lx,%x", readahead_index(ractl), readahead_count(ractl));
> +
> +	if (readahead_count(ractl) == 0)
> +		goto cleanup;
> +
> +	rreq = netfs_alloc_read_request(ops, netfs_priv, ractl->file);
> +	if (!rreq)
> +		goto cleanup;
> +	rreq->mapping	= ractl->mapping;
> +	rreq->start	= readahead_pos(ractl);
> +	rreq->len	= readahead_length(ractl);
> +
> +	netfs_rreq_expand(rreq, ractl);
> +
> +	atomic_set(&rreq->nr_rd_ops, 1);
> +	do {
> +		if (!netfs_rreq_submit_slice(rreq, &debug_index))
> +			break;
> +
> +	} while (rreq->submitted < rreq->len);
> +
> +	while ((page = readahead_page(ractl)))
> +		put_page(page);

You don't need this pair of lines (unless I'm missing something).
read_pages() in mm/readahead.c puts the reference and unlocks any
pages which are not read by the readahead op.  Indeed, I think doing
this is buggy because you don't unlock the page.

> +	/* If we decrement nr_rd_ops to 0, the ref belongs to us. */
> +	if (atomic_dec_and_test(&rreq->nr_rd_ops))
> +		netfs_rreq_assess(rreq, false);
> +	return;
> +
> +cleanup:
> +	if (netfs_priv)
> +		ops->cleanup(ractl->mapping, netfs_priv);
> +	return;
> +}
> +EXPORT_SYMBOL(netfs_readahead);

> +int netfs_readpage(struct file *file,
> +		   struct page *page,
> +		   const struct netfs_read_request_ops *ops,
> +		   void *netfs_priv)
> +{
> +	struct netfs_read_request *rreq;
> +	unsigned int debug_index = 0;
> +	int ret;
> +
> +	_enter("%lx", page->index);
> +
> +	rreq = netfs_alloc_read_request(ops, netfs_priv, file);
> +	if (!rreq) {
> +		if (netfs_priv)
> +			ops->cleanup(netfs_priv, page->mapping);
> +		unlock_page(page);
> +		return -ENOMEM;
> +	}
> +	rreq->mapping	= page->mapping;

FYI, this isn't going to work with swap-over-NFS.  You have to use
page_file_mapping().

> +	rreq->start	= page->index * PAGE_SIZE;

and page_index() here.

I rather dislike it that swap-over-NFS uses readpage which makes this
need to exist.  If somebody were to switch SWP_FS_OPS to using kiocbs,
some of this pain could go away.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
