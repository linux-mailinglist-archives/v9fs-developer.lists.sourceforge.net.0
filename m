Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8661231C8B5
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 11:26:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBxYr-0001K0-60; Tue, 16 Feb 2021 10:26:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1lBxYo-0001I2-Bn
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 10:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VYfCzK77bwauv0asaQ0xbXJ69lqP3qFHbBmwaR1I7bA=; b=BX0fQLEVPzj1a0e/E/5U8Ia93L
 H/I6y1eWxneTfVw6ePmFV2HiWraBGScur+vLKujzMbco5G+oQLVvA7CTT1ZNM+BXMEklSpqV9T97I
 kjxjv6b2DDBqDL+2gTuhNrWRoD/2RoxvaKR9TKSPiRLOt6+c3IpSmgImSN8u0efDFTHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VYfCzK77bwauv0asaQ0xbXJ69lqP3qFHbBmwaR1I7bA=; b=JKFxF48tJ5zBoAxA1d10aXsJr7
 Dec5J4MLgwwOGkb0nxyN6tl5tP2ZfM5G23M0bt11CiPHCzDpHhDfZT8x6C23iKYyo+Gb14rLC/iqe
 49MVqwEd19MtE7e3VcFsNTkeDJsX1+dqeoGSgqB4F7oS18bi4EPXvOEJGF4G8FsLksW0=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBxYk-00019t-Ej
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 10:26:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9AA846736F; Tue, 16 Feb 2021 11:26:14 +0100 (CET)
Date: Tue, 16 Feb 2021 11:26:14 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210216102614.GA27555@lst.de>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340390150.1303470.509630287091953754.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161340390150.1303470.509630287091953754.stgit@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lBxYk-00019t-Ej
Subject: Re: [V9fs-developer] [PATCH 04/33] vfs: Export rw_verify_area() for
 use by cachefiles
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
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 03:45:01PM +0000, David Howells wrote:
> Export rw_verify_area() for so that cachefiles can use it before issuing
> call_read_iter() and call_write_iter() to effect async DIO operations
> against the cache.  This is analogous to aio_read() and aio_write().

I don't think this is the right thing to do.  Instead of calling
into ->read_iter / ->write_iter directly this should be using helpers.

What prevents you from using vfs_iocb_iter_read and
vfs_iocb_iter_write which seem the right level of abstraction for this?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
