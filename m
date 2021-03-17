Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 062B733EC24
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Mar 2021 10:04:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMS6h-0003zw-GA; Wed, 17 Mar 2021 09:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lMS6d-0003z1-7F
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 09:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VuDrqP82HqiAtEe1crFqPJazQMGGUjNo8bu3IT7C6bE=; b=Iplv1eJyMm2Cu5eUpxi7aSpj4U
 6bwqVh7W4AD2QuT3izomO4D8eCRuR1Hezp/tU7gSvCNpF46i8dS16daW15jFIzQxu56C4I5UZTOu0
 vowQxeYuGzF++5WqTagsTSrcCTdNXhO9IhoYG+3bJcx/GPnIEp57xMTBufg9ixOabCJg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VuDrqP82HqiAtEe1crFqPJazQMGGUjNo8bu3IT7C6bE=; b=YwwcrHprp/N8qjeNoHx6CWCa2T
 kVWTNxCXh4WpLFQ20kwRKQLWiOBjQ7gC+wn+EEGUToh5QlGYnBw/JBZaq1abbD5eBFqcdy0AIgqyA
 av2nZMxdXvoIeOSAqXrjl73XCRCJHIQOBBFQW0ZnurcfzMG1FCFFllEYKQeYXgTkfoos=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lMS6Q-009oid-AJ
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 09:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615971864;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VuDrqP82HqiAtEe1crFqPJazQMGGUjNo8bu3IT7C6bE=;
 b=jHpMXzLNqdK/NtVY5jQpfs4jU9NR6HsDkM5EvoCJQDULPzv+V/anpwbHhpBIzx+dQqvDgx
 S2oskhyzviIr55bOL2ah439oErmQ+NMuVCGeG3RpqYBCmBV7qilLJPbGpaFeEkiNyAXu13
 Q5CphH//JIDSlLIUIjxnnjzm28ctSu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-61mG3SLaOY-C1c44wLq3Ww-1; Wed, 17 Mar 2021 05:04:20 -0400
X-MC-Unique: 61mG3SLaOY-C1c44wLq3Ww-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 195761009456;
 Wed, 17 Mar 2021 09:04:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-113-138.rdu2.redhat.com
 [10.10.113.138])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E43E60CCE;
 Wed, 17 Mar 2021 09:04:10 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=whWoJhGeMn85LOh9FX-5d2-Upzmv1m2ZmYxvD31TKpUTA@mail.gmail.com>
References: <CAHk-=whWoJhGeMn85LOh9FX-5d2-Upzmv1m2ZmYxvD31TKpUTA@mail.gmail.com>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <20210316190707.GD3420@casper.infradead.org>
 <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
 <887b9eb7-2764-3659-d0bf-6a034a031618@toxicpanda.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <31381.1615971849.1@warthog.procyon.org.uk>
Date: Wed, 17 Mar 2021 09:04:09 +0000
Message-ID: <31382.1615971849@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
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
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lMS6Q-009oid-AJ
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
Cc: dhowells@redhat.com, Linux-MM <linux-mm@kvack.org>,
 linux-afs@lists.infradead.org, CIFS <linux-cifs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Josef Bacik <josef@toxicpanda.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 ceph-devel@vger.kernel.org, "open list:NFS, 
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, Chris Mason <clm@fb.com>,
 David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> And as far as I can tell, fscache doesn't want that PG_private_2 bit
> to interact with the random VM lifetime or migration rules either, and
> should rely entirely on the page count. David?

It's slightly complicated for fscache as there are two separate pieces of code
involved:

 (1) For the old fscache code that I'm trying to phase out, it does not take a
     ref when PG_fscache is taken (probably incorrectly), relying instead on
     releasepage, etc. getting called to strip the PG_fscache bit.  PG_fscache
     is held for the lifetime of the page, indicating that fscache knows about
     it and might access it at any time (to write to the cache in the
     background for example or to move pages around in the cache).

     Here PG_fscache should not prevent page eviction or migration and it's
     analogous to PG_private.

     That said, the old fscache code keeps its own radix trees of pages that
     are undergoing write to the cache, so to allow a page to be evicted,
     releasepage and co. have to consult those
     (__fscache_maybe_release_page()).

 (2) For the new netfs lib, PG_fscache is ignored by fscache itself and is
     used by the read helpers.  The helpers simply use it analogously to
     PG_writeback, indicating that there's I/O in progress from this page to
     the cache[*].  It's fine to take a ref here because we know we'll drop it
     shortly.

     Here PG_fscache might prevent page eviction or migration, but only
     because I/O is in progress.  If an increment on the page refcount
     suffices, that's fine.

In both cases, releasepage, etc. look at PG_fscache and decide whether to wait
or not (releasepage may tell the caller to skip the page if PG_fscache is
set).

[*] Willy suggested using PG_writeback to cover both write to the server and
write to the cache, and getting rid of PG_fscache entirely, but that would
require extra mechanisms.  There are three cases:

 (a) We might be writing to only the cache, e.g. because we just read from the
     server.

     Note that this may adversely affect code that does accounting associated
     with PG_writeback because we woudn't actually be writing back a user-made
     change or dealing with a dirty page.  I'm not sure if that's an issue.

 (b) We might writing to both, in which case we can expect both writes to
     finish at different times.

 (c) We might only be writing to the server, e.g. because there's no space in
     the cache or there is no cache.

It's something that might make sense, however, and we can look at in the
future, but for the moment having two separate page flags is simplest.

An additional use of PG_fscache is to prevent a second write to the cache from
being started whilst one is in progress.  I guess that would be taken over by
PG_writeback if we used that.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
