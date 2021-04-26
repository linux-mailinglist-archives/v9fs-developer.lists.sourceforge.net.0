Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BC236BB0B
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 23:11:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb8Vs-0005bz-JO; Mon, 26 Apr 2021 21:11:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lb8Vq-0005bi-Ho
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 21:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NYuJwxqF2PEsmbKeVEIr3WDBGkL8MXZMkYbUVjkVNZg=; b=SR3s/dgP8h9vf+shgv8GUToQwc
 i506MCeSQvlcnaMyf0qZs5BRDUgJtMqqUr0UR+zKR0jjaiBh3M6n8aMQPeZEwSH4Xq37F2N4Lcfj5
 IfrOzBo/P2RYk/0wyqtaydnINmyzYJgysKys9N0fFDZH7o645bD/wwHBg4eckkjLs5lc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NYuJwxqF2PEsmbKeVEIr3WDBGkL8MXZMkYbUVjkVNZg=; b=BQLtGSWhyTAtGDIMa9qQ2JZkv5
 m7x/zaWGTE9GZUXaCEixXZa+glfqi5lus3hiEr7si2Ero+20iS+P8F8YO0szY7Obpvcq4drORzU+q
 v3ET8/55SUJ7C0/GVG4sDSQsUc0VS7xdNAflVLpGfSNo3PJHzlVRbfUOm2Q8Li0y61T8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lb8Vc-00DQ5P-54
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 21:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NYuJwxqF2PEsmbKeVEIr3WDBGkL8MXZMkYbUVjkVNZg=; b=jY2FN+I3L5fJ3T4vBPzroyAhJJ
 bAQhEJqZkqEQRNEGHjPtFuuLn5EzUmK1P/ALmswISHmD8Q5gaA3z8qColiMthmeRnYC6k8yDvc2tz
 TCmSecVvocxM9V2FcNzjTIQh6Nxs/Pgr+/W3fRA6s5Zrq+/oD6ttj2yWTDbU+Vo3NOA+hepT0k6k4
 MSt90TIilhTf1dTORLRU8oJHV4ciX9Wk2NUG7fdw1t5RaYedTqEskKf3uWXxfVyYcZHweLVyMQdvp
 2tROOG/71JICjJ0J8/ZKE1w0th18D3hnKTlpMuEnGNvIPpwWlYxzF14iPs9z5XmNMbyu14hcoC/iU
 VAoS+SOg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lb8U7-0066Gp-Tn; Mon, 26 Apr 2021 21:09:41 +0000
Date: Mon, 26 Apr 2021 22:09:39 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210426210939.GS235567@casper.infradead.org>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <3726642.1619471184@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3726642.1619471184@warthog.procyon.org.uk>
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
X-Headers-End: 1lb8Vc-00DQ5P-54
Subject: Re: [V9fs-developer] [PATCH] netfs: Miscellaneous fixes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 26, 2021 at 10:06:24PM +0100, David Howells wrote:
> @@ -968,7 +968,7 @@ int netfs_readpage(struct file *file,
>  		return -ENOMEM;
>  	}
>  	rreq->mapping	= page_file_mapping(page);
> -	rreq->start	= page_index(page) * PAGE_SIZE;
> +	rreq->start	= page_offset(page);

This one needs to use page_file_offset() because swap-over-NFS.

> @@ -1105,8 +1105,8 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>  	rreq = netfs_alloc_read_request(ops, netfs_priv, file);
>  	if (!rreq)
>  		goto error;
> -	rreq->mapping		= page->mapping;
> -	rreq->start		= page->index * PAGE_SIZE;
> +	rreq->mapping		= page_file_mapping(page);

There's nothing wrong with using page->mapping here.  The swap-over-NFS
path doesn't use write_begin, it uses O_DIRECT writes.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
