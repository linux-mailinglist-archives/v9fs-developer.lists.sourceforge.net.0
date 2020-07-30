Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ED4233252
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jul 2020 14:36:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k17nY-0000LQ-GE; Thu, 30 Jul 2020 12:36:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1k17nY-0000LI-3k
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 12:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=31PzmvZoLrb+VBxM22N3vxrRxLtADMFNugnbQ/5/Q1U=; b=ev3tWVjmJwOKkZPWBIQ+DrtDbq
 s/KFtTGO5m/8kM8mpBsJaZaMUvkesSQzRyt4F9VKkdvjLOlEz1RUO8Lg0WSPjB/A70biZnu64twYN
 B3i5sXNN1L0+OlPLOwxNcY8sPWCjAf0bPwEqJvNrzLDHE8BD/f7JlIzA4A8/Gw7Urk78=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=31PzmvZoLrb+VBxM22N3vxrRxLtADMFNugnbQ/5/Q1U=; b=BoMQIxIrCGiclt6PLP3knJdniP
 Nh9GLSIb2edGULyv75Qsf9PUajFRUMHE7WRNn0nVGdAC3OUAmmiiyP9yfH2AQVEeBzttn4hk7FbBE
 PysgfRxycE7zhToWqU2DOmSA4wUob0i8cpV1S4XFWStxEqbA+DEUu+frqIIFGkKnMyg4=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k17nW-007F5i-KR
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 12:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596112588;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=31PzmvZoLrb+VBxM22N3vxrRxLtADMFNugnbQ/5/Q1U=;
 b=CRUSw+V2sn26NN5Tk0vnVHg0OoEUvUn5JKpcU2BM1XlDpfg35C9nDfgARgsVeev1G+XGaj
 XBpJyBELSp5NO4D2GMlBvWfv50TmR7JGzVXFX4uL/JE7I7DTpo4jtl0YHosx0VTPPa4V9i
 0NuWVz9F1obYN48dnHyzgoNCsNCAAfw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-RA2a7GGdO5qhhZezBS-zyQ-1; Thu, 30 Jul 2020 08:36:24 -0400
X-MC-Unique: RA2a7GGdO5qhhZezBS-zyQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9F0C800685;
 Thu, 30 Jul 2020 12:36:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-32.rdu2.redhat.com
 [10.10.112.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 895FC87B07;
 Thu, 30 Jul 2020 12:36:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20200730121622.GB23808@casper.infradead.org>
References: <20200730121622.GB23808@casper.infradead.org>
 <447452.1596109876@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <488586.1596112574.1@warthog.procyon.org.uk>
Date: Thu, 30 Jul 2020 13:36:14 +0100
Message-ID: <488587.1596112574@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k17nW-007F5i-KR
Subject: Re: [V9fs-developer] Upcoming: fscache rewrite
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 torvalds@linux-foundation.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> I suspect you don't need to call find_get_pages_contig().  If you look
> at __readahead_batch() in pagemap.h, it does basically what you want
> (other than being wrapped up inside the readahead iterator).  You require
> the pages already be pinned in the xarray, so there's no need for the
> page_cache_get_speculative() dance that find_get_pages_contig) does,
> nor the check for xa_is_value().

I'll have a look at that.

> My main concern with your patchset is that it introduces a new page flag

Technically, the flag already exists - I'm just using it for something
different than the old fscache code used it for.

> to sleep on which basically means "I am writing this page to the fscache".
> I don't understand why you need it; you've elevated the refcount on
> the pages so they're not going to get reused for another purpose.
> All it does (as far as I can tell) is make a task calling truncate()
> wait for the page to finish being written to cache, which isn't actually
> necessary.

It's also used to prevent starting overlapping async DIO writes to the cache.

See fscache_read_done(), where it's set to cover writing what we've just read
from the server to the cache, and afs_write_back_from_locked_page(), where
it's set to cover writing the data to be written back to the cache.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
