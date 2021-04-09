Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C72A3597D5
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 10:29:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUmVu-0005vB-NL; Fri, 09 Apr 2021 08:29:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUmVt-00057y-Hs
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6YraNPigCCa2QjWFUNdLS4ExsZNHhjTNhXM21Vxjs0s=; b=J3N1aLddC7m1DqRi/x8FfIBCGn
 FZEOFxvyUesBPAijYeTKVXDcdA02zu4orxGuhBLqrmVbUBDhXouKOyDaM5v8/evNqoIP4pYiobZIn
 m8EeVrbYRUHlpBvbYbt4Ra7A5eOlbthlYO6FkDrYphxqxf+bbOHqPrsuwiRuZ/pbLbyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6YraNPigCCa2QjWFUNdLS4ExsZNHhjTNhXM21Vxjs0s=; b=cSjaMTAGXW6mE/VxPzSqQppdyU
 SFN4/K3Syt6cPD7GQMYgDuC8CGSl9R3vkgEa1keWFnkWBovUETA2Oe7Nn7KfcLOjfJtvYgFXtv6qM
 PNh9nMgaUm/EoC6w3veJeL3nHqpdASzdHxb7L7VyT0u39LfNSOlYJp1fYnyukFFTPoTo=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUmHr-009FCr-Pm
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617956077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6YraNPigCCa2QjWFUNdLS4ExsZNHhjTNhXM21Vxjs0s=;
 b=QohY6qYwd0uA5XK6l966gmbPjTbovLlOjJUZwaAZLV8eVQGh7EBZqo54LtK8lD8q/KVpk7
 9uWD9Y7VIAaMnupUDzgsWtLuJYCyQtDnK8XwRxqXjs6pK8cGi+3C0W4gRQEaQV7NP+JDh+
 bF1GPcuj8J5AbeASqYEIlcD2C7aC/II=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-01GEC8DGP-Cp7uL9zOpe3g-1; Fri, 09 Apr 2021 04:14:33 -0400
X-MC-Unique: 01GEC8DGP-Cp7uL9zOpe3g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9A5510054F6;
 Fri,  9 Apr 2021 08:14:31 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C66C160BE5;
 Fri,  9 Apr 2021 08:14:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
References: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
 <20210408145057.GN2531743@casper.infradead.org>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
 <46017.1617897451@warthog.procyon.org.uk>
 <136646.1617916529@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <184802.1617956064.1@warthog.procyon.org.uk>
Date: Fri, 09 Apr 2021 09:14:24 +0100
Message-ID: <184803.1617956064@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUmHr-009FCr-Pm
Subject: Re: [V9fs-developer] [RFC][PATCH] mm: Split page_has_private() in
 two to better handle PG_private_2
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS,
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Linux-MM <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> >  #define PAGE_FLAGS_PRIVATE                             \
> >         (1UL << PG_private | 1UL << PG_private_2)
>
> I think this should be re-named to be PAGE_FLAGS_CLEANUP, because I
> don't think it makes any other sense to "combine" the two PG_private*
> bits any more. No?

Sure.  Do we even want it still, or should I just fold it into
page_needs_cleanup()?  It seems to be the only place it's used.

> > +static inline int page_private_count(struct page *page)
> > +{
> > +       return test_bit(PG_private, &page->flags) ? 1 : 0;
> > +}
>
> Why is this open-coding the bit test, rather than just doing
>
>         return PagePrivate(page) ? 1 : 0;
>
> instead? In fact, since test_bit() _should_ return a 'bool', I think even just
>
>         return PagePrivate(page);

Sorry, yes, it should be that.  I was looking at transforming the "1 <<
PG_private" and completely overlooked that this should be PagePrivate().

> should work and give the same result, but I could imagine that some
> architecture version of "test_bit()" might return some other non-zero
> value (although honestly, I think that should be fixed if so).

Yeah.  I seem to recall that test_bit() on some arches used to return the
datum just with the other bits masked off, but I may be misremembering.

In asm-generic/bitops/non-atomic.h:

static inline int test_bit(int nr, const volatile unsigned long *addr)
{
	return 1UL & (addr[BIT_WORD(nr)] >> (nr & (BITS_PER_LONG-1)));
}

should perhaps return bool?

I wonder, should:

	static __always_inline int PageTail(struct page *page)
	static __always_inline int PageCompound(struct page *page)
	static __always_inline int Page##uname(struct page *page)
	static __always_inline int TestSetPage##uname(struct page *page)
	static __always_inline int TestClearPage##uname(struct page *page)

also all return bool?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
