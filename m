Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F2B3E2D25
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Aug 2021 17:05:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mC1Pb-0000el-Rg; Fri, 06 Aug 2021 15:05:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mC1Pa-0000ee-BI
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Aug 2021 15:05:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5B073nk1DS+XhzOJ9EAEUKaNTVzIvIbT8CxRSjSpPZU=; b=YRpER/6np69tWGOdo52p5F6yJK
 IUEPYWRlGu6krxQs1YGZuEQLVaoKnQAIt5Ts635X7TUWY5twDn7ebN0I4/JI+WQPQj55FHtDmWa1f
 aDrceuTywbFUC2e9l+BOjeNnaskWk4zx1pTO3OEB6aMaYuXyZX+nXzlKqFhq1/o8kLjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5B073nk1DS+XhzOJ9EAEUKaNTVzIvIbT8CxRSjSpPZU=; b=hyKK5L1tr6YpZPiP30N1JhQXEG
 vyzyY9G0mve4DBTxCZig7WoKmACRvdzAbYHHy945HofYItZcu8+GTKtvHMc6oqL1pXXP2Aturmo31
 b6UIM5NxM/lE930eg9etOqu3MrNT68Ki0yOU8/Z022PTADkf/TWFqaI4InZp3JwDCEsw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mC1PP-00Eq5v-HV
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Aug 2021 15:05:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628262309;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5B073nk1DS+XhzOJ9EAEUKaNTVzIvIbT8CxRSjSpPZU=;
 b=It1i4sBC2tDEdS3VSitwO9H+W7pPc9SovMPPBB5Y2UvS53Zw6eWK05FfUteg12QrSubZYW
 vzvpTt3WnbUXjYHyVG9wAAr1SginuHFf2MfBi8sI7zBLi52YuU5NhW/DUsivea9wjQWmg/
 FN0TXXKnrcOKMpW9gsGUk0sgrnrkXp4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-ky3v8YG6NV-FlJD_H1kZwQ-1; Fri, 06 Aug 2021 11:05:08 -0400
X-MC-Unique: ky3v8YG6NV-FlJD_H1kZwQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72BB9107ACF5;
 Fri,  6 Aug 2021 15:05:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.22.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CBEEA10640E8;
 Fri,  6 Aug 2021 15:04:54 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YQ1Ei9lv9ov2AheS@casper.infradead.org>
References: <YQ1Ei9lv9ov2AheS@casper.infradead.org>
 <YQxh/G0xGl3GtC8y@casper.infradead.org>
 <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
 <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
 <1302671.1628257357@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1306893.1628262293.1@warthog.procyon.org.uk>
Date: Fri, 06 Aug 2021 16:04:53 +0100
Message-ID: <1306894.1628262293@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Headers-End: 1mC1PP-00Eq5v-HV
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
 "open list:NFS, 
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 Linux-MM <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> No, that is very much not the same thing.  Look at what NFS does, like
> Linus said.  Consider this test program:
> 
> 	fd = open();
> 	lseek(fd, 5, SEEK_SET);
> 	write(fd, buf, 3);
> 	write(fd, buf2, 10);
> 	write(fd, buf3, 2);
> 	close(fd);

Yes, I get that.  I can do that when there isn't a local cache or content
encryption.

Note that, currently, if the pages (or cache blocks) being read/modified are
beyond the EOF at the point when the file is opened, truncated down or last
subject to 3rd-party invalidation, I don't go to the server at all.

> > But that kind of screws with local caching.  The local cache might need to
> > track the missing bits, and we are likely to be using blocks larger than a
> > page.
> 
> There's nothing to cache.  Pages which are !Uptodate aren't going to get
> locally cached.

Eh?  Of course there is.  You've just written some data.  That need to get
copied to the cache as well as the server if that file is supposed to be being
cached (for filesystems that support local caching of files open for writing,
which AFS does).

> > Basically, there are a lot of scenarios where not having fully populated
> > pages sucks.  And for streaming writes, wouldn't it be better if you used
> > DIO writes?
> 
> DIO can't do sub-512-byte writes.

Yes it can - and it works for my AFS client at least with the patches in my
fscache-iter-2 branch.  This is mainly a restriction for block storage devices
we're doing DMA to - but we're not doing direct DMA to block storage devices
typically when talking to a network filesystem.

For AFS, at least, I can just make one big FetchData/StoreData RPC that
reads/writes the entire DIO request in a single op; for other filesystems
(NFS, ceph for example), it needs breaking up into a sequence of RPCs, but
there's no particular reason that I know of that requires it to be 512-byte
aligned on any of these.

Things get more interesting if you're doing DIO to a content-encrypted file
because the block size may be 4096 or even a lot larger - in which case we
would have to do local RMW to handle misaligned writes, but it presents no
particular difficulty.

> You might not be trying to do anything for block filesystems, but we
> should think about what makes sense for block filesystems as well as
> network filesystems.

Whilst that's a good principle, they have very different characteristics that
might make that difficult.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
