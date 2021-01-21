Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF9C2FF146
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 18:03:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2dMo-0005do-UA; Thu, 21 Jan 2021 17:03:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l2dMo-0005dh-1D
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 17:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4KgVfQwgH0t00E0jREnBAYvp7Ag6zfsUmeWko7Cl/RY=; b=B4Ww18XLdsyzmxJSAYcCRqzZJG
 aFHMBRIcrq2j7oa5Uxc+feyAZxduNjfg6Dk3gGtHRZ19U2gLDc1qmZPr9XTq9kXtjo5wH4gfZMev1
 YIEiJxkU0DRYVgyGuZtS4fEJ3Y7VJaasBzQ/7PmaUYGAJQlUoKrKOjRPBeQKWXTa/KLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4KgVfQwgH0t00E0jREnBAYvp7Ag6zfsUmeWko7Cl/RY=; b=TW11wLxY3O9vcMRF/LEugGDgM1
 6OYkB7xVmUxLF05rxHAdJvqe2+ae2AjHpbH5fk7k3YE8Xaa9zepAHBBE8WpJ6aLmRRVjEm3zAIQXS
 9JoVoy74VJFe4aEi3v+OQizKHw9ClE2k4YoUed2yRngCzv0uMlQf6CR4gUlHaLd5yI/s=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l2dMk-003UFu-Lk
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 17:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611248600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4KgVfQwgH0t00E0jREnBAYvp7Ag6zfsUmeWko7Cl/RY=;
 b=Vcu5ibmUwGEJdXC/y7cOUzhtxH03ez44SvfMgSjtBYbE6LFpKIZwVo0cX2G84FljAw98Ne
 Sv2KtIYqBMj1kkytokpfR64epS2y8HCxE6Mf7sUry17WSoPUNTC88d0qA+aZuR9NlISPFT
 0sZzOc0p6Td5rDCL7xoX6Xnowwv0EcM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-0Pnv6BdCNz6Oqh-N316exg-1; Thu, 21 Jan 2021 12:03:16 -0500
X-MC-Unique: 0Pnv6BdCNz6Oqh-N316exg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1E648066FF;
 Thu, 21 Jan 2021 17:03:14 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DCE6960C43;
 Thu, 21 Jan 2021 17:02:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210121164645.GA20964@fieldses.org>
References: <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
To: bfields@fieldses.org (J. Bruce Fields)
MIME-Version: 1.0
Content-ID: <1794285.1611248577.1@warthog.procyon.org.uk>
Date: Thu, 21 Jan 2021 17:02:57 +0000
Message-ID: <1794286.1611248577@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fieldses.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l2dMk-003UFu-Lk
Subject: Re: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
 fscache kiocb API
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
 linux-cifs@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

J. Bruce Fields <bfields@fieldses.org> wrote:

> On Wed, Jan 20, 2021 at 10:21:24PM +0000, David Howells wrote:
> >      Note that this uses SEEK_HOLE/SEEK_DATA to locate the data available
> >      to be read from the cache.  Whilst this is an improvement from the
> >      bmap interface, it still has a problem with regard to a modern
> >      extent-based filesystem inserting or removing bridging blocks of
> >      zeros.
> 
> What are the consequences from the point of view of a user?

The cache can get both false positive and false negative results on checks for
the presence of data because an extent-based filesystem can, at will, insert
or remove blocks of contiguous zeros to make the extents easier to encode
(ie. bridge them or split them).

A false-positive means that you get a block of zeros in the middle of your
file that very probably shouldn't be there (ie. file corruption); a
false-negative means that we go and reload the missing chunk from the server.

The problem exists in cachefiles whether we use bmap or we use
SEEK_HOLE/SEEK_DATA.  The only way round it is to keep track of what data is
present independently of backing filesystem's metadata.

To this end, it shouldn't (mis)behave differently than the code already there
- except that it handles better the case in which the backing filesystem
blocksize != PAGE_SIZE (which may not be relevant on an extent-based
filesystem anyway if it packs parts of different files together in a single
block) because the current implementation only bmaps the first block in a page
and doesn't probe for the rest.

Fixing this requires a much bigger overhaul of cachefiles than this patchset
performs.

Also, it works towards getting rid of this use of bmap, but that's not user
visible.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
