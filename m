Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85986359E29
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 14:01:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUpp8-0006r1-OA; Fri, 09 Apr 2021 12:01:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lUpp6-0006qq-Qb
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 12:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WpLBLcM5HPbHBdhYvmuIcG5jaKMHS2dswa4uwPfKors=; b=hQ8w+90BeD1D+SjsjpbDJidJFd
 RU1ojQ5C0h23+vzy50txL8cgdomZaPHZoTkwI5YPuTOyiELZP4dusxDstG1y5FdR9TZ61I5Oxe3Do
 VrlM5JJEAgGqOPc6nPJQ/l8HPeiCy95kXZph3KkZvrZUBYi2gHpE6jd1qUyNecxFtPA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WpLBLcM5HPbHBdhYvmuIcG5jaKMHS2dswa4uwPfKors=; b=fs/6jHNZPi/ColpRhCpIqInLaM
 bk3ITEGkHiMHIEuVY/xbuIrBu+Iq0I23aVwkkvabQY2WCy4m4i/A5R0HVtcGDfwkfB6TQfOmfeRSi
 BqjLVjkWt4WZ25htvZF6x+yhV4mtzWlP79zYe+lij77IX/KCuOPeSaOw53ubq8ugJrbU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUpok-00A9SK-RJ
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 12:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617969648;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WpLBLcM5HPbHBdhYvmuIcG5jaKMHS2dswa4uwPfKors=;
 b=FXlrOxZzlwiNbkcN++SN/hn3KEgesheIEHF5+68+RjGF6GQ1Rjms58k7v/BE0vMj5+1E0D
 +gNfZIrQyaD3EinMA8fSa883FQ7WNLFqcHduV/68B7azWFDx10QUNjlDSQiermlvR3uoYN
 x8jbCvCpwK0bB4xQIIuG4+S4fjs64ec=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-531-VXpQijEJOlSLOJb_BO2ZXA-1; Fri, 09 Apr 2021 08:00:46 -0400
X-MC-Unique: VXpQijEJOlSLOJb_BO2ZXA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 845A55B38D;
 Fri,  9 Apr 2021 12:00:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C29B160622;
 Fri,  9 Apr 2021 12:00:41 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210409111636.GR2531743@casper.infradead.org>
References: <20210409111636.GR2531743@casper.infradead.org>
 <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
 <161796595714.350846.1547688999823745763.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <453416.1617969640.1@warthog.procyon.org.uk>
Date: Fri, 09 Apr 2021 13:00:40 +0100
Message-ID: <453417.1617969640@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUpok-00A9SK-RJ
Subject: Re: [V9fs-developer] [RFC PATCH 2/3] mm: Return bool from pagebit
 test functions
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, jlayton@kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> On Fri, Apr 09, 2021 at 11:59:17AM +0100, David Howells wrote:
> > Make functions that test page bits return a bool, not an int.  This means
> > that the value is definitely 0 or 1 if they're used in arithmetic, rather
> > than rely on test_bit() and friends to return this (though they probably
> > should).
> 
> iirc i looked at doing this as part of the folio work, and it ended up
> increasing the size of the kernel.  Did you run bloat-o-meter on the
> result of doing this?

Hmmm.  With my usual monolithic x86_64 kernel, it makes vmlinux text section
100 bytes larger (19392347 rather than 19392247).  I can look into why.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
