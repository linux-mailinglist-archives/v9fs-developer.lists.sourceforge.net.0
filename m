Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C76433EE8
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 21:01:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcuMh-0003XW-Gc; Tue, 19 Oct 2021 19:01:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcuMg-0003XK-87
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 19:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=luTsdgmE900iDsk4r7Drx7azoYqgQwbXioWRwmTxsXU=; b=ECQqXZyuKnlTL295X3ET//hOzH
 Y/YbaEJQ+BAumoz5qtiKIXhAcLrTLI3ocyhKohVZGnDRGIZLTmHPtRiZOKHAfcV4wRlWMOdX5ua42
 NqLF4Ze/IZfSupSp33nI/op/1LF/rpVIPYnUWd9Jau1h1n71PeBt6T9yyrroAJLqq58U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=luTsdgmE900iDsk4r7Drx7azoYqgQwbXioWRwmTxsXU=; b=LcAc9Pf6fZH0w3QUw0YwtsSdSd
 UvdMnxpkEFwIYIu764sRpGDgQuIdWmrYnUjomzNt1LFtHqhtLj+T7N1izTapbBJ9Y17XvZbz6DbnP
 Kpk0hELk/H+Q0jNqbZGHjuu1ml2w7/QtG2Xu5vGul8DZGcW+RRaZ4ahMmScp8mz33TvE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcuMc-0007Ge-0d
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 19:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634670083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=luTsdgmE900iDsk4r7Drx7azoYqgQwbXioWRwmTxsXU=;
 b=huNdBeYWwUOLuOuo/qO5SfBYJjwIqwCSBTq/UeP4Ze3VnBJXLaNcoBFQCk5BSmzTUsG3J5
 6DyIhKSRvCnJBWamYZfEroGZ12sZ8OLCNOV5bq57P0M6RKyT7a91S4/52edu9+5vtkQI/U
 scbQgcpFF2+a/lJN6mytvUa19PSv9ZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-JCqP3r1lPumGoWAVNqfxIw-1; Tue, 19 Oct 2021 15:01:17 -0400
X-MC-Unique: JCqP3r1lPumGoWAVNqfxIw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31D42800482;
 Tue, 19 Oct 2021 19:01:12 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB0645D6D7;
 Tue, 19 Oct 2021 19:00:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <b2ea9fdf90939731c08329575c8843e8db5f3219.camel@kernel.org>
References: <b2ea9fdf90939731c08329575c8843e8db5f3219.camel@kernel.org>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <2972093.1634670049.1@warthog.procyon.org.uk>
Date: Tue, 19 Oct 2021 20:00:49 +0100
Message-ID: <2972094.1634670049@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > Given the indexing
 changes, what sort of behavior should we expect when > upgrading from old-style
 to new-style indexes? Do they just not match, > and we end up downloading
 new copies of all the dat [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcuMc-0007Ge-0d
Subject: Re: [V9fs-developer] [PATCH 00/67] fscache: Rewrite index API and
 management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, dhowells@redhat.com,
 linux-mm@kvack.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs@vger.kernel.org, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> Given the indexing changes, what sort of behavior should we expect when
> upgrading from old-style to new-style indexes? Do they just not match,
> and we end up downloading new copies of all the data and the old stale
> stuff eventually gets culled?

Correct: they don't match.  The names of the directories and files will be
quite different - and so will the attached xattrs.  However, no filesystems
currently store locally-modified data in the cache, so you shouldn't lose any
data after upgrading.

> Ditto for downgrades -- can we expect sane behavior if someone runs an
> old kernel on top of an existing fscache that was populated by a new
> kernel?

Correct.  With this branch, filesystems now store locally-modified data into
the cache - but they also upload it to the server at the same time.  If
there's a disagreement between what's in the cache and what's on the server
with this branch, the cache is discarded, so simply discarding the cache on a
download shouldn't be a problem.

It's currently operating as a write-through cache, not a write-back cache.
That will change if I get round to implementing disconnected operation, but
it's not there yet.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
