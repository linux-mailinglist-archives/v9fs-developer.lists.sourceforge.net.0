Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C68B731CA3B
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 12:56:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lByxV-0007yu-53; Tue, 16 Feb 2021 11:56:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lByxT-0007yf-EW
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 11:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3PmMMoMDLKUpdyWA+t3gfR/qM+zxf83cCXtDD4CspmY=; b=SC4RKrN0+3jDHnthKXD936Bgui
 zM9J+4ec+un0GEz5g3+GQ83Y5fpmkJLlcHE5U8PXPr3PkQ9Y9LILLU+xqbdJJsb9uA8U1rcjz5B3O
 3kV53i5aOH6lbuCBu7NQdz7JuOGI8JmkELS3/94QPcC2h7/vOqmmUGvmqPghy6BFpBxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3PmMMoMDLKUpdyWA+t3gfR/qM+zxf83cCXtDD4CspmY=; b=lE2Oewy5vcjUFVamuP1UwUgyGI
 k/enaY9Vo8b/ATdE7qPkPvtar8AOA3HhDFBrTd5/jG1IZqC++2NPcvkjG7V12tI1lXjDHk1Mws/h0
 dhNV6Nou5q013JPcRlJKlPnrw17wAT8gpjgxuJlbi5F65qyDYTGyfeg/+9Y1Dyz1kIB8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lByxO-0004u6-AS
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 11:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613476546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3PmMMoMDLKUpdyWA+t3gfR/qM+zxf83cCXtDD4CspmY=;
 b=QODGVnF+k8oWMPgtE7VYv4XTteTjdKqxE4Ux/ErXJtB3LpT5q0AKo4A8L3Di84bXb6pOH/
 kl3pqpQmEeiyx0Ts7wCf0dXGyoU93XipMQg3Z8xkWsNubm+uRAgJW24Cm9FbYHb9lmZe5w
 mogi8VnhpJKehfMSFWW7bqGsix+EjaE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-fzPbbtGgPwedki1-150nhQ-1; Tue, 16 Feb 2021 06:55:44 -0500
X-MC-Unique: fzPbbtGgPwedki1-150nhQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75567801965;
 Tue, 16 Feb 2021 11:55:42 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1466410016FA;
 Tue, 16 Feb 2021 11:55:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210216102614.GA27555@lst.de>
References: <20210216102614.GA27555@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340390150.1303470.509630287091953754.stgit@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-ID: <1429649.1613476535.1@warthog.procyon.org.uk>
Date: Tue, 16 Feb 2021 11:55:35 +0000
Message-ID: <1429650.1613476535@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lByxO-0004u6-AS
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig <hch@lst.de> wrote:

> > Export rw_verify_area() for so that cachefiles can use it before issuing
> > call_read_iter() and call_write_iter() to effect async DIO operations
> > against the cache.  This is analogous to aio_read() and aio_write().
> 
> I don't think this is the right thing to do.  Instead of calling
> into ->read_iter / ->write_iter directly this should be using helpers.
> 
> What prevents you from using vfs_iocb_iter_read and
> vfs_iocb_iter_write which seem the right level of abstraction for this?

I don't think they existed when I wrote this code.  Should aio use that too,
btw?  I modelled my code on aio_read() and aio_write().

But I can certainly switch to using vfs_iocb_iter_read/write, though the
trivial checks are redundant.  The fsnotify call, I guess I'm missing though
(and is that missing in aio_read/write() also?).

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
