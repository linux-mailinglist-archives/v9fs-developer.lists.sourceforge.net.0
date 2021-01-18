Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8B42FADCD
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Jan 2021 00:37:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l1e58-0004Pw-6P; Mon, 18 Jan 2021 23:37:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l1e56-0004Pn-T0
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Jan 2021 23:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=evmA0OdyD5M8kY9qOkiMZu9GD1M5IQ2ieILxxBsie0w=; b=L8PC3ABwX5p4qFpKL9JipbZqqc
 bL+nanUeu5Txi//W05BBuVdBO/7VVHPfbZyMtLnCuhdbsIZaFgifHToirqJOg1wC3CpcWxyimBGpH
 0ZBSaOB7P1Q+D0dedp7t2ias6fc4XZjXi5/WFpWgxThzEQWa4rpHy1ZfHyzeslTTSuJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=evmA0OdyD5M8kY9qOkiMZu9GD1M5IQ2ieILxxBsie0w=; b=cJ9B0wD8GDDQBoG2AL33mUb2cy
 Qi4H34H4iIkrPtaHs+9ypHlJKFkbsg+W7DagoOZkrM8kCmjbskC7qwSSav6kExUaFqnqpbvV+AGwd
 sVN166Viyw803Bjb/6LX6INeJEmhZ9wFeMsyKEBaXs/7LDGZ5yi8K+7mDghiK4u8zO5U=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l1e51-006RQg-QC
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Jan 2021 23:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611013010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=evmA0OdyD5M8kY9qOkiMZu9GD1M5IQ2ieILxxBsie0w=;
 b=NECGjpltR2w1zuBKhoVxpcc6//binQYjgCgF3OhBJsayl5MKDoTySHhN9Lzx0ZgG70q7cR
 rm+Vx/5uuoAKa7jEWxujaSkonCmfhsymMzF6IrDEIuVGrlQ9abf/c+DolD7tfyJ/zWPXmm
 AxIijtwewgvy6DBnUbNn+L8OlMc+7ZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-7qf1DA_HP76SP8BqpolMWQ-1; Mon, 18 Jan 2021 18:36:49 -0500
X-MC-Unique: 7qf1DA_HP76SP8BqpolMWQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CA1359;
 Mon, 18 Jan 2021 23:36:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B6B365D9CD;
 Mon, 18 Jan 2021 23:36:39 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <2758811.1610621106@warthog.procyon.org.uk>
References: <2758811.1610621106@warthog.procyon.org.uk>
To: linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com
MIME-Version: 1.0
Content-ID: <160654.1611012999.1@warthog.procyon.org.uk>
Date: Mon, 18 Jan 2021 23:36:39 +0000
Message-ID: <160655.1611012999@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.3 (/)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l1e51-006RQg-QC
Subject: [V9fs-developer] Cut down implementation of fscache new API
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, jlayton@redhat.com, linux-cifs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, dwysocha@redhat.com,
 dchinner@redhat.com, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Take a look at:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/

I've extracted the netfs helper library from my patch set and built an
alternative cut-down I/O API for the existing fscache code as a bridge to
moving to a new fscache implementation.  With this, a netfs now has two
choices: use the existing API as is or use the netfs lib and the alternative
API.  You can't mix the two APIs - a netfs has to use one or the other.

It works with AFS, at least for reading data through a cache, and without a
cache, xfstests is quite happy.  I was able to take a bunch of the AFS patches
from my fscache-iter branch (the full rewrite) and apply them with minimal
changes.  Since it goes through the new I/O API in both cases, those changes
should be the same.  The main differences are in the cookie wrangling API.

The alternative API is different from the current in the following ways:

 (1) It uses kiocbs to do async DIO rather than using readpage() with page
     wake queue snooping and vfs_write().

 (2) It uses SEEK_HOLE/SEEK_DATA rather than bmap() to determine the location
     of data in the file.  This is still broken because we can't rely on this
     information in the backing filesystem.

 (3) It completely changes how PG_fscache is used.  As for the new API, it's
     used to indicate an in progress write to the cache from a page rather
     than a page the cache knows about.

 (4) It doesn't keep track of the netfs's pages beyond the termination of an
     I/O operation.  The old API added pages that have outstanding writes to
     the cache to a radix three for a background writer; now an async kiocb is
     dispatched.

 (5) The netfs needs to call fscache_begin_read_operation() from its
     ->begin_cache_operation() handler as passed to the netfs helper lib.
     This tells the netfs helpers how to access the cache.

 (6) It relies on the netfs helper lib to reissue a failed cache read to the
     server.

 (7) Handles THPs.

 (8) Implements completely ->readahead() and ->readpage() and implements a
     chunk of ->write_begin().

Things it doesn't address:

 (1) Mapping the content independently of the backing filesystem's metadata.

 (2) Getting rid of the backpointers into the netfs.

 (3) Simplifying the management of cookies and objects and their processing.

 (4) Holding an open file to the cache for any great length of time.  It gets
     a new file struct for each read op it does on the cache and drops it
     again afterwards.

 (5) Pinning the cache context/state required to handle a deferred write to
     the cache from ->write_begin() as performed by, say, ->writepages().

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
