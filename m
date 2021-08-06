Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1313E2BD4
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Aug 2021 15:45:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mC0A1-0007Zb-9e; Fri, 06 Aug 2021 13:45:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mC09z-0007ZV-T9
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Aug 2021 13:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0VbV96j7hcbKHoJWYg0a5r9V2HBRp69cIOXkwt8uqKA=; b=FddDZRQBlPlSy5ZTz9YkCSj9LO
 w9XwJH8ncpuaVitc2pN3+QSoNA/nfSbRVIMMUF9xFH88sUiqIIzC3ZxKgvwwvudDOaKungrdCiapc
 YbDt7eJBhCvW+l0vPKn0nuXP4M7tPsBBtIg0KPSKisduTc25BYBFijxy/lxzdDRQQc/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0VbV96j7hcbKHoJWYg0a5r9V2HBRp69cIOXkwt8uqKA=; b=e1bmHSYXn5dr4O7FxcvSAfD5A+
 frBwRTeU+pGMRwtf6A6gyIvUaVXUStqjIOSQOEbybEFGN5hrvJZp0cG+P/A77SWEwA+fiFp3d4gET
 OYlL44jjRMcjLqcqOUjnsH4Q4GXQ+R/+UvwIF8JFe9Az6nN0gskc8u6B+uokw9RYQpd8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mC09w-00EmJ5-1Y
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Aug 2021 13:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628257506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0VbV96j7hcbKHoJWYg0a5r9V2HBRp69cIOXkwt8uqKA=;
 b=ZoQOOf7rMyKP/cfJtsWzYpFTtKDfxIAimd/MsQ0lkosBnjKYftPPrPARb5IDczSHiaNPeo
 VrHQ7umDk75RdKRxojOHjjfOdPEl9EW7Z+btRGbXtLmhs7ohUWZtk9D8P3+IF0Tg/Mmnpb
 cnTi7TSyOis7qpS5nTfo6VYhCzaDzHc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-o9kCuQ05PaaOrCW-qhce1A-1; Fri, 06 Aug 2021 09:45:03 -0400
X-MC-Unique: o9kCuQ05PaaOrCW-qhce1A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA11296DCFF;
 Fri,  6 Aug 2021 13:45:00 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.22.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E6BD75D9D5;
 Fri,  6 Aug 2021 13:44:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YQx4lx7vEbvmfBnE@casper.infradead.org>
References: <YQx4lx7vEbvmfBnE@casper.infradead.org>
 <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1302764.1628257488.1@warthog.procyon.org.uk>
Date: Fri, 06 Aug 2021 14:44:48 +0100
Message-ID: <1302765.1628257488@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mC09w-00EmJ5-1Y
Subject: Re: [V9fs-developer] Canvassing for network filesystem write size
 vs page size
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> Filesystems should not make an assumption about this ... I suspect
> the optimum page size scales with I/O bandwidth; taking PCI bandwidth
> as a reasonable proxy, it's doubled five times in twenty years.

There are a lot more factors than you make out.  Local caching, content
crypto, transport crypto, cost of setting up RPC calls, compounding calls to
multiple servers.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
