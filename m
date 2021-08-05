Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD6E3E19A7
	for <lists+v9fs-developer@lfdr.de>; Thu,  5 Aug 2021 18:36:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBgM2-0007dh-RN; Thu, 05 Aug 2021 16:36:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mBgLu-0007cq-AY
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 16:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cqiBhFIK0kAqQNHfo/GucN8GfiLKs6hRFMJo5oTIZHg=; b=gicJzRtvT0zGtIOoumafppDP+
 wq0aHVc6nYYuUZoUcwWlzoFf+nFp16F+bf9zOUOwtol4oe9BNEVbMOGadsPA3bvV0u6yGAn4MwN+M
 eirZUONh2N/T/lV4QfMwraA1EcOqAAIJCvUPoYKVGYYOsNExpqQ/oAONSq8Xzt5Q9XSrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:References:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cqiBhFIK0kAqQNHfo/GucN8GfiLKs6hRFMJo5oTIZHg=; b=D
 zoggRrnc2a6Y8BZgVYht9tr6YvBFIeAs4sQfeWLvVr1mJlSTsE8tW8Dd7L0bLxPunsF2CxQHMRJMB
 /pR8TTak71IYIHeTDu+45IJ2sDoox1POmdmQoPb5+29w60LgPmmZHqbpXgjxSW4Lxw35jtFRQGnT2
 DvO+OQNGzv4JsZMQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mBgLk-00DXug-9k
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 16:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628181353;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 references:references; bh=cqiBhFIK0kAqQNHfo/GucN8GfiLKs6hRFMJo5oTIZHg=;
 b=Zo7rgPPA6Kp1XzQG+zcuXeVE4nQug89E3TmBGYlB0WESl1BWOjOKU822qkzJAvfed8oXz7
 j/LujaOun+dzqENHx3NXupAHxhgs63JgtPAGdhyqTGCLWjzOyU6+RN1Rr6a6bVxUGS2kTK
 xG2sl4PaDB3QYCM3IbXeWTJ5E0CoAxc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-OwRpS98qMZeNyIhOZrpXfg-1; Thu, 05 Aug 2021 12:35:47 -0400
X-MC-Unique: OwRpS98qMZeNyIhOZrpXfg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C19FFCC623;
 Thu,  5 Aug 2021 16:35:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.22.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1A1BA5C1A1;
 Thu,  5 Aug 2021 16:35:33 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jeff Layton <jlayton@redhat.com>, Steve French <sfrench@samba.org>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Mike Marshall <hubcap@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-ID: <1219712.1628181333.1@warthog.procyon.org.uk>
Date: Thu, 05 Aug 2021 17:35:33 +0100
Message-ID: <1219713.1628181333@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mBgLk-00DXug-9k
Subject: [V9fs-developer] Canvassing for network filesystem write size vs
 page size
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

With Willy's upcoming folio changes, from a filesystem point of view, we're
going to be looking at folios instead of pages, where:

 - a folio is a contiguous collection of pages;

 - each page in the folio might be standard PAGE_SIZE page (4K or 64K, say) or
   a huge pages (say 2M each);

 - a folio has one dirty flag and one writeback flag that applies to all
   constituent pages;

 - a complete folio currently is limited to PMD_SIZE or order 8, but could
   theoretically go up to about 2GiB before various integer fields have to be
   modified (not to mention the memory allocator).

Willy is arguing that network filesystems should, except in certain very
special situations (eg. O_SYNC), only write whole folios (limited to EOF).

Some network filesystems, however, currently keep track of which byte ranges
are modified within a dirty page (AFS does; NFS seems to also) and only write
out the modified data.

Also, there are limits to the maximum RPC payload sizes, so writing back large
pages may necessitate multiple writes, possibly to multiple servers.

What I'm trying to do is collate each network filesystem's properties (I'm
including FUSE in that).

So we have the following filesystems:

 Plan9
 - Doesn't track bytes
 - Only writes single pages

 AFS
 - Max RPC payload theoretically ~5.5 TiB (OpenAFS), ~16EiB (Auristor/kAFS)
 - kAFS (Linux kernel)
   - Tracks bytes, only writes back what changed
   - Writes from up to 65535 contiguous pages.
 - OpenAFS/Auristor (UNIX/Linux)
   - Deal with cache-sized blocks (configurable, but something from 8K to 2M),
     reads and writes in these blocks
 - OpenAFS/Auristor (Windows)
   - Track bytes, write back only what changed

 Ceph
 - File divided into objects (typically 2MiB in size), which may be scattered
   over multiple servers.
 - Max RPC size is therefore object size.
 - Doesn't track bytes.

 CIFS/SMB
 - Writes back just changed bytes immediately under some circumstances
 - Doesn't track bytes and writes back whole pages otherwise.
 - SMB3 has a max RPC size of 16MiB, with a default of 4MiB

 FUSE
 - Doesn't track bytes.
 - Max 'RPC' size of 256 pages (I think).

 NFS
 - Tracks modified bytes within a page.
 - Max RPC size of 1MiB.
 - Files may be constructed of objects scattered over different servers.

 OrangeFS
 - Doesn't track bytes.
 - Multipage writes possible.

If you could help me fill in the gaps, that would be great.

Thanks,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
