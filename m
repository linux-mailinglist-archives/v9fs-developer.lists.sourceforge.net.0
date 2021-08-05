Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D893E1BB3
	for <lists+v9fs-developer@lfdr.de>; Thu,  5 Aug 2021 20:50:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBiS6-00004s-9p; Thu, 05 Aug 2021 18:50:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1mBiS4-0008WS-QP
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 18:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IiYjOVol2JvYBzSm9nmbOsFi1gSlVR+sNt5v+Iro+eM=; b=TNBLx3RHYLyg55V/re78zxwXsY
 1U0YD2hhQHBUPjsWWB3A7WH6g8u+S039xVAVlHmStz9CQRROnAm/wY2oC8XNpDLm4rtFzq3MvFX8K
 jZ0tqzjxjoGcwrByKxekzwqMpDvNgmU67gJpCIwYsRYTXTttJ09HRXDsa78KUUwYbjKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IiYjOVol2JvYBzSm9nmbOsFi1gSlVR+sNt5v+Iro+eM=; b=FNZjBETzD7CM9009WI9+u5hCQn
 h/rkZB+7QT13yY739Z9WnR3ldKlfROyjIrLBQdnuxFvX+x5xektqfbmYvJhTT6X8ZHXGkzt/KtLnq
 p93TGxQEM/wnM0GMddsfqoYbYzuUu2Rc4ZG/kGPyQoqpbDl8/gykSjgoKWURZFJ0BVrY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mBiS0-00006U-HX
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 18:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628189434;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IiYjOVol2JvYBzSm9nmbOsFi1gSlVR+sNt5v+Iro+eM=;
 b=ZHbbAU61oS1H+2oKLhh8moglBhhHg9ftrLE4x06oC+5N59lgrVeSpWNOFolj5VDfdjOBjg
 JHdkv0sLAG+RU8NV0HI3je+fFAMDQabsFcLI6ODWV8Z0zBC50uzg2lkHxV5LkcU81uU/9x
 ldeg5zLEeBhlU26u5Fl6xXD+FK36/ZQ=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-3BLgkZv-PcuUzGothdBG8Q-1; Thu, 05 Aug 2021 14:50:33 -0400
X-MC-Unique: 3BLgkZv-PcuUzGothdBG8Q-1
Received: by mail-qk1-f200.google.com with SMTP id
 q11-20020a05620a05abb02903ca17a8eef8so1717980qkq.10
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 05 Aug 2021 11:50:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=IiYjOVol2JvYBzSm9nmbOsFi1gSlVR+sNt5v+Iro+eM=;
 b=ZZFGvLVWJNdDghtJGJdGSa710JyJUEvPr4IogOj4H+riataWPD+Nxsi06Mm61WT3hT
 6U60WdP3BkiHWvOStroFpegbU9HPYljhknJdMIGhiMfHHoSuLKPbubDxlipW0Om2TNXM
 C81Qh5cBZJ74XrDBMxGMChti/y9BuZoQ1fXSGJKBOcXoj4dY9zwazcrO5ZMQs/9szxNi
 7mGAp1XET5Qwcvw0X/ZJEnSOQeTVxyFTqXJE68Mts1Xv6HdLiWImMetezsQy+JXHh+AZ
 yO9vFCGc3ZzXB7I4PJrQyfY3m2xtWCgEk/r4K5+YGKgojlwWsrkXQFpcA9dKmMYgUAum
 GnGA==
X-Gm-Message-State: AOAM533bJWBtM7clQISfV8+fgpkdsAMyrrK9cvEsi5iuj604Dd46pTyl
 PuyHC5wrePyENTyIN+0HwPz30jWIS1fKrQBVRCXa4wApaOJdN1HBZY0mMfpwBrCHB6hPO+rqxB9
 2cgBPvVAN9iyhbQ9ny1MSmRCn3wf6iI8woCM=
X-Received: by 2002:a05:620a:b44:: with SMTP id
 x4mr4723786qkg.11.1628189432785; 
 Thu, 05 Aug 2021 11:50:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCNAmptp/YxuNLEFQ2GKThqZsDaw/EkAl6/uzN/fIMPdEnuhdMjnc4Ro9mfYivPJI45LPC9Q==
X-Received: by 2002:a05:620a:b44:: with SMTP id
 x4mr4723755qkg.11.1628189432545; 
 Thu, 05 Aug 2021 11:50:32 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id c190sm3509913qkg.46.2021.08.05.11.50.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 11:50:32 -0700 (PDT)
Message-ID: <90a2a17aeae0447793496426d21794a3b0f7c197.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, Anna Schumaker
 <anna.schumaker@netapp.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>,  Steve French <sfrench@samba.org>,
 Dominique Martinet <asmadeus@codewreck.org>, Mike Marshall
 <hubcap@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>
Date: Thu, 05 Aug 2021 14:50:30 -0400
In-Reply-To: <1219713.1628181333@warthog.procyon.org.uk>
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mBiS0-00006U-HX
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2021-08-05 at 17:35 +0100, David Howells wrote:
> With Willy's upcoming folio changes, from a filesystem point of view, we're
> going to be looking at folios instead of pages, where:
> 
>  - a folio is a contiguous collection of pages;
> 
>  - each page in the folio might be standard PAGE_SIZE page (4K or 64K, say) or
>    a huge pages (say 2M each);
> 
>  - a folio has one dirty flag and one writeback flag that applies to all
>    constituent pages;
> 
>  - a complete folio currently is limited to PMD_SIZE or order 8, but could
>    theoretically go up to about 2GiB before various integer fields have to be
>    modified (not to mention the memory allocator).
> 
> Willy is arguing that network filesystems should, except in certain very
> special situations (eg. O_SYNC), only write whole folios (limited to EOF).
> 
> Some network filesystems, however, currently keep track of which byte ranges
> are modified within a dirty page (AFS does; NFS seems to also) and only write
> out the modified data.
> 
> Also, there are limits to the maximum RPC payload sizes, so writing back large
> pages may necessitate multiple writes, possibly to multiple servers.
> 
> What I'm trying to do is collate each network filesystem's properties (I'm
> including FUSE in that).
> 
> So we have the following filesystems:
> 
>  Plan9
>  - Doesn't track bytes
>  - Only writes single pages
> 
>  AFS
>  - Max RPC payload theoretically ~5.5 TiB (OpenAFS), ~16EiB (Auristor/kAFS)
>  - kAFS (Linux kernel)
>    - Tracks bytes, only writes back what changed
>    - Writes from up to 65535 contiguous pages.
>  - OpenAFS/Auristor (UNIX/Linux)
>    - Deal with cache-sized blocks (configurable, but something from 8K to 2M),
>      reads and writes in these blocks
>  - OpenAFS/Auristor (Windows)
>    - Track bytes, write back only what changed
> 
>  Ceph
>  - File divided into objects (typically 2MiB in size), which may be scattered
>    over multiple servers.

The default is 4M in modern cephfs clusters, but the rest is correct.

>  - Max RPC size is therefore object size.
>  - Doesn't track bytes.
> 
>  CIFS/SMB
>  - Writes back just changed bytes immediately under some circumstances

cifs.ko can also just do writes to specific byte ranges synchronously
when it doesn't have the ability to use the cache (i.e. no oplock or
lease). CephFS also does this when it doesn't have the necessary
capabilities (aka caps) to use the pagecache.

If we want to add infrastructure for netfs writeback, then it would be
nice to consider similar infrastructure to handle those cases as well.

>  - Doesn't track bytes and writes back whole pages otherwise.
>  - SMB3 has a max RPC size of 16MiB, with a default of 4MiB
> 
>  FUSE
>  - Doesn't track bytes.
>  - Max 'RPC' size of 256 pages (I think).
> 
>  NFS
>  - Tracks modified bytes within a page.
>  - Max RPC size of 1MiB.
>  - Files may be constructed of objects scattered over different servers.
> 
>  OrangeFS
>  - Doesn't track bytes.
>  - Multipage writes possible.
> 
> If you could help me fill in the gaps, that would be great.


-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
