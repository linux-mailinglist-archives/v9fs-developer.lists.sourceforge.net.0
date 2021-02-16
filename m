Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1199031C8D6
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 11:32:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBxei-0003VX-Ri; Tue, 16 Feb 2021 10:32:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1lBxeh-0003VL-6s
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 10:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RdixEVX8dIv9cLPXzI14sw7oHA5lcAMt5vlF8Z+HYO8=; b=OArXwoBeDjV4IwY5mh2QSmHaXZ
 t0vhAk045MRxYxtFb6qTT1p3d+hBdpD3a6izvev9WBtdqwDzpQ30hSfDuyPmGhP6s1xI2GMxxzhKF
 LGqckikjxqdxLMrDaOUxYAbOEgoVDW7kjEqDQy4rUvpHaCiLx88WiRD9/PGn0KZuznfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RdixEVX8dIv9cLPXzI14sw7oHA5lcAMt5vlF8Z+HYO8=; b=FeZL2DXT/hOUP6pHcQDu4m8+To
 T4fqitLviNL1PLkf8YV4eBTe1GAxUX2wShSX8CWexaQkuITXWtdG6ggnP/qPfJX2uQOc+u058UCA7
 yRd9njBqYRWzkPRShMcIpgrML/iI5I5BxtGu7pzt1ufUDIIqpdAhjIILi3nPDvkP/fq8=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBxeb-0001cW-57
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 10:32:31 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3E1E76736F; Tue, 16 Feb 2021 11:32:16 +0100 (CET)
Date: Tue, 16 Feb 2021 11:32:15 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210216103215.GB27714@lst.de>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lBxeb-0001cW-57
Subject: Re: [V9fs-developer] [PATCH 03/33] mm: Implement readahead_control
 pageset expansion
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
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 03:44:52PM +0000, David Howells wrote:
> Provide a function, readahead_expand(), that expands the set of pages
> specified by a readahead_control object to encompass a revised area with a
> proposed size and length.
> 
> The proposed area must include all of the old area and may be expanded yet
> more by this function so that the edges align on (transparent huge) page
> boundaries as allocated.
> 
> The expansion will be cut short if a page already exists in either of the
> areas being expanded into.  Note that any expansion made in such a case is
> not rolled back.
> 
> This will be used by fscache so that reads can be expanded to cache granule
> boundaries, thereby allowing whole granules to be stored in the cache, but
> there are other potential users also.

So looking at linux-next this seems to have a user, but that user is
dead wood given that nothing implements ->expand_readahead.

Looking at the code structure I think netfs_readahead and
netfs_rreq_expand is a complete mess and needs to be turned upside
down, that is instead of calling back from netfs_readahead to the
calling file system, split it into a few helpers called by the
caller.

But even after this can't we just expose the cache granule boundary
to the VM so that the read-ahead request gets setup correctly from
the very beginning?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
