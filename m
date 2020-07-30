Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A59DB233147
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jul 2020 13:51:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k176H-0001fX-Lt; Thu, 30 Jul 2020 11:51:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1k176F-0001dl-Kg
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 11:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XbbtDAwlbqFbl9LRgvVvqdOJ/w6Qt8l6sHZuVLApgCc=; b=IjvEe5jI1NZreXyXdRPfDzCZoy
 gkbJIuBddiTU6HinuUv9JeZRTmX6k1eRKKKlad1DMNuLtmOlO6iFyFkCAyMF4cw1lzFg0c8ifjNjr
 i8Dt972G3yadEFEKCuoJVjes0fooRDJMcJbyYJoYk4QLEsaNXuFrOgIQcFBoqmanLugM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XbbtDAwlbqFbl9LRgvVvqdOJ/w6Qt8l6sHZuVLApgCc=; b=dD0mxDH+B7GSe4krrdUASRghyl
 tVB7gPwqwdoZ7Rv/lKpC5vGG75B8MD74gPmwjJq3QvhDAasJ1qhYOCEd8jHLRvoroK0QhzwBVlJCC
 rZot7a2aOZzUm1tV6Sf5MEB7g0/tyX9CFrRpxZuh+wLMxZK6ak09m3r7DhCCpjPKITC8=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k176B-00EfP8-LM
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 11:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596109901;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=XbbtDAwlbqFbl9LRgvVvqdOJ/w6Qt8l6sHZuVLApgCc=;
 b=UQD1Ik9n7l+3El0T+pzDeBH8w19lUMPzS13CBg2x5ZpnPA+R0reEsiQB6LIt6P7Ckbkk2x
 2QeCLY0E54N9mE5t/5H86zz0c6LDSwM8yg8MQQdXyur1kxkO69em2IevcfBIDVDL2uJHXL
 zu90CuHOZXDO2eAuMgkFdV4OH7rtnVo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-lpsWJq8MMBO5dqJYqQQUdg-1; Thu, 30 Jul 2020 07:51:37 -0400
X-MC-Unique: lpsWJq8MMBO5dqJYqQQUdg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FB6D79EDC;
 Thu, 30 Jul 2020 11:51:34 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-32.rdu2.redhat.com
 [10.10.112.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABF8B10002CA;
 Thu, 30 Jul 2020 11:51:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <447451.1596109876.1@warthog.procyon.org.uk>
Date: Thu, 30 Jul 2020 12:51:16 +0100
Message-ID: <447452.1596109876@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marc.info]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k176B-00EfP8-LM
Subject: [V9fs-developer] Upcoming: fscache rewrite
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
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus, Trond/Anna, Steve, Eric,

I have an fscache rewrite that I'm tempted to put in for the next merge
window:

	https://lore.kernel.org/linux-fsdevel/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/

It improves the code by:

 (*) Ripping out the stuff that uses page cache snooping and kernel_write()
     and using kiocb instead.  This gives multiple wins: uses async DIO rather
     than snooping for updated pages and then copying them, less VM overhead.

 (*) Object management is also simplified, getting rid of the state machine
     that was managing things and using a much simplified thread pool instead.

 (*) Object invalidation creates a tmpfile and diverts new activity to that so
     that it doesn't have to synchronise in-flight ADIO.

 (*) Using a bitmap stored in an xattr rather than using bmap to find out if
     a block is present in the cache.  Probing the backing filesystem's
     metadata to find out is not reliable in modern extent-based filesystems
     as them may insert or remove blocks of zeros.  Even SEEK_HOLE/SEEK_DATA
     are problematic since they don't distinguish transparently inserted
     bridging.

I've provided a read helper that handles ->readpage, ->readpages, and
preparatory writes in ->write_begin.  Willy is looking at using this as a way
to roll his new ->readahead op out into filesystems.  A good chunk of this
will move into MM code.

The code is simpler, and this is nice too:

 67 files changed, 5947 insertions(+), 8294 deletions(-)

not including documentation changes, which I need to convert to rst format
yet.  That removes a whole bunch more lines.

But there are reasons you might not want to take it yet:

 (1) It starts off by disabling fscache support in all the filesystems that
     use it: afs, nfs, cifs, ceph and 9p.  I've taken care of afs, Dave
     Wysochanski has patches for nfs:

	https://lore.kernel.org/linux-nfs/1596031949-26793-1-git-send-email-dwysocha@redhat.com/

     but they haven't been reviewed by Trond or Anna yet, and Jeff Layton has
     patches for ceph:

	https://marc.info/?l=ceph-devel&m=159541538914631&w=2

     and I've briefly discussed cifs with Steve, but nothing has started there
     yet.  9p I've not looked at yet.

     Now, if we're okay for going a kernel release with 4/5 filesystems with
     caching disabled and then pushing the changes for individual filesystems
     through their respective trees, it might be easier.

     Unfortunately, I wasn't able to get together with Trond and Anna at LSF
     to discuss this.

 (2) The patched afs fs passed xfstests -g quick (unlike the upstream code
     that oopses pretty quickly with caching enabled).  Dave and Jeff's nfs
     and ceph code is getting close, but not quite there yet.

 (3) Al has objections to the ITER_MAPPING iov_iter type that I added

	https://lore.kernel.org/linux-fsdevel/20200719014436.GG2786714@ZenIV.linux.org.uk/

     but note that iov_iter_for_each_range() is not actually used by anything.

     However, Willy likes it and would prefer to make it ITER_XARRAY instead
     as he might be able to use it in other places, though there's an issue
     where I'm calling find_get_pages_contig() which takes a mapping (though
     all it does is then get the xarray out of it).

     Instead I would have to use ITER_BVEC, which has quite a high overhead,
     though it would mean that the RCU read lock wouldn't be necessary.  This
     would require 1K of memory for every 256K block the cache wants to read;
     for any read >1M, I'd have to use vmalloc() instead.

     I'd also prefer not to use ITER_BVEC because the offset and length are
     superfluous here.  If ITER_MAPPING is not good, would it be possible to
     have an ITER_PAGEARRAY that just takes a page array instead?  Or, even,
     create a transient xarray?

 (4) The way object culling is managed needs overhauling too, but that's a
     whole 'nother patchset.  We could wait till that's done too, but its lack
     doesn't prevent what we have now being used.

Thoughts?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
