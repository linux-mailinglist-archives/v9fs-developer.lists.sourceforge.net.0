Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A8D31CA1B
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 12:49:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lByqj-0005Qs-5o; Tue, 16 Feb 2021 11:49:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lByqi-0005Qg-Qc
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 11:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=coH4C7xdrmgBE3/XsHGmHJNC7rb47IS/kJchI+NLx3A=; b=RUYU/78KdZGVaK5GL2okF3jxHo
 V0IvjcgYqQiWpUayMGSrM//u7r8kYVRgM3Y6wOq5W/THaKD/Eft2yvi+irrXhFFcgi6Zx2s2DtLs3
 Cus0I+ZG/UoSw1wAeC7jy/v0ien6wV/HZmZKyVyBmM6OUk2ZP0Mt7HM79EwCQVqSlLgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=coH4C7xdrmgBE3/XsHGmHJNC7rb47IS/kJchI+NLx3A=; b=aiU28DwNyyUgPj85FNOKxs6srz
 /MpDIwK9b2k7VZnl65/ovHI/25ln6wba+beljWVyJXVe9zCElyMPdq1MF86KcWVTa5Zl7aIuo1OEI
 g9+Y9WO9KanLykp8XgjsVirSKwlYypFR6ToRRraVgwHF3p1dcN9lcH396mundHsupI6Q=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lByqU-0004gA-LH
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 11:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613476120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=coH4C7xdrmgBE3/XsHGmHJNC7rb47IS/kJchI+NLx3A=;
 b=P+cyzDzg/GRvv8Tsoal9CqujujKFGUndJtOfsRmCCxfOpSjlcRVeeQ4nOY/q1pAeMR17tC
 33tNElQeKdycbjbzkqkFS2y+ydtbe9AA/d8AGesJ4sa7K76OKNCOy20ISXtXaZYpVIBLu2
 Pn2GzCkDind1VDiczhhuigePsJvN14A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-jKcmJhrLMwullgSDWVKkPg-1; Tue, 16 Feb 2021 06:48:35 -0500
X-MC-Unique: jKcmJhrLMwullgSDWVKkPg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B44BE801977;
 Tue, 16 Feb 2021 11:48:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EDB605C1B4;
 Tue, 16 Feb 2021 11:48:24 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210216103215.GB27714@lst.de>
References: <20210216103215.GB27714@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@lst.de>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1429174.1613476104.1@warthog.procyon.org.uk>
Date: Tue, 16 Feb 2021 11:48:24 +0000
Message-ID: <1429175.1613476104@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lByqU-0004gA-LH
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig <hch@lst.de> wrote:

> On Mon, Feb 15, 2021 at 03:44:52PM +0000, David Howells wrote:
> > Provide a function, readahead_expand(), that expands the set of pages
> > specified by a readahead_control object to encompass a revised area with a
> > proposed size and length.
> ...
> So looking at linux-next this seems to have a user, but that user is
> dead wood given that nothing implements ->expand_readahead.

Interesting question.  Code on my fscache-iter branch does implement this, but
I was asked to split the patchset up, so that's not in this subset.

> Looking at the code structure I think netfs_readahead and
> netfs_rreq_expand is a complete mess and needs to be turned upside
> down, that is instead of calling back from netfs_readahead to the
> calling file system, split it into a few helpers called by the
> caller.
> 
> But even after this can't we just expose the cache granule boundary
> to the VM so that the read-ahead request gets setup correctly from
> the very beginning?

You need to argue this one with Willy.  In my opinion, the VM should ask the
filesystem and the expansion be done before ->readahead() is called.  Willy
disagrees, however.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
